.text
    li a7, 5     
    ecall
    mv t0, a0  
    add t1, zero, zero 
loop:
    beqz t0, end  
    mul t2, t0, t0 
    add t1, t1, t2 
    addi t0, t0, -1  
    j loop
    
end:
    mv a0, t1 
    li a7, 1   
    ecall
    li a7, 10 
    ecall
