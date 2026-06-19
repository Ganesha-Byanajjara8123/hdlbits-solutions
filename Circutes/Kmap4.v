// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  Kmap4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-19
// Link            :  https://hdlbits.01xz.net/wiki/Kmap4
// ============================================


module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    //wkt check board configuration
    assign out = (a^b^c^d);
endmodule

