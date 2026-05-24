
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  m2014_q4e
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-21
// Link           : https://hdlbits.01xz.net/wiki/Exams/m2014_q4e
// ============================================

module top_module (
    input in1,
    input in2,
    output out);
    
    // assign out = ~(in1|in2); //in behavioral
    nor (out,in1,in2); // in structural

endmodule
