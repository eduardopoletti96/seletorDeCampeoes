??
?"?!
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
?
AsString

input"T

output"
Ttype:
2		
"
	precisionint?????????"

scientificbool( "
shortestbool( "
widthint?????????"
fillstring 
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
?
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:
*
dtype0*?
value?B?
BAllyChampId1BAllyChampId2BAllyChampId3BAllyChampId5BAllyTeamWinBEnemyChampId1BEnemyChampId2BEnemyChampId3BEnemyChampId4BEnemyChampId5
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9*
Tdense
2
*?
_output_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????*N
dense_shapes>
<::::::::::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
?
?dnn/input_from_feature_columns/input_layer/AllyChampId1_1/ShapeShapeParseExample/ParseExampleV2*
T0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Odnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Odnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/AllyChampId1_1/ShapeMdnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stackOdnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Idnn/input_from_feature_columns/input_layer/AllyChampId1_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId1_1/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/AllyChampId1_1/strided_sliceIdnn/input_from_feature_columns/input_layer/AllyChampId1_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/AllyChampId1_1/ReshapeReshapeParseExample/ParseExampleV2Gdnn/input_from_feature_columns/input_layer/AllyChampId1_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/AllyChampId2_1/ShapeShapeParseExample/ParseExampleV2:1*
T0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Odnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Odnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/AllyChampId2_1/ShapeMdnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stackOdnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Idnn/input_from_feature_columns/input_layer/AllyChampId2_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId2_1/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/AllyChampId2_1/strided_sliceIdnn/input_from_feature_columns/input_layer/AllyChampId2_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/AllyChampId2_1/ReshapeReshapeParseExample/ParseExampleV2:1Gdnn/input_from_feature_columns/input_layer/AllyChampId2_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/AllyChampId3_1/ShapeShapeParseExample/ParseExampleV2:2*
T0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Odnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Odnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/AllyChampId3_1/ShapeMdnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stackOdnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Idnn/input_from_feature_columns/input_layer/AllyChampId3_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId3_1/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/AllyChampId3_1/strided_sliceIdnn/input_from_feature_columns/input_layer/AllyChampId3_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/AllyChampId3_1/ReshapeReshapeParseExample/ParseExampleV2:2Gdnn/input_from_feature_columns/input_layer/AllyChampId3_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/AllyChampId5_1/ShapeShapeParseExample/ParseExampleV2:3*
T0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Odnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Odnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/AllyChampId5_1/ShapeMdnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stackOdnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Idnn/input_from_feature_columns/input_layer/AllyChampId5_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Gdnn/input_from_feature_columns/input_layer/AllyChampId5_1/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/AllyChampId5_1/strided_sliceIdnn/input_from_feature_columns/input_layer/AllyChampId5_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Adnn/input_from_feature_columns/input_layer/AllyChampId5_1/ReshapeReshapeParseExample/ParseExampleV2:3Gdnn/input_from_feature_columns/input_layer/AllyChampId5_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
>dnn/input_from_feature_columns/input_layer/AllyTeamWin_1/ShapeShapeParseExample/ParseExampleV2:4*
T0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ndnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ndnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Fdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/AllyTeamWin_1/ShapeLdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stackNdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Hdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Fdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/strided_sliceHdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
@dnn/input_from_feature_columns/input_layer/AllyTeamWin_1/ReshapeReshapeParseExample/ParseExampleV2:4Fdnn/input_from_feature_columns/input_layer/AllyTeamWin_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/EnemyChampId1_1/ShapeShapeParseExample/ParseExampleV2:5*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/EnemyChampId1_1/ShapeNdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/strided_sliceJdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/ReshapeReshapeParseExample/ParseExampleV2:5Hdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/EnemyChampId2_1/ShapeShapeParseExample/ParseExampleV2:6*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/EnemyChampId2_1/ShapeNdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/strided_sliceJdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/ReshapeReshapeParseExample/ParseExampleV2:6Hdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/EnemyChampId3_1/ShapeShapeParseExample/ParseExampleV2:7*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/EnemyChampId3_1/ShapeNdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/strided_sliceJdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/ReshapeReshapeParseExample/ParseExampleV2:7Hdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/EnemyChampId4_1/ShapeShapeParseExample/ParseExampleV2:8*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/EnemyChampId4_1/ShapeNdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/strided_sliceJdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/ReshapeReshapeParseExample/ParseExampleV2:8Hdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/EnemyChampId5_1/ShapeShapeParseExample/ParseExampleV2:9*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/EnemyChampId5_1/ShapeNdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/strided_sliceJdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/ReshapeReshapeParseExample/ParseExampleV2:9Hdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
1dnn/input_from_feature_columns/input_layer/concatConcatV2Adnn/input_from_feature_columns/input_layer/AllyChampId1_1/ReshapeAdnn/input_from_feature_columns/input_layer/AllyChampId2_1/ReshapeAdnn/input_from_feature_columns/input_layer/AllyChampId3_1/ReshapeAdnn/input_from_feature_columns/input_layer/AllyChampId5_1/Reshape@dnn/input_from_feature_columns/input_layer/AllyTeamWin_1/ReshapeBdnn/input_from_feature_columns/input_layer/EnemyChampId1_1/ReshapeBdnn/input_from_feature_columns/input_layer/EnemyChampId2_1/ReshapeBdnn/input_from_feature_columns/input_layer/EnemyChampId3_1/ReshapeBdnn/input_from_feature_columns/input_layer/EnemyChampId4_1/ReshapeBdnn/input_from_feature_columns/input_layer/EnemyChampId5_1/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N
*
T0*'
_output_shapes
:?????????

?
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"
   (   
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\??
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?\?>
?
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:
(*
dtype0
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:
(
?
3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:
(
?
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape
:
(*)
shared_namednn/hiddenlayer_0/kernel
?
9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:
(*
dtype0
?
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
:(*
dtype0*
valueB(*    
?
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:(*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 
?
dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:(*
dtype0
?
'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:
(*
dtype0
?
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????(
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:(*
dtype0
?
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????(
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:?????????(
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *4
else_branch%R#
!dnn_zero_fraction_cond_false_1101*
output_shapes
: : : : : : *3
then_branch$R"
 dnn_zero_fraction_cond_true_1100
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 
?
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 
?
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
?
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation
?
dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"(   (   
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7??
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7?>
?
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:((*
dtype0
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:((
?
3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:((
?
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape
:((*)
shared_namednn/hiddenlayer_1/kernel
?
9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:((*
dtype0
?
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
:(*
dtype0*
valueB(*    
?
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape:(*'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 
?
dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:(*
dtype0
?
'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:((*
dtype0
?
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????(
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:(*
dtype0
?
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????(
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:?????????(
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_1_cond_false_1171*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_1_cond_true_1170
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
?
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation
?
dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
:*
dtype0*
valueB"(   (   
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7??
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7?>
?
Adnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:((*
dtype0
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:((
?
3dnn/hiddenlayer_2/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:((
?
dnn/hiddenlayer_2/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
shape
:((*)
shared_namednn/hiddenlayer_2/kernel
?
9dnn/hiddenlayer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_2/kernel/AssignAssignVariableOpdnn/hiddenlayer_2/kernel3dnn/hiddenlayer_2/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_2/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:((*
dtype0
?
(dnn/hiddenlayer_2/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
:(*
dtype0*
valueB(*    
?
dnn/hiddenlayer_2/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
: *
dtype0*
shape:(*'
shared_namednn/hiddenlayer_2/bias
}
7dnn/hiddenlayer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias*
_output_shapes
: 
?
dnn/hiddenlayer_2/bias/AssignAssignVariableOpdnn/hiddenlayer_2/bias(dnn/hiddenlayer_2/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_2/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:(*
dtype0
?
'dnn/hiddenlayer_2/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:((*
dtype0
?
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Relu'dnn/hiddenlayer_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????(
{
(dnn/hiddenlayer_2/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:(*
dtype0
?
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMul(dnn/hiddenlayer_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????(
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:?????????(
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/hiddenlayer_2/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_2_cond_false_1241*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_2_cond_true_1240
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_2/fraction_of_zero_values
?
)dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_2/activation
?
dnn/hiddenlayer_2/activationHistogramSummary dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
:*
dtype0*
valueB"(   (   
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7??
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?7?>
?
Adnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:((*
dtype0
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:((
?
3dnn/hiddenlayer_3/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:((
?
dnn/hiddenlayer_3/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
shape
:((*)
shared_namednn/hiddenlayer_3/kernel
?
9dnn/hiddenlayer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_3/kernel/AssignAssignVariableOpdnn/hiddenlayer_3/kernel3dnn/hiddenlayer_3/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_3/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:((*
dtype0
?
(dnn/hiddenlayer_3/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
:(*
dtype0*
valueB(*    
?
dnn/hiddenlayer_3/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
: *
dtype0*
shape:(*'
shared_namednn/hiddenlayer_3/bias
}
7dnn/hiddenlayer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias*
_output_shapes
: 
?
dnn/hiddenlayer_3/bias/AssignAssignVariableOpdnn/hiddenlayer_3/bias(dnn/hiddenlayer_3/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_3/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:(*
dtype0
?
'dnn/hiddenlayer_3/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:((*
dtype0
?
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Relu'dnn/hiddenlayer_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????(
{
(dnn/hiddenlayer_3/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:(*
dtype0
?
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMul(dnn/hiddenlayer_3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????(
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:?????????(
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_3/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_3/condStatelessIfdnn/zero_fraction_3/LessEqualdnn/hiddenlayer_3/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_3_cond_false_1311*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_3_cond_true_1310
h
!dnn/zero_fraction_3/cond/IdentityIdentitydnn/zero_fraction_3/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_1Identitydnn/zero_fraction_3/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_2Identitydnn/zero_fraction_3/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_3Identitydnn/zero_fraction_3/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_4Identitydnn/zero_fraction_3/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_5Identitydnn/zero_fraction_3/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Size!dnn/zero_fraction_3/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_3/fraction_of_zero_values
?
)dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_3/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_3/activation
?
dnn/hiddenlayer_3/activationHistogramSummary dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
?
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB"(      
?
0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *v???
?
0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *v??>
?
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:(*
dtype0
?
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
?
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:(
?
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:(
?
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
:(*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:(*
dtype0
?
!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:(*
dtype0
?
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
?
dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_4/condStatelessIfdnn/zero_fraction_4/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_4_cond_false_1380*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_4_cond_true_1379
h
!dnn/zero_fraction_4/cond/IdentityIdentitydnn/zero_fraction_4/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_1Identitydnn/zero_fraction_4/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_2Identitydnn/zero_fraction_4/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_3Identitydnn/zero_fraction_4/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_4Identitydnn/zero_fraction_4/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_5Identitydnn/zero_fraction_4/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Size!dnn/zero_fraction_4/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values
?
"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
S
head/logits/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
o
head/predictions/probabilitiesSoftmaxdnn/logits/BiasAdd*
T0*'
_output_shapes
:?????????
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/class_idsArgMaxdnn/logits/BiasAdd$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:?????????
X
head/predictions/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
Z
head/predictions/Shape_1Shapednn/logits/BiasAdd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:?????????
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
d
head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
d
head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
R
head/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
R
head/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
R
head/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
T0*
_output_shapes
:
U
head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
T0*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:?????????

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp*dnn/hiddenlayer_2/bias/Read/ReadVariableOp,dnn/hiddenlayer_2/kernel/Read/ReadVariableOp*dnn/hiddenlayer_3/bias/Read/ReadVariableOp,dnn/hiddenlayer_3/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp"/device:CPU:0*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
c
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
c
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdnn/logits/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0	*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpglobal_stepsave/Identity_11*
dtype0	
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shardޢ
?
?
"dnn_zero_fraction_2_cond_true_12401
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
#dnn_zero_fraction_1_cond_false_11711
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
"dnn_zero_fraction_4_cond_true_1379-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
#dnn_zero_fraction_2_cond_false_12411
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
#dnn_zero_fraction_4_cond_false_1380-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
 dnn_zero_fraction_cond_true_11001
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
#dnn_zero_fraction_3_cond_false_13111
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
"dnn_zero_fraction_1_cond_true_11701
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
"dnn_zero_fraction_3_cond_true_13101
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????(
?
?
!dnn_zero_fraction_cond_false_11011
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????(2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????(2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????(:- )
'
_output_shapes
:?????????("?<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"?
	summaries?
?
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
+dnn/hiddenlayer_2/fraction_of_zero_values:0
dnn/hiddenlayer_2/activation:0
+dnn/hiddenlayer_3/fraction_of_zero_values:0
dnn/hiddenlayer_3/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0"?
trainable_variables??
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
?
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08"?
	variables??
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
?
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08*?
classification?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify*?
predict?
5
examples)
input_example_tensor:0??????????
all_class_ids.
head/predictions/Tile:0??????????
all_classes0
head/predictions/Tile_1:0?????????A
	class_ids4
head/predictions/ExpandDims:0	?????????@
classes5
head/predictions/str_classes:0?????????5
logits+
dnn/logits/BiasAdd:0?????????H
probabilities7
 head/predictions/probabilities:0?????????tensorflow/serving/predict*?
serving_default?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify