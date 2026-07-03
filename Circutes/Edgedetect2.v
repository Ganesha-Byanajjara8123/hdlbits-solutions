
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Edgedetect2
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-03
// Link            : https://hdlbits.01xz.net/wiki/Edgedetect2
// ============================================

module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg[7:0] last_in_cycle;
    
    always@(posedge clk) begin
        last_in_cycle <= in; //to store previous state values
		 
		// the bit wise operator (^) will check 2-binary signals are diff bit by bit
		anyedge <= in ^ last_in_cycle;
    end

endmodule
