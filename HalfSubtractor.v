`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:21:50
// Design Name: 
// Module Name: HalfSubtractor
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


module HalfSubtractor(
    input A,B,
    output D,Bout
    );
    assign D = A^B ;
    assign Bout = ~A & B ;
   
endmodule
