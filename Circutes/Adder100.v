
// ============================================
// HDLBits Problem :  Circuite-Arithmetic
// Topic           :  Adder100
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-15
// Link            :  https://hdlbits.01xz.net/wiki/Adder100
// ============================================


module top_module (
	input [99:0] a,
	input [99:0] b,
	input cin,
	output cout,
	output [99:0] sum
);

	// The concatenation {cout, sum} is a 101-bit vector.
	assign {cout, sum} = a+b+cin;

endmodule
