`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:13:29 PM
// Design Name: 
// Module Name: n_bit_adder
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


module n_bit_adder(a,b,cin,sum,carry);
parameter n=8;
input [n-1:0]a,b;
input cin;
output [n-1:0]sum;
output carry;
wire [n:0]c;
assign c[0]=cin;

 genvar i;
    generate
    for(i=0;i<n;i=i+1)
    begin: fa
        full_adder fa(a[i],b[i],c[i],sum[i],c[i+1]);
    end
    
    endgenerate
    assign carry = c[n];
    endmodule
