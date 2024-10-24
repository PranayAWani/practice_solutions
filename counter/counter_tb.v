`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:55:48 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
reg clk,reset,en,ud;
wire [7:0]out;
counter tb(clk,reset,en,ud,out);
initial 
    begin
    clk=1'b0;
    reset=1'b0;
    en=1'b0;
    ud=1'b0;
    #100
    reset=1'b1;
    en=1'b1;
    end
always #7 clk=~clk;
always #256 ud=~ud;
endmodule

