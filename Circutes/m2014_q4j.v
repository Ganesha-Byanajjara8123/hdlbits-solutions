 
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  m2014_q4j
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-13
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q4j
// ============================================

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
  assign sum = x + y;
endmodule
