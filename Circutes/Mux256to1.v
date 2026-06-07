 
// ============================================
// HDLBits Problem :  Circuite-MUX's
// Topic           :  Mux256to1
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-08
// Link            : https://hdlbits.01xz.net/wiki/Mux256to1
// ============================================


module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
	
    //sel=0 and in = 0, sel = 1 and in = 1...etc upto 256
    assign out = in[sel];
   
endmodule 

