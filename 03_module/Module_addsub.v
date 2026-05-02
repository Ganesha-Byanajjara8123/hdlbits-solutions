// ============================================
// HDLBits Problem : Module
// Topic          :  Module_addsub
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-3
// Link           : https://hdlbits.01xz.net/wiki/Module_addsub
// ============================================

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry, cout;     //w.r.t diagram and problem stmt
    wire[31:0] b_mux;    //b_mux is just a 32-bit wire 
    
    add16 inst1 (.a(a[15:0]), .b(b_mux[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry));
    
    add16 inst2 (.a(a[31:16]), .b(b_mux[31:16]), .cin(carry), .sum(sum[31:16]), .cout());
    
	//by using replication operator make sub for 32-bit
    assign b_mux = b^{32{sub}};

endmodule
