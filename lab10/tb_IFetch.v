module tb_IFetch ();
    reg clk,branch,zero;
    reg[31:0] imm32;
    wire[15:0] instruction;
    IFetch uIFetch(.clk(clk),.branch(branch),.zero(zero),.imm32(imm32),.instruction(instruction));
    
    initial begin
        clk=1'b0;
        forever #5 clk=~clk;
    end
    
    initial begin
        branch=1'b0;
        zero=1'b0;
        imm32=32'h0;
        #75
        branch=1'b1;
        zero=1'b1;
        imm32=32'h4;
    end
    
    initial begin
        #75 repeat(10) #12 imm32=imm32+16;
    end
    
    initial begin
        #20 $finish;
    end
endmodule