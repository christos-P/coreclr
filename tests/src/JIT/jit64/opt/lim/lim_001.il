// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

// This test is checking to see if the AV in the if is hoisted out of the loop
// The code in the if should not hit.  Thus there should be no AV


.assembly extern mscorlib {}
.assembly test {}

.class private auto ansi beforefieldinit test
       extends [mscorlib]System.Object
{

.field public static int32 k
  .method public static int32 Main() cil managed
  {
	.locals init (int32, int32, int32)
    .entrypoint

	ldc.i4 5
	stsfld int32 test::k

LOOP0_START:
	ldloc 0
	ldc.i4 7
	bge LOOP0_END
	
	ldsfld int32 test::k
	stloc 1

IF0:	ldloc 0
	ldc.i4 1
	add
	brtrue	IF0_END  // Should always branch around

	ldsfld int32 test::k
	ldind.i4		// AV here
	stloc 2

IF0_END:
	

	ldloc 0
	ldc.i4 1
	add
	stloc 0
	br LOOP0_START

LOOP0_END:

	ldloc 1
	call void [mscorlib]System.Console::WriteLine(int32)

	ldloc 2
	call void [mscorlib]System.Console::WriteLine(int32)		


	ldc.i4 100
	ret

  }  
}
