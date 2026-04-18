// ============================================
// HDLBits Problem : Xnor gate
// Topic          : Basics
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-15
// Link           : https://hdlbits.01xz.net/wiki/Xnorgate
// ============================================

module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a^b);       // for behavioral solution
    //xnor xnor_gate(out,a,b); // for structral solution

endmodule
