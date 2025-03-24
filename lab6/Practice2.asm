.data
  m1: .word 16
  m2: .word -5
.text
   lw t0, m1
   lw t1, m2
   add t2,zero,zero
loop:
    li s1,1
    and s2,s1,t1
    beq s2,zero,jumpAdd
    add t2,t2,t0
jumpAdd:
    slli t0,t0,1
    srai t1,t1,1
    addi a0,a0,1
    li a1,32
    blt a0,a1,loop

    mv a0,t2
    li a7,1
    ecall
    li a7,10 
    ecall
