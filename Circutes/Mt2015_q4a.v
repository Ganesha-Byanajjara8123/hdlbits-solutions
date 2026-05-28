
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Mt2015_q4a
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-28
// Link            : https://hdlbits.01xz.net/wiki/Mt2015_q4a
// ============================================


module top_module (input x, input y, output z);

    assign z = (x^y) & x;
    
endmodule
