// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b14135 { }
.class ILGEN_622380794 {

.field static	int32 field_0x0
.field static	int64 field_0x1

.method static int32 main() {
.entrypoint
.maxstack	10

 .locals (int64 local_0x1,float32 local_0x2)
 ldc.i8 0
 stloc.0
 ldc.r4 0
 stloc.1
 
 ldsflda int64 ILGEN_622380794::field_0x1
 ldloc local_0x1
 stind.i8
 ldc.i4 4
 ldc.i4 2
 ldc.i4 5
 mul
 add
 conv.r4
 stloc local_0x2
 ldsfld int32 ILGEN_622380794::field_0x0
 ldc.i4 3
 mul
 neg

ldc.i4 100
add
 ret
}
}
