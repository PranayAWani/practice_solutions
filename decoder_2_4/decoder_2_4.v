`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 09:28:34 PM
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(
input [1:0]a,
output reg [3:0] d
    );
    always @(a,d)
            case (a)
            2'b00   : d <= 4'b0001;
            2'b01   : d <= 4'b0010;
            2'b10   : d <= 4'b0100;
            2'b11   : d <= 4'b1000;
            default : d <= 4'b0000;
         endcase
endmodule
