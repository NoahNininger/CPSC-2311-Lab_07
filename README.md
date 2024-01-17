1. Fill in the table below for every call to "fact" in fac.s. Each row
represents the values of r1 and lr when line 3 executes and they are pushed
onto the stack. The first time it executes, r1 is unset and the lr points to line 39.

r1	lr
---	-------
10	  39
10	12

2. In "fac.s", the multiply instruction on line 12 comes after a "bl" which is a branch that will always be taken. How does line 12 get executed if the "bl" is always taken?

HINT: Review what "bl" does at https://developer.arm.com/documentation/dui0068/b/CIHFDDAF (scroll down to "Usage")

	"bl" branches to the fact function and saves the return address in the link register. Once the fact function returns, 
	the execution continues to "mul"

3. Why doesn't the code in "fac2.s" save any registers on the stack? What is it doing instead?

	 Because it doesn't rely on any register values beyond those used within the fact function itself.
	 It leverages registers for temporary storage rather than using the stack.

4. Identify which program calculates the factorial recursively and which is iterative.

	fac.s calculates recursively and fac2.s calculatres in iteration

NOTE: The comments for "main:" in "fac.s" are already done for you and you do not have to comment "main:" in "fac2.s".

test
