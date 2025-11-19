`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:07:20
// Design Name: 
// Module Name: PriorityDecoder_tb
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


module PriorityDecoder_tb(

    );
    reg A, B;
    wire D0, D1, D2, D3;

    PriorityDecoder uut(A, B, D0, D1, D2, D3);

    initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10
    $finish;
    end

endmodule
