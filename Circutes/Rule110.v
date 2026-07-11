
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Rule110
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-11-07
// Link            :  https://hdlbits.01xz.net/wiki/Rule110
// ============================================

module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q
); 

    always@(posedge clk)begin
        if(load) begin
            q <= data;
        end 
       else begin                   //Left neighbors & Center cells   Right neighbors  
    q <= (q | {q[510:0], 1'b0}) & ~( {1'b0, q[511:1]} & q & {q[510:0], 1'b0} );
       end
    end
endmodule
