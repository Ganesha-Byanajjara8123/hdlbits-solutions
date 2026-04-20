// ============================================
// HDLBits Problem : Vector
// Topic          : Gates4
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-20
// Link           : https://hdlbits.01xz.net/wiki/Gates4
// ============================================

module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
   //for behavioral 
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
    
    //for structural
    and and_gate(out_and,in[0],in[1],in[2],in[3]); 
    or or_gate(out_or,in[0],in[1],in[2],in[3]);
    xor xor_gate(out_xor,in[0],in[1],in[2],in[3]);
endmodule
