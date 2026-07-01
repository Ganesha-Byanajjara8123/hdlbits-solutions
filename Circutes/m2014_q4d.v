
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  m2014_q4d
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-01
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q4d
// ============================================
 
module top_module (
    input clk,
    input in, 
    output out);
 
    always@(posedge  clk) begin
        out<=in^out;
    end
endmodule
