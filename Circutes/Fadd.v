
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  Fadd
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-11
// Link            :  https://hdlbits.01xz.net/wiki/Fadd
// ============================================


module top_module( 
    input a, b, cin,
    output cout, sum );

    //A/c full adder equations
    assign sum = a^b^cin;
    assign cout = a&b | a&cin | b&cin;
endmodule
