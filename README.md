Name - Nilay Kumar
Roll - 24293916051
CSE-A

# Digital System Design – Verilog Experiments

Below are all experiments (1–12) with **proper formatting**, **headings**, **source code blocks**, and **testbench blocks**, ready for GitHub README.md.

---

## 1) Basic Gates

### **Source Code:**

```verilog
`timescale 1ns / 1ps
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
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module BasicGates_tb();
reg a, b;
wire y1, y2, y3, y4, y5, y6, y7;

BasicGates uut(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));

initial begin
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10
$finish;
end
endmodule
```
#### **Schematic Diagram:**

<img width="940" height="490" alt="image" src="https://github.com/user-attachments/assets/df135df1-eea5-4759-a88c-6afa5cc58b8f" />


#### **Waveform:**

(Insert waveform here)
---

## 2) Boolean Expression

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module BooleanExpression(
    input a,b,c,
    output y
    );
assign y = (a & c)|(~a & b)|(b & c);
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module BooleanExpression_tb();
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
```

---

## 3a) 4×1 Multiplexer

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module Mux4x1(
    input I0,I1,I2,I3,S0,S1,
    output Y
    );
assign Y = (~S1 & ~S0 & I0) | (~S1 & S0 & I1) |(S1 & ~S0 & I2)|(S1 & S0 & I3);
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module Mux4x1_tb();
reg I0, I1, I2, I3, S0, S1;
wire Y;

Mux4x1 uut(I0,I1,I2,I3,S0,S1,Y);

initial begin
    I0=1; I1=0; I2=1; I3=1;
    S1=0; S0=0; #10
    S1=0; S0=1; #10
    S1=1; S0=0; #10
    S1=1; S0=1; #10
$finish;
end
endmodule
```

---

## 3b) 8×1 Multiplexer

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module mux_8x1(
    input I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,
    output Y
    );
assign Y = (~S2 & ~S1 & ~S0 & I0) |
           (~S2 & ~S1 &  S0 & I1) |
           (~S2 &  S1 & ~S0 & I2) |
           (~S2 &  S1 &  S0 & I3) |
           ( S2 & ~S1 & ~S0 & I4) |
           ( S2 & ~S1 &  S0 & I5) |
           ( S2 &  S1 & ~S0 & I6) |
           ( S2 &  S1 &  S0 & I7);
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module Mux_8x1_tb();
reg I0,I1,I2,I3,I4,I5,I6,I7;
reg S0,S1,S2;
wire Y;

mux_8x1 uut(I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,Y);

initial begin
    I0=1; I1=0; I2=1; I3=1;
    I4=0; I5=1; I6=0; I7=1;

    S2=0; S1=0; S0=0; #10
    S2=0; S1=0; S0=1; #10
    S2=0; S1=1; S0=0; #10
    S2=0; S1=1; S0=1; #10
    S2=1; S1=0; S0=0; #10
    S2=1; S1=0; S0=1; #10
    S2=1; S1=1; S0=0; #10
    S2=1; S1=1; S0=1; #10
$finish;
end
endmodule
```

---

## 4) Priority Encoder

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module PriorityEncoder(
    input D0,D1,D2,D3,
    output A,B,V
    );
assign A = D2 | D3;
assign B = D3 + D1 & ~D2;
assign V = D0 | D1 | D2 | D3;
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module PriorityEncoder_tb();
reg D0,D1,D2,D3;
wire A,B,V;

PriorityEncoder uut(D0,D1,D2,D3,A,B,V);

initial begin
    D0=0;D1=0;D2=0;D3=0; #10
    D0=1;D1=0;D2=0;D3=0; #10
    D0=0;D1=1;D2=0;D3=0; #10
    D0=0;D1=1;D2=0;D3=1; #10
    D0=0;D1=0;D2=1;D3=0; #10
    D0=0;D1=0;D2=1;D3=1; #10
    D0=0;D1=1;D2=1;D3=0; #10
    D0=0;D1=1;D2=1;D3=1; #10
    D0=0;D1=0;D2=0;D3=1; #10
$finish;
end
endmodule
```

---

## 5) Priority Decoder

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module PriorityDecoder(
   input A,B,
   output D0,D1,D2,D3
);
assign D0 = ~A & ~B;
assign D1 = ~A & B;
assign D2 = A & ~B;
assign D3 = A & B;
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module PriorityDecoder_tb();
reg A,B;
wire D0,D1,D2,D3;

PriorityDecoder uut(A,B,D0,D1,D2,D3);

initial begin
A=0; B=0; #10
A=0; B=1; #10
A=1; B=0; #10
A=1; B=1; #10
$finish;
end
endmodule
```

---

