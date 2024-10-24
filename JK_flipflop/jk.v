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
    output reg q,qbar
    );
    always @(posedge clk or posedge reset)
    begin
        if(reset) 
            begin
                q <= 1'b0;
                qbar <= 1'b1;
            end
        else
            begin
                case({j,k})
                    2'b00: 
                        begin
                        q <= q;
                        qbar <= qbar;
                        end
                    2'b01: 
                        begin
                        q <= 1'b0;
                        qbar <= 1'b1;
                        end
                    2'b10: 
                        begin
                        q <= 1'b1;
                        qbar <= 1'b0;
                        end
                    2'b11: 
                        begin
                        q <= ~q;
                        qbar <= ~qbar;
                        end
                 endcase
             end
          end
endmodule
