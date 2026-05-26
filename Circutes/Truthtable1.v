
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Truthtable1
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-26
// Link            :  https://hdlbits.01xz.net/wiki/Truthtable1
// ============================================


module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    /* A/C truth table
    assign f = (~x1 & x2 & ~x3) | 
        (x1 & x2 & ~x3) |
        (x1 & ~x2 & x3) |
        (x1 & x2 & x3);
        */
    
    //or we can also solve this by using ternary operator like x3 is the sel
    //assign f = x3 ? x1 : x2;
    
    //or we have K-map solution like
    assign f = (~x3 & x2) | (x3 & x1);
    
endmodule
