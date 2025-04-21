module IFetch(clk,branch,zero,imm32,instruction);
    reg[15:0] pc;
    input clk,branch,zero;
    input[31:0] imm32;
    output[15:0] instruction;
    prgrom urom(.clka(clk),.addra(pc[15:2]),.douta(instruction));

    assign instruction = urom.douta;
    always@(posedge clk) begin
        if(branch)
            pc <=pc+4;
        else if(zero)
            pc <= pc+imm32;
        else    
            pc <= pc+4;
    end

endmodule