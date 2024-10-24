`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:19:56 AM
// Design Name: 
// Module Name: bit_4_adder_tb
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


module bit_4_adder_tb();
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire carry;
bit_4_adder tb(a,b,c,sum,carry);
initial 
    begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    end
always #1 a=a+1;
always #16 b=b+1;
always #(16*16) c=c+1;
endmodule
