`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 01:26:47 PM
// Design Name: 
// Module Name: bit_8_mux
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


module bit_8_mux(
input [2:0]s,
input [7:0]d,
output reg y
    );
always @(s[0],s[1],s[2],d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7])
    begin
        if ({s[0],s[1],s[2]}==3'b000) 
            y = d[0];
        else if ({s[0],s[1],s[2]}==3'b001) 
            y = d[1];
        else if ({s[0],s[1],s[2]}==3'b010) 
            y = d[2];
        else if ({s[0],s[1],s[2]}==3'b011) 
            y = d[3];
        else if ({s[0],s[1],s[2]}==3'b100) 
            y = d[4];
        else if ({s[0],s[1],s[2]}==3'b101) 
            y = d[5];
        else if ({s[0],s[1],s[2]}==3'b110) 
            y = d[6];
        else  
            y = d[7];            
    end
endmodule
