.include "macro_print_str.asm"
.text
    print_string("Please input your score\n")
    li a7,5
    ecall
    mv t0,a0
    case1:
        li t1,60
        bge t0,t1,pass  #greater than or equal to 60 pass
    case2:
        j fail #less than 60 fail
    pass:
        print_string("You pass the exam\n")
        j end
    fail:
        print_string("You fail the exam\n")
    end:
        li a7,10
        ecall

