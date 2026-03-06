.include"macro_print_str.asm"
.data
    dvalue1: .word 0x02
    dvalue2: .word 0x0f
.text
    lw t1, dvalue1
    lw t2, dvalue2
    add t0,t1,t2
    slti t3,t2,0
    slt t4,t0,t1

    mv a0,t0
    li a7,1
    ecall
    bne t3,t4,overflow
    print_string("N0 overflow\n")
    j end
    overflow:
        print_string("One Overflow\n")
    end:
        li a7,10
        ecall