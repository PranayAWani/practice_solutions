`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 08:54:12 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input clk,reset,d,en,
    output reg q
    );
    always @(en or clk or reset or d)
    begin
    if(!reset)
        q <=0;
    else if (clk) 
        q <= d;
        end
endmodule
