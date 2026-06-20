// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  ece241_2013_q2
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-20
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q2
// ============================================

module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    assign out_sop = c&d | ~a&~b&c&~d;
    assign out_pos = (c | ~d) & (~b | d) & (~a | d) & (b | c);

endmodule
