`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:11:28
// Design Name: 
// Module Name: PriorityEncoder
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


module PriorityEncoder(

   input D0,D1,D2,D3,
    output A,B,V
    );
    assign A = D2|D3;
    assign B = D3 + D1 & ~D2;
    assign V = D0 | D1| D2| D3;
    
endmodule
