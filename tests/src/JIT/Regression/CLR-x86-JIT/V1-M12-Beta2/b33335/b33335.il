// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x8c7852d1 {}
.class ILGEN_0x8c7852d1 {

.field static	int64 field_0x1
.method static float32 Method_0x20bc() {
.maxstack	9

ldc.i8 0x63a85d3b53e86bed 
stsfld int64 ILGEN_0x8c7852d1::field_0x1

 ldsfld int64 ILGEN_0x8c7852d1::field_0x1
 ldc.i8 0xddddd
 beq Branch_0x0
 ldc.r8 3.4
 br Branch_0x1
Branch_0x0:
 ldc.r8 4.2
Branch_0x1:

 ldc.r8 float64(0x7d5411fc5f0c7175)
 beq Branch_0x2
 ldc.i4.3
 conv.ovf.i2.un
 br Branch_0x3
Branch_0x2:
 ldc.i4.m1
Branch_0x3:
 ldc.r4 2.0
 conv.i1
 ldsfld int64 ILGEN_0x8c7852d1::field_0x1
 ldc.i8 0x292d333c3516966
 bgt Branch_0x6
 ldc.i4.2
 br Branch_0x7
Branch_0x6:
 ldc.i4.m1
Branch_0x7:
 ceq
 sub
 conv.r4
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20

call float32 ILGEN_0x8c7852d1::Method_0x20bc()
conv.i4
 ldc.i4.3
 sub
ldc.i4 100
add
 ret
}

}
