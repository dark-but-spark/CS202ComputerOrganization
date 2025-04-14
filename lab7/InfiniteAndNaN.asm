.include"macro_print_str.asm"
.data
    data1: .word 0xff7f7fff
    data2: .word 0xffff7fff
    fneg1:.float -1
.text
main:

    print_string("data1:\n")
    la t0,data1
    flw ft0,0(t0)
    fmul.s fa0,ft0,ft0
    li a7,2
    ecall
	 print_string("\n")
    la t0,fneg1
    flw ft0,0(t0)
    fmul.s fa0,ft0,ft0
    li a7,2 
    ecall
    print_string("\n")
    print_string("data2:\n")
    la t0,data2
    flw ft0,0(t0)
    fmul.s fa0,ft0,ft0
    li a7,2
    ecall
    print_string("\n")

    la t0,fneg1
    flw ft0,0(t0)
    fmul.s fa0,ft0,ft0
    li a7,2
    ecall
# data1:
# Infinity
# 1.0
# data2:
# NaN
# 1.0