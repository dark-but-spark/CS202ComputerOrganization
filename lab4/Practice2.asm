.include "macro_print_str.asm"
.data 
    min:.word 0
.text 
    print_string("input the number: ")
    li a7,5
    ecall
    mv t0,a0
    slli a0,t0,2
    li a7,9 # allocate space for 4 integers
    ecall
    mv t1,a0
    mv t2,a0
    print_string("input the array:\n")
    add t3,zero,zero
    loop_read:
        li a7,5
        ecall 
        sw a0,(t2)
        addi t2,t2,4
        addi t3,t3,1
        blt t3,t0,loop_read
    lw a0,(t1)
    la t4,min
    add t3,zero,zero
    add t2,t1,zero
    loop_find:
        lw a0,min
        lw a1,(t2)
        jal find
        la t4,min
        sw a0,(t4)
        addi t2,t2,4
        addi t3,t3,1
        blt t3,t0,loop_find
    print_string("the min is:")
    li a7,1
    la t4,min
    lw a0,(t4)
    ecall
    li a7,10
    ecall
find:
    blt a0,a1,return
    mv a0,a1
return:
    jr ra
