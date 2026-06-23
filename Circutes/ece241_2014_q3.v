
// ============================================
// HDLBits Problem :  Circuite-Kmaps
// Topic           :  ece241_2014_q3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-23
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q3
// ============================================

module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
// we can solve this by using ternary opertor
  	assign mux_in[0] = c ? 1 : d;          // 1 mux:   c|d
	assign mux_in[1] = 0;                  // No muxes:  0
	assign mux_in[2] = d ? 0 : 1;          // 1 mux:    ~d
	assign mux_in[3] = c ? d : 0;          // 1 mux:   c&d
endmodule
