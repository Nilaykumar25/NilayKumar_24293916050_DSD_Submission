`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:27:36
// Design Name: 
// Module Name: FullSubtractor
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


module FullSubtractor(
    input A,B,Bin,
    output Bout,D
    );
    assign D = A^B^Bin ;
    assign Bout = (~A & B) | Bin & (A~^B);
    
endmodule
