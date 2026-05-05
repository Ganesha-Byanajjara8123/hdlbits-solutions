
// ============================================
// HDLBits Problem : Procedures 
// Topic          :  Alwaysblock1
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-4
// Link           : https://hdlbits.01xz.net/wiki/Alwaysblock1
// ============================================


// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign = a & b;
    always @(*) out_alwaysblock = a & b;

endmodule
