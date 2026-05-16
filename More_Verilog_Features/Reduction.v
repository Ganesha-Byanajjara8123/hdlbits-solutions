
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic          :  Reduction
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-13
// Link           : https://hdlbits.01xz.net/wiki/Reduction
// ============================================


module top_module (
    input [7:0] in,
    output parity); 
    
    assign parity = ^in[7:0];

endmodule