## 6a) Half Adder

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module Half_Adder(
    input A,B,
    output S,C
);
assign S = A ^ B;
assign C = A & B;
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module Half_Adder_tb();
reg A,B;
wire S,C;

Half_Adder uut(A,B,S,C);

initial begin
    A=0;B=0;#10
    A=0;B=1;#10
    A=1;B=0;#10
    A=1;B=1;#10
$finish;
end
endmodule
```

---

## 6b) Full Adder

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module FullAdder(
    input A,B,Cin,
    output S,Cout
);
assign S = A ^ B ^ Cin;
assign Cout = (A&B) | (Cin & (A^B));
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module FullAdder_tb();
reg A,B,Cin;
wire S,Cout;

FullAdder uut(A,B,Cin,S,Cout);

initial begin
A=0;B=0;Cin=0;#10
A=0;B=0;Cin=1;#10
A=0;B=1;Cin=0;#10
A=0;B=1;Cin=1;#10
A=1;B=0;Cin=0;#10
A=1;B=0;Cin=1;#10
A=1;B=1;Cin=0;#10
A=1;B=1;Cin=1;#10
$finish;
end
endmodule
```

---

## 7a) Half Subtractor

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module HalfSubtractor(
    input A,B,
    output D,Bout
);
assign D = A ^ B;
assign Bout = ~A & B;
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module HalfSubtractor_tb();
reg A,B;
wire D,Bout;

HalfSubtractor uut(A,B,D,Bout);

initial begin
A=0;B=0;#10
A=0;B=1;#10
A=1;B=0;#10
A=1;B=1;#10
$finish;
end
endmodule
```

---

## 7b) Full Subtractor

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module FullSubtractor(
    input A,B,Bin,
    output Bout,D
);
assign D = A ^ B ^ Bin;
assign Bout = (~A & B) | (Bin & (A ~^ B));
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module FullSubtractor_tb();
reg A,B,Bin;
wire Bout,D;

FullSubtractor uut(A,B,Bin,Bout,D);

initial begin
A=0;B=0;Bin=0;#10
A=0;B=1;Bin=0;#10
A=1;B=0;Bin=0;#10
A=1;B=1;Bin=0;#10
A=0;B=0;Bin=1;#10
A=0;B=1;Bin=1;#10
A=1;B=0;Bin=1;#10
A=1;B=1;Bin=1;#10
$finish;
end
endmodule
```

---

## 8) Universal Adder / Subtractor

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module Universal_adder_subtractor(
    input a0,a1,a2,a3,b0,b1,b2,b3,m,
    output c4,s0,s1,s2,s3,v
);
assign c0 = m;
assign s0 = a0 ^ (b0 ^ m) ^ c0;
assign c1 = (a0 & (b0 ^ m)) | (c0 & (a0 ^ (b0 ^ m)));
assign s1 = a1 ^ (b1 ^ m) ^ c1;
assign c2 = (a1 & (b1 ^ m)) | (c1 & (a1 ^ (b1 ^ m)));
assign s2 = a2 ^ (b2 ^ m) ^ c2;
assign c3 = (a2 & (b2 ^ m)) | (c2 & (a2 ^ (b2 ^ m)));
assign s3 = a3 ^ (b3 ^ m) ^ c3;
assign c4 = (a3 & (b3 ^ m)) | (c3 & (a3 ^ (b3 ^ m)));
assign v = c3 ^ c4;
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module Universal_adder_subtractor_tb();
reg a0,a1,a2,a3;
reg b0,b1,b2,b3;
reg m;
wire c4,s0,s1,s2,s3,v;

Universal_adder_subtractor uut(a0,a1,a2,a3,b0,b1,b2,b3,m,c4,s0,s1,s2,s3,v);

initial begin
// ADD: 1001 + 1010
a3=1; a2=0; a1=0; a0=1;
b3=1; b2=0; b1=1; b0=0;
m=0; #10;

// SUB: 1001 - 1010
a3=1; a2=0; a1=0; a0=1;
b3=1; b2=0; b1=1; b0=0;
m=1; #10;
$finish;
end
endmodule
```

---

## 9) SR Latch

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module SR_latch(
    input S,R,
    output Q,Qbar
);
assign #1 Q = ~(S & Qbar);
assign #1 Qbar = ~(R & Q);
endmodule
```

### **TestBench:**

```verilog
`timescale 1ns / 1ps
module SR_latch_tb();
reg S,R;
wire Q,Qbar;

SR_latch uut(S,R,Q,Qbar);

