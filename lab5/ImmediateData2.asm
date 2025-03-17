.include "macro_print_str.asm"
.data
    dvalue1:.word 0x00000abc
    dvalue2:.word 0x7fffffff
.text
main:
    # lui a0,0x12345
    # addi a0,a0,0xabc
    # #Unsigned value is too large to fit into a sign-extended immediate
    # li a7,34
    # ecall

    lui a0,0x12345
    lw t1,dvalue1
    add t0,a0,t1
    mv a0,t0
    li a7,34
    ecall
    #0x12345abc
    print_string("\n")

    lui a0,0x12345
    lw t1,dvalue2
    add t2,a0,t1
    mv a0,t0
    li a7,34
    ecall
    #0x92344fff
    
    li a7,10
    ecall
