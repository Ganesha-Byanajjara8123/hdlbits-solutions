
// ============================================
// HDLBits Problem : Module
// Topic          :  Module_fadd
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-1
// Link           : https://hdlbits.01xz.net/wiki/Module_fadd
// ============================================


module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
wire carry_low, cout;
    
    //instantiate the lower bits(0-15)
    add16 low_adder(
        .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(carry_low)
    );
    
    //instantiate the higher bits(16-31)
    add16 Higher_adder(
        .a(a[31:16]), .b(b[31:16]), .cin(carry_low), .sum(sum[31:16]), .cout()
    );
   
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here

    assign sum = a^b^cin;
    assign cout = (a&b) | (cin&a) | (b&cin);

endmodule
