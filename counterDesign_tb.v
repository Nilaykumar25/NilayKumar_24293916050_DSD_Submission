`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:33:37
// Design Name: 
// Module Name: counterDesign_tb
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


module counterDesign_tb(

    );
reg clk, reset;
wire [2:0] q;

counterDesign uut(clk, reset, q);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
reset = 1; #10;
reset = 0; #50;

reset = 1; #10;
reset = 0; #50;

$finish;
end

endmodule
