`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 23:17:57
// Design Name: 
// Module Name: Universal_adder_subtractor
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


module Universal_adder_subtractor(
    input a0, a1, a2, a3, b0, b1, b2, b3, m,
    output c4, s0, s1, s2, s3,v
    );
    assign c0= m;
    assign s0= a0 ^ (b0 ^ m) ^ c0;
    assign c1= (a0 & (b0 ^ m)) | (c0 & (a0 ^ (b0 ^ m)));
    assign s1= a1 ^ (b1 ^ m) ^ c1;
    assign c2= (a1 & (b1 ^ m)) | (c1 & (a1 ^ (b1 ^ m)));    
    assign s2= a2 ^ (b2 ^ m) ^ c2;
    assign c3= (a2 & (b2 ^ m)) | (c2 & (a2 ^ (b2 ^ m)));    
    assign s3= a3 ^ (b3 ^ m) ^ c3;
    assign c4= (a3 & (b3 ^ m)) | (c3 & (a3 ^ (b3 ^ m)));
    assign v= c3 ^ c4;

endmodule
