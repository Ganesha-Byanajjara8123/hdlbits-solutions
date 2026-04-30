// ============================================
// HDLBits Problem : Module
// Topic          :  Module_add
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-30
// Link           : https://hdlbits.01xz.net/wiki/Module_add
// ============================================

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    //declare wire to connect the 2-adders
    wire carry;
    
    // In this instantiate the lower 16-bits
    add16 inst1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(carry));
    
    // In this instantiate the higher 16-bits 
    add16 inst2 (.a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(sum[31:16]), .cout());

endmodule
