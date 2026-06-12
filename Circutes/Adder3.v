 
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  Adder3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-12
// Link            :  https://hdlbits.01xz.net/wiki/Adder3
// ============================================

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    wire [1:0]carry;
    
   fadd inst1(
       .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(carry[0])
    );
    
    fadd inst2(
        .a(a[1]), .b(b[1]), .cin(carry[0]), .sum(sum[1]), .cout(carry[1])
    );
    
     fadd inst3(
         .a(a[2]), .b(b[2]), .cin(carry[1]), .sum(sum[2]), .cout(cout[2])
    );
    
   assign cout[0] = carry[0];
    assign cout[1] = carry[1];
    
endmodule

module fadd(
    input a,b,cin,
    output sum,cout
);
    assign sum = a ^ b ^cin;
    assign cout = (a&b) | (a&cin) | (b&cin);
    
endmodule    
