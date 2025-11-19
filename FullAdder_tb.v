`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:25:51
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb(

    );
    reg A, B, Cin;
    wire S, Cout;

    FullAdder uut(A, B, Cin, S, Cout);

    initial begin
    A=0; B=0; Cin=0; #10
    A=0; B=0; Cin=1; #10
    A=0; B=1; Cin=0; #10
    A=0; B=1; Cin=1; #10
    A=1; B=0; Cin=0; #10
    A=1; B=0; Cin=1; #10
    A=1; B=1; Cin=0; #10
    A=1; B=1; Cin=1; #10
    $finish;
    end

endmodule

