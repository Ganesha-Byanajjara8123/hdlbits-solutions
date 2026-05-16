
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  Gates100
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-14
// Link           : https://hdlbits.01xz.net/wiki/Gates100
// ============================================

module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
    assign out_and = &in[99:0];
    assign out_or = |in[99:0];
    assign out_xor = ^in[99:0];
endmodule
