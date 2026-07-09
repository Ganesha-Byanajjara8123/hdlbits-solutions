// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Mt2015_lfsr
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-08
// Link            :  https://hdlbits.01xz.net/wiki/Mt2015_lfsr
// ============================================


module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
    reg [2:0]q;
    
    always@(posedge KEY[0]) begin
    if (KEY[1]) begin
        q <= SW;     // Load the SW values into the register
    end else begin   // Perform the shift and LFSR feedback logic
        q[0] <= q[2];
        q[1] <= q[0];
        q[2] <= q[1] ^ q[2];
    end
    end
    
    assign LEDR = q;// Assign the internal register state to the outputs

endmodule

