`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 02:30:00 PM
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
reg d,clk,preset,reset;
wire q;
d_ff tb(d,clk,preset,reset,q);
initial 
    begin
        d=1'b0;
        clk=1'b1;
        preset=1'b0;
        reset=1'b0;
    end
always #5 clk=~clk;
always #10 d=~d;
endmodule
