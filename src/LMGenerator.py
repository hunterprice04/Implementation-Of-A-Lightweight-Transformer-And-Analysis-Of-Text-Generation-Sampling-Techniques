import numpy as np
import tensorflow as tf
from tensor2tensor.utils.beam_search import beam_search

from .Tokenizer import Tokenizer
from .top_p import sample_top_p


class LMGenerator:
    def __init__(self, model, seq_len, vocab):
        self.model = model
        self.seq_len = seq_len
        self.vocab = vocab
        self.word_to_index = {word: index for index, word in enumerate(vocab)}
        self.GREEDY = 0
        self.RANDOM = 1
        self.TOP_K = 2
        self.TOP_P = 3
        self.BEAM = 4
        self.sampling_funcs = {
            'greedy': self.GREEDY,
            'random': self.RANDOM,
            'top_k': self.TOP_K,
            'top_p': self.TOP_P
        }

    def greedy(self, logits, *args, **kwargs):
        log_probs = logits - tf.reduce_logsumexp(logits, axis=-1, keepdims=True)
        return tf.argmax(log_probs, axis=-1).numpy()

    def sample_random(self, logits, temp=0.75, *args, **kwargs):
        if tf.rank(logits) > 2:
            logits = tf.squeeze(tf.squeeze(logits, axis=0), 0)

        logits = tf.cast(logits, tf.float64)
        conditional_probability = logits / temp
        exp_preds = tf.exp(conditional_probability)
        conditional_probability = exp_preds / tf.reduce_sum(exp_preds)

        probas = np.random.multinomial(1, conditional_probability, 1)
        return np.argmax(probas)

    def sample_top_k(self, logits, top_k=10, *args, **kwargs):
        logits, indices = tf.math.top_k(logits, k=top_k, sorted=True)
        indices = np.asarray(indices).astype("int32")
        preds = tf.keras.activations.softmax(tf.expand_dims(logits, 0))[0]
        preds = np.asarray(preds).astype("float32")
        return np.random.choice(indices, p=preds)

    #
    # symbols_to_logits_fn: Interface to the model, to provide logits.
    # Shoud take [batch_size, decoded_ids] and return [batch_size, vocab_size]
    # initial_ids: Ids to start off the decoding, this will be the first thing
    # handed to symbols_to_logits_fn (after expanding to beam size)
    # [batch_size]
    # beam_size: Size of the beam.
    # decode_length: Number of steps to decode for.
    # vocab_size: Size of the vocab, must equal the size of the logits returned by
    # symbols_to_logits_fn
    # alpha: alpha for length penalty.
    # states: dict (possibly nested) of decoding states.
    # eos_id: ID for end of sentence.
    # stop_early: a boolean - stop once best sequence is provably determined.
    # use_tpu: A bool, whether to do beam search on TPU.
    # use_top_k_with_unique: bool, whether to use a fast (but decreased precision)
    # top_k during TPU beam search.
    # Returns:
    # Tuple of
    # (decoded beams [batch_size, beam_size, decode_length]
    # decoding probabilities [batch_size, beam_size])
    def beam_search(self, logits, initial_ids=None, beam_size=2, alpha=0.6, max_tokens=50, *args, **kwargs):
        initial_ids = tf.constant(np.array(initial_ids)[None, :], dtype=tf.int32)
        print(initial_ids)

        def symbols_to_logits_fn(ids):
            print(ids)
            print(tf.squeeze(ids))

            ids = tf.reshape(ids, [beam_size, -1])
            print(ids)
            logits, _ = self.model.predict(ids)
            print(logits.shape)
            print(logits[0, :].shape)
            print(logits.flatten().shape)
            return logits.flatten()

        pred = beam_search(
            symbols_to_logits_fn=symbols_to_logits_fn,
            initial_ids=initial_ids,
            beam_size=beam_size,
            decode_length=max_tokens,
            vocab_size=20000,
            eos_id=0,
            alpha=alpha  # No idea what this does
        )
        print(pred)
        return pred

    def sample_top_p(self, logits, top_p=0.75, *args, **kwargs):
        return sample_top_p(logits, top_p=top_p, *args, **kwargs)

    def detokenize(self, number):
        if 0 <= number < len(self.vocab):
            return self.vocab[number]
        else:
            return '<UNK>'

    def generate(self, start_prompt, max_tokens, sampling_method, *args, **kwargs):
        start_prompt = Tokenizer.preprocess_sequence(start_prompt, end=False).numpy().decode('utf-8')
        prompt_tokens = [self.word_to_index.get(_, 1) for _ in start_prompt.split()]
        prompt_tokens = [_ for _ in prompt_tokens]

        if isinstance(sampling_method, str):
            sampling_method = self.sampling_funcs[sampling_method]

        if not sampling_method == self.BEAM:

            num_tokens_generated = 0
            tokens_generated = []
            while num_tokens_generated <= max_tokens:
                pad_len = self.seq_len - len(prompt_tokens)
                sample_index = len(prompt_tokens) - 1
                if pad_len < 0:
                    x = prompt_tokens[:self.seq_len]
                    sample_index = self.seq_len - 1
                elif pad_len > 0:
                    x = prompt_tokens + [0] * pad_len
                else:
                    x = prompt_tokens
                x = np.array([x])
                y, _ = self.model.predict(x, verbose=0)

                if sampling_method == self.TOP_P:
                    sample_token = self.sample_top_p(logits=y[0][sample_index], *args, **kwargs)
                elif sampling_method == self.GREEDY:
                    sample_token = self.greedy(logits=y[0][sample_index], *args, **kwargs)
                elif sampling_method == self.RANDOM:
                    sample_token = self.sample_random(logits=y[0][sample_index], *args, **kwargs)
                elif sampling_method == self.TOP_K:
                    sample_token = self.sample_top_p(logits=y[0][sample_index], *args, **kwargs)
                else:
                    raise ValueError('Unknown sampling method')
                tokens_generated.append(sample_token)
                prompt_tokens.append(sample_token)
                num_tokens_generated = len(tokens_generated)
            print(f"Generated {num_tokens_generated} tokens")
        else:
            pad_len = self.seq_len - len(prompt_tokens)
            if pad_len < 0:
                x = prompt_tokens[:self.seq_len]
            elif pad_len > 0:
                x = prompt_tokens + [0] * pad_len
            else:
                x = prompt_tokens
            x = np.array([x])
            y, _ = self.model.predict(x, verbose=0)
            tokens_generated = self.beam_search(
                logits=None,
                initial_ids=prompt_tokens,
                max_tokens=max_tokens, *args, **kwargs)
            # print(f"Generated {len(tokens_generated)} tokens")
        txt = " ".join(
            [self.detokenize(_) for _ in prompt_tokens]
        )
        return txt


class LMGenerationCallback(tf.keras.callbacks.Callback):
    def __init__(self, prompt_txt, max_tokens, seq_len, vocab, print_every=1, tb_file_writer=None, *args, **kwargs):
        self.max_tokens = max_tokens
        self.seq_len = seq_len
        self.prompt_txt = prompt_txt
        self.vocab = vocab
        self.print_every = print_every
        self.tb_file_writer = tb_file_writer

    def on_epoch_end(self, epoch, logs=None):
        if (epoch + 1) % self.print_every != 0:
            return
        generator = LMGenerator(self.model, self.seq_len, self.vocab)
        for name in generator.sampling_funcs.keys():
            txt = generator.generate(self.prompt_txt, self.max_tokens, name)
            print(f"\n# {name.upper()} GENERATED:\n{txt}\n")
            if self.tb_file_writer is not None:
                with self.tb_file_writer.as_default():
                    tf.summary.text(name, txt, epoch)

    @staticmethod
    def create(start_prompt, seq_len, vocab, gen_len=100):
        return
