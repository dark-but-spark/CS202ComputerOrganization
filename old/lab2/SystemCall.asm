.data 
 str: .asciz "Hello, World!"
.text
    li a7,4
    la a0,str
    ecall
    
    li a7,10
    ecall