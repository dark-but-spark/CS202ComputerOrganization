.data
    str: .ascii "\nwelcome "
    sid: .space 9
    e1: .asciz " to risc-v world"
.text
main:
    li a7,8
    la a0,sid
    li a1,9
    ecall

    #complete code here
    la a0,e1
    addi a0,a0,-1
    la a3,sid
    moving:
    	addi a0,a0,-1
        lb a2,0(a0)
        sb a2,1(a0)
        beq a0,a3,off
        j moving
    off:
    	la a2,e1
        lb a2,0(a0)
    ###

    li a7,4
    la a0,str
    ecall
    
    li a7,10
    ecall
