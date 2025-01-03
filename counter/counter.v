`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 02:45:34 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,reset,en,ud,
    output reg [7:0]out
    );
    always @(posedge clk or negedge reset)
    begin
        if(!reset)
            out = 8'b0;
        else if (en)
            if(!ud)
                begin
                out=out+1;
                end
         else 
            begin
                out=out-1;
            end
    end
endmodule
