.data
    devalue1:.byte 27
    devalue2:.byte 4
.text 
    lb t0,devalue1
    lb t1,devalue2

    rem a0,t0,t1

    li a7,1
    ecall

    addi t1,t1,-1
    and a0,t0,t1

    li a7,1
    ecall

    li a7,10
    ecall

#rem(a,b) is a function that returns the remainder of a divided by b.
#when b is 2^n, rem(a,b) is equivalent to a & (b-1).

