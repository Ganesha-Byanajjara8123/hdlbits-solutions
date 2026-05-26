
// ============================================
// HDLBits Problem :  Circuite 
// Topic           :  Gates
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-24
// Link           :https://hdlbits.01xz.net/wiki/Gates
// ============================================

module top_module(
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    
    //Go with structural format is easy one
    and (out_and,a,b);
    or  (out_or, a,b);
    xor (out_xor,a,b);
    nand(out_nand,a,b);
    nor (out_nor,a,b);
    xnor(out_xnor,a,b);
    and (out_anotb,a,(~b));

endmodule
