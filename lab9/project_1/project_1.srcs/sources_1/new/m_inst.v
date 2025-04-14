
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/14 15:07:32
// Design Name: 
// Module Name: m_inst
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module m_inst(
    clk,addr,dout
    );
    input clk;
    input [13:0] addr;
    output [31:0] dout;
    prgrom urom(.clka(clk),.addra(addr),.douta(dout));
endmodule
