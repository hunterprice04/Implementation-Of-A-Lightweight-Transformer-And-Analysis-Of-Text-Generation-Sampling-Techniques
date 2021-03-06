import os
import pickle

import tensorflow as tf

from src import Utils
from src.Dataset import Dataset
from src.LMGenerator import LMGenerationCallback, LMGenerator
from src.SimpleTransformer import SimpleTransformer
from src.Tokenizer import Tokenizer
from src.WarmupScheduler import WarmupScheduler


class SimpleTransformerLMHead:
    def __init__(self):
        print("# [SimpleTransformerLMHead] Initializing...")
        self.config = None
        self.transformer_model = None
        self.vocab = None
        self.generator = None
        self.dataset_seq = None

    def new(self, new_config=None):
        if new_config is None:
            raise ValueError("[SimpleTransformerLMHead] No new config provided.")

        print("# [SimpleTransformerLMHead] Creating new model...")
        self.config = new_config
        # Load dataset
        if not self.__load_dataset_from_paths(self.config.TRAINING.DATASET):
            raise ValueError("W: [SimpleTransformerLMHead] Error loading dataset. "
                             "Please inspect the stacktrace or your config.")
        # Create new model
        self.transformer_model = SimpleTransformer.create_model(self.config.MODEL)
        self.transformer_model.summary()
        # Create generator from new model
        self.__create_generator()
        return self

    def load(self, model_dir):
        if model_dir is None:
            raise ValueError("[SimpleTransformerLMHead] Either new_config or model_path must be provided.")

        print(f"# [SimpleTransformerLMHead] Loading model from {model_dir}...")
        # Load model, config, and vocab
        # self.transformer_model = load_model(model_dir)
        keras_config_pasth = os.path.join(model_dir, "config_keras.pkl")
        with open(keras_config_pasth, 'rb') as fck:
            config_keras = pickle.load(fck)
        custom_objects = {"CustomSchedule": WarmupScheduler,
                          "SimpleTransformer": SimpleTransformer}

        with tf.keras.utils.custom_object_scope(custom_objects):
            self.transformer_model = tf.keras.Model.from_config(config_keras)

        config_path = os.path.join(model_dir, "config_st.pkl")
        with open(config_path, 'rb') as fc:
            self.config = pickle.load(fc)
        vocab_path = os.path.join(model_dir, 'vocab.pkl')
        with open(vocab_path, 'rb') as fv:
            self.vocab = pickle.load(fv)
        # Create generator from loaded model
        self.__create_generator()
        return self

    def train(self, eval_prompt, eval_prompt_len=100, finetune_files: list = None, override_epochs: int = None):
        self.__check_model_loaded()
        if finetune_files is not None:
            print("# [SimpleTransformerLMHead] Loading files for finetuning...")
            if not self.__load_dataset_from_paths(finetune_files):
                raise ValueError("W: [SimpleTransformerLMHead] Error loading finetuning dataset. "
                                 "Please check the finetune_files parameter.")
        print("# [SimpleTransformerLMHead] Training...")
        seq_len, vocab = self.config.MODEL.MAX_LEN, self.vocab
        epochs = self.config.TRAINING.EPOCHS
        if override_epochs is not None:
            epochs = override_epochs
        callbacks, tb_file_writer = Utils.create_callbacks("logs", self.transformer_model)
        gen_callback = LMGenerationCallback(eval_prompt, max_tokens=eval_prompt_len, seq_len=seq_len,
                                            vocab=vocab, tb_file_writer=tb_file_writer)
        callbacks.append(gen_callback)
        self.transformer_model.fit(self.dataset_seq, verbose=1, epochs=epochs, callbacks=callbacks)

    def save(self, dir_path="model_save"):
        self.__check_model_loaded()
        print(f"# [SimpleTransformerLMHead] Saving model to {dir_path}...")
        self.transformer_model.save(dir_path)
        config_keras = self.transformer_model.get_config()
        with open(os.path.join(dir_path, "vocab.pkl"), "wb") as f:
            pickle.dump(self.vocab, f)
        with open(os.path.join(dir_path, "config_st.pkl"), "wb") as f:
            pickle.dump(self.config, f)
        with open(os.path.join(dir_path, "config_keras.pkl"), "wb") as f:
            pickle.dump(config_keras, f)

    def generate(self, prompt, max_tokens=25, sampling_method="top_k", *args, **kwargs):
        if self.generator is None:
            raise ValueError("# [SimpleTransformerLMHead - generate] No model loaded or created. "
                             "Call new() or load() first.")
        print("# [SimpleTransformerLMHead] Generating...")
        return self.generator.generate(prompt, max_tokens, sampling_method, *args, **kwargs)

    def __create_generator(self):
        self.__check_model_loaded()
        self.generator = LMGenerator(self.transformer_model, self.config.MODEL.MAX_LEN, self.vocab)

    def __load_dataset_from_paths(self, dataset_paths: list):
        try:
            dataset = Dataset(dataset_paths)
            tokenizer = Tokenizer(dataset, model_config=self.config.MODEL)
            self.vocab = tokenizer.get_vocabulary()
            print("# [SimpleTransformerLMHead] Vocabulary size:", len(self.vocab))
            self.dataset_seq = dataset.create_batch_sequences(tokenizer, batch_sz=self.config.TRAINING.BATCH_SIZE)
        except Exception as e:
            print(f"# [SimpleTransformerLMHead] Error loading dataset: {e}")
            return False
        return True

    def __check_model_loaded(self, name=None):
        if self.transformer_model is None or self.config is None or self.vocab is None:
            raise ValueError(f"# [SimpleTransformerLMHead - {name}] No model loaded or created. "
                             "Call new() or load() first.")
