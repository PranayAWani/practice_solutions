`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 12:12:18 PM
// Design Name: 
// Module Name: siso_tb
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


module siso_tb();
reg clk,preset,reset,d;
wire q;
siso_6_bit tb(clk,preset,reset,d,q);
initial
    begin
    d=1'b0;
    clk =1'b0;
    preset =1'b0;
    reset =1'b0;
    end
always #5 clk=~clk;
always #30 d=~d;
endmodule
