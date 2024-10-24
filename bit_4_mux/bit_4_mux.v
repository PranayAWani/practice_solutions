`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 06:48:59 PM
// Design Name: 
// Module Name: bit_4_mux
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


module bit_4_mux(
    input [1:0] s,
    input [3:0] d,
    output reg [3:0]y
    );
    always @(s[0],s[1],d[0],d[1],d[2],d[3],y[0],y[1],y[2])
    begin
    if ({s[0],s[1]}==2'b0)
        y=d[0];
    else if ({s[0],s[1]}==2'b01)
        y=d[1];
    else if ({s[0],s[1]}==2'b10)
        y=d[2];
    else 
        y=d[3];
    end
endmodule
