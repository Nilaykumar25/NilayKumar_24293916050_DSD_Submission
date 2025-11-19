`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:12:00
// Design Name: 
// Module Name: PriorityEncoder_tb
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


module PriorityEncoder_tb(

    );
    reg D0, D1, D2, D3;
    wire A, B, V;

    PriorityEncoder uut(D0, D1, D2, D3, A, B, V);

    initial begin
        D0=0; D1=0; D2=0; D3=0; #10
        D0=1; D1=0; D2=0; D3=0; #10
        D0=0; D1=1; D2=0; D3=0; #10
        D0=0; D1=1; D2=0; D3=1; #10
        D0=0; D1=0; D2=1; D3=0; #10
        D0=0; D1=0; D2=1; D3=1; #10
        D0=0; D1=1; D2=1; D3=0; #10
        D0=0; D1=1; D2=1; D3=1; #10
        D0=0; D1=0; D2=0; D3=1; #10
        $finish;
    end
    endmodule
