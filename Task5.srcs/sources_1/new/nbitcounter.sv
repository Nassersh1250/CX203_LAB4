`timescale 1ns / 1ps

module nbitcounter#(parameter n = 4)(
    input [n-1:0] D,
    input [n-1:0] x,
    input clk, R,
    input load,
    input sub,
    output reg [n-1:0] Q,
    output reg [n-1:0] sum

    );
    
    always_ff@(negedge clk or negedge R)
        begin  
        
            if (R == 0) begin 
                Q<=0;
                sum<=0;
                end
            else if (load == 1)Q<=D;
                
            else if (sub == 1&&Q!=0) begin
                 Q <= Q-1;
                 sum = x+sum;
                 end
            else if(Q!=0) Q <= Q+1;
         
        end 
endmodule
