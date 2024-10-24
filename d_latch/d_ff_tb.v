`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 09:04:48 PM
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg clk,reset,d,en;
wire q;
d_latch tb(clk,reset,d,en,q);
initial begin
clk=1'b0;
reset=1'b0;
d=1'b0;
en=1'b1;
#100
reset =1'b1;
end
always #13 d=~d;
always #5 clk=~clk;
endmodule
