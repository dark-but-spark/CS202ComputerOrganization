.data:
    val1: .word 0x12345678
    val2: .word 0x78563412
.text
    li a7, 34
    lw a0, val1
    ecall

    li a7, 34
    lw a0, val2
    ecall

    li a7,10
    ecall
    
