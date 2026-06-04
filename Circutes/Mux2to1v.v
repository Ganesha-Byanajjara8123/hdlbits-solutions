
// ============================================
// HDLBits Problem :  Circuite-MUX's
// Topic           :  Mux2to1v
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-06
// Link            : https://hdlbits.01xz.net/wiki/Mux2to1v
// ============================================


module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    
    assign out = sel ? b : a;

endmodule
