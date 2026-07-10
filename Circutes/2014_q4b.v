
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  2014_q4b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-10-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/2014_q4b
// ============================================

module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //

    // Instantiate 4 copies of MUXDFF, chaining them from MSB to LSB
    // KEY[0] = clk, KEY[1] = E, KEY[2] = L, KEY[3] = w (input to the first stage)
    MUXDFF inst3 (.clk(KEY[0]), .w(KEY[3]), .R(SW[3]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[3]));
    MUXDFF inst2 (.clk(KEY[0]), .w(LEDR[3]), .R(SW[2]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[2]));
    MUXDFF inst1 (.clk(KEY[0]), .w(LEDR[2]), .R(SW[1]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[1]));
    MUXDFF inst0 (.clk(KEY[0]), .w(LEDR[1]), .R(SW[0]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[0]));
      
endmodule


//taken from  MUXDFF from exams/2014_q4a
module MUXDFF (
  
    input clk,
    input w, R, E, L,
    output Q
);

    always@(posedge clk) begin
        Q <= L ? R : (E ? w : Q);
    end
         
endmodule
