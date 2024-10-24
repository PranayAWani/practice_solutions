`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 07:44:14 PM
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();
reg clk,reset;
reg t;
wire q;
t_ff tb(clk,reset,t,q);
initial begin 
    clk=1'b0;
    reset=1'b0;
    t=1'b0;
    #200
    reset=1'b1;
end
always #5 clk=~clk;
always #15 t=~t;
endmodule
