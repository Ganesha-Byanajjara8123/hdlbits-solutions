
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Dff8r
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-26
// Link            :  https://hdlbits.01xz.net/wiki/Dff8r
// ============================================

module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk) begin
        if(reset) 
            q<=1'b0;
            else  
                q<=d; 
        end
endmodule
