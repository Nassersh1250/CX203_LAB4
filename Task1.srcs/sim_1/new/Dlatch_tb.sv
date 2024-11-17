`timescale 1ns / 1ps

module Dlatch_tb;

logic D,R,clk;
logic Q,Qb;


Dlatch dut(
.D(D),
.R(R),
.clk(clk),
.Q(Q),
.Qb(Qb)
);

initial begin 
clk = 0;
forever #5 clk = ~clk;
end
initial begin 
R = 1;  D = 0; #10;
R = 1;  D = 1; #10;
R = 1;  D = 0; #10;
R = 0;  D = 1; #10;
$finish;
end

endmodule
