#caculate \sigma 1/n!
.data 
.text
    li a0,0
    li a1,1
    li a2,10
    fcvt.s.w fa0,a0
loop:
    fcvt.s.w fa1,a1
    li a3,1
    fcvt.s.w fa3,a3
    fdiv.s fa3,fa3,fa1
    fadd.s fa0,fa0,fa3
    beq a0,a2,end
    addi a0,a0,1
    mul a1,a1,a0
    j loop
end:

    li a7,2
    ecall


    li a7,10
    ecall
