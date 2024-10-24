`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:38:10 AM
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
    input clk,preset,reset,d,
    output reg q
    );
    always @(posedge clk or posedge reset)
    begin
        if(reset)
            begin
            q <= 0;
            end
        else 
            begin
            q <= d;
            end
    end
endmodule
