
// ============================================
// HDLBits Problem :  Circuite 
// Topic           :  m2014_q4g
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-23
// Link           :https://hdlbits.01xz.net/wiki/Exams/m2014_q4g
// ============================================



module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire in0;
    
    //in behavioral
    //assign in0 = ~(in1 ^ in2);
    //assign out = (in3 ^ in0);
    
    //in structural
    xnor (in0,in1,in2);
    xor (out,in0,in3);
    
    

endmodule
