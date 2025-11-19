`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:06:50
// Design Name: 
// Module Name: PriorityDecoder
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


module PriorityDecoder(
   input A,B,
    output D0,D1,D2,D3
    );
    assign D0 = ~A & ~B;
    assign D1 = ~A & B;
    assign D2 = A & ~B;
    assign D3 = A & B;
    
endmodule
