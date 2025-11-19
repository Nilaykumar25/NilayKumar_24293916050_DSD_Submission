`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:09:31
// Design Name: 
// Module Name: Mux_8x1_tb
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


module Mux_8x1_tb();
    reg I0, I1, I2, I3, I4, I5, I6, I7;
    reg S0, S1, S2;
    wire Y;

    mux_8x1 uut(I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);

    initial begin
        I0 = 1;
        I1 = 0;
        I2 = 1;
        I3 = 1;
        I4 = 0;
        I5 = 1;
        I6 = 0;
        I7 = 1;

        S2 = 0; S1 = 0; S0 = 0; #10   // Y = I0
        S2 = 0; S1 = 0; S0 = 1; #10   // Y = I1
        S2 = 0; S1 = 1; S0 = 0; #10   // Y = I2
        S2 = 0; S1 = 1; S0 = 1; #10   // Y = I3
        S2 = 1; S1 = 0; S0 = 0; #10   // Y = I4
        S2 = 1; S1 = 0; S0 = 1; #10   // Y = I5
        S2 = 1; S1 = 1; S0 = 0; #10   // Y = I6
        S2 = 1; S1 = 1; S0 = 1; #10   // Y = I7

        $finish;
    end

endmodule
