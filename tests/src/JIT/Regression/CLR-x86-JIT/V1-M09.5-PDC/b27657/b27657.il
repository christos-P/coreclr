// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x884e5960 {}
.class ILGEN_0x884e5960 {
.method static int32 main() {
.entrypoint
.maxstack	15
.locals (int32 ecode)

 ldc.i4.1
 stloc ecode
 .try {

 ldc.i4.1

Start_Orphan_9:
 ldc.i4 255
 newarr [mscorlib]System.Int16
 ldc.i4.m1
 conv.ovf.u4
 ldelema [mscorlib]System.Int16
 ldc.i4.m1
 conv.ovf.u2
 stind.i2
End_Orphan_9:

 pop
 leave xx
 } catch [mscorlib]System.OverflowException {
 pop
 ldc.i4.0
 stloc ecode
 leave xx
 }
 
xx:
 ldloc ecode
ldc.i4 100
add
 ret
}
}
