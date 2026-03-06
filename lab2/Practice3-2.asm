.data:
    x: .space 8
    y: .space 32
.text
    li a7,5
    la a0,x
    ecall

    slli a1, a0, 24
    srai a1, a1, 24
    la a2,y
    sw a1,0(a2)

    li a7,35
    lw a0, y
    ecall

    li a7,10
    ecall
    
