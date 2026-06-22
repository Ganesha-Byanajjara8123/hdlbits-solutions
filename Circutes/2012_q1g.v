
 // ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  2012_q1g
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-22
// Link            :  https://hdlbits.01xz.net/wiki/Exams/2012_q1g
// ============================================

module top_module (
    input [4:1] x,
    output f
); //by using vectors method
    assign f = (x[3]&~x[1]) | (~x[4]&~x[2]) | (x[3]&x[4]&x[2]);
endmodule
