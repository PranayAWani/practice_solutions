`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 09:46:53 PM
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb();
reg [2:0]s;
wire [7:0]d;
decoder_3_8 tb(s,d);
initial 
    begin
    s=3'b0;
    end
always #5 s=s+1;
endmodule
