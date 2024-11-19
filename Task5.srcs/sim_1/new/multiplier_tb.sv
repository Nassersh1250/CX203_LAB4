`timescale 1ns / 1ps

module multiplier_tb;
logic [3:0] D2,x;
wire [3:0] Q2;
logic [3:0] sum;
logic R,clk,load,sub;


nbitcounter dut1(
    .D(D2),
    .x(x),
    .R(R),
    .load(load),
    .sub(sub),
    .clk(clk),
    .Q(Q2),
    .sum(sum)
);
 
initial begin 
clk = 0;

forever #1 clk = ~clk;
end
initial begin 
R = 0;   D2 = 4'b0011; x=4'b0101; load = 1; sub = 0; #4;
R = 1;   D2 = 4'b0011; x=4'b0101; load = 1; sub = 0; #4;
R = 1;   D2 =D2; load = 0;sub = 1; #5;
R = 1;   D2 =D2; load = 0;sub = 1; #5;
$finish;
end
endmodule 