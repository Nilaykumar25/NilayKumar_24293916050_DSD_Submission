`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:20:01
// Design Name: 
// Module Name: Half_Adder_tb
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


module Half_Adder_tb(

    );
    reg A, B;
    wire S, C;

    Half_Adder uut(A, B, S, C);
    initial begin
        A=0; B=0; #10
        A=0; B=1; #10
        A=1; B=0; #10
        A=1; B=1; #10
        $finish;
    end

endmodule

