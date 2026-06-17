
// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  Kmap1
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-17
// Link            :  https://hdlbits.01xz.net/wiki/Kmap1
// ============================================


module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    //SOP & POS we can write both in OR gate
    assign out = (a | b | c);
endmodule
