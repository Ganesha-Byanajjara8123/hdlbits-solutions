
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Count15
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-04
// Link            : https://hdlbits.01xz.net/wiki/Count15
// ============================================

module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    
    always@(posedge clk) begin
        if(reset)
            q<=0; // output should become 0 when reset enabled
        else
            q <= q + 1; //otherwise it start to increase
    end

endmodule
