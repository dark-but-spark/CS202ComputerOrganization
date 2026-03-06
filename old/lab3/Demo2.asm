#section D
.include "macro_print_str.asm" 
.data 
    min: .word 0x7fffffff
    max: .word 0
.text 
    lw t0,min
    lw t1,max
    li t3,4
    li t4,0
    print_string("Please input 5 integer: \n")
    loop:
        li a7,5
        ecall
        bge a0,t1,set_max
        j set_min
    #section C
    set_max:
        mv t1,a0
        j set_min
    set_min:
        bge a0,t0,judge
        mv t0,a0
        j judge
    #section B
    judge:
        addi t4,t4,1
        bge t3,t4,loop
    #section A
    print_string("The max number is: ")
    mv a0,t1
    li a7,1
    ecall
    print_string("The min number is: ")
    mv a0,t0
    li a7,1
    ecall
    li a7,10
    ecall
                
