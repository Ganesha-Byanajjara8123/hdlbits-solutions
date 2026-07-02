
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  ece241_2013_q7
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-02
// Link            : https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q7
// ============================================

module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    //just apply JK FF Equation
    always@(posedge clk) begin
        Q<=j&(~Q)|(~k)&Q;
    end

endmodule
