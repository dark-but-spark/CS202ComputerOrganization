.include "macro_print_str.asm"
.data
.text
main:
    print_string("Please enter a number: \n")
    li a7,5
    ecall
    
    li t1,1
    
    mv t0,a0
    and t2,t1,t0
    
    print_string("It is an odd number(0/1): ")
    mv a0,t2
    li a7,1
    ecall
    li a7,10
    ecall
    
