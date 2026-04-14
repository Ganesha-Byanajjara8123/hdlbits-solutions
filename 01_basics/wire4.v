// ============================================
// HDLBits Problem : wire4
// Topic          : Vectors
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-14
// Link           : https://hdlbits.01xz.net/wiki/Wire4
// ============================================

module top_module( 
    input a,b,c,
    output w,x,y,z );
	//solution
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
    
   // assign {w,x,y,z} = {a,b,b,c};  by using concatination method
   
endmodule