// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  Kmap2
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-18
// Link            :  https://hdlbits.01xz.net/wiki/Kmap2
// ============================================

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
   //for SOP     
    assign out = ~c & ~b | ~d & ~a | c&d&b | a&~b&d; 
    
    //for POS
   // assign out = (~a | ~b | c) & (c |~d | ~b) & (~c | d | ~a) &(~c | ~d | a | b);
   
    

endmodule
