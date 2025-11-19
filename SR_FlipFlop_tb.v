`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:46:21
// Design Name: 
// Module Name: SR_FlipFlop_tb
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


module SR_FlipFlop_tb(

    );

reg S, R, clk;
wire Q, Qbar;

SR_FlipFlop uut(S, R, clk, Q, Qbar);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
S = 0; R = 0;
#12;
S = 0; R = 1;
#10;
S = 0; R = 0;
#10;
S = 1; R = 0;
#10;
S = 0; R = 0;
#10;
S = 1; R = 1;
#10;
$finish;
end

endmodule
