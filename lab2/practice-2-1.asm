.data
    str: .ascii "welcome"
    st: .space 9
.text
main:
    li a7,8
    la a0,st
    li a1,10
    ecall
    li a7,4
    la a0,str
    ecall
    li a7,10
    ecall

    