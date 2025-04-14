.include"macro_print_str.asm"
.data 
    float1:.float 2147483647.825
    float2:.float 0.5
.text
    la t0,float1
    flw ft0,0(t0)
    la t0 ,float2
    flw ft1,0(t0)

    print_string("Original float:")
    print_float(ft0)

    print_string("\n")
    print_string("After floor:")

    fsub.s ft2,ft0,ft1
    fcvt.w.s a0,ft2
    li a7,1
    ecall

    print_string("\n")
    print_string("After ceil:")

    fadd.s ft2,ft0,ft1
    fcvt.w.s a0,ft2
    li a7,1
    ecall
    print_string("\n")
    print_string("After round:")
    fcvt.w.s a0,ft0
    li a7,1
    ecall

    end
#Original float:12.625
#After floor:12
#After ceil:13
#After round:13


#Original float:2.1474836E9
#After floor:2147483647
#After ceil:2147483647
#After round:2147483647
