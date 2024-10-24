`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:37:12 AM
// Design Name: 
// Module Name: siso_6_bit
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


module siso_6_bit(
    input clk,preset,reset,d,
    output q
    );
    wire [4:0]a;
    d_ff mo1(clk,preset,reset,d,a[0]);
    d_ff mo2(clk,preset,reset,a[0],a[1]);
    d_ff mo3(clk,preset,reset,a[1],a[2]);
    d_ff mo4(clk,preset,reset,a[2],a[3]);
    d_ff mo5(clk,preset,reset,a[3],a[4]);
    d_ff mo6(clk,preset,reset,a[4],q);
    
endmodule
