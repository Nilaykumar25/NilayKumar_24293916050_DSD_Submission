`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 01:04:33
// Design Name: 
// Module Name: Mux4x1
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


module Mux4x1(

    input I0,I1,I2,I3,S0,S1,
    output Y
    );
       
    assign Y = (~S1 & ~S0 & I0) | (~S1 & S0 & I1)|(S1 & ~S0 & I2)|(S1 & S0 & I3);
endmodule
