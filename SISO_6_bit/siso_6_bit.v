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


module siso_6_bit(clk,reset,si,so);
    parameter n=12;
    input clk,reset;
    input [n-1:0] si;
    output [n-1:0] so;
    reg [n-1:0]temp;
    always@(posedge clk or negedge reset)
    if(!reset)
        temp=n;
    else 
    begin 
        temp<={temp[n-1:n-6],si[n-1:n-6]};
    end 
    assign so=temp;

endmodule
