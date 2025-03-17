.data 
    # .extern read_str 20
    read_str: .space 20
    str_callee: .asciz"\nIn Callee\n"
.text
read_callee:
 li a7,4
 la a0,str_callee
 ecall
 la a0,read_str
 ecall