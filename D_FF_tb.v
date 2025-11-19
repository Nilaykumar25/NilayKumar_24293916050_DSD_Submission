`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2025 00:15:59
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb(

    );reg D, CLK;
wire Q, Qbar;

D_FF uut (D, CLK, Q, Qbar);

initial begin
CLK = 0;
forever #5 CLK = ~CLK;
end

initial begin
D = 0; #10;
D = 1; #10;
$finish;
end

endmodule