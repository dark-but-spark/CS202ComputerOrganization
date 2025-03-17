.include"read_callee.asm"
.data 
    str_caller: .asciz"\nIn Caller\n"

.text
.globl main
main:
    li a7 ,8
    la a0,read_str
    li a1,20
    ecall

    jal read_callee
    
    li a7,10
    ecall
    