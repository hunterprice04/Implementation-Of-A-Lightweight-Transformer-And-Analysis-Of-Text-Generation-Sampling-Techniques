import tensorflow as tf

from src.Config import ModelConfig
from src.TokenAndPositionEmbedding import TokenAndPositionEmbedding
from src.SimpleTransformerBlock import SimpleTransformerBlock
from src.WarmupScheduler import WarmupScheduler


class SimpleTransformer(tf.keras.layers.Layer):
    def __init__(self, max_len, dim_emb, dim_ffn, num_layers, att_heads, vocab_sz, **kwargs):
        super().__init__()
        self.max_len = max_len
        self.dim_emb = dim_emb
        self.dim_ffn = dim_ffn
        self.num_layers = num_layers
        self.att_heads = att_heads
        self.vocab_sz = vocab_sz
        self.layer_embedding = TokenAndPositionEmbedding(max_len, vocab_sz, dim_emb)
        self.transformer_block = SimpleTransformerBlock(dim_emb, att_heads, dim_ffn, num_layers)
        self.layer_output = tf.keras.layers.Dense(vocab_sz)

    def call(self, inputs):
        emb = self.layer_embedding(inputs)
        attention_mask = self.transformer_block(emb)
        logits = self.layer_output(attention_mask)
        return logits, attention_mask

    def get_config(self):
        c = super().get_config()
        c.update({
            "max_len": self.max_len,
            "dim_emb": self.dim_emb,
            "dim_ffn": self.dim_ffn,
            "num_layers": self.num_layers,
            "att_heads": self.att_heads,
            "vocab_sz": self.vocab_sz,
        })
        return c

    @staticmethod
    def create_model(model_config: ModelConfig):
        inputs = tf.keras.layers.Input(shape=(model_config.MAX_LEN,), dtype=tf.int32)
        layer_st = SimpleTransformer(model_config.MAX_LEN, model_config.DIM_EMB, model_config.DIM_FFN,
                                     model_config.NUM_LAYERS, model_config.ATT_HEADS, model_config.VOCAB_SZ)
        logits, attention_mask = layer_st(inputs)
        model = tf.keras.Model(inputs=inputs, outputs=[logits, attention_mask])

        loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
        learning_rate = WarmupScheduler(model_config.DIM_EMB, model_config.WARMUP_STEPS)
        optimizer = tf.keras.optimizers.Adam(learning_rate, beta_1=0.9, beta_2=0.98, epsilon=1e-9)

        model.compile(optimizer, loss=[loss_fn, None])
        return model
