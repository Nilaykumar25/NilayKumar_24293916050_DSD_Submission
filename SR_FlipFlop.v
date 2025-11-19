`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:36:11
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(
    input S, R, clk,
    output Q, Qbar
    );
    
wire S_g, R_g;

    assign S_g = S & clk;
    assign R_g = R & clk;

    assign #1 Q = ~(S_g & Qbar);
    assign #1 Qbar = ~(R_g & Q);
endmodule
