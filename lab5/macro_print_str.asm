.macro print_string(%str)
	.data 
		pstr:   .asciz   %str
	.text
		addi sp,sp,-8
		sw ra,4(sp)
		sw a0,0(sp)
		la a0,pstr
		li a7,4
		ecall
		lw a0,0(sp)
		lw ra,4(sp)
		addi sp,sp,8
.end_macro

.macro end

	li a7,10
	ecall

.end_macro
