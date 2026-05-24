
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  m2014_q4f
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-22
// Link           : https://hdlbits.01xz.net/wiki/Exams/m2014_q4f
// ============================================

module top_module (
    input in1,
    input in2,
    output out);

    //and (out, in1,(~in2)); //in structural
    assign out = in1 & (~in2); //in behavioral
    
endmodule
