// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x243bc9d5 {}
.class ILGEN_0x243bc9d5 {

.method static int32 Method_0xab68837a(unsigned int64 Arg_0x1) {
.maxstack	13

 .locals (int64 local_0x0)

 ldc.i4 55
 ldc.i4 0x9
 ble Branch_0x0
 ldc.i4.4
 ldc.i4.3
 bne.un Branch_0x8
 ldc.i4.4
 br Branch_0x9
Branch_0x8:
 ldc.i4.7
Branch_0x9:
 conv.ovf.u2
 br Branch_0x1
Branch_0x0:
 ldc.i4 0x7 
Branch_0x1:

Start_Orphan_3:
 ldarg Arg_0x1
 stloc local_0x0
End_Orphan_3:

ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
ldc.i8 0x432d7dff7e4e94b56adbd9362d85e958 

call int32 ILGEN_0x243bc9d5::Method_0xab68837a(unsigned int64 Arg_0x1)
ldc.i4.7
sub
ldc.i4 100
add
 ret
}

}
