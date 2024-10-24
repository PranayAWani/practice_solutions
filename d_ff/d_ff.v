`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 02:21:35 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d,clk,preset,reset,
    output reg q
    );
    always @(posedge clk or posedge reset)
    begin
    if (reset)
        q <= q;
    else 
        q <= d;
    end
endmodule
