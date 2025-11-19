`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:17:57
// Design Name: 
// Module Name: BooleanExpression_tb
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


module BooleanExpression_tb(

    );
reg a,b,c;
wire y;
BooleanExpression uut(a,b,c,y);
initial begin
    a=0; b=0; c=0; #10
    a=0; b=0; c=1; #10
    
    a=0; b=1; c=0; #10
    a=0; b=1; c=1; #10
    
    a=1; b=0; c=0; #10
    a=1; b=0; c=1; #10
    
    a=1; b=1; c=0; #10
    a=1; b=1; c=1; #10

    $finish;
end

endmodule
