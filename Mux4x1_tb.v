`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:05:22
// Design Name: 
// Module Name: Mux4x1_tb
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


module Mux4x1_tb();
    reg I0, I1, I2, I3, S0, S1;
    wire Y;

    Mux4x1 uut(I0, I1, I2, I3, S0, S1, Y);

    initial begin
    I0 = 1;
    I1 = 0;
    I2 = 1;
    I3 = 1;

    S1 = 0; S0 = 0; 
    #10   // Y = I0

    S1 = 0; S0 = 1; 
    #10   // Y = I1

    S1 = 1; S0 = 0; 
    #10   // Y = I2

    S1 = 1; S0 = 1; 
    #10   // Y = I3
    $finish;
    end

endmodule
