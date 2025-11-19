`timescale 1ns / 1ps

module T_ff_test;

reg  T, CLK;  
wire Q, Qbar; 

T_ff uut (T, CLK, Q, Qbar);

initial begin 
    CLK = 0; 
    forever #5 CLK = ~CLK; 
end 

initial begin 
    T = 0;  #10;            
    T = 1;  #10; 
    T = 0;  #10;            
    T = 1;  #10;
    $finish; 
end

endmodule
