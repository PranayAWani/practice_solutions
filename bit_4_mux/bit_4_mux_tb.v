`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 06:54:44 PM
// Design Name: 
// Module Name: bit_4_mux_tb
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


module bit_4_mux_tb();
    reg [1:0] s;
    reg [3:0] d;
    wire [3:0]y;
    bit_4_mux tb(s,d,y);
    initial 
        begin
        s=2'b00;
        d=4'b0000;
        end
    always #5 s=s+1;
    always #20 d=d+1;
endmodule
