`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 09:33:47 PM
// Design Name: 
// Module Name: decoder_2_tb
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


module decoder_2_tb();
reg [1:0]a;
wire [3:0]d;

decoder_2_4 tb(a,d);
initial 
    begin
        a=1'b0;
    end
always #5 a=a+1;
endmodule
