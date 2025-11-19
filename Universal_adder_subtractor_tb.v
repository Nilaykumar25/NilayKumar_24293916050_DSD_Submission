`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 23:20:05
// Design Name: 
// Module Name: Universal_adder_subtractor_tb
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


module Universal_adder_subtractor_tb(

    );
reg a0, a1, a2, a3;
reg b0, b1, b2, b3;
reg m;
wire c4, s0, s1, s2, s3, v;
Universal_adder_subtractor uut(a0, a1, a2, a3, b0, b1, b2, b3, m, c4, s0, s1, s2, s3, v);

initial begin
// ADD:(1001 + 1010)
a3=1; a2=0; a1=0; a0=1;
b3=1; b2=0; b1=1; b0=0;
m=0;
#10;

// SUBTRACT:(1001 - 1010)
a3=1; a2=0; a1=0; a0=1;
b3=1; b2=0; b1=1; b0=0;
m=1;
#10;
$finish;
end
endmodule
