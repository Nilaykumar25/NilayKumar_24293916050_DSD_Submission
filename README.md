Name - Nilay Kumar
Roll - 24293916051
CSE-A

# Digital System Design – Verilog Experiments

---

## 1) Basic Gates

### **Source Code:**

```text

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

```text
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

<img width="940" height="483" alt="image" src="https://github.com/user-attachments/assets/22322f87-8eb0-4019-b2bc-64c5a49de0c0" />

---

## 2) Boolean Expression

### **Source Code:**

```text
`timescale 1ns / 1ps
module BooleanExpression(
    input a,b,c,
    output y
    );
assign y = (a & c)|(~a & b)|(b & c);
endmodule
```

### **TestBench:**

```text
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
#### **Schematic Diagram:**

<img width="940" height="411" alt="image" src="https://github.com/user-attachments/assets/711989c6-b304-4d28-825b-855091620c87" />

#### **Waveform:**

<img width="940" height="625" alt="image" src="https://github.com/user-attachments/assets/c6677009-3c5b-4c28-8183-d66914a5faaf" />

---

## 3a) 4×1 Multiplexer

### **Source Code:**

```text
`timescale 1ns / 1ps
module Mux4x1(
    input I0,I1,I2,I3,S0,S1,
    output Y
    );
assign Y = (~S1 & ~S0 & I0) | (~S1 & S0 & I1) |(S1 & ~S0 & I2)|(S1 & S0 & I3);
endmodule
```

### **TestBench:**

```text
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
#### **Schematic Diagram:**

<img width="940" height="430" alt="image" src="https://github.com/user-attachments/assets/5d341b16-7fea-4346-9ff0-19a0e93acb41" />

#### **Waveform:**

<img width="940" height="645" alt="image" src="https://github.com/user-attachments/assets/ebc538ad-176f-4e40-881e-279c8c0c5b49" />

---

## 3b) 8×1 Multiplexer

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="463" alt="image" src="https://github.com/user-attachments/assets/7087dc61-355e-4dd8-9e5d-ff828c1e5061" />


#### **Waveform:**

<img width="940" height="483" alt="image" src="https://github.com/user-attachments/assets/d0c2f94b-3edf-412c-8a69-6096674a1eb3" />

---

## 4) Priority Encoder

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="500" alt="image" src="https://github.com/user-attachments/assets/27f2a975-cce0-445e-9172-869c709b1175" />

#### **Waveform:**

<img width="940" height="488" alt="image" src="https://github.com/user-attachments/assets/6623b06e-cde4-43a9-876e-b512b9761ce6" />

---

## 5) Priority Decoder

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="435" alt="image" src="https://github.com/user-attachments/assets/91383eb2-d329-47c6-9185-93d19901bffd" />

#### **Waveform:**

<img width="940" height="507" alt="image" src="https://github.com/user-attachments/assets/5ed81c88-7dce-4bd9-a03f-062ab4415654" />

---

## 6a) Half Adder

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="493" alt="image" src="https://github.com/user-attachments/assets/9df471de-c0cb-46db-9e3f-146d9dc3cf35" />

#### **Waveform:**

<img width="940" height="484" alt="image" src="https://github.com/user-attachments/assets/a7a19ed3-6e24-4e20-ac9a-6616b2a936f4" />

---

## 6b) Full Adder

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="512" alt="image" src="https://github.com/user-attachments/assets/b324f7ec-f9a2-4f6c-8d09-ab8a49dced5b" />

#### **Waveform:**

<img width="940" height="501" alt="image" src="https://github.com/user-attachments/assets/2e2a9e1f-2d6f-4c34-a6fe-9aa5c72614f1" />

---

## 7a) Half Subtractor

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="535" alt="image" src="https://github.com/user-attachments/assets/85a10537-e515-47f6-812b-f85366ff5e12" />

#### **Waveform:**

<img width="940" height="498" alt="image" src="https://github.com/user-attachments/assets/9b878fdd-2e23-4a77-a4ff-d18750c1a6ed" />

---

## 7b) Full Subtractor

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="439" alt="image" src="https://github.com/user-attachments/assets/867aa3a7-7a6b-49cd-b2d0-69853a0735ea" />

#### **Waveform:**

<img width="940" height="499" alt="image" src="https://github.com/user-attachments/assets/00ce6b4e-e59b-4814-9af9-b4b6a990bc3a" />

---

## 8) Universal Adder / Subtractor

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="482" alt="image" src="https://github.com/user-attachments/assets/d0efbee8-f10b-4f79-885d-c0c973e1f320" />

#### **Waveform:**

<img width="940" height="493" alt="image" src="https://github.com/user-attachments/assets/6e8d3418-52ae-4259-b9cf-23780580c990" />

---

## 9) SR Latch

### **Source Code:**

```text
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

```text
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
#### **Schematic Diagram:**

<img width="940" height="519" alt="image" src="https://github.com/user-attachments/assets/f8b3392c-da4f-424e-a6e7-5e9b0326850b" />

#### **Waveform:**

<img width="940" height="515" alt="image" src="https://github.com/user-attachments/assets/1a8efdc7-d796-4c04-a889-c4a066f5fdb0" />

---

## 10a) SR Flip–Flop

### **Source Code:**

```text
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

```text
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

<img width="940" height="505" alt="image" src="https://github.com/user-attachments/assets/de64f43c-8f4d-49f1-b884-0ba59545c0c8" />

#### **Waveform:**

<img width="940" height="497" alt="image" src="https://github.com/user-attachments/assets/f7d6e768-05ec-44fc-b191-f088ed449058" />

---

### 10(b). JK Flip-Flop

#### **Source Code:**

```text
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

```text
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

<img width="940" height="593" alt="image" src="https://github.com/user-attachments/assets/f35ca3ef-06d6-4345-9812-863eb3ddea11" />

#### **Waveform:**

<img width="940" height="290" alt="image" src="https://github.com/user-attachments/assets/ac006b73-efc8-4789-a82c-b552539f4e28" />

---


### 11(a). D Flip-Flop

#### **Source Code:**

```text
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

```text
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

<img width="940" height="278" alt="image" src="https://github.com/user-attachments/assets/ebf9ca7c-7381-4572-98f7-cb4df9017c2d" />

#### **Waveform:**

<img width="940" height="287" alt="image" src="https://github.com/user-attachments/assets/af9fc749-add0-41d0-b271-cfe37765076d" />

---

### 11(b). T Flip-Flop

#### **Source Code:**

```text
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

```text
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

<img width="940" height="379" alt="image" src="https://github.com/user-attachments/assets/45dc80c3-dd96-43ec-8033-53d0fb1cc3d3" />

#### **Waveform:**

<img width="940" height="250" alt="image" src="https://github.com/user-attachments/assets/f1154ddf-9c7e-4045-9a69-a26705ca2016" />

---

## 12. Counter Design

### **Source Code:**

```text
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

```text
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

<img width="1062" height="553" alt="image" src="https://github.com/user-attachments/assets/2e8e8ccd-a197-4f1f-b4ba-768a60a4f14f" />


#### **Waveform:**
<img width="1608" height="826" alt="image" src="https://github.com/user-attachments/assets/18392ce0-f3ce-4594-8158-1fa98597be60" />