initial begin
S=0;R=1;#10
S=1;R=1;#10
S=1;R=0;#10
S=1;R=1;#10
S=0;R=0;#10
$finish;
end
endmodule
```

---

## 10a) SR Flip–Flop

### **Source Code:**

````verilog
`timescale 1ns / 1ps
module SR_FlipFlop(
    input S,R,clk,


## 10. Flip-Flops

### 10(a). SR Flip-Flop

#### **Source Code:**
```verilog
`timescale 1ns / 1ps

module SR_FlipFlop(
    input S, R, clk,
    output Q, Qbar
    );
    
wire S_g, R_g;

    assign S_g = S & clk;
    assign R_g = R & clk;

    assign #1 Q = ~(S_g & Qbar);
    assign #1 Qbar = ~(R_g & Q);
endmodule
````

#### **Test Bench Code:**

```verilog
`timescale 1ns / 1ps

module SR_FlipFlop_tb();

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
```

#### **Schematic Diagram:**

(Insert diagram here)

#### **Waveform:**

(Insert waveform here)

---

### 10(b). JK Flip-Flop

#### **Source Code:**

```verilog
`timescale 1ns / 1ps

module Jk_FF(
    input  J, K, CLK, 
    output reg Q, 
    output Qbar 
    );
assign Qbar = ~Q;
always @(posedge CLK) begin
     case ({J, K}) 
     2'b10: Q <= 1'b1;   // Set
     2'b01: Q <= 1'b0;   // Reset
     2'b00: Q <= Q;      // No change 
     2'b11: Q <= Qbar;   // Toggle 
    endcase
end
endmodule
```

#### **Test Bench Code:**

```verilog
`timescale 1ns / 1ps
module Jk_FF_tb();

reg J, K, CLK; 
wire Q, Qbar; 

Jk_FF uut (J,K,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end

initial begin  
J = 0; K = 0;   
#12;           
J = 0; K = 1;   
#10; 
J = 0; K = 0;   
#10; 
J = 1; K = 0;   
#10; 
J = 0; K = 0;   
#10; 
J = 1; K = 1;   
#10; 
$finish; 
end
endmodule
```

#### **Schematic Diagram:**

(Insert diagram here)

#### **Waveform:**

(Insert waveform here)

---

## 11. D & T Flip-Flops

### 11(a). D Flip-Flop

#### **Source Code:**

```verilog
`timescale 1ns / 1ps
module d_flip_flop(
input  D, CLK, 
output reg Q, 
output Qbar
    );
assign Qbar = ~Q;
always @(posedge CLK) begin
     Q <= D;
end
endmodule
```

#### **Test Bench Code:**

```verilog
`timescale 1ns / 1ps
module d_flip_flop_test();

reg  D, CLK;  
wire Q, Qbar; 

d_flip_flop uut (D,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
D = 0;  #10;            
D = 1;  #10; 
$finish; 
end
endmodule
```

#### **Schematic Diagram:**

(Insert diagram here)

#### **Waveform:**

(Insert waveform here)

---

### 11(b). T Flip-Flop

#### **Source Code:**

```verilog
`timescale 1ns / 1ps
module t_flip_flop(
input  t, clk, 
output reg q, 
output qbar 
    );
assign qbar = ~q;
initial q=0;

always @(posedge clk) begin
   case ({t}) 
     1'b1: q <= qbar;   // Toggle
     1'b0: q <= q;      // Hold
endcase
end
endmodule
```

#### **Test Bench Code:**

```verilog
`timescale 1ns / 1ps
module t_flip_flop_test();

reg  T, CLK;  
wire Q, Qbar; 

t_flip_flop uut (T,CLK,Q,Qbar); 

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
```

#### **Schematic Diagram:**

(Insert diagram here)

#### **Waveform:**

(Insert waveform here)

---

## 12. Counter Design

### **Source Code:**

```verilog
`timescale 1ns / 1ps
module t_ff(
input t,
input clk,
input reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)
        q<=1'b0;
    else if(t)
        q<=~q;
    end 
endmodule

module counter(
input clk, reset, output [2:0]q
    );
    wire t0,t1,t2;
    assign t0=~q[1];
    assign t1=1;
    assign t2=q[1];
    
    t_ff ff0(t0,clk,reset,q[0]);
    t_ff ff1(t1,clk,reset,q[1]);
    t_ff ff2(t2,clk,reset,q[2]);
endmodule
```

### **Test Bench Code:**

```verilog
`timescale 1ns / 1ps
module tb_counter();
    
    reg clk,reset;
    wire [2:0]q;
    
    counter uut(clk,reset,q);
    initial begin
        clk=0;
        #5
        forever #5 clk=~clk;
    end
    
    initial begin
        reset =1;
        #10
        reset=0;
        #50
        $finish;
    end
endmodule
```

#### **Schematic Diagram:**

(Insert diagram here)

#### **Waveform:**

(Insert waveform here)
