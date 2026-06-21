 
// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  m2014_q3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-21
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q3
// ============================================


module top_module (
    input [4:1] x, 
    output f );
    //by vectors method
    assign f = (x[3]&~x[1]) | (x[1]&x[2]&x[4]);
    
endmodule
