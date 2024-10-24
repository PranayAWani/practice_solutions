`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 07:37:24 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input clk,t,reset,
    output reg q
    );
    always@(posedge clk or negedge reset)
    begin
    if(!reset)
         q<=0;
    else
        begin 
          if(t)
          q<=~q;
          else 
          q<=q;
        end
    end 
endmodule
