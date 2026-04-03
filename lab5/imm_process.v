module imm_process (
    input  [31:0] m_code,  //RISC-V32I machine code
    output [31:0] imm      //immediate number
);

    // Complete your code begin
    wire [6:0] opcode;
    reg [31:0] imm_reg;

    assign opcode = m_code[6:0];
    assign imm = imm_reg;
    always @(*) begin
        case (opcode) 

            7'b0110011: begin 
                imm_reg = 32'b0;
            end

            7'b0010011, 
            7'b0000011, 
            7'b1100111: 
            begin
                imm_reg = {{20{m_code[31]}}, m_code[31:20]};
            end

            7'b0100011: 
            begin
                imm_reg = {{20{m_code[31]}}, m_code[31:25], m_code[11:7]};
            end

            7'b1100011: 
            begin
                imm_reg = {{19{m_code[31]}}, m_code[31], m_code[7], m_code[30:25], m_code[11:8], 1'b0};
            end

            7'b0110111,
            7'b0010111: 
            begin
                imm_reg = {m_code[31:12], 12'b0};
            end

            7'b1101111:
            begin
                imm_reg = {{12{m_code[31]}}, m_code[31], m_code[19:12], m_code[20], m_code[30:21], 1'b0};
            end

            default: begin
                imm_reg = 32'b0;
            end
        endcase
            
    end
    // Complete your code end
endmodule