.include "macro_print_str.asm"
.data
    dividend: .word 7
    divisor: .word 3
    x: .word 0x8000
    looptimes:.byte 5
.text
    la t5, dividend
    lw t1,(t5) # dividend
    la t5, divisor
    lw t2,(t5) # divisor
    slli t2,t2,4
    la t5,dividend
    lw t3,(t5) # dividend
    add t4 ,zero,zero

    la t5,x
    lw a1,(t5)
    add t0,zero,zero
    la t5,looptimes
    lb s1,(t5) # looptimes
loopb:
    sub t3,t3,t2
    and s0,t3,a1
    slli t4,t4,1
    beq s0,zero,SdrUq
    add t3,t3,t2
    srli t2,t2,1
    addi t4,t4,0
    j loope 
SdrUq:
    srli t2,t2,1
    addi t4,t4,1
loope:
    addi t0,t0,1
    bne t0,s1,loopb

    li a7,1
    mv a0,t4 
    ecall # print quotient
    print_string(" \n")
    li a7,1
    mv a0,t3
    ecall # print remainder

    li a7,10
    ecall # exit

