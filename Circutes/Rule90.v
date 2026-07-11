// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Rule90
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-11-07
// Link            :  https://hdlbits.01xz.net/wiki/Rule90
// ============================================
 
module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q ); 
    
    always@(posedge clk)begin
        integer i;
        if(load == 1) begin
            q <= data;
            end 
        else           //left-neighbour   right-neighbour 
                q <= {1'b0, q[511:1]} ^ {q[510:0], 1'b0};
    end       

endmodule
