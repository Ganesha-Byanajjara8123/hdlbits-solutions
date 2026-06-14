
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  ece241_2014_q1c
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-14
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q1c
// ============================================


module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    //when overflow occurs then we need 1-bit with empty so 1'b0
    assign s = {1'b0, a} + {1'b0,b};
	
	//when a = b then it will treated as s not equal to a
    assign overflow = (a[7] == b[7]) && (s[7] != a[7]);

endmodule
