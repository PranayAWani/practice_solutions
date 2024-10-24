`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:14:35 AM
// Design Name: 
// Module Name: bit_4_adder
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


module bit_4_adder(
input [3:0]a,b,
input c,
output [3:0]sum,
output carry
    );
    wire cin[2:0];
full_adder ip1(a[0],b[0],c,sum[0],cin[0]);
full_adder ip2(a[1],b[1],cin[0],sum[1],cin[1]);
full_adder ip3(a[2],b[2],cin[1],sum[2],cin[2]);
full_adder ip4(a[3],b[3],cin[2],sum[3],carry);
endmodule
