`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:28:32
// Design Name: 
// Module Name: FullSubtractor_tb
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


module FullSubtractor_tb(

    );
    reg A, B, Bin;
    wire Bout, D;

    FullSubtractor uut(A, B, Bin, Bout, D);

    initial begin
    A=0; B=0; Bin=0; #10
    A=0; B=1; Bin=0; #10
    A=1; B=0; Bin=0; #10
    A=1; B=1; Bin=0; #10
    A=0; B=0; Bin=1; #10
    A=0; B=1; Bin=1; #10
    A=1; B=0; Bin=1; #10
    A=1; B=1; Bin=1; #10
    $finish;
    end

endmodule
