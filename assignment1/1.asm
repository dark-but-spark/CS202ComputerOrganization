.data
    input_str: .space 256
    
.text
    la a0, input_str     
    li a1, 256 
    li a7, 8         
    ecall
    
    la t0, input_str  
    add t1, zero, zero  
    
count_loop:
    lb t2, 0(t0)     
    beqz t2, count_done 
    li t3, 10
    beq t2, t3, count_done 
    addi t1, t1, 1   
    addi t0, t0, 1    
    j count_loop    
    
count_done:
    mv a0, t1      
    li a7, 1     
    ecall
    
    li a7, 10      
    ecall
