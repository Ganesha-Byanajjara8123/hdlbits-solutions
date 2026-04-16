
// ============================================
// HDLBits Problem : NOT gate
// Topic          : Basics
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-15
// Link           : https://hdlbits.01xz.net/wiki/Wire_decl
// ============================================

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	
    //declare wire from 2-AND gates and as input for OR gate
    wire ab_in, cd_in;
    
    //assigning/connecting the wire to respective gates
    assign ab_in = a&b;
    assign cd_in = c&d;
    assign out   = ab_in | cd_in;
    assign out_n = ~out;
    
endmodule
