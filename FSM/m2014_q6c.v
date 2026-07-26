
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  m2014_q6c
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-25-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q6c
// ============================================

module top_module ( 
    input [6:1] y,
    input w,
    output Y2,
    output Y4);

	// Y2 is high if we are in state A and w is 0												
    assign Y2 = y[1] & ~w;
    // Y4 is high if we are in state B, C, E, or F and w is 1
    assign Y4 = (y[2] | y[3] | y[5] | y[6]) & w;

endmodule

