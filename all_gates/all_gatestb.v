`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:51:29 AM
// Design Name: 
// Module Name: all_gatestb
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


module all_gatestb();
reg a,b;
wire and_out,or_out,nor_out,not_out,nand_out,exor_out,exnor_out;
all_gates tb(a,b,and_out,or_out,nor_out,not_out,nand_out,exor_out,exnor_out);
initial
    begin
    a=1'b0;
    b=1'b0;
    end
always #5 a=~a;
always #10 b=~b;
endmodule
