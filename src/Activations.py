# This is taken from: https://github.com/huggingface/transformers/blob/main/src/transformers/activations_tf.py
# TODO: See what's interesting

def _gelu(x):
    """
    Gaussian Error Linear Unit. Original Implementation of the gelu activation function in Google Bert repo when
    initially created. For information: OpenAI GPT's gelu is slightly different (and gives slightly different results):
    0.5 * x * (1 + torch.tanh(math.sqrt(2 / math.pi) * (x + 0.044715 * torch.pow(x, 3)))) Also see
    https://arxiv.org/abs/1606.08415
    """
    x = tf.convert_to_tensor(x)
    cdf = 0.5 * (1.0 + tf.math.erf(x / tf.cast(tf.sqrt(2.0), x.dtype)))

    return x * cdf


def _gelu_new(x):
    """
    Gaussian Error Linear Unit. This is a smoother version of the GELU. Original paper: https://arxiv.org/abs/1606.0841
    Args:
        x: float Tensor to perform activation
    Returns:
        `x` with the GELU activation applied.
    """
    x = tf.convert_to_tensor(x)
    pi = tf.cast(math.pi, x.dtype)
    coeff = tf.cast(0.044715, x.dtype)
    cdf = 0.5 * (1.0 + tf.tanh(tf.sqrt(2.0 / pi) * (x + coeff * tf.pow(x, 3))))

    return x * cdf


def mish(x):
    x = tf.convert_to_tensor(x)

    return x * tf.tanh(tf.math.softplus(x))


def gelu_fast(x):
    x = tf.convert_to_tensor(x)
    coeff1 = tf.cast(0.044715, x.dtype)
    coeff2 = tf.cast(0.7978845608, x.dtype)

    return 0.5 * x * (1.0 + tf.tanh(x * coeff2 * (1.0 + coeff1 * x * x)))


def quick_gelu(x):
    x = tf.convert_to_tensor(x)
    coeff = tf.cast(1.702, x.dtype)
    return x * tf.math.sigmoid(coeff * x)


def gelu_10(x):
    """
    Clip the range of possible GeLU outputs between [-10, 10]. This is especially useful for quantization purpose, as
    it allows mapping 2 negatives values in the GeLU spectrum. For more information on this trick, please refer to
    https://arxiv.org/abs/2004.09602
    Gaussian Error Linear Unit. Original Implementation of the gelu activation function in Google Bert repo when
    initially created. For information: OpenAI GPT's gelu is slightly different (and gives slightly different results):
    0.5 * x * (1 + torch.tanh(math.sqrt(2 / math.pi) * (x + 0.044715 * torch.pow(x, 3)))) Also see
    https://arxiv.org/abs/1606.08415 :param x: :return:
    """
    return tf.clip_by_value(_gelu(x), -10, 10)


def glu(x, axis=-1):
    """
    Gated Linear Unit. Implementation as defined in the original paper (see https://arxiv.org/abs/1612.08083), where
    the input `x` is split in two halves across a dimension (`axis`), A and B, returning A * sigmoid(B).
    Args:
        `x`: float Tensor to perform activation
        `axis`: dimension across which `x` be split in half
    Returns:
        `x` with the GLU activation applied (with its size halved across the dimension `axis`).
    """
    a, b = tf.split(x, 2, axis=axis)
    return a * tf.math.sigmoid(b)
