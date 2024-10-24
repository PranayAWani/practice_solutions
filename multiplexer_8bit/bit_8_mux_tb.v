`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 01:38:31 PM
// Design Name: 
// Module Name: bit_8_mux_tb
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


module bit_8_mux_tb();
reg [2:0]s;
reg [7:0]d;
wire y;

bit_8_mux tb(s,d,y);
initial
    begin
    s=3'b0;
    d=8'b0;
    end
always #1 s=s+1;
always #8 d=d+1;
endmodule
