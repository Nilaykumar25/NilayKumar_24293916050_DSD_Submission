`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:12:21
// Design Name: 
// Module Name: T_FF
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


module T_ff(
    input t, clk,
    output reg q,
    output qbar
    );

assign qbar = ~q;
initial q = 0;

always @(posedge clk) begin
    case (t)
        1'b1: q <= qbar;   // Toggle
        1'b0: q <= q;      // Hold
    endcase
end

endmodule

