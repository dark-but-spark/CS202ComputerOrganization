.include "macro_print_str.asm"
.data
.text
main:
    print_string("Enter a number: ")
    li a7,5
    ecall
    jal function
    mv a0,a1
    li a7,1
    ecall
    li a7,10
    ecall
function:
    li a2,1
    ble a0,a2,return_1
    addi sp,sp,-12
    sw ra,0(sp)
    sw a0,4(sp)
    addi a0,a0,-1
    jal function
    sw a1,8(sp)
    addi a0,a0,-1
    jal function
    lw a0,4(sp)
    lw a2,8(sp)
    lw ra,0(sp)
    addi sp,sp,12
    add a1,a1,a2
    jr ra
return_1:
    li a1,1
    jr ra  
# The code above is a recursive function that calculates the Fibonacci number.
# The function takes an integer input and returns the Fibonacci number at that position.