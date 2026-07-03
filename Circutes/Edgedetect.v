
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Edgedetect
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-03
// Link            : https://hdlbits.01xz.net/wiki/Edgedetect
// ============================================

module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]in_last_cycle;
    
    always@(posedge clk) begin
        in_last_cycle <= in;// for last state cycle values
        pedge <= in & (~in_last_cycle); //for current state values
        
    end

endmodule
