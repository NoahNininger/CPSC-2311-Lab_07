	.global	fact
fact:
	mov   r1, #1        

here:
	cmp   r0, #1        
	beq   there         

	mul   r1, r0, r1    
	sub   r0, r0, #1    
	b     here          

there:
	mov   r0, r1        

	bx    lr

	.size	fact, .-fact

	.align   2
	.section .rodata
fmt_str:
	.ascii  "The factorial of %d is %d\012\000"

	.text
	.align  2
	.global main
main:
	push  {lr}

	@ MAIN CODE GOES HERE
	mov   r0, #10
    	bl    fact             @ call the fact function to calculate factorial
    	mov   r1, r0

    	ldr   r0, =fmt_str     @ load the format string
    	mov   r2, #10
    	mov   r3, r1
    	bl    printf

	pop  {pc}

	.size    main, .-main
	.ident   "GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section .note.GNU-stack,"",%progbits
