// ============================================
// HDLBits Problem : Vector
// Topic          : Vectorr
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-22
// Link           : https://hdlbits.01xz.net/wiki/Vectorr
// ============================================


module top_module( 
    input [7:0] in,
    output [7:0] out
);
    
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
	
	//also we can write same method for output also, 
	assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;

endmodule
