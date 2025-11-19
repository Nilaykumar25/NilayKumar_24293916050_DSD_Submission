`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 00:59:29
// Design Name: 
// Module Name: BooleanExpression
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


module BooleanExpression(
    input a,b,c,
    output y
    );
    assign y = (a & c)|(~a & b)|(b & c);
    
endmodule

