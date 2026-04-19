// ============================================
// HDLBits Problem : Vector2
// Topic          : vectors
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-16
// Link           : https://hdlbits.01xz.net/wiki/Vector2
// ============================================


module top_module( 
    input [31:0] in,
    output [31:0] out );//

    // assign out[31:24] = ...;
	
    //my solution
    assign out[31:24] = in[7:0];
    assign out[23:16] = in[15:8];
    assign out[15:8]  = in[23:16];
    assign out[7:0]   = in[31:24];

endmodule
