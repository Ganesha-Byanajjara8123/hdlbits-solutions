
// ============================================
// HDLBits Problem :  Circuite-MUX's
// Topic           :  Mux256to1v
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-09
// Link            : https://hdlbits.01xz.net/wiki/Mux256to1v
// ============================================

module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    //The +: Syntax: The [base_expr +: width_expr] syntax tells the synthesizer:
    //"Start at the bit index sel * 4 and select a total of 4 bits going up
       assign out = in[sel*4+:4];

endmodule
