
// ============================================
// HDLBits Problem : Module
// Topic          :  Module_cseladd
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-2
// Link           : https://hdlbits.01xz.net/wiki/Module_cseladd
// ============================================


module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
     wire carry,cout, cout_low, cout_high;    //declare wire for mux(0,1)
    wire [15:0]sum_low, sum_high0, sum_high1; //wires for mux (0,1)
	
    //instantiate add16 ports with low
    add16 inst1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum_low[15:0]), .cout(carry));
    
	//instantiate add16 ports with high0
    add16 inst2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum_high0[15:0]), .cout(cout_low));
    
	//instantiate add16 ports with high1
    add16 inst3 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum_high1[15:0]), .cout(cout_high));
	
    
    assign sum[31:16] = (carry) ? sum_high1 : sum_high0;  //using ternary operator assign the sum values
    assign sum[15:0]  = sum_low;                          //15-bits for sum_low
   

endmodule
