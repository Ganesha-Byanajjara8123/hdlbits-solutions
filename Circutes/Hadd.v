
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  Hadd
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-10
// Link            :  https://hdlbits.01xz.net/wiki/Hadd
// ============================================


module top_module( 
    input a, b,
    output cout, sum );
   
    //we know the half adder equation, A/C that
    assign sum = a^b;
    assign cout = a&b | b&a;
    
endmodule
