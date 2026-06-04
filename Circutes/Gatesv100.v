
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Gatesv100
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-04
// Link            : https://hdlbits.01xz.net/wiki/Gatesv100
// ============================================


module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );

    //out_both[98] should indicate if in[98] and in[99] are both 1
    assign out_both = in[98:0] & in[99:1];
    
    //out_any[2] should indicate if either in[2] or in[1] are 1
    assign out_any = in[99:1] | in[98:0];
    
    //out_different[98] should indicate if in[98] is different from in[99]
    assign out_different = in^{in[0], in[99:1]};
    
endmodule
