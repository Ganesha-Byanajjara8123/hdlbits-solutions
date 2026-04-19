// ============================================
// HDLBits Problem : Vector1
// Topic          : Vectors - upper&lower
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-16
// Link           : https://hdlbits.01xz.net/wiki/Vector1
// ============================================


`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi = in [15:8];  //upper bits
    assign out_lo = in [7:0];   //lower bits
 
    
endmodule
