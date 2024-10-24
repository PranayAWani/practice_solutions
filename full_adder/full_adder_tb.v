`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:07:30 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a_in,b_in,c_in;
wire sum,carry;
full_adder tb(a_in,b_in,c_in,sum,carry);
initial
    begin
    a_in =1'b0;
    b_in =1'b0;
    c_in =1'b0;
    end
always #5 a_in=~a_in;
always #10 b_in=~b_in;
always #50 c_in=~c_in;
endmodule
