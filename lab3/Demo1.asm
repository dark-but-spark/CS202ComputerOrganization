.include "macro_print_str.asm"
.data
    arrayx: .space 40
    str: .asciz "\nThe array is: "
.text
main:
    print_string("Please enter 10 numbers: \n")
    add t0,zero,zero
    addi t1,zero,10
    la t2,arrayx
    read:
        li a7,5 # syscall 5: read integer
        ecall
        sw a0,0(t2)
        addi t0,t0,1
        addi t2,t2,4
        bne t0,t1,read
    la a0,str
    li a7,4 # syscall 4: print string
    ecall
    addi t0,zero,0
    la t2,arrayx
    write:
        lw a0,0(t2)
        li a7,1 # syscall 1: print integer
        ecall
        print_string(" ")
        addi t0,t0,1
        addi t2,t2,4
        bne t0,t1,write
    li a7,10
    ecall
