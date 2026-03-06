.data
    tdata: .word 0x00000001
    str1: .asciz "\nThe result is:"
    str2: .asciz "\n"
.text 
    li a7,5
    ecall 
    lw a1,tdata
    add a0,a0,a1
    mv t0,a0
    la a0,str1
    jal print_string
    mv a0,t0
    jal print_new_line
    jal print_dec_result
    jal print_new_line
    jal print_hex_result
    li a7,10
    ecall
print_string:
    addi sp,sp,-8
    sw ra,4(sp)
    sw a0,0(sp)
    li a7,4 #print string
    ecall
    lw a0,0(sp)
    lw ra,4(sp)
    addi sp,sp,8
    jr ra
print_new_line:
    addi sp,sp,-8
    sw ra,4(sp)
    sw a0,0(sp)
    la a0,str2
    li a7,4 #print '\n'
    ecall
    lw a0,0(sp)
    lw ra,4(sp)
    addi sp,sp,8
    jr ra
print_dec_result:
    addi sp,sp,-8
    sw ra,4(sp)
    sw a0,0(sp)
    li a7,1 #print decimal
    ecall
    lw a0,0(sp)
    lw ra,4(sp)
    addi sp,sp,8
    jr ra
print_hex_result:
    addi sp,sp,-8
    sw ra,4(sp)
    sw a0,0(sp)
    li a7,34 #print hex
    ecall
    lw a0,0(sp)
    lw ra,4(sp)
    addi sp,sp,8
    jr ra
