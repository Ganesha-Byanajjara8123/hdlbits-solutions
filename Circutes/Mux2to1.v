
// ============================================
// HDLBits Problem :  Circuite-MUX's
// Topic           :  Mux2to1
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-05
// Link            : https://hdlbits.01xz.net/wiki/Mux2to1
// ============================================


module top_module( 
    input a, b, sel,
    output out ); 
    
	//in simple way
    assign out = sel ? b : a;
	
	//or we can also write it as
	assing out = (sel==1) ? b : a;
	
	//or we can also
	assign out = (sel & b) | (~sel & a); //where sel = 1 and ~sel = 0
	
endmodule
