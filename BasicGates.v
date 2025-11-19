`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:31:07
// Design Name: 
// Module Name: BasicGates
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


module BasicGates(
    input a, b,
    output y1,y2,y3,y4,y5,y6,y7
    );
     
assign y1 = a & b; //AND
assign y2 = ~a; //NOT
assign y3 = a | b; //OR
assign y4 = a ^ b;  // XOR
assign y5 = a ~^ b;  //XNOR
assign y6 = ~(a|b) ; //NOR
assign y7 = ~(a & b); //NAND
 
endmodule
