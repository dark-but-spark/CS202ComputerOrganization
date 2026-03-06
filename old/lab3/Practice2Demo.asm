.include "macro_print_str.asm"
.data
    tdata0: .byte 0x44,0x33,0x22,0x11
    tdata1: .byte 0x11,0x22,0x33,0x44
    tdata:.word 0x44332211
.text
    lb a0,tdata0
    li a7,34
    ecall
    #out: 0x11
    print_string("\n")
    lb a0,tdata1
    li a7,34
    ecall
    #out: 0x44
    print_string("\n")
    lw a0,tdata
    li a7,34
    ecall
    #out: 0x44332211
    li a7,10
    ecall