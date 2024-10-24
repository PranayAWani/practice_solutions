`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:26:54 PM
// Design Name: 
// Module Name: nbit_adder_tb
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


module nbit_adder_tb();
parameter n=8;
reg [n-1:0] a,b;
reg cin;
wire [n-1:0]sum;
wire carry;
n_bit_adder tb(a,b,cin,sum,carry);
initial 
    begin
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    end
always #1 a=a+1;
always #16 b=b+1;
always #(16*16) cin=~cin;
endmodule
