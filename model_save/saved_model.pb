Ý$
ê»
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18ÂÎ!
¯
+Adam/st_100_100_2048_2_2500/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ä*<
shared_name-+Adam/st_100_100_2048_2_2500/dense_11/bias/v
¨
?Adam/st_100_100_2048_2_2500/dense_11/bias/v/Read/ReadVariableOpReadVariableOp+Adam/st_100_100_2048_2_2500/dense_11/bias/v*
_output_shapes	
:Ä*
dtype0
·
-Adam/st_100_100_2048_2_2500/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÄ*>
shared_name/-Adam/st_100_100_2048_2_2500/dense_11/kernel/v
°
AAdam/st_100_100_2048_2_2500/dense_11/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/st_100_100_2048_2_2500/dense_11/kernel/v*
_output_shapes
:	dÄ*
dtype0
ì
JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*[
shared_nameLJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v
å
^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v/Read/ReadVariableOpReadVariableOpJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v*
_output_shapes
:d*
dtype0
î
KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*\
shared_nameMKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/v
ç
_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOpKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/v*
_output_shapes
:d*
dtype0
ì
JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*[
shared_nameLJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/v
å
^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/v/Read/ReadVariableOpReadVariableOpJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/v*
_output_shapes
:d*
dtype0
î
KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*\
shared_nameMKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/v
ç
_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOpKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/v*
_output_shapes
:d*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes
:	d*
dtype0

Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
x
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	d*
dtype0

\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*m
shared_name^\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/v

pAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOpReadVariableOp\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/v*
_output_shapes
:d*
dtype0

^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*o
shared_name`^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v

rAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v*"
_output_shapes
:dd*
dtype0
þ
QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v
÷
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v*
_output_shapes

:d*
dtype0

SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/v
ÿ
gAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/v*"
_output_shapes
:dd*
dtype0
ú
OAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*`
shared_nameQOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/v
ó
cAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/v/Read/ReadVariableOpReadVariableOpOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/v*
_output_shapes

:d*
dtype0

QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/v
û
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/v*"
_output_shapes
:dd*
dtype0
þ
QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/v
÷
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/v/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/v*
_output_shapes

:d*
dtype0

SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/v
ÿ
gAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/v*"
_output_shapes
:dd*
dtype0

SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/v
û
gAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/v/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/v*
_output_shapes

:dd*
dtype0

SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Äd*d
shared_nameUSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/v
ü
gAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/v/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/v*
_output_shapes
:	Äd*
dtype0
¯
+Adam/st_100_100_2048_2_2500/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ä*<
shared_name-+Adam/st_100_100_2048_2_2500/dense_11/bias/m
¨
?Adam/st_100_100_2048_2_2500/dense_11/bias/m/Read/ReadVariableOpReadVariableOp+Adam/st_100_100_2048_2_2500/dense_11/bias/m*
_output_shapes	
:Ä*
dtype0
·
-Adam/st_100_100_2048_2_2500/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÄ*>
shared_name/-Adam/st_100_100_2048_2_2500/dense_11/kernel/m
°
AAdam/st_100_100_2048_2_2500/dense_11/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/st_100_100_2048_2_2500/dense_11/kernel/m*
_output_shapes
:	dÄ*
dtype0
ì
JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*[
shared_nameLJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m
å
^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m/Read/ReadVariableOpReadVariableOpJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m*
_output_shapes
:d*
dtype0
î
KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*\
shared_nameMKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/m
ç
_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOpKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/m*
_output_shapes
:d*
dtype0
ì
JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*[
shared_nameLJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/m
å
^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/m/Read/ReadVariableOpReadVariableOpJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/m*
_output_shapes
:d*
dtype0
î
KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*\
shared_nameMKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/m
ç
_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOpKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/m*
_output_shapes
:d*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes
:	d*
dtype0

Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
x
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	d*
dtype0

\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*m
shared_name^\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/m

pAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOpReadVariableOp\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/m*
_output_shapes
:d*
dtype0

^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*o
shared_name`^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m

rAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m*"
_output_shapes
:dd*
dtype0
þ
QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m
÷
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m*
_output_shapes

:d*
dtype0

SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/m
ÿ
gAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/m*"
_output_shapes
:dd*
dtype0
ú
OAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*`
shared_nameQOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/m
ó
cAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/m/Read/ReadVariableOpReadVariableOpOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/m*
_output_shapes

:d*
dtype0

QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/m
û
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/m*"
_output_shapes
:dd*
dtype0
þ
QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*b
shared_nameSQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/m
÷
eAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/m/Read/ReadVariableOpReadVariableOpQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/m*
_output_shapes

:d*
dtype0

SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/m
ÿ
gAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/m*"
_output_shapes
:dd*
dtype0

SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*d
shared_nameUSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/m
û
gAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/m/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/m*
_output_shapes

:dd*
dtype0

SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Äd*d
shared_nameUSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/m
ü
gAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/m/Read/ReadVariableOpReadVariableOpSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/m*
_output_shapes
:	Äd*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
¡
$st_100_100_2048_2_2500/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ä*5
shared_name&$st_100_100_2048_2_2500/dense_11/bias

8st_100_100_2048_2_2500/dense_11/bias/Read/ReadVariableOpReadVariableOp$st_100_100_2048_2_2500/dense_11/bias*
_output_shapes	
:Ä*
dtype0
©
&st_100_100_2048_2_2500/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÄ*7
shared_name(&st_100_100_2048_2_2500/dense_11/kernel
¢
:st_100_100_2048_2_2500/dense_11/kernel/Read/ReadVariableOpReadVariableOp&st_100_100_2048_2_2500/dense_11/kernel*
_output_shapes
:	dÄ*
dtype0
Þ
Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*T
shared_nameECst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta
×
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/Read/ReadVariableOpReadVariableOpCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta*
_output_shapes
:d*
dtype0
à
Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*U
shared_nameFDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma
Ù
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOpDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma*
_output_shapes
:d*
dtype0
Þ
Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*T
shared_nameECst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta
×
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/Read/ReadVariableOpReadVariableOpCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta*
_output_shapes
:d*
dtype0
à
Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*U
shared_nameFDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma
Ù
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOpDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma*
_output_shapes
:d*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:d*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	d*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	d*
dtype0

Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*f
shared_nameWUst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias
û
ist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/Read/ReadVariableOpReadVariableOpUst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias*
_output_shapes
:d*
dtype0

Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*h
shared_nameYWst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel

kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel*"
_output_shapes
:dd*
dtype0
ð
Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*[
shared_nameLJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias
é
^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/Read/ReadVariableOpReadVariableOpJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias*
_output_shapes

:d*
dtype0
ø
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*]
shared_nameNLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel
ñ
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/Read/ReadVariableOpReadVariableOpLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel*"
_output_shapes
:dd*
dtype0
ì
Hst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*Y
shared_nameJHst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias
å
\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/Read/ReadVariableOpReadVariableOpHst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias*
_output_shapes

:d*
dtype0
ô
Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*[
shared_nameLJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel
í
^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/Read/ReadVariableOpReadVariableOpJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel*"
_output_shapes
:dd*
dtype0
ð
Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*[
shared_nameLJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias
é
^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/Read/ReadVariableOpReadVariableOpJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias*
_output_shapes

:d*
dtype0
ø
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd*]
shared_nameNLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel
ñ
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/Read/ReadVariableOpReadVariableOpLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel*"
_output_shapes
:dd*
dtype0
ô
Lst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*]
shared_nameNLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings
í
`st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/Read/ReadVariableOpReadVariableOpLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings*
_output_shapes

:dd*
dtype0
õ
Lst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Äd*]
shared_nameNLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings
î
`st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/Read/ReadVariableOpReadVariableOpLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings*
_output_shapes
:	Äd*
dtype0

NoOpNoOp
Ò·
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*·
value·Bý¶ Bõ¶

layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer
loss

signatures*
* 
Î
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
layer_embedding
transformer_block
layer_output*

0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19*

0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19*
* 
°
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
/trace_0
0trace_1
1trace_2
2trace_3* 
6
3trace_0
4trace_1
5trace_2
6trace_3* 
* 
Á
7iter

8beta_1

9beta_2
	:decaymÉmÊmËmÌmÍmÎmÏmÐmÑmÒ mÓ!mÔ"mÕ#mÖ$m×%mØ&mÙ'mÚ(mÛ)mÜvÝvÞvßvàvávâvãvävåvæ vç!vè"vé#vê$vë%vì&ví'vî(vï)vð*
* 

;serving_default* 

0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19*

0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19*
* 

<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Atrace_0
Btrace_1* 

Ctrace_0
Dtrace_1* 
¬
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K	token_emb
Lpos_emb*
Ý
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S	attention
Tfeed_forward
	Unorm1
	Vnorm2
	Wdrop1
	Xdrop2*
¦
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

(kernel
)bias*

VARIABLE_VALUELst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUELst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUELst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEHst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUELst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEWst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEUst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_9/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_9/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_10/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_10/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUECst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUECst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&st_100_100_2048_2_2500/dense_11/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$st_100_100_2048_2_2500/dense_11/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
 
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

embeddings*
 
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

embeddings*
z
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15*
z
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
ü
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_query_dense
~
_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	$gamma
%beta*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	&gamma
'beta*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
¬
 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦_random_generator* 

(0
)1*

(0
)1*
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
<
¬	variables
­	keras_api

®total

¯count*
<
°	variables
±	keras_api

²total

³count*
* 

K0
L1*
* 
* 
* 

0*

0*
* 

´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*
* 
* 

0*

0*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
* 
.
S0
T1
U2
V3
W4
X5*
* 
* 
* 
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 

¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
* 
* 
ß
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses
Épartial_output_shape
Êfull_output_shape

kernel
bias*
ß
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses
Ñpartial_output_shape
Òfull_output_shape

kernel
bias*
ß
Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses
Ùpartial_output_shape
Úfull_output_shape

kernel
bias*

Û	variables
Ütrainable_variables
Ýregularization_losses
Þ	keras_api
ß__call__
+à&call_and_return_all_conditional_losses* 
¬
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses
ç_random_generator* 
ß
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses
îpartial_output_shape
ïfull_output_shape

kernel
bias*
¬
ð	variables
ñtrainable_variables
òregularization_losses
ó	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses

 kernel
!bias*
¬
ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses

"kernel
#bias*
 
 0
!1
"2
#3*
 
 0
!1
"2
#3*
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 

$0
%1*

$0
%1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

&0
'1*

&0
'1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 

®0
¯1*

¬	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

²0
³1*

°	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
1
}0
~1
2
3
4
5*
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses*
* 
* 
* 
* 

0
1*

0
1*
* 

¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses*
* 
* 
* 
* 

0
1*

0
1*
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
Û	variables
Ütrainable_variables
Ýregularization_losses
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses* 
* 
* 
* 

0
1*

0
1*
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses*
* 
* 
* 
* 

 0
!1*

 0
!1*
* 

»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
ð	variables
ñtrainable_variables
òregularization_losses
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses*

Àtrace_0* 

Átrace_0* 

"0
#1*

"0
#1*
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses*

Çtrace_0* 

Ètrace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¬¥
VARIABLE_VALUEOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
»´
VARIABLE_VALUE^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¹²
VARIABLE_VALUE\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_9/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_9/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_10/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_10/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
©¢
VARIABLE_VALUEKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
©¢
VARIABLE_VALUEKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/st_100_100_2048_2_2500/dense_11/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/st_100_100_2048_2_2500/dense_11/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¬¥
VARIABLE_VALUEOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
°©
VARIABLE_VALUESAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
®§
VARIABLE_VALUEQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
»´
VARIABLE_VALUE^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¹²
VARIABLE_VALUE\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_9/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_9/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_10/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_10/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
©¢
VARIABLE_VALUEKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
©¢
VARIABLE_VALUEKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/st_100_100_2048_2_2500/dense_11/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/st_100_100_2048_2_2500/dense_11/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_4Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿd
²
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4Lst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddingsLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddingsLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernelJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/biasJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernelHst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/biasLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernelJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/biasWst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernelUst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/biasDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gammaCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/betadense_9/kerneldense_9/biasdense_10/kerneldense_10/biasDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gammaCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta&st_100_100_2048_2_2500/dense_11/kernel$st_100_100_2048_2_2500/dense_11/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_130617
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ã,
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename`st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/Read/ReadVariableOp`st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/Read/ReadVariableOp`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/Read/ReadVariableOp^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/Read/ReadVariableOp^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/Read/ReadVariableOp\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/Read/ReadVariableOp`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/Read/ReadVariableOp^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/Read/ReadVariableOpkst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/Read/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/Read/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/Read/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/Read/ReadVariableOp:st_100_100_2048_2_2500/dense_11/kernel/Read/ReadVariableOp8st_100_100_2048_2_2500/dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/m/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/m/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/m/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpcAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/m/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m/Read/ReadVariableOprAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOppAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/m/Read/ReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/m/Read/ReadVariableOp_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/m/Read/ReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m/Read/ReadVariableOpAAdam/st_100_100_2048_2_2500/dense_11/kernel/m/Read/ReadVariableOp?Adam/st_100_100_2048_2_2500/dense_11/bias/m/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/v/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/v/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/v/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpcAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/v/Read/ReadVariableOpgAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpeAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v/Read/ReadVariableOprAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOppAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/v/Read/ReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/v/Read/ReadVariableOp_Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/v/Read/ReadVariableOp^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v/Read/ReadVariableOpAAdam/st_100_100_2048_2_2500/dense_11/kernel/v/Read/ReadVariableOp?Adam/st_100_100_2048_2_2500/dense_11/bias/v/Read/ReadVariableOpConst*Q
TinJ
H2F	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_132126
î!
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddingsLst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddingsLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernelJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/biasJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernelHst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/biasLst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernelJst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/biasWst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernelUst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gammaCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/betaDst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gammaCst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta&st_100_100_2048_2_2500/dense_11/kernel$st_100_100_2048_2_2500/dense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_1count_1totalcountSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/mSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/mSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/mQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/mQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/mOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/mSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/mQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/mJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/mKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/mJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m-Adam/st_100_100_2048_2_2500/dense_11/kernel/m+Adam/st_100_100_2048_2_2500/dense_11/bias/mSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/vSAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/vSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/vQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/vQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/vOAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/vSAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/vQAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/vJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/vKAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/vJAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v-Adam/st_100_100_2048_2_2500/dense_11/kernel/v+Adam/st_100_100_2048_2_2500/dense_11/bias/v*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_132340´â

¯
$__inference_signature_wrapper_130617
input_4
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_129464t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4
Ä
¸
H__inference_sequential_3_layer_call_and_return_conditional_losses_129643
dense_9_input!
dense_9_129632:	d
dense_9_129634:	"
dense_10_129637:	d
dense_10_129639:d
identity¢ dense_10/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallû
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_129632dense_9_129634*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_129502
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_129637dense_10_129639*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_129538|
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
NoOpNoOp!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
'
_user_specified_namedense_9_input
Ñ
Á
7__inference_st_100_100_2048_2_2500_layer_call_fn_131242

inputs
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_130241t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
åØ
ç
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131454

inputsT
Btoken_and_position_embedding_3_embedding_7_embedding_lookup_131253:ddU
Btoken_and_position_embedding_3_embedding_6_embedding_lookup_131258:	Ädj
Ttb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:dh
Rtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddZ
Htb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:dj
Ttb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:du
_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddc
Utb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:d[
Htb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dU
Ftb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	\
Itb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dU
Gtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:d=
*dense_11_tensordot_readvariableop_resource:	dÄ7
(dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookupZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:dÔ
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_7_embedding_lookup_131253-token_and_position_embedding_3/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/131253*
_output_shapes

:dd*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/131253*
_output_shapes

:ddÊ
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddº
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_6_embedding_lookup_131258inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/131258*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0£
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/131258*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddm
tb_100_2_2048_0.1/ShapeShape&token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:o
%tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
tb_100_2_2048_0.1/strided_sliceStridedSlice tb_100_2_2048_0.1/Shape:output:0.tb_100_2_2048_0.1/strided_slice/stack:output:00tb_100_2_2048_0.1/strided_slice/stack_1:output:00tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
'tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!tb_100_2_2048_0.1/strided_slice_1StridedSlice tb_100_2_2048_0.1/Shape:output:00tb_100_2_2048_0.1/strided_slice_1/stack:output:02tb_100_2_2048_0.1/strided_slice_1/stack_1:output:02tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¸
tb_100_2_2048_0.1/rangeRange&tb_100_2_2048_0.1/range/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0&tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:dx
'tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ú
!tb_100_2_2048_0.1/strided_slice_2StridedSlice tb_100_2_2048_0.1/range:output:00tb_100_2_2048_0.1/strided_slice_2/stack:output:02tb_100_2_2048_0.1/strided_slice_2/stack_1:output:02tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maska
tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : a
tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :¾
tb_100_2_2048_0.1/range_1Range(tb_100_2_2048_0.1/range_1/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0(tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:d
tb_100_2_2048_0.1/subSub"tb_100_2_2048_0.1/range_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/addAddV2tb_100_2_2048_0.1/sub:z:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/GreaterEqualGreaterEqual*tb_100_2_2048_0.1/strided_slice_2:output:0tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddc
!tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Ù
tb_100_2_2048_0.1/Reshape/shapePack*tb_100_2_2048_0.1/Reshape/shape/0:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/ReshapeReshape"tb_100_2_2048_0.1/GreaterEqual:z:0(tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:ddk
 tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
tb_100_2_2048_0.1/ExpandDims
ExpandDims(tb_100_2_2048_0.1/strided_slice:output:0)tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:h
tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      _
tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
tb_100_2_2048_0.1/concatConcatV2%tb_100_2_2048_0.1/ExpandDims:output:0 tb_100_2_2048_0.1/Const:output:0&tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/TileTile"tb_100_2_2048_0.1/Reshape:output:0!tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddà
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpRtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
:tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Qtb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÈ
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0
0tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Ctb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0Gtb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdds
.tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Þ
,tb_100_2_2048_0.1/multi_head_attention_3/MulMul6tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:07tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsum4tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:00tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
7tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÞ
3tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDimstb_100_2_2048_0.1/Tile:output:0@tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
5tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCast<tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ñ
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSub?tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:09tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎð
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMul8tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0?tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2?tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:08tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
8tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmax8tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÃ
9tb_100_2_2048_0.1/multi_head_attention_3/dropout/IdentityIdentityBtb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
8tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumBtb_100_2_2048_0.1/multi_head_attention_3/dropout/Identity:output:06tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcdú
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0Ð
Gtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumAtb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abeÞ
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpUtb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0¤
=tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2Ptb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0Ttb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd©
$tb_100_2_2048_0.1/dropout_6/IdentityIdentityAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd­
tb_100_2_2048_0.1/add_1AddV2&token_and_position_embedding_3/add:z:0-tb_100_2_2048_0.1/dropout_6/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_6/moments/meanMeantb_100_2_2048_0.1/add_1:z:0Otb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_1:z:0Etb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Multb_100_2_2048_0.1/add_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÉ
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Itb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdBtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1ProdDtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPack>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ü
:tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshape>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ù
0tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÁ
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpFtb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ò
.tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAdd9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd£
+tb_100_2_2048_0.1/sequential_3/dense_9/ReluRelu7tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"        
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShape9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Jtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdCtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1ProdEtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPack?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ý
;tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	Transpose9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshape?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpGtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0ô
/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAdd:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
$tb_100_2_2048_0.1/dropout_7/IdentityIdentity8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
tb_100_2_2048_0.1/add_2AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0-tb_100_2_2048_0.1/dropout_7/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_7/moments/meanMeantb_100_2_2048_0.1/add_2:z:0Otb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_2:z:0Etb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Multb_100_2_2048_0.1/add_2:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
dense_11/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:À
dense_11/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0"dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄe
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äb
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄm
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddü

NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpM^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpW^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp@^tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpJ^tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp?^tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpA^tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp>^tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp@^tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpLtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2°
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpVtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpItb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2~
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
É
Ú
-__inference_sequential_3_layer_call_fn_129556
dense_9_input
unknown:	d
	unknown_0:	
	unknown_1:	d
	unknown_2:d
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_129545s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
'
_user_specified_namedense_9_input
¬
ü
C__inference_dense_9_layer_call_and_return_conditional_losses_129502

inputs4
!tensordot_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
?
Þ
H__inference_sequential_3_layer_call_and_return_conditional_losses_131762

inputs<
)dense_9_tensordot_readvariableop_resource:	d6
'dense_9_biasadd_readvariableop_resource:	=
*dense_10_tensordot_readvariableop_resource:	d6
(dense_10_biasadd_readvariableop_resource:d
identity¢dense_10/BiasAdd/ReadVariableOp¢!dense_10/Tensordot/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢ dense_9/Tensordot/ReadVariableOp
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0`
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¢
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddl
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÐ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
Ð
ü
D__inference_dense_10_layer_call_and_return_conditional_losses_129538

inputs4
!tensordot_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ñ
Á
7__inference_st_100_100_2048_2_2500_layer_call_fn_131195

inputs
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_129876t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ð
ü
D__inference_dense_10_layer_call_and_return_conditional_losses_131898

inputs4
!tensordot_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
û·
ó 
C__inference_model_3_layer_call_and_return_conditional_losses_130923

inputsk
Yst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_130722:ddl
Yst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_130727:	Äd
kst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dds
ast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:d
ist_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddq
_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:d
kst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dds
ast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:d
vst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddz
lst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:dr
dst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dn
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:dr
_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dl
]st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	s
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dl
^st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:dr
dst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dn
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:dT
Ast_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource:	dÄN
?st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp¢8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup¢Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupq
;st_100_100_2048_2_2500/token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
Ist_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Kst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Kst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ß
Cst_100_100_2048_2_2500/token_and_position_embedding_3/strided_sliceStridedSliceDst_100_100_2048_2_2500/token_and_position_embedding_3/Shape:output:0Rst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack:output:0Tst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1:output:0Tst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ast_100_100_2048_2_2500/token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Ast_100_100_2048_2_2500/token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Æ
;st_100_100_2048_2_2500/token_and_position_embedding_3/rangeRangeJst_100_100_2048_2_2500/token_and_position_embedding_3/range/start:output:0Lst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice:output:0Jst_100_100_2048_2_2500/token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:d°
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherYst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_130722Dst_100_100_2048_2_2500/token_and_position_embedding_3/range:output:0*
Tindices0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/130722*
_output_shapes

:dd*
dtype0Û
[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentity[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/130722*
_output_shapes

:ddø
]st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1Identitydst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddÿ
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherYst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_130727inputs*
Tindices0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/130727*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0è
[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentity[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/130727*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
]st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1Identitydst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÈ
9st_100_100_2048_2_2500/token_and_position_embedding_3/addAddV2fst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0fst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/ShapeShape=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:
<st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_sliceStridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Est_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1StridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/rangeRange=st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/start:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0=st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:d
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2StridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/range:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maskx
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : x
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
0st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1Range?st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/start:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0?st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:dÖ
,st_100_100_2048_2_2500/tb_100_2_2048_0.1/subSub9st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dÏ
,st_100_100_2048_2_2500/tb_100_2_2048_0.1/addAddV20st_100_100_2048_2_2500/tb_100_2_2048_0.1/sub:z:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dã
5st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqualGreaterEqualAst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2:output:00st_100_100_2048_2_2500/tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddz
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :µ
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shapePackAst_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ä
0st_100_100_2048_2_2500/tb_100_2_2048_0.1/ReshapeReshape9st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqual:z:0?st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:dd
7st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿé
3st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims
ExpandDims?st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice:output:0@st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concatConcatV2<st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims:output:07st_100_100_2048_2_2500/tb_100_2_2048_0.1/Const:output:0=st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:à
-st_100_100_2048_2_2500/tb_100_2_2048_0.1/TileTile9st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape:output:08st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpkst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0è
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeú
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0Ì
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpist_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0ä
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0hst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeö
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOp_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0Æ
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpkst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0è
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeú
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0Ì
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Est_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=£
Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/MulMulMst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:0Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÏ
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsumKst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ£
Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDims6st_100_100_2048_2_2500/tb_100_2_2048_0.1/Tile:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCastSst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSubVst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎµ
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMulOst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:0Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddå
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmaxOst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddñ
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/dropout/IdentityIdentityYst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddå
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumYst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/dropout/Identity:output:0Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcd¨
mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpvst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0ust_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abe
cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOplst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0é
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd×
;st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/IdentityIdentityXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1AddV2=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd§
]st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/meanMean2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0fst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ï
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradientTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdµ
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifference2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
ast_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMean\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdß
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrtPst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdü
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpdst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Â
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMulRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Mul2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2MulTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddô
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSub_st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd÷
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ï
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShapeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ³
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¨
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ®
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1Prod[st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:³
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPackUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Á
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	TransposeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshapeUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÅ
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulXst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¾
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeXst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdï
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp]st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
Est_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAddPst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÑ
Bst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/ReluReluNst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdù
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Î
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShapePst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0ast_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: «
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdZst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ±
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1Prod\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0]st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¶
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPackVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Â
Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	TransposePst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÇ
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshapeVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÇ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:À
Hst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddð
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp^st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0¹
Fst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAddQst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0]st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÎ
;st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/IdentityIdentityOst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd§
]st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/meanMean2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0fst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ï
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradientTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdµ
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifference2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
ast_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMean\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdß
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrtPst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdü
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpdst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Â
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMulRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Mul2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2MulTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddô
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSub_st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd»
8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOpReadVariableOpAst_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0x
.st_100_100_2048_2_2500/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.st_100_100_2048_2_2500/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ±
/st_100_100_2048_2_2500/dense_11/Tensordot/ShapeShapeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:y
7st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
2st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2GatherV28st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:07st_100_100_2048_2_2500/dense_11/Tensordot/free:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
4st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1GatherV28st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:07st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0Bst_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/st_100_100_2048_2_2500/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Î
.st_100_100_2048_2_2500/dense_11/Tensordot/ProdProd;st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:08st_100_100_2048_2_2500/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1st_100_100_2048_2_2500/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ô
0st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1Prod=st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1:output:0:st_100_100_2048_2_2500/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5st_100_100_2048_2_2500/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
0st_100_100_2048_2_2500/dense_11/Tensordot/concatConcatV27st_100_100_2048_2_2500/dense_11/Tensordot/free:output:07st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0>st_100_100_2048_2_2500/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ù
/st_100_100_2048_2_2500/dense_11/Tensordot/stackPack7st_100_100_2048_2_2500/dense_11/Tensordot/Prod:output:09st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
3st_100_100_2048_2_2500/dense_11/Tensordot/transpose	TransposeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:09st_100_100_2048_2_2500/dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddê
1st_100_100_2048_2_2500/dense_11/Tensordot/ReshapeReshape7st_100_100_2048_2_2500/dense_11/Tensordot/transpose:y:08st_100_100_2048_2_2500/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
0st_100_100_2048_2_2500/dense_11/Tensordot/MatMulMatMul:st_100_100_2048_2_2500/dense_11/Tensordot/Reshape:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ|
1st_100_100_2048_2_2500/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äy
7st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
2st_100_100_2048_2_2500/dense_11/Tensordot/concat_1ConcatV2;st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:0:st_100_100_2048_2_2500/dense_11/Tensordot/Const_2:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ä
)st_100_100_2048_2_2500/dense_11/TensordotReshape:st_100_100_2048_2_2500/dense_11/Tensordot/MatMul:product:0;st_100_100_2048_2_2500/dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ³
6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOpReadVariableOp?st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0Ý
'st_100_100_2048_2_2500/dense_11/BiasAddBiasAdd2st_100_100_2048_2_2500/dense_11/Tensordot:output:0>st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
IdentityIdentity0st_100_100_2048_2_2500/dense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ§

Identity_1IdentityRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÈ
NoOpNoOp7^st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp9^st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp\^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp\^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpd^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpn^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpW^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpa^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpY^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpc^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpY^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpc^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpV^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpU^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpW^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpS^st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupS^st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2p
6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp2t
8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2º
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2º
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2Ê
cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpcst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2Þ
mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpmst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2°
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpVst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2Ä
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2´
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2È
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpbst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2´
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2È
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpbst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2®
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2¬
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpTst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2°
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2¨
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupRst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup2¨
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupRst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
´
Ó
-__inference_sequential_3_layer_call_fn_131705

inputs
unknown:	d
	unknown_0:	
	unknown_1:	d
	unknown_2:d
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_129605s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ò°
×>
"__inference__traced_restore_132340
file_prefixp
]assignvariableop_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings:	Ädq
_assignvariableop_1_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings:ddu
_assignvariableop_2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel:ddo
]assignvariableop_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias:ds
]assignvariableop_4_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel:ddm
[assignvariableop_5_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias:du
_assignvariableop_6_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel:ddo
]assignvariableop_7_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias:d
jassignvariableop_8_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel:ddv
hassignvariableop_9_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias:d5
"assignvariableop_10_dense_9_kernel:	d/
 assignvariableop_11_dense_9_bias:	6
#assignvariableop_12_dense_10_kernel:	d/
!assignvariableop_13_dense_10_bias:df
Xassignvariableop_14_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma:de
Wassignvariableop_15_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta:df
Xassignvariableop_16_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma:de
Wassignvariableop_17_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta:dM
:assignvariableop_18_st_100_100_2048_2_2500_dense_11_kernel:	dÄG
8assignvariableop_19_st_100_100_2048_2_2500_dense_11_bias:	Ä'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: #
assignvariableop_26_total: #
assignvariableop_27_count: z
gassignvariableop_28_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_m:	Ädy
gassignvariableop_29_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_m:dd}
gassignvariableop_30_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_m:ddw
eassignvariableop_31_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_m:d{
eassignvariableop_32_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_m:ddu
cassignvariableop_33_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_m:d}
gassignvariableop_34_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_m:ddw
eassignvariableop_35_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_m:d
rassignvariableop_36_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_m:dd~
passignvariableop_37_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_m:d<
)assignvariableop_38_adam_dense_9_kernel_m:	d6
'assignvariableop_39_adam_dense_9_bias_m:	=
*assignvariableop_40_adam_dense_10_kernel_m:	d6
(assignvariableop_41_adam_dense_10_bias_m:dm
_assignvariableop_42_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_m:dl
^assignvariableop_43_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_m:dm
_assignvariableop_44_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_m:dl
^assignvariableop_45_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_m:dT
Aassignvariableop_46_adam_st_100_100_2048_2_2500_dense_11_kernel_m:	dÄN
?assignvariableop_47_adam_st_100_100_2048_2_2500_dense_11_bias_m:	Äz
gassignvariableop_48_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_v:	Ädy
gassignvariableop_49_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_v:dd}
gassignvariableop_50_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_v:ddw
eassignvariableop_51_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_v:d{
eassignvariableop_52_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_v:ddu
cassignvariableop_53_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_v:d}
gassignvariableop_54_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_v:ddw
eassignvariableop_55_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_v:d
rassignvariableop_56_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_v:dd~
passignvariableop_57_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_v:d<
)assignvariableop_58_adam_dense_9_kernel_v:	d6
'assignvariableop_59_adam_dense_9_bias_v:	=
*assignvariableop_60_adam_dense_10_kernel_v:	d6
(assignvariableop_61_adam_dense_10_bias_v:dm
_assignvariableop_62_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_v:dl
^assignvariableop_63_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_v:dm
_assignvariableop_64_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_v:dl
^assignvariableop_65_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_v:dT
Aassignvariableop_66_adam_st_100_100_2048_2_2500_dense_11_kernel_v:	dÄN
?assignvariableop_67_adam_st_100_100_2048_2_2500_dense_11_bias_v:	Ä
identity_69¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ô
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*
valueBEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHý
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*
valueBEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOpAssignVariableOp]assignvariableop_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_1AssignVariableOp_assignvariableop_1_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_2AssignVariableOp_assignvariableop_2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_3AssignVariableOp]assignvariableop_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_4AssignVariableOp]assignvariableop_4_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ê
AssignVariableOp_5AssignVariableOp[assignvariableop_5_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_6AssignVariableOp_assignvariableop_6_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_7AssignVariableOp]assignvariableop_7_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ù
AssignVariableOp_8AssignVariableOpjassignvariableop_8_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:×
AssignVariableOp_9AssignVariableOphassignvariableop_9_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_9_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_9_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_14AssignVariableOpXassignvariableop_14_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOp_15AssignVariableOpWassignvariableop_15_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_16AssignVariableOpXassignvariableop_16_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOp_17AssignVariableOpWassignvariableop_17_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_18AssignVariableOp:assignvariableop_18_st_100_100_2048_2_2500_dense_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_19AssignVariableOp8assignvariableop_19_st_100_100_2048_2_2500_dense_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_28AssignVariableOpgassignvariableop_28_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_29AssignVariableOpgassignvariableop_29_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_30AssignVariableOpgassignvariableop_30_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_31AssignVariableOpeassignvariableop_31_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_32AssignVariableOpeassignvariableop_32_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_33AssignVariableOpcassignvariableop_33_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_34AssignVariableOpgassignvariableop_34_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_35AssignVariableOpeassignvariableop_35_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ã
AssignVariableOp_36AssignVariableOprassignvariableop_36_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:á
AssignVariableOp_37AssignVariableOppassignvariableop_37_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_9_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_9_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_10_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense_10_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_42AssignVariableOp_assignvariableop_42_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ï
AssignVariableOp_43AssignVariableOp^assignvariableop_43_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_44AssignVariableOp_assignvariableop_44_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ï
AssignVariableOp_45AssignVariableOp^assignvariableop_45_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_46AssignVariableOpAassignvariableop_46_adam_st_100_100_2048_2_2500_dense_11_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_47AssignVariableOp?assignvariableop_47_adam_st_100_100_2048_2_2500_dense_11_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_48AssignVariableOpgassignvariableop_48_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_49AssignVariableOpgassignvariableop_49_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_50AssignVariableOpgassignvariableop_50_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_51AssignVariableOpeassignvariableop_51_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_52AssignVariableOpeassignvariableop_52_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_53AssignVariableOpcassignvariableop_53_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ø
AssignVariableOp_54AssignVariableOpgassignvariableop_54_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ö
AssignVariableOp_55AssignVariableOpeassignvariableop_55_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ã
AssignVariableOp_56AssignVariableOprassignvariableop_56_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:á
AssignVariableOp_57AssignVariableOppassignvariableop_57_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_9_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_9_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_dense_10_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_dense_10_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_62AssignVariableOp_assignvariableop_62_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ï
AssignVariableOp_63AssignVariableOp^assignvariableop_63_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_64AssignVariableOp_assignvariableop_64_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ï
AssignVariableOp_65AssignVariableOp^assignvariableop_65_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_66AssignVariableOpAassignvariableop_66_adam_st_100_100_2048_2_2500_dense_11_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_67AssignVariableOp?assignvariableop_67_adam_st_100_100_2048_2_2500_dense_11_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 §
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_69Identity_69:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
åØ
ç
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_129876

inputsT
Btoken_and_position_embedding_3_embedding_7_embedding_lookup_129675:ddU
Btoken_and_position_embedding_3_embedding_6_embedding_lookup_129680:	Ädj
Ttb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:dh
Rtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddZ
Htb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:dj
Ttb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:du
_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddc
Utb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:d[
Htb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dU
Ftb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	\
Itb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dU
Gtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:d=
*dense_11_tensordot_readvariableop_resource:	dÄ7
(dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookupZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:dÔ
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_7_embedding_lookup_129675-token_and_position_embedding_3/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/129675*
_output_shapes

:dd*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/129675*
_output_shapes

:ddÊ
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddº
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_6_embedding_lookup_129680inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/129680*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0£
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/129680*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddm
tb_100_2_2048_0.1/ShapeShape&token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:o
%tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
tb_100_2_2048_0.1/strided_sliceStridedSlice tb_100_2_2048_0.1/Shape:output:0.tb_100_2_2048_0.1/strided_slice/stack:output:00tb_100_2_2048_0.1/strided_slice/stack_1:output:00tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
'tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!tb_100_2_2048_0.1/strided_slice_1StridedSlice tb_100_2_2048_0.1/Shape:output:00tb_100_2_2048_0.1/strided_slice_1/stack:output:02tb_100_2_2048_0.1/strided_slice_1/stack_1:output:02tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¸
tb_100_2_2048_0.1/rangeRange&tb_100_2_2048_0.1/range/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0&tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:dx
'tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ú
!tb_100_2_2048_0.1/strided_slice_2StridedSlice tb_100_2_2048_0.1/range:output:00tb_100_2_2048_0.1/strided_slice_2/stack:output:02tb_100_2_2048_0.1/strided_slice_2/stack_1:output:02tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maska
tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : a
tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :¾
tb_100_2_2048_0.1/range_1Range(tb_100_2_2048_0.1/range_1/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0(tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:d
tb_100_2_2048_0.1/subSub"tb_100_2_2048_0.1/range_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/addAddV2tb_100_2_2048_0.1/sub:z:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/GreaterEqualGreaterEqual*tb_100_2_2048_0.1/strided_slice_2:output:0tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddc
!tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Ù
tb_100_2_2048_0.1/Reshape/shapePack*tb_100_2_2048_0.1/Reshape/shape/0:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/ReshapeReshape"tb_100_2_2048_0.1/GreaterEqual:z:0(tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:ddk
 tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
tb_100_2_2048_0.1/ExpandDims
ExpandDims(tb_100_2_2048_0.1/strided_slice:output:0)tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:h
tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      _
tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
tb_100_2_2048_0.1/concatConcatV2%tb_100_2_2048_0.1/ExpandDims:output:0 tb_100_2_2048_0.1/Const:output:0&tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/TileTile"tb_100_2_2048_0.1/Reshape:output:0!tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddà
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpRtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
:tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Qtb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÈ
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0
0tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Ctb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0Gtb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdds
.tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Þ
,tb_100_2_2048_0.1/multi_head_attention_3/MulMul6tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:07tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsum4tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:00tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
7tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÞ
3tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDimstb_100_2_2048_0.1/Tile:output:0@tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
5tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCast<tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ñ
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSub?tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:09tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎð
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMul8tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0?tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2?tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:08tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
8tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmax8tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÃ
9tb_100_2_2048_0.1/multi_head_attention_3/dropout/IdentityIdentityBtb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
8tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumBtb_100_2_2048_0.1/multi_head_attention_3/dropout/Identity:output:06tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcdú
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0Ð
Gtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumAtb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abeÞ
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpUtb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0¤
=tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2Ptb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0Ttb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd©
$tb_100_2_2048_0.1/dropout_6/IdentityIdentityAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd­
tb_100_2_2048_0.1/add_1AddV2&token_and_position_embedding_3/add:z:0-tb_100_2_2048_0.1/dropout_6/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_6/moments/meanMeantb_100_2_2048_0.1/add_1:z:0Otb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_1:z:0Etb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Multb_100_2_2048_0.1/add_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÉ
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Itb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdBtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1ProdDtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPack>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ü
:tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshape>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ù
0tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÁ
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpFtb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ò
.tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAdd9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd£
+tb_100_2_2048_0.1/sequential_3/dense_9/ReluRelu7tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"        
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShape9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Jtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdCtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1ProdEtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPack?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ý
;tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	Transpose9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshape?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpGtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0ô
/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAdd:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
$tb_100_2_2048_0.1/dropout_7/IdentityIdentity8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
tb_100_2_2048_0.1/add_2AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0-tb_100_2_2048_0.1/dropout_7/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_7/moments/meanMeantb_100_2_2048_0.1/add_2:z:0Otb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_2:z:0Etb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Multb_100_2_2048_0.1/add_2:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
dense_11/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:À
dense_11/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0"dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄe
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äb
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄm
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddü

NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpM^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpW^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp@^tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpJ^tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp?^tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpA^tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp>^tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp@^tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpLtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2°
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpVtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpItb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2~
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
×

(__inference_dense_9_layer_call_fn_131828

inputs
unknown:	d
	unknown_0:	
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_129502t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿdd: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ë
ç
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_130241

inputsT
Btoken_and_position_embedding_3_embedding_7_embedding_lookup_130027:ddU
Btoken_and_position_embedding_3_embedding_6_embedding_lookup_130032:	Ädj
Ttb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:dh
Rtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddZ
Htb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:dj
Ttb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:du
_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddc
Utb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:d[
Htb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dU
Ftb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	\
Itb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dU
Gtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:d=
*dense_11_tensordot_readvariableop_resource:	dÄ7
(dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookupZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:dÔ
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_7_embedding_lookup_130027-token_and_position_embedding_3/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/130027*
_output_shapes

:dd*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/130027*
_output_shapes

:ddÊ
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddº
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_6_embedding_lookup_130032inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/130032*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0£
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/130032*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddm
tb_100_2_2048_0.1/ShapeShape&token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:o
%tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
tb_100_2_2048_0.1/strided_sliceStridedSlice tb_100_2_2048_0.1/Shape:output:0.tb_100_2_2048_0.1/strided_slice/stack:output:00tb_100_2_2048_0.1/strided_slice/stack_1:output:00tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
'tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!tb_100_2_2048_0.1/strided_slice_1StridedSlice tb_100_2_2048_0.1/Shape:output:00tb_100_2_2048_0.1/strided_slice_1/stack:output:02tb_100_2_2048_0.1/strided_slice_1/stack_1:output:02tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¸
tb_100_2_2048_0.1/rangeRange&tb_100_2_2048_0.1/range/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0&tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:dx
'tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ú
!tb_100_2_2048_0.1/strided_slice_2StridedSlice tb_100_2_2048_0.1/range:output:00tb_100_2_2048_0.1/strided_slice_2/stack:output:02tb_100_2_2048_0.1/strided_slice_2/stack_1:output:02tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maska
tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : a
tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :¾
tb_100_2_2048_0.1/range_1Range(tb_100_2_2048_0.1/range_1/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0(tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:d
tb_100_2_2048_0.1/subSub"tb_100_2_2048_0.1/range_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/addAddV2tb_100_2_2048_0.1/sub:z:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/GreaterEqualGreaterEqual*tb_100_2_2048_0.1/strided_slice_2:output:0tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddc
!tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Ù
tb_100_2_2048_0.1/Reshape/shapePack*tb_100_2_2048_0.1/Reshape/shape/0:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/ReshapeReshape"tb_100_2_2048_0.1/GreaterEqual:z:0(tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:ddk
 tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
tb_100_2_2048_0.1/ExpandDims
ExpandDims(tb_100_2_2048_0.1/strided_slice:output:0)tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:h
tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      _
tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
tb_100_2_2048_0.1/concatConcatV2%tb_100_2_2048_0.1/ExpandDims:output:0 tb_100_2_2048_0.1/Const:output:0&tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/TileTile"tb_100_2_2048_0.1/Reshape:output:0!tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddà
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpRtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
:tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Qtb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÈ
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0
0tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Ctb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0Gtb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdds
.tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Þ
,tb_100_2_2048_0.1/multi_head_attention_3/MulMul6tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:07tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsum4tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:00tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
7tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÞ
3tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDimstb_100_2_2048_0.1/Tile:output:0@tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
5tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCast<tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ñ
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSub?tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:09tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎð
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMul8tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0?tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2?tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:08tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
8tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmax8tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
8tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumBtb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:06tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcdú
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0Ð
Gtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumAtb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abeÞ
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpUtb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0¤
=tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2Ptb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0Ttb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddn
)tb_100_2_2048_0.1/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Û
'tb_100_2_2048_0.1/dropout_6/dropout/MulMulAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:02tb_100_2_2048_0.1/dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
)tb_100_2_2048_0.1/dropout_6/dropout/ShapeShapeAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:È
@tb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniformRandomUniform2tb_100_2_2048_0.1/dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0w
2tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqualGreaterEqualItb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniform:output:0;tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
(tb_100_2_2048_0.1/dropout_6/dropout/CastCast4tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÁ
)tb_100_2_2048_0.1/dropout_6/dropout/Mul_1Mul+tb_100_2_2048_0.1/dropout_6/dropout/Mul:z:0,tb_100_2_2048_0.1/dropout_6/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd­
tb_100_2_2048_0.1/add_1AddV2&token_and_position_embedding_3/add:z:0-tb_100_2_2048_0.1/dropout_6/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_6/moments/meanMeantb_100_2_2048_0.1/add_1:z:0Otb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_1:z:0Etb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Multb_100_2_2048_0.1/add_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÉ
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Itb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdBtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1ProdDtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPack>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ü
:tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshape>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ù
0tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÁ
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpFtb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ò
.tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAdd9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd£
+tb_100_2_2048_0.1/sequential_3/dense_9/ReluRelu7tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"        
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShape9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Jtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdCtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1ProdEtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPack?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ý
;tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	Transpose9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshape?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpGtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0ô
/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAdd:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddn
)tb_100_2_2048_0.1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Ò
'tb_100_2_2048_0.1/dropout_7/dropout/MulMul8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:02tb_100_2_2048_0.1/dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
)tb_100_2_2048_0.1/dropout_7/dropout/ShapeShape8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:È
@tb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniformRandomUniform2tb_100_2_2048_0.1/dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0w
2tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqualGreaterEqualItb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniform:output:0;tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
(tb_100_2_2048_0.1/dropout_7/dropout/CastCast4tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÁ
)tb_100_2_2048_0.1/dropout_7/dropout/Mul_1Mul+tb_100_2_2048_0.1/dropout_7/dropout/Mul:z:0,tb_100_2_2048_0.1/dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
tb_100_2_2048_0.1/add_2AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0-tb_100_2_2048_0.1/dropout_7/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_7/moments/meanMeantb_100_2_2048_0.1/add_2:z:0Otb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_2:z:0Etb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Multb_100_2_2048_0.1/add_2:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
dense_11/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:À
dense_11/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0"dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄe
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äb
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄm
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddü

NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpM^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpW^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp@^tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpJ^tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp?^tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpA^tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp>^tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp@^tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpLtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2°
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpVtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpItb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2~
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¶
³
(__inference_model_3_layer_call_fn_130474
input_4
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_130382t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4
 Ï
ó 
C__inference_model_3_layer_call_and_return_conditional_losses_131148

inputsk
Yst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_130934:ddl
Yst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_130939:	Äd
kst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dds
ast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:d
ist_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddq
_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:d
kst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dds
ast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:d
vst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddz
lst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:dr
dst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dn
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:dr
_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dl
]st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	s
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dl
^st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:dr
dst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dn
`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:dT
Ast_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource:	dÄN
?st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp¢8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup¢Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupq
;st_100_100_2048_2_2500/token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
Ist_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Kst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Kst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ß
Cst_100_100_2048_2_2500/token_and_position_embedding_3/strided_sliceStridedSliceDst_100_100_2048_2_2500/token_and_position_embedding_3/Shape:output:0Rst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack:output:0Tst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1:output:0Tst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ast_100_100_2048_2_2500/token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Ast_100_100_2048_2_2500/token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Æ
;st_100_100_2048_2_2500/token_and_position_embedding_3/rangeRangeJst_100_100_2048_2_2500/token_and_position_embedding_3/range/start:output:0Lst_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice:output:0Jst_100_100_2048_2_2500/token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:d°
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherYst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_130934Dst_100_100_2048_2_2500/token_and_position_embedding_3/range:output:0*
Tindices0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/130934*
_output_shapes

:dd*
dtype0Û
[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentity[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/130934*
_output_shapes

:ddø
]st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1Identitydst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddÿ
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherYst_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_130939inputs*
Tindices0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/130939*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0è
[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentity[st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*l
_classb
`^loc:@st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/130939*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
]st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1Identitydst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÈ
9st_100_100_2048_2_2500/token_and_position_embedding_3/addAddV2fst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0fst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/ShapeShape=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:
<st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_sliceStridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Est_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1StridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/rangeRange=st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/start:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0=st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:d
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2StridedSlice7st_100_100_2048_2_2500/tb_100_2_2048_0.1/range:output:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maskx
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : x
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
0st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1Range?st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/start:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0?st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:dÖ
,st_100_100_2048_2_2500/tb_100_2_2048_0.1/subSub9st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dÏ
,st_100_100_2048_2_2500/tb_100_2_2048_0.1/addAddV20st_100_100_2048_2_2500/tb_100_2_2048_0.1/sub:z:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dã
5st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqualGreaterEqualAst_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2:output:00st_100_100_2048_2_2500/tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddz
8st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :µ
6st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shapePackAst_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0Ast_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ä
0st_100_100_2048_2_2500/tb_100_2_2048_0.1/ReshapeReshape9st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqual:z:0?st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:dd
7st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿé
3st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims
ExpandDims?st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice:output:0@st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
4st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concatConcatV2<st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims:output:07st_100_100_2048_2_2500/tb_100_2_2048_0.1/Const:output:0=st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:à
-st_100_100_2048_2_2500/tb_100_2_2048_0.1/TileTile9st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape:output:08st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpkst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0è
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeú
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0Ì
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpist_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0ä
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0hst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeö
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOp_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0Æ
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpkst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0è
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeú
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpast_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0Ì
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2\st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Est_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=£
Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/MulMulMst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:0Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÏ
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsumKst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:0Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ£
Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDims6st_100_100_2048_2_2500/tb_100_2_2048_0.1/Tile:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCastSst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSubVst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎµ
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMulOst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:0Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddå
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmaxOst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddå
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumYst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:0Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcd¨
mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpvst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0ust_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abe
cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOplst_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0é
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2gst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0kst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8? 
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/MulMulXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÈ
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/ShapeShapeXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:ö
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniformRandomUniformIst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ã
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqualGreaterEqual`st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniform:output:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÙ
?st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/CastCastKst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Mul_1MulBst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Mul:z:0Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1AddV2=st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd§
]st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/meanMean2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0fst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ï
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradientTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdµ
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifference2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
ast_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMean\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdß
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrtPst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdü
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpdst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Â
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMulRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Mul2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2MulTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddô
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSub_st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd÷
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ï
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShapeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ³
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0`st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¨
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ®
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1Prod[st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:³
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPackUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Á
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	TransposeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshapeUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÅ
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulXst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¾
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeXst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdï
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp]st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
Est_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAddPst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÑ
Bst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/ReluReluNst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdù
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Î
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShapePst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0ast_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: «
Mst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdZst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ±
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1Prod\st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0]st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¶
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPackVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Â
Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	TransposePst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÇ
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshapeVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÇ
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
Qst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Yst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0_st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:À
Hst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeYst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Zst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddð
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp^st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0¹
Fst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAddQst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0]st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
>st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/MulMulOst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¿
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/ShapeShapeOst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:ö
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniformRandomUniformIst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0
Ist_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ã
Gst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqualGreaterEqual`st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniform:output:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÙ
?st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/CastCastKst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
@st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Mul_1MulBst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Mul:z:0Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
.st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd§
]st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¶
Kst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/meanMean2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0fst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ï
Sst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradientTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdµ
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifference2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
ast_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
Ost_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMean\st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0jst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdß
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrtPst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdü
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpdst_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Â
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMulRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Mul2st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2MulTst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddô
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp`st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0¾
Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSub_st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
Nst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2Rst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:0Pst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd»
8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOpReadVariableOpAst_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0x
.st_100_100_2048_2_2500/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.st_100_100_2048_2_2500/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ±
/st_100_100_2048_2_2500/dense_11/Tensordot/ShapeShapeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:y
7st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
2st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2GatherV28st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:07st_100_100_2048_2_2500/dense_11/Tensordot/free:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
4st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1GatherV28st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:07st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0Bst_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/st_100_100_2048_2_2500/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Î
.st_100_100_2048_2_2500/dense_11/Tensordot/ProdProd;st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:08st_100_100_2048_2_2500/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1st_100_100_2048_2_2500/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ô
0st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1Prod=st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1:output:0:st_100_100_2048_2_2500/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5st_100_100_2048_2_2500/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
0st_100_100_2048_2_2500/dense_11/Tensordot/concatConcatV27st_100_100_2048_2_2500/dense_11/Tensordot/free:output:07st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0>st_100_100_2048_2_2500/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ù
/st_100_100_2048_2_2500/dense_11/Tensordot/stackPack7st_100_100_2048_2_2500/dense_11/Tensordot/Prod:output:09st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
3st_100_100_2048_2_2500/dense_11/Tensordot/transpose	TransposeRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:09st_100_100_2048_2_2500/dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddê
1st_100_100_2048_2_2500/dense_11/Tensordot/ReshapeReshape7st_100_100_2048_2_2500/dense_11/Tensordot/transpose:y:08st_100_100_2048_2_2500/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
0st_100_100_2048_2_2500/dense_11/Tensordot/MatMulMatMul:st_100_100_2048_2_2500/dense_11/Tensordot/Reshape:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ|
1st_100_100_2048_2_2500/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äy
7st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
2st_100_100_2048_2_2500/dense_11/Tensordot/concat_1ConcatV2;st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:0:st_100_100_2048_2_2500/dense_11/Tensordot/Const_2:output:0@st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ä
)st_100_100_2048_2_2500/dense_11/TensordotReshape:st_100_100_2048_2_2500/dense_11/Tensordot/MatMul:product:0;st_100_100_2048_2_2500/dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ³
6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOpReadVariableOp?st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0Ý
'st_100_100_2048_2_2500/dense_11/BiasAddBiasAdd2st_100_100_2048_2_2500/dense_11/Tensordot:output:0>st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
IdentityIdentity0st_100_100_2048_2_2500/dense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ§

Identity_1IdentityRst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÈ
NoOpNoOp7^st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp9^st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp\^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp\^st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpd^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpn^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpW^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpa^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpY^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpc^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpY^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpc^st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpV^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpX^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpU^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpW^st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpS^st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupS^st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2p
6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp6st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp2t
8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp8st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2º
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2º
[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp[st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2Ê
cst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpcst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2Þ
mst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpmst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2°
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpVst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2Ä
`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp`st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2´
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2È
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpbst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2´
Xst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpXst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2È
bst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpbst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2®
Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpUst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2²
Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpWst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2¬
Tst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpTst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2°
Vst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpVst_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2¨
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupRst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup2¨
Rst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupRst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

î
C__inference_model_3_layer_call_and_return_conditional_losses_130568
input_4/
st_100_100_2048_2_2500_130524:dd0
st_100_100_2048_2_2500_130526:	Äd3
st_100_100_2048_2_2500_130528:dd/
st_100_100_2048_2_2500_130530:d3
st_100_100_2048_2_2500_130532:dd/
st_100_100_2048_2_2500_130534:d3
st_100_100_2048_2_2500_130536:dd/
st_100_100_2048_2_2500_130538:d3
st_100_100_2048_2_2500_130540:dd+
st_100_100_2048_2_2500_130542:d+
st_100_100_2048_2_2500_130544:d+
st_100_100_2048_2_2500_130546:d0
st_100_100_2048_2_2500_130548:	d,
st_100_100_2048_2_2500_130550:	0
st_100_100_2048_2_2500_130552:	d+
st_100_100_2048_2_2500_130554:d+
st_100_100_2048_2_2500_130556:d+
st_100_100_2048_2_2500_130558:d0
st_100_100_2048_2_2500_130560:	dÄ,
st_100_100_2048_2_2500_130562:	Ä
identity

identity_1¢.st_100_100_2048_2_2500/StatefulPartitionedCall
.st_100_100_2048_2_2500/StatefulPartitionedCallStatefulPartitionedCallinput_4st_100_100_2048_2_2500_130524st_100_100_2048_2_2500_130526st_100_100_2048_2_2500_130528st_100_100_2048_2_2500_130530st_100_100_2048_2_2500_130532st_100_100_2048_2_2500_130534st_100_100_2048_2_2500_130536st_100_100_2048_2_2500_130538st_100_100_2048_2_2500_130540st_100_100_2048_2_2500_130542st_100_100_2048_2_2500_130544st_100_100_2048_2_2500_130546st_100_100_2048_2_2500_130548st_100_100_2048_2_2500_130550st_100_100_2048_2_2500_130552st_100_100_2048_2_2500_130554st_100_100_2048_2_2500_130556st_100_100_2048_2_2500_130558st_100_100_2048_2_2500_130560st_100_100_2048_2_2500_130562* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_130241
IdentityIdentity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddw
NoOpNoOp/^st_100_100_2048_2_2500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2`
.st_100_100_2048_2_2500/StatefulPartitionedCall.st_100_100_2048_2_2500/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4

î
C__inference_model_3_layer_call_and_return_conditional_losses_130521
input_4/
st_100_100_2048_2_2500_130477:dd0
st_100_100_2048_2_2500_130479:	Äd3
st_100_100_2048_2_2500_130481:dd/
st_100_100_2048_2_2500_130483:d3
st_100_100_2048_2_2500_130485:dd/
st_100_100_2048_2_2500_130487:d3
st_100_100_2048_2_2500_130489:dd/
st_100_100_2048_2_2500_130491:d3
st_100_100_2048_2_2500_130493:dd+
st_100_100_2048_2_2500_130495:d+
st_100_100_2048_2_2500_130497:d+
st_100_100_2048_2_2500_130499:d0
st_100_100_2048_2_2500_130501:	d,
st_100_100_2048_2_2500_130503:	0
st_100_100_2048_2_2500_130505:	d+
st_100_100_2048_2_2500_130507:d+
st_100_100_2048_2_2500_130509:d+
st_100_100_2048_2_2500_130511:d0
st_100_100_2048_2_2500_130513:	dÄ,
st_100_100_2048_2_2500_130515:	Ä
identity

identity_1¢.st_100_100_2048_2_2500/StatefulPartitionedCall
.st_100_100_2048_2_2500/StatefulPartitionedCallStatefulPartitionedCallinput_4st_100_100_2048_2_2500_130477st_100_100_2048_2_2500_130479st_100_100_2048_2_2500_130481st_100_100_2048_2_2500_130483st_100_100_2048_2_2500_130485st_100_100_2048_2_2500_130487st_100_100_2048_2_2500_130489st_100_100_2048_2_2500_130491st_100_100_2048_2_2500_130493st_100_100_2048_2_2500_130495st_100_100_2048_2_2500_130497st_100_100_2048_2_2500_130499st_100_100_2048_2_2500_130501st_100_100_2048_2_2500_130503st_100_100_2048_2_2500_130505st_100_100_2048_2_2500_130507st_100_100_2048_2_2500_130509st_100_100_2048_2_2500_130511st_100_100_2048_2_2500_130513st_100_100_2048_2_2500_130515* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_129876
IdentityIdentity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddw
NoOpNoOp/^st_100_100_2048_2_2500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2`
.st_100_100_2048_2_2500/StatefulPartitionedCall.st_100_100_2048_2_2500/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4
¯
±
H__inference_sequential_3_layer_call_and_return_conditional_losses_129605

inputs!
dense_9_129594:	d
dense_9_129596:	"
dense_10_129599:	d
dense_10_129601:d
identity¢ dense_10/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallô
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_129594dense_9_129596*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_129502
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_129599dense_10_129601*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_129538|
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
NoOpNoOp!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs

í
C__inference_model_3_layer_call_and_return_conditional_losses_129921

inputs/
st_100_100_2048_2_2500_129877:dd0
st_100_100_2048_2_2500_129879:	Äd3
st_100_100_2048_2_2500_129881:dd/
st_100_100_2048_2_2500_129883:d3
st_100_100_2048_2_2500_129885:dd/
st_100_100_2048_2_2500_129887:d3
st_100_100_2048_2_2500_129889:dd/
st_100_100_2048_2_2500_129891:d3
st_100_100_2048_2_2500_129893:dd+
st_100_100_2048_2_2500_129895:d+
st_100_100_2048_2_2500_129897:d+
st_100_100_2048_2_2500_129899:d0
st_100_100_2048_2_2500_129901:	d,
st_100_100_2048_2_2500_129903:	0
st_100_100_2048_2_2500_129905:	d+
st_100_100_2048_2_2500_129907:d+
st_100_100_2048_2_2500_129909:d+
st_100_100_2048_2_2500_129911:d0
st_100_100_2048_2_2500_129913:	dÄ,
st_100_100_2048_2_2500_129915:	Ä
identity

identity_1¢.st_100_100_2048_2_2500/StatefulPartitionedCall
.st_100_100_2048_2_2500/StatefulPartitionedCallStatefulPartitionedCallinputsst_100_100_2048_2_2500_129877st_100_100_2048_2_2500_129879st_100_100_2048_2_2500_129881st_100_100_2048_2_2500_129883st_100_100_2048_2_2500_129885st_100_100_2048_2_2500_129887st_100_100_2048_2_2500_129889st_100_100_2048_2_2500_129891st_100_100_2048_2_2500_129893st_100_100_2048_2_2500_129895st_100_100_2048_2_2500_129897st_100_100_2048_2_2500_129899st_100_100_2048_2_2500_129901st_100_100_2048_2_2500_129903st_100_100_2048_2_2500_129905st_100_100_2048_2_2500_129907st_100_100_2048_2_2500_129909st_100_100_2048_2_2500_129911st_100_100_2048_2_2500_129913st_100_100_2048_2_2500_129915* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_129876
IdentityIdentity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddw
NoOpNoOp/^st_100_100_2048_2_2500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2`
.st_100_100_2048_2_2500/StatefulPartitionedCall.st_100_100_2048_2_2500/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

í
C__inference_model_3_layer_call_and_return_conditional_losses_130382

inputs/
st_100_100_2048_2_2500_130338:dd0
st_100_100_2048_2_2500_130340:	Äd3
st_100_100_2048_2_2500_130342:dd/
st_100_100_2048_2_2500_130344:d3
st_100_100_2048_2_2500_130346:dd/
st_100_100_2048_2_2500_130348:d3
st_100_100_2048_2_2500_130350:dd/
st_100_100_2048_2_2500_130352:d3
st_100_100_2048_2_2500_130354:dd+
st_100_100_2048_2_2500_130356:d+
st_100_100_2048_2_2500_130358:d+
st_100_100_2048_2_2500_130360:d0
st_100_100_2048_2_2500_130362:	d,
st_100_100_2048_2_2500_130364:	0
st_100_100_2048_2_2500_130366:	d+
st_100_100_2048_2_2500_130368:d+
st_100_100_2048_2_2500_130370:d+
st_100_100_2048_2_2500_130372:d0
st_100_100_2048_2_2500_130374:	dÄ,
st_100_100_2048_2_2500_130376:	Ä
identity

identity_1¢.st_100_100_2048_2_2500/StatefulPartitionedCall
.st_100_100_2048_2_2500/StatefulPartitionedCallStatefulPartitionedCallinputsst_100_100_2048_2_2500_130338st_100_100_2048_2_2500_130340st_100_100_2048_2_2500_130342st_100_100_2048_2_2500_130344st_100_100_2048_2_2500_130346st_100_100_2048_2_2500_130348st_100_100_2048_2_2500_130350st_100_100_2048_2_2500_130352st_100_100_2048_2_2500_130354st_100_100_2048_2_2500_130356st_100_100_2048_2_2500_130358st_100_100_2048_2_2500_130360st_100_100_2048_2_2500_130362st_100_100_2048_2_2500_130364st_100_100_2048_2_2500_130366st_100_100_2048_2_2500_130368st_100_100_2048_2_2500_130370st_100_100_2048_2_2500_130372st_100_100_2048_2_2500_130374st_100_100_2048_2_2500_130376* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_130241
IdentityIdentity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity7st_100_100_2048_2_2500/StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddw
NoOpNoOp/^st_100_100_2048_2_2500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2`
.st_100_100_2048_2_2500/StatefulPartitionedCall.st_100_100_2048_2_2500/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ú¦
¹0
__inference__traced_save_132126
file_prefixk
gsavev2_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_read_readvariableopk
gsavev2_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_read_readvariableopk
gsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_read_readvariableopi
esavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_read_readvariableopi
esavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_read_readvariableopg
csavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_read_readvariableopk
gsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_read_readvariableopi
esavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_read_readvariableopv
rsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_read_readvariableopt
psavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableopc
_savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_read_readvariableopb
^savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_read_readvariableopc
_savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_read_readvariableopb
^savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_read_readvariableopE
Asavev2_st_100_100_2048_2_2500_dense_11_kernel_read_readvariableopC
?savev2_st_100_100_2048_2_2500_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_m_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_m_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_m_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_m_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_m_read_readvariableopn
jsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_m_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_m_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_m_read_readvariableop}
ysavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_m_read_readvariableop{
wsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopj
fsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_m_read_readvariableopi
esavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_m_read_readvariableopj
fsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_m_read_readvariableopi
esavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_m_read_readvariableopL
Hsavev2_adam_st_100_100_2048_2_2500_dense_11_kernel_m_read_readvariableopJ
Fsavev2_adam_st_100_100_2048_2_2500_dense_11_bias_m_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_v_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_v_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_v_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_v_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_v_read_readvariableopn
jsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_v_read_readvariableopr
nsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_v_read_readvariableopp
lsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_v_read_readvariableop}
ysavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_v_read_readvariableop{
wsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopj
fsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_v_read_readvariableopi
esavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_v_read_readvariableopj
fsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_v_read_readvariableopi
esavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_v_read_readvariableopL
Hsavev2_adam_st_100_100_2048_2_2500_dense_11_kernel_v_read_readvariableopJ
Fsavev2_adam_st_100_100_2048_2_2500_dense_11_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ñ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*
valueBEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHú
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*
valueBEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ±/
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0gsavev2_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_read_readvariableopgsavev2_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_read_readvariableopgsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_read_readvariableopesavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_read_readvariableopesavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_read_readvariableopcsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_read_readvariableopgsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_read_readvariableopesavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_read_readvariableoprsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_read_readvariableoppsavev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop_savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_read_readvariableop^savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_read_readvariableop_savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_read_readvariableop^savev2_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_read_readvariableopAsavev2_st_100_100_2048_2_2500_dense_11_kernel_read_readvariableop?savev2_st_100_100_2048_2_2500_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_m_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_m_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_m_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_m_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_m_read_readvariableopjsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_m_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_m_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_m_read_readvariableopysavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_m_read_readvariableopwsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableopfsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_m_read_readvariableopesavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_m_read_readvariableopfsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_m_read_readvariableopesavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_m_read_readvariableopHsavev2_adam_st_100_100_2048_2_2500_dense_11_kernel_m_read_readvariableopFsavev2_adam_st_100_100_2048_2_2500_dense_11_bias_m_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embeddings_v_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embeddings_v_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_kernel_v_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_bias_v_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_kernel_v_read_readvariableopjsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_bias_v_read_readvariableopnsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_kernel_v_read_readvariableoplsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_bias_v_read_readvariableopysavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_kernel_v_read_readvariableopwsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableopfsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_gamma_v_read_readvariableopesavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_beta_v_read_readvariableopfsavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_gamma_v_read_readvariableopesavev2_adam_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_beta_v_read_readvariableopHsavev2_adam_st_100_100_2048_2_2500_dense_11_kernel_v_read_readvariableopFsavev2_adam_st_100_100_2048_2_2500_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ã
_input_shapesÑ
Î: :	Äd:dd:dd:d:dd:d:dd:d:dd:d:	d::	d:d:d:d:d:d:	dÄ:Ä: : : : : : : : :	Äd:dd:dd:d:dd:d:dd:d:dd:d:	d::	d:d:d:d:d:d:	dÄ:Ä:	Äd:dd:dd:d:dd:d:dd:d:dd:d:	d::	d:d:d:d:d:d:	dÄ:Ä: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Äd:$ 

_output_shapes

:dd:($
"
_output_shapes
:dd:$ 

_output_shapes

:d:($
"
_output_shapes
:dd:$ 

_output_shapes

:d:($
"
_output_shapes
:dd:$ 

_output_shapes

:d:(	$
"
_output_shapes
:dd: 


_output_shapes
:d:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d:%!

_output_shapes
:	dÄ:!

_output_shapes	
:Ä:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Äd:$ 

_output_shapes

:dd:($
"
_output_shapes
:dd:$  

_output_shapes

:d:(!$
"
_output_shapes
:dd:$" 

_output_shapes

:d:(#$
"
_output_shapes
:dd:$$ 

_output_shapes

:d:(%$
"
_output_shapes
:dd: &

_output_shapes
:d:%'!

_output_shapes
:	d:!(

_output_shapes	
::%)!

_output_shapes
:	d: *

_output_shapes
:d: +

_output_shapes
:d: ,

_output_shapes
:d: -

_output_shapes
:d: .

_output_shapes
:d:%/!

_output_shapes
:	dÄ:!0

_output_shapes	
:Ä:%1!

_output_shapes
:	Äd:$2 

_output_shapes

:dd:(3$
"
_output_shapes
:dd:$4 

_output_shapes

:d:(5$
"
_output_shapes
:dd:$6 

_output_shapes

:d:(7$
"
_output_shapes
:dd:$8 

_output_shapes

:d:(9$
"
_output_shapes
:dd: :

_output_shapes
:d:%;!

_output_shapes
:	d:!<

_output_shapes	
::%=!

_output_shapes
:	d: >

_output_shapes
:d: ?

_output_shapes
:d: @

_output_shapes
:d: A

_output_shapes
:d: B

_output_shapes
:d:%C!

_output_shapes
:	dÄ:!D

_output_shapes	
:Ä:E

_output_shapes
: 
É
Ú
-__inference_sequential_3_layer_call_fn_129629
dense_9_input
unknown:	d
	unknown_0:	
	unknown_1:	d
	unknown_2:d
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_129605s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
'
_user_specified_namedense_9_input
³
²
(__inference_model_3_layer_call_fn_130711

inputs
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_130382t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
³
²
(__inference_model_3_layer_call_fn_130664

inputs
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_129921t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ø

)__inference_dense_10_layer_call_fn_131868

inputs
unknown:	d
	unknown_0:d
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_129538s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
?
Þ
H__inference_sequential_3_layer_call_and_return_conditional_losses_131819

inputs<
)dense_9_tensordot_readvariableop_resource:	d6
'dense_9_biasadd_readvariableop_resource:	=
*dense_10_tensordot_readvariableop_resource:	d6
(dense_10_biasadd_readvariableop_resource:d
identity¢dense_10/BiasAdd/ReadVariableOp¢!dense_10/Tensordot/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢ dense_9/Tensordot/ReadVariableOp
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0`
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¢
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddl
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÐ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
´
Ó
-__inference_sequential_3_layer_call_fn_131692

inputs
unknown:	d
	unknown_0:	
	unknown_1:	d
	unknown_2:d
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_129545s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
Ä
¸
H__inference_sequential_3_layer_call_and_return_conditional_losses_129657
dense_9_input!
dense_9_129646:	d
dense_9_129648:	"
dense_10_129651:	d
dense_10_129653:d
identity¢ dense_10/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallû
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_129646dense_9_129648*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_129502
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_129651dense_10_129653*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_129538|
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
NoOpNoOp!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
'
_user_specified_namedense_9_input
¶
³
(__inference_model_3_layer_call_fn_129966
input_4
unknown:dd
	unknown_0:	Äd
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:d

unknown_11:	d

unknown_12:	

unknown_13:	d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:	dÄ

unknown_18:	Ä
identity

identity_1¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *C
_output_shapes1
/:ÿÿÿÿÿÿÿÿÿdÄ:ÿÿÿÿÿÿÿÿÿdd*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_129921t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄu

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4
¬
ü
C__inference_dense_9_layer_call_and_return_conditional_losses_131859

inputs4
!tensordot_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
õØ
#
!__inference__wrapped_model_129464
input_4s
amodel_3_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_129263:ddt
amodel_3_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_129268:	Äd
smodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dd{
imodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:d
qmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddy
gmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:d
smodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dd{
imodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:d
~model_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:dd
tmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:dz
lmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dv
hmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:dz
gmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dt
emodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	{
hmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dt
fmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:dz
lmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dv
hmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:d\
Imodel_3_st_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource:	dÄV
Gmodel_3_st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢>model_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp¢@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp¢_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup¢Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupz
Cmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/ShapeShapeinput_4*
T0*
_output_shapes
:¤
Qmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Smodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Smodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Kmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_sliceStridedSliceLmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/Shape:output:0Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack:output:0\model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_1:output:0\model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Imodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Imodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :æ
Cmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/rangeRangeRmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/range/start:output:0Tmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/strided_slice:output:0Rmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:dÐ
Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatheramodel_3_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_7_embedding_lookup_129263Lmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/range:output:0*
Tindices0*t
_classj
hfloc:@model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/129263*
_output_shapes

:dd*
dtype0ó
cmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentitycmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*t
_classj
hfloc:@model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/129263*
_output_shapes

:dd
emodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1Identitylmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:dd
Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatheramodel_3_st_100_100_2048_2_2500_token_and_position_embedding_3_embedding_6_embedding_lookup_129268input_4*
Tindices0*t
_classj
hfloc:@model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/129268*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0
cmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentitycmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*t
_classj
hfloc:@model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/129268*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
emodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1Identitylmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddà
Amodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/addAddV2nmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0nmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
6model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ShapeShapeEmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:
Dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Æ
>model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_sliceStridedSlice?model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Mmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack:output:0Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_1:output:0Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
@model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1StridedSlice?model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Shape:output:0Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack:output:0Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_1:output:0Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : ~
<model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :´
6model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/rangeRangeEmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/start:output:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0Emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:d
Fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
@model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2StridedSlice?model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range:output:0Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack:output:0Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_1:output:0Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_mask
>model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
>model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :º
8model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1RangeGmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/start:output:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0Gmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:dî
4model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/subSubAmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/range_1:output:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dç
4model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/addAddV28model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sub:z:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:dû
=model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqualGreaterEqualImodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_2:output:08model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:dd
@model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Õ
>model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shapePackImodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape/0:output:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0Imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:ü
8model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ReshapeReshapeAmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/GreaterEqual:z:0Gmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:dd
?model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
;model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims
ExpandDimsGmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/strided_slice:output:0Hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:
6model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
<model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concatConcatV2Dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/ExpandDims:output:0?model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Const:output:0Emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:ø
5model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/TileTileAmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Reshape:output:0@model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¢
jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpsmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsumEmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0rmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abde
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpimodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0ä
Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpqmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0ü
Ymodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsumEmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0pmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abde
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpgmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0Þ
Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2bmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¢
jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpsmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsumEmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0rmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abde
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpimodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0ä
Qmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Mmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=»
Kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/MulMulUmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:0Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddç
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsumSmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:0Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe¡
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ»
Rmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDims>model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/Tile:output:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCast[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Î
Smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSub^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎÍ
Smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMulWmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÏ
Smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:0Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddõ
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmaxWmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/dropout/IdentityIdentityamodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddý
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumamodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/dropout/Identity:output:0Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcd¸
umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp~model_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0­
fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsum`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0}model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abe
kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOptmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0
\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddç
Cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/IdentityIdentity`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1AddV2Emodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/add:z:0Lmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_6/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¯
emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Î
Smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/meanMean:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0nmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ÿ
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradient\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÍ
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifference:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMeandmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0rmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ö
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdï
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrtXmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOplmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Ú
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMulZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd©
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Mul:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_1:z:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddË
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2Mul\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOphmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0Ö
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSubgmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddË
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpgmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:¥
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ß
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShapeZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:¡
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: À
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdamodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: ¡
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Æ
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1Prodcmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ë
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPack]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ù
Ymodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	TransposeZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÜ
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshape]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMul`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2amodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0fmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ö
Omodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshape`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0amodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÿ
\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpemodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ï
Mmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAddXmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdá
Jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/ReluReluVmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOphmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:¦
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Þ
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShapeXmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
: 
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
Ymodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0gmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:¢
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ã
Umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdbmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: ¢
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: É
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1Proddmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0amodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Î
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPack^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ú
Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	TransposeXmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdß
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshape^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿß
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulamodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0gmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d 
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Ymodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2bmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0amodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0gmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ø
Pmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeamodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0bmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpfmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ñ
Nmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAddYmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÞ
Cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/IdentityIdentityWmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2AddV2Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0Lmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/dropout_7/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¯
emodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Î
Smodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/meanMean:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0nmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(ÿ
[model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradient\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÍ
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifference:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0dmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd³
imodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Wmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMeandmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0rmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ö
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdï
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrtXmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOplmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0Ú
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMulZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd©
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Mul:model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/add_2:z:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddË
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2Mul\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOphmodel_3_st_100_100_2048_2_2500_tb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0Ö
Tmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSubgmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddË
Vmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2Zmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:0Xmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddË
@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOpReadVariableOpImodel_3_st_100_100_2048_2_2500_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0
6model_3/st_100_100_2048_2_2500/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6model_3/st_100_100_2048_2_2500/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Á
7model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ShapeShapeZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:
?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:model_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2GatherV2@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:0?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/free:output:0Hmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Amodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<model_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1GatherV2@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Shape:output:0?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0Jmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ProdProdCmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:0@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1ProdEmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2_1:output:0Bmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=model_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8model_3/st_100_100_2048_2_2500/dense_11/Tensordot/concatConcatV2?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/free:output:0?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/axes:output:0Fmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7model_3/st_100_100_2048_2_2500/dense_11/Tensordot/stackPack?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Prod:output:0Amodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
;model_3/st_100_100_2048_2_2500/dense_11/Tensordot/transpose	TransposeZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0Amodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
9model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReshapeReshape?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/transpose:y:0@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8model_3/st_100_100_2048_2_2500/dense_11/Tensordot/MatMulMatMulBmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/Reshape:output:0Hmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
9model_3/st_100_100_2048_2_2500/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
?model_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:model_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat_1ConcatV2Cmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/GatherV2:output:0Bmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/Const_2:output:0Hmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ü
1model_3/st_100_100_2048_2_2500/dense_11/TensordotReshapeBmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/MatMul:product:0Cmodel_3/st_100_100_2048_2_2500/dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄÃ
>model_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOpReadVariableOpGmodel_3_st_100_100_2048_2_2500_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0õ
/model_3/st_100_100_2048_2_2500/dense_11/BiasAddBiasAdd:model_3/st_100_100_2048_2_2500/dense_11/Tensordot:output:0Fmodel_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
IdentityIdentity8model_3/st_100_100_2048_2_2500/dense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ¯

Identity_1IdentityZmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddè
NoOpNoOp?^model_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOpA^model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp`^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpd^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp`^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpd^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpl^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpv^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp_^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpi^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpa^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpk^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpa^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpk^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp^^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp`^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp]^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp_^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp[^model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup[^model_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2
>model_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp>model_3/st_100_100_2048_2_2500/dense_11/BiasAdd/ReadVariableOp2
@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp@model_3/st_100_100_2048_2_2500/dense_11/Tensordot/ReadVariableOp2Â
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2Ê
cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpcmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2Â
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2Ê
cmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpcmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2Ú
kmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpkmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2î
umodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpumodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2À
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2Ô
hmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOphmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2Ä
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2Ø
jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpjmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2Ä
`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp`model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2Ø
jmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpjmodel_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2¾
]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp]model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2Â
_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp_model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2¼
\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp\model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2À
^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp^model_3/st_100_100_2048_2_2500/tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2¸
Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookupZmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embedding_lookup2¸
Zmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookupZmodel_3/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!
_user_specified_name	input_4
ë
ç
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131679

inputsT
Btoken_and_position_embedding_3_embedding_7_embedding_lookup_131465:ddU
Btoken_and_position_embedding_3_embedding_6_embedding_lookup_131470:	Ädj
Ttb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource:dh
Rtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:ddZ
Htb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource:dj
Ttb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:dd\
Jtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource:du
_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:ddc
Utb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource:d[
Htb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource:	dU
Ftb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource:	\
Itb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource:	dU
Gtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource:d[
Mtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource:dW
Itb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource:d=
*dense_11_tensordot_readvariableop_resource:	dÄ7
(dense_11_biasadd_readvariableop_resource:	Ä
identity

identity_1¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp¢@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp¢Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp¢Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp¢Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp¢Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp¢@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp¢=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp¢?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookupZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:dÔ
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_7_embedding_lookup_131465-token_and_position_embedding_3/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/131465*
_output_shapes

:dd*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/131465*
_output_shapes

:ddÊ
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:ddº
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherBtoken_and_position_embedding_3_embedding_6_embedding_lookup_131470inputs*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/131470*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0£
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/131470*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddm
tb_100_2_2048_0.1/ShapeShape&token_and_position_embedding_3/add:z:0*
T0*
_output_shapes
:o
%tb_100_2_2048_0.1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'tb_100_2_2048_0.1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'tb_100_2_2048_0.1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
tb_100_2_2048_0.1/strided_sliceStridedSlice tb_100_2_2048_0.1/Shape:output:0.tb_100_2_2048_0.1/strided_slice/stack:output:00tb_100_2_2048_0.1/strided_slice/stack_1:output:00tb_100_2_2048_0.1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
'tb_100_2_2048_0.1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)tb_100_2_2048_0.1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!tb_100_2_2048_0.1/strided_slice_1StridedSlice tb_100_2_2048_0.1/Shape:output:00tb_100_2_2048_0.1/strided_slice_1/stack:output:02tb_100_2_2048_0.1/strided_slice_1/stack_1:output:02tb_100_2_2048_0.1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
tb_100_2_2048_0.1/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
tb_100_2_2048_0.1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¸
tb_100_2_2048_0.1/rangeRange&tb_100_2_2048_0.1/range/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0&tb_100_2_2048_0.1/range/delta:output:0*
_output_shapes
:dx
'tb_100_2_2048_0.1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)tb_100_2_2048_0.1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ú
!tb_100_2_2048_0.1/strided_slice_2StridedSlice tb_100_2_2048_0.1/range:output:00tb_100_2_2048_0.1/strided_slice_2/stack:output:02tb_100_2_2048_0.1/strided_slice_2/stack_1:output:02tb_100_2_2048_0.1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:d*

begin_mask*
end_mask*
new_axis_maska
tb_100_2_2048_0.1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : a
tb_100_2_2048_0.1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :¾
tb_100_2_2048_0.1/range_1Range(tb_100_2_2048_0.1/range_1/start:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0(tb_100_2_2048_0.1/range_1/delta:output:0*
_output_shapes
:d
tb_100_2_2048_0.1/subSub"tb_100_2_2048_0.1/range_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/addAddV2tb_100_2_2048_0.1/sub:z:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
T0*
_output_shapes
:d
tb_100_2_2048_0.1/GreaterEqualGreaterEqual*tb_100_2_2048_0.1/strided_slice_2:output:0tb_100_2_2048_0.1/add:z:0*
T0*
_output_shapes

:ddc
!tb_100_2_2048_0.1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Ù
tb_100_2_2048_0.1/Reshape/shapePack*tb_100_2_2048_0.1/Reshape/shape/0:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*tb_100_2_2048_0.1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/ReshapeReshape"tb_100_2_2048_0.1/GreaterEqual:z:0(tb_100_2_2048_0.1/Reshape/shape:output:0*
T0
*"
_output_shapes
:ddk
 tb_100_2_2048_0.1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
tb_100_2_2048_0.1/ExpandDims
ExpandDims(tb_100_2_2048_0.1/strided_slice:output:0)tb_100_2_2048_0.1/ExpandDims/dim:output:0*
T0*
_output_shapes
:h
tb_100_2_2048_0.1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      _
tb_100_2_2048_0.1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
tb_100_2_2048_0.1/concatConcatV2%tb_100_2_2048_0.1/ExpandDims:output:0 tb_100_2_2048_0.1/Const:output:0&tb_100_2_2048_0.1/concat/axis:output:0*
N*
T0*
_output_shapes
:
tb_100_2_2048_0.1/TileTile"tb_100_2_2048_0.1/Reshape:output:0!tb_100_2_2048_0.1/concat:output:0*
T0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/query/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddà
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpRtb_100_2_2048_0_1_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0
:tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Qtb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÈ
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:d*
dtype0
0tb_100_2_2048_0.1/multi_head_attention_3/key/addAddV2Ctb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum:output:0Gtb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddä
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpTtb_100_2_2048_0_1_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0£
<tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Stb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabc,cde->abdeÌ
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpJtb_100_2_2048_0_1_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:d*
dtype0
2tb_100_2_2048_0.1/multi_head_attention_3/value/addAddV2Etb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum:output:0Itb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdds
.tb_100_2_2048_0.1/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Þ
,tb_100_2_2048_0.1/multi_head_attention_3/MulMul6tb_100_2_2048_0.1/multi_head_attention_3/query/add:z:07tb_100_2_2048_0.1/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
6tb_100_2_2048_0.1/multi_head_attention_3/einsum/EinsumEinsum4tb_100_2_2048_0.1/multi_head_attention_3/key/add:z:00tb_100_2_2048_0.1/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationaecd,abcd->acbe
7tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÞ
3tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims
ExpandDimstb_100_2_2048_0.1/Tile:output:0@tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÄ
5tb_100_2_2048_0.1/multi_head_attention_3/softmax/CastCast<tb_100_2_2048_0.1/multi_head_attention_3/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ñ
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/subSub?tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub/x:output:09tb_100_2_2048_0.1/multi_head_attention_3/softmax/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd{
6tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knÎð
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/mulMul8tb_100_2_2048_0.1/multi_head_attention_3/softmax/sub:z:0?tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿddò
4tb_100_2_2048_0.1/multi_head_attention_3/softmax/addAddV2?tb_100_2_2048_0.1/multi_head_attention_3/einsum/Einsum:output:08tb_100_2_2048_0.1/multi_head_attention_3/softmax/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd·
8tb_100_2_2048_0.1/multi_head_attention_3/softmax/SoftmaxSoftmax8tb_100_2_2048_0.1/multi_head_attention_3/softmax/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd 
8tb_100_2_2048_0.1/multi_head_attention_3/einsum_1/EinsumEinsumBtb_100_2_2048_0.1/multi_head_attention_3/softmax/Softmax:softmax:06tb_100_2_2048_0.1/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationacbe,aecd->abcdú
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_tb_100_2_2048_0_1_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:dd*
dtype0Ð
Gtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/EinsumEinsumAtb_100_2_2048_0.1/multi_head_attention_3/einsum_1/Einsum:output:0^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
equationabcd,cde->abeÞ
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpUtb_100_2_2048_0_1_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:d*
dtype0¤
=tb_100_2_2048_0.1/multi_head_attention_3/attention_output/addAddV2Ptb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum:output:0Ttb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddn
)tb_100_2_2048_0.1/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Û
'tb_100_2_2048_0.1/dropout_6/dropout/MulMulAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:02tb_100_2_2048_0.1/dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
)tb_100_2_2048_0.1/dropout_6/dropout/ShapeShapeAtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:È
@tb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniformRandomUniform2tb_100_2_2048_0.1/dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0w
2tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqualGreaterEqualItb_100_2_2048_0.1/dropout_6/dropout/random_uniform/RandomUniform:output:0;tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
(tb_100_2_2048_0.1/dropout_6/dropout/CastCast4tb_100_2_2048_0.1/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÁ
)tb_100_2_2048_0.1/dropout_6/dropout/Mul_1Mul+tb_100_2_2048_0.1/dropout_6/dropout/Mul:z:0,tb_100_2_2048_0.1/dropout_6/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd­
tb_100_2_2048_0.1/add_1AddV2&token_and_position_embedding_3/add:z:0-tb_100_2_2048_0.1/dropout_6/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_6/moments/meanMeantb_100_2_2048_0.1/add_1:z:0Otb_100_2_2048_0.1/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_6/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_1:z:0Etb_100_2_2048_0.1/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_6/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_6/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_6/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1Multb_100_2_2048_0.1/add_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_6/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_6/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÉ
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpHtb_100_2_2048_0_1_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Shape:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Itb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ProdProdBtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1ProdDtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concatConcatV2>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/free:output:0>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/axes:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stackPack>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod:output:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ü
:tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0@tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReshapeReshape>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/transpose:y:0?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMulMatMulAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Reshape:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
>tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1ConcatV2Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/GatherV2:output:0Atb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/Const_2:output:0Gtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ù
0tb_100_2_2048_0.1/sequential_3/dense_9/TensordotReshapeAtb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/MatMul:product:0Btb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÁ
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpFtb_100_2_2048_0_1_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ò
.tb_100_2_2048_0.1/sequential_3/dense_9/BiasAddBiasAdd9tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot:output:0Etb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd£
+tb_100_2_2048_0.1/sequential_3/dense_9/ReluRelu7tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdË
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"        
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ShapeShape9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Shape:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Jtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ProdProdCtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1ProdEtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concatConcatV2?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/free:output:0?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/axes:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stackPack?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod:output:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ý
;tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose	Transpose9tb_100_2_2048_0.1/sequential_3/dense_9/Relu:activations:0Atb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReshapeReshape?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/transpose:y:0@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMulMatMulBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Reshape:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d
?tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1ConcatV2Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/GatherV2:output:0Btb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/Const_2:output:0Htb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1tb_100_2_2048_0.1/sequential_3/dense_10/TensordotReshapeBtb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/MatMul:product:0Ctb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpGtb_100_2_2048_0_1_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0ô
/tb_100_2_2048_0.1/sequential_3/dense_10/BiasAddBiasAdd:tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot:output:0Ftb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddn
)tb_100_2_2048_0.1/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Ò
'tb_100_2_2048_0.1/dropout_7/dropout/MulMul8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:02tb_100_2_2048_0.1/dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
)tb_100_2_2048_0.1/dropout_7/dropout/ShapeShape8tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:È
@tb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniformRandomUniform2tb_100_2_2048_0.1/dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0w
2tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqualGreaterEqualItb_100_2_2048_0.1/dropout_7/dropout/random_uniform/RandomUniform:output:0;tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd«
(tb_100_2_2048_0.1/dropout_7/dropout/CastCast4tb_100_2_2048_0.1/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÁ
)tb_100_2_2048_0.1/dropout_7/dropout/Mul_1Mul+tb_100_2_2048_0.1/dropout_7/dropout/Mul:z:0,tb_100_2_2048_0.1/dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÂ
tb_100_2_2048_0.1/add_2AddV2;tb_100_2_2048_0.1/layer_normalization_6/batchnorm/add_1:z:0-tb_100_2_2048_0.1/dropout_7/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Ftb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4tb_100_2_2048_0.1/layer_normalization_7/moments/meanMeantb_100_2_2048_0.1/add_2:z:0Otb_100_2_2048_0.1/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(Á
<tb_100_2_2048_0.1/layer_normalization_7/moments/StopGradientStopGradient=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
Atb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetb_100_2_2048_0.1/add_2:z:0Etb_100_2_2048_0.1/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
Jtb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8tb_100_2_2048_0.1/layer_normalization_7/moments/varianceMeanEtb_100_2_2048_0.1/layer_normalization_7/moments/SquaredDifference:z:0Stb_100_2_2048_0.1/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
	keep_dims(|
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/addAddV2Atb_100_2_2048_0.1/layer_normalization_7/moments/variance:output:0@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/RsqrtRsqrt9tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÎ
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpMtb_100_2_2048_0_1_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0ý
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mulMul;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/Rsqrt:y:0Ltb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÌ
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1Multb_100_2_2048_0.1/add_2:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2Mul=tb_100_2_2048_0.1/layer_normalization_7/moments/mean:output:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddÆ
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpItb_100_2_2048_0_1_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0ù
5tb_100_2_2048_0.1/layer_normalization_7/batchnorm/subSubHtb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp:value:0;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddî
7tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1AddV2;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul_1:z:09tb_100_2_2048_0.1/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	dÄ*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
dense_11/Tensordot/ShapeShape;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:À
dense_11/Tensordot/transpose	Transpose;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0"dense_11/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄe
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Äb
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:Ä*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄm
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÄ

Identity_1Identity;tb_100_2_2048_0.1/layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿddü

NoOpNoOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpA^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOpE^tb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpM^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpW^tb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp@^tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOpJ^tb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpB^tb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpL^tb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp?^tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOpA^tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp>^tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp@^tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : : : : : : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_6/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_6/batchnorm/mul/ReadVariableOp2
@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp@tb_100_2_2048_0.1/layer_normalization_7/batchnorm/ReadVariableOp2
Dtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOpDtb_100_2_2048_0.1/layer_normalization_7/batchnorm/mul/ReadVariableOp2
Ltb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOpLtb_100_2_2048_0.1/multi_head_attention_3/attention_output/add/ReadVariableOp2°
Vtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpVtb_100_2_2048_0.1/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp?tb_100_2_2048_0.1/multi_head_attention_3/key/add/ReadVariableOp2
Itb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpItb_100_2_2048_0.1/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/query/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Atb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOpAtb_100_2_2048_0.1/multi_head_attention_3/value/add/ReadVariableOp2
Ktb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpKtb_100_2_2048_0.1/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp>tb_100_2_2048_0.1/sequential_3/dense_10/BiasAdd/ReadVariableOp2
@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp@tb_100_2_2048_0.1/sequential_3/dense_10/Tensordot/ReadVariableOp2~
=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp=tb_100_2_2048_0.1/sequential_3/dense_9/BiasAdd/ReadVariableOp2
?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp?tb_100_2_2048_0.1/sequential_3/dense_9/Tensordot/ReadVariableOp2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¯
±
H__inference_sequential_3_layer_call_and_return_conditional_losses_129545

inputs!
dense_9_129503:	d
dense_9_129505:	"
dense_10_129539:	d
dense_10_129541:d
identity¢ dense_10/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallô
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_129503dense_9_129505*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_129502
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_129539dense_10_129541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_129538|
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
NoOpNoOp!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultü
;
input_40
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿdO
st_100_100_2048_2_25005
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿdÄP
st_100_100_2048_2_2500_14
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿddtensorflow/serving/predict:ì
¡
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
layer_embedding
transformer_block
layer_output"
_tf_keras_layer
¶
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19"
trackable_list_wrapper
¶
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö
/trace_0
0trace_1
1trace_2
2trace_32ë
(__inference_model_3_layer_call_fn_129966
(__inference_model_3_layer_call_fn_130664
(__inference_model_3_layer_call_fn_130711
(__inference_model_3_layer_call_fn_130474À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z/trace_0z0trace_1z1trace_2z2trace_3
Â
3trace_0
4trace_1
5trace_2
6trace_32×
C__inference_model_3_layer_call_and_return_conditional_losses_130923
C__inference_model_3_layer_call_and_return_conditional_losses_131148
C__inference_model_3_layer_call_and_return_conditional_losses_130521
C__inference_model_3_layer_call_and_return_conditional_losses_130568À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z3trace_0z4trace_1z5trace_2z6trace_3
ÌBÉ
!__inference__wrapped_model_129464input_4"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð
7iter

8beta_1

9beta_2
	:decaymÉmÊmËmÌmÍmÎmÏmÐmÑmÒ mÓ!mÔ"mÕ#mÖ$m×%mØ&mÙ'mÚ(mÛ)mÜvÝvÞvßvàvávâvãvävåvæ vç!vè"vé#vê$vë%vì&ví'vî(vï)vð"
	optimizer
 "
trackable_list_wrapper
,
;serving_default"
signature_map
¶
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19"
trackable_list_wrapper
¶
0
1
2
3
4
5
6
7
8
9
 10
!11
"12
#13
$14
%15
&16
'17
(18
)19"
trackable_list_wrapper
 "
trackable_list_wrapper
­
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ß
Atrace_0
Btrace_12¨
7__inference_st_100_100_2048_2_2500_layer_call_fn_131195
7__inference_st_100_100_2048_2_2500_layer_call_fn_131242³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zAtrace_0zBtrace_1

Ctrace_0
Dtrace_12Þ
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131454
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131679³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zCtrace_0zDtrace_1
Á
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K	token_emb
Lpos_emb"
_tf_keras_layer
ò
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S	attention
Tfeed_forward
	Unorm1
	Vnorm2
	Wdrop1
	Xdrop2"
_tf_keras_layer
»
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
_:]	Äd2Lst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings
^:\dd2Lst_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings
b:`dd2Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel
\:Zd2Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias
`:^dd2Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel
Z:Xd2Hst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias
b:`dd2Lst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel
\:Zd2Jst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias
m:kdd2Wst_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel
c:ad2Ust_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias
!:	d2dense_9/kernel
:2dense_9/bias
": 	d2dense_10/kernel
:d2dense_10/bias
R:Pd2Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma
Q:Od2Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta
R:Pd2Dst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma
Q:Od2Cst_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta
9:7	dÄ2&st_100_100_2048_2_2500/dense_11/kernel
3:1Ä2$st_100_100_2048_2_2500/dense_11/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
(__inference_model_3_layer_call_fn_129966input_4"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
úB÷
(__inference_model_3_layer_call_fn_130664inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
úB÷
(__inference_model_3_layer_call_fn_130711inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
(__inference_model_3_layer_call_fn_130474input_4"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_130923inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_131148inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_130521input_4"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_130568input_4"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
ËBÈ
$__inference_signature_wrapper_130617input_4"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
üBù
7__inference_st_100_100_2048_2_2500_layer_call_fn_131195inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
7__inference_st_100_100_2048_2_2500_layer_call_fn_131242inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131454inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131679inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
£2 
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
£2 
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer

0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15"
trackable_list_wrapper

0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13
&14
'15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_query_dense
~
_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	$gamma
%beta"
_tf_keras_layer
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	&gamma
'beta"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ã
 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦_random_generator"
_tf_keras_layer
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
¬	variables
­	keras_api

®total

¯count"
_tf_keras_metric
R
°	variables
±	keras_api

²total

³count"
_tf_keras_metric
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
S0
T1
U2
V3
W4
X5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
2ÿü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses
Épartial_output_shape
Êfull_output_shape

kernel
bias"
_tf_keras_layer
ô
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses
Ñpartial_output_shape
Òfull_output_shape

kernel
bias"
_tf_keras_layer
ô
Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses
Ùpartial_output_shape
Úfull_output_shape

kernel
bias"
_tf_keras_layer
«
Û	variables
Ütrainable_variables
Ýregularization_losses
Þ	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
å__call__
+æ&call_and_return_all_conditional_losses
ç_random_generator"
_tf_keras_layer
ô
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses
îpartial_output_shape
ïfull_output_shape

kernel
bias"
_tf_keras_layer
Á
ð	variables
ñtrainable_variables
òregularization_losses
ó	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
Á
ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
<
 0
!1
"2
#3"
trackable_list_wrapper
<
 0
!1
"2
#3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
trace_0
trace_1
trace_2
trace_32ÿ
-__inference_sequential_3_layer_call_fn_129556
-__inference_sequential_3_layer_call_fn_131692
-__inference_sequential_3_layer_call_fn_131705
-__inference_sequential_3_layer_call_fn_129629À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Þ
trace_0
trace_1
trace_2
trace_32ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_131762
H__inference_sequential_3_layer_call_and_return_conditional_losses_131819
H__inference_sequential_3_layer_call_and_return_conditional_losses_129643
H__inference_sequential_3_layer_call_and_return_conditional_losses_129657À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
®0
¯1"
trackable_list_wrapper
.
¬	variables"
_generic_user_object
:  (2total
:  (2count
0
²0
³1"
trackable_list_wrapper
.
°	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
M
}0
~1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
Û	variables
Ütrainable_variables
Ýregularization_losses
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
á	variables
âtrainable_variables
ãregularization_losses
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
ð	variables
ñtrainable_variables
òregularization_losses
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
î
Àtrace_02Ï
(__inference_dense_9_layer_call_fn_131828¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÀtrace_0

Átrace_02ê
C__inference_dense_9_layer_call_and_return_conditional_losses_131859¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÁtrace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
ï
Çtrace_02Ð
)__inference_dense_10_layer_call_fn_131868¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÇtrace_0

Ètrace_02ë
D__inference_dense_10_layer_call_and_return_conditional_losses_131898¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÈtrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_3_layer_call_fn_129556dense_9_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
-__inference_sequential_3_layer_call_fn_131692inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
-__inference_sequential_3_layer_call_fn_131705inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
-__inference_sequential_3_layer_call_fn_129629dense_9_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_3_layer_call_and_return_conditional_losses_131762inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_3_layer_call_and_return_conditional_losses_131819inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¡B
H__inference_sequential_3_layer_call_and_return_conditional_losses_129643dense_9_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¡B
H__inference_sequential_3_layer_call_and_return_conditional_losses_129657dense_9_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_dense_9_layer_call_fn_131828inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_dense_9_layer_call_and_return_conditional_losses_131859inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_10_layer_call_fn_131868inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_10_layer_call_and_return_conditional_losses_131898inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
d:b	Äd2SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/m
c:add2SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/m
g:edd2SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/m
a:_d2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/m
e:cdd2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/m
_:]d2OAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/m
g:edd2SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/m
a:_d2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/m
r:pdd2^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/m
h:fd2\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/m
&:$	d2Adam/dense_9/kernel/m
 :2Adam/dense_9/bias/m
':%	d2Adam/dense_10/kernel/m
 :d2Adam/dense_10/bias/m
W:Ud2KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/m
V:Td2JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/m
W:Ud2KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/m
V:Td2JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/m
>:<	dÄ2-Adam/st_100_100_2048_2_2500/dense_11/kernel/m
8:6Ä2+Adam/st_100_100_2048_2_2500/dense_11/bias/m
d:b	Äd2SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_6/embeddings/v
c:add2SAdam/st_100_100_2048_2_2500/token_and_position_embedding_3/embedding_7/embeddings/v
g:edd2SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/kernel/v
a:_d2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/query/bias/v
e:cdd2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/kernel/v
_:]d2OAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/key/bias/v
g:edd2SAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/kernel/v
a:_d2QAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/value/bias/v
r:pdd2^Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/kernel/v
h:fd2\Adam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/multi_head_attention_3/attention_output/bias/v
&:$	d2Adam/dense_9/kernel/v
 :2Adam/dense_9/bias/v
':%	d2Adam/dense_10/kernel/v
 :d2Adam/dense_10/bias/v
W:Ud2KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/gamma/v
V:Td2JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_6/beta/v
W:Ud2KAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/gamma/v
V:Td2JAdam/st_100_100_2048_2_2500/tb_100_2_2048_0.1/layer_normalization_7/beta/v
>:<	dÄ2-Adam/st_100_100_2048_2_2500/dense_11/kernel/v
8:6Ä2+Adam/st_100_100_2048_2_2500/dense_11/bias/v
!__inference__wrapped_model_129464ô$% !"#&'()0¢-
&¢#
!
input_4ÿÿÿÿÿÿÿÿÿd
ª "©ª¥
O
st_100_100_2048_2_250052
st_100_100_2048_2_2500ÿÿÿÿÿÿÿÿÿdÄ
R
st_100_100_2048_2_2500_163
st_100_100_2048_2_2500_1ÿÿÿÿÿÿÿÿÿdd­
D__inference_dense_10_layer_call_and_return_conditional_losses_131898e"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿd
ª ")¢&

0ÿÿÿÿÿÿÿÿÿdd
 
)__inference_dense_10_layer_call_fn_131868X"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿdd¬
C__inference_dense_9_layer_call_and_return_conditional_losses_131859e !3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿdd
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿd
 
(__inference_dense_9_layer_call_fn_131828X !3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿdd
ª "ÿÿÿÿÿÿÿÿÿdî
C__inference_model_3_layer_call_and_return_conditional_losses_130521¦$% !"#&'()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿd
p 

 
ª "T¢Q
JG
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 î
C__inference_model_3_layer_call_and_return_conditional_losses_130568¦$% !"#&'()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿd
p

 
ª "T¢Q
JG
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 í
C__inference_model_3_layer_call_and_return_conditional_losses_130923¥$% !"#&'()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "T¢Q
JG
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 í
C__inference_model_3_layer_call_and_return_conditional_losses_131148¥$% !"#&'()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "T¢Q
JG
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 Å
(__inference_model_3_layer_call_fn_129966$% !"#&'()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿd
p 

 
ª "FC
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿddÅ
(__inference_model_3_layer_call_fn_130474$% !"#&'()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿd
p

 
ª "FC
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿddÄ
(__inference_model_3_layer_call_fn_130664$% !"#&'()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "FC
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿddÄ
(__inference_model_3_layer_call_fn_130711$% !"#&'()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "FC
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿddÁ
H__inference_sequential_3_layer_call_and_return_conditional_losses_129643u !"#B¢?
8¢5
+(
dense_9_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿdd
 Á
H__inference_sequential_3_layer_call_and_return_conditional_losses_129657u !"#B¢?
8¢5
+(
dense_9_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿdd
 º
H__inference_sequential_3_layer_call_and_return_conditional_losses_131762n !"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿdd
 º
H__inference_sequential_3_layer_call_and_return_conditional_losses_131819n !"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿdd
 
-__inference_sequential_3_layer_call_fn_129556h !"#B¢?
8¢5
+(
dense_9_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿdd
-__inference_sequential_3_layer_call_fn_129629h !"#B¢?
8¢5
+(
dense_9_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿdd
-__inference_sequential_3_layer_call_fn_131692a !"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿdd
-__inference_sequential_3_layer_call_fn_131705a !"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿdd¨
$__inference_signature_wrapper_130617ÿ$% !"#&'();¢8
¢ 
1ª.
,
input_4!
input_4ÿÿÿÿÿÿÿÿÿd"©ª¥
O
st_100_100_2048_2_250052
st_100_100_2048_2_2500ÿÿÿÿÿÿÿÿÿdÄ
R
st_100_100_2048_2_2500_163
st_100_100_2048_2_2500_1ÿÿÿÿÿÿÿÿÿddø
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131454¡$% !"#&'()3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "T¢Q
J¢G
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 ø
R__inference_st_100_100_2048_2_2500_layer_call_and_return_conditional_losses_131679¡$% !"#&'()3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "T¢Q
J¢G
"
0/0ÿÿÿÿÿÿÿÿÿdÄ
!
0/1ÿÿÿÿÿÿÿÿÿdd
 Ï
7__inference_st_100_100_2048_2_2500_layer_call_fn_131195$% !"#&'()3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "F¢C
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿddÏ
7__inference_st_100_100_2048_2_2500_layer_call_fn_131242$% !"#&'()3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "F¢C
 
0ÿÿÿÿÿÿÿÿÿdÄ

1ÿÿÿÿÿÿÿÿÿdd