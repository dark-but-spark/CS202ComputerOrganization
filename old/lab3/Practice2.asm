.include "macro_print_str.asm"
.data
    tdata: .word 0x11223344,0x55667788
.text
    la t0,tdata
    lb a0,0(t0)
    li a7,34
    ecall
    #out: 0x44
    print_string("\n")
    lb a0,1(t0)
    li a7,34
    ecall
    #out: 0x33
    print_string("\n")
    lb a0,2(t0)
    li a7,34
    ecall
    #out: 0x22
    print_string("\n")
    lb a0,3(t0)
    li a7,34
    ecall
    #out: 0x11
    print_string("\n")
    lb a0,4(t0)
    li a7,34
    ecall
    #out: 0xffffff88
    print_string("\n")
    lb a0,5(t0)
    li a7,34
    ecall
    #out: 0x77
    print_string("\n")
    lb a0,6(t0)
    li a7,34
    ecall
    #out: 0x66
    print_string("\n")
    lb a0,7(t0)
    li a7,34
    ecall
    #out: 0x55
    print_string("\n")
    li a7,10
    ecall