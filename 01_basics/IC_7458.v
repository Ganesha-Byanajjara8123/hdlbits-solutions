// ============================================
// HDLBits Problem : NOT gate
// Topic          : Basics
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-16
// Link           : https://hdlbits.01xz.net/wiki/7458
// ============================================


module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire p2_ab, p1_abc, p2_cd, p1_def;
    
    assign p2_ab = p2a & p2b;
    assign p1_abc = p1a & p1b & p1c;
    assign p2_cd = p2c & p2d;
    assign p1_def = p1d & p1e & p1f;
    
    assign p1y = p1_abc | p1_def;
    assign p2y = p2_ab  | p2_cd;
    


endmodule
