.include "macro_print_str.asm"
.data
    devalue1:.word 0x87654321
.text
    lw a0,devalue1
    li a7,34
    ecall
    #0x87654321
    
    mv t1,a0
    slli t2,t1,16
    srli t3,t1,16
    or t1,t2,t3
    
    print_string("\n")
    mv a0,t1
    li a7,34
    ecall
    #0x43218765

    li a7,10
    ecall