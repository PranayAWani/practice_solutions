`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 10:33:17 AM
// Design Name: 
// Module Name: all_gates
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


module all_gates(
    input a,b,
    output and_out,or_out,nor_out,not_out,nand_out,exor_out,exnor_out
    );
    not(not_out,a);
    and(and_out,a,b);
    nand(nand_out,a,b);
    or(or_out,a,b);
    nor(nor_out,a,b);
    xor(exor_out,a,b);
    xnor(exnor_out,a,b);
endmodule
