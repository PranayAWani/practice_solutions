`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:00:11 AM
// Design Name: 
// Module Name: jk
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


module jk(
    input clk,j,k,reset,
    output reg q
    );
    always @(posedge clk or negedge reset)
    begin
        if(!reset) 
            q <= 1'b0;      
         else
            begin
                case({j,k})
                    2'b00: q <= q;
                    2'b01: q <= 1'b0;
                    2'b10: q <= 1'b1;
                    2'b11: q <= ~q;
                 endcase
             end
          end
endmodule
