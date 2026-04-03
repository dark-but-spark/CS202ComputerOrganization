.data
    invalid: .asciz "Invalid input"
    
.text
main:
    li a7, 5 
    ecall
    mv t0, a0 # n
    blez t0, invalid_case
    li a7, 5
    ecall
    mv t1, a0  
    mv t2, a0 
    addi t0, t0, -1 
    beqz t0, end
loop:
    beqz t0, end 
    li a7, 5
    ecall
    bgt a0, t1, update_max
    j check_min
    
update_max:
    mv t1, a0   
    j check_min
    
check_min:
    blt a0, t2, update_min
    j continue_loop
    
update_min:
    mv t2, a0  
    j continue_loop
continue_loop:
    addi t0, t0, -1 
    j loop
    
end:
    mv a0, t1
    li a7, 1     
    ecall
    li a0, 10
    li a7, 11       
    ecall
    mv a0, t2
    li a7, 1      
    ecall
    li a7, 10        
    ecall
    
invalid_case:
    la a0, invalid
    li a7, 4        
    ecall
    li a7, 10        
    ecall
