``` 
public class CaculateSum{
    public static void main(String args[])
    {
        int sum=0;
        for(int i=0;i<=10;i++)
        {
            sum+=i;
        }
        System.out.println("Sum of 1 to 10 is "+sum);
    }
}
```
.include "macro_print_str.asm"
.data
    #.....
.text
    add t1,zero,zero
    addi t0,zero,1
    addi t3,zero,10
    calcu:
        addi t0,t0,1 #i++
        add t1,t1,t0 #sum+=i
        bne t0,t3,calcu #i<=10
    print_string("Sum of 1 to 10 is ")
    mv a0,t1
    li a7,1
    ecall

    li a7,10    
    ecall
    
