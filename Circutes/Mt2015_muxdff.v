
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Mt2015_muxdff
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-01
// Link            :  https://hdlbits.01xz.net/wiki/Mt2015_muxdff
// ============================================

module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);

    wire mux_out;
    
    assign mux_out = L ? r_in : q_in;
    
    always@(posedge clk) begin
        Q<=mux_out;
    end
    
   /* or we can also write it like
   
     always@(posedge clk) begin
        Q<=L ? r_in : q_in;
    end
    
    */
   
endmodule
