
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  7420
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-25
// Link            :  https://hdlbits.01xz.net/wiki/7420
// ============================================

module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    assign p1y = ~(p1a&p1b&p1c&p1d);
    assign p2y = ~(p2a&p2b&p2c&p2d);


endmodule
