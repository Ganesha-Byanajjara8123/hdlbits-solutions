// ============================================
// HDLBits Problem : Vector1
<<<<<<< HEAD
// Topic          : Basics
=======
// Topic          : Vectors
>>>>>>> 187b57103655556c156433b8fb222bc7ecc45426
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-18
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
