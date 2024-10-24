`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 11:00:18 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a_in, b_in, c_in,
    output sum, carry
    );
    assign sum = a_in ^ b_in ^ c_in;
    assign carry = (a_in & b_in)|(b_in & c_in)|(c_in & a_in);
endmodule
