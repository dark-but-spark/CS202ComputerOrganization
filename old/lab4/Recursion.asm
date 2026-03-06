.include "macro_print_str.asm"
.text
main:
    print_string("Please input an integer:")
    li a7,5
    ecall
    jal fact
    j end
fact:
    addi sp,sp,-8
    sw ra,4(sp)
    sw a0,0(sp)

    slti t0,a0,1
    beq t0,zero,L1#if n>=1 go to L1

    addi a0,zero,1#else return 1
    addi sp,sp,8
    jr ra
L1:
    addi a0,a0,-1
    jal fact #call fact(n-1)
    
    addi t1,a0,0
    lw a0,0(sp)
    lw ra,4(sp)
    addi sp,sp,8

    mul a0,a0,t1 #return n*fact(n-1)
    jr ra
end:
    mv t1,a0
    print_string("\nThe factorial is:")
    mv a0,t1
    li a7,1
    ecall
    li a7,10
    ecall
