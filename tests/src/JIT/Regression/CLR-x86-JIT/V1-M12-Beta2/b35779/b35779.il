// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x77e65197 {}
.class ILGEN_0x77e65197 {
.method static int32 Main() {
.entrypoint
.maxstack	20
 .locals (float64 local_0x2)
.try {
 ldc.r8 2.0e+019
 stloc local_0x2

 ldloc local_0x2
 conv.u8
 conv.ovf.u8
 conv.i4
 pop
  leave stop
 } catch [mscorlib]System.OverflowException {
 pop
 leave stop
 }
 stop:
ldc.i4 100
 ret
}
}
