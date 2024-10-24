`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:17:47 AM
// Design Name: 
// Module Name: jktb
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


module jktb();
reg clk,j,k,reset;
wire q,qbar;

jk tb(clk,j,k,reset,q,qbar);
initial 
    begin
        j=1'b0;
        k=1'b0;
        clk = 1'b0;
        reset =1'b0;
    end
always #5 clk=~clk;
always #7 j=~j;
always #13 k=~k;

endmodule
