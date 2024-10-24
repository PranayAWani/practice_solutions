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
parameter n=12;
reg clk,reset;
reg [n-1:0]si;
wire [n-1:0]so;
siso_6_bit tb(clk,reset,si,so);
initial begin 
    clk=1'b0;
    reset=1'b0;
    si=12'b001111111111;
    #200
    reset=1'b1;
end
always #5 clk=~clk;
always #50 si=si+1;
endmodule
