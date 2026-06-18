// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  Kmap3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-19
// Link            :  https://hdlbits.01xz.net/wiki/Kmap3
// ============================================


module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    //for SOP
    //assign out = a | c&~b | c&a;
    
    //for POS
    assign out = (c | ~d) & (a | ~b) & (c | a);
endmodule
