
// ============================================
// HDLBits Problem : Module
// Topic          :  Module_shift 
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-28
// Link           : https://hdlbits.01xz.net/wiki/Module_shift
// ============================================

module top_module ( input clk, input d, output q );
    
    //internal wires
    wire a, b;
    
    //instaces for each modules-NAMED
    my_dff d1 (.clk(clk), .d(d), .q(a));
    my_dff d2 (.clk(clk), .d(a), .q(b));
    my_dff d3 (.clk(clk), .d(b), .q(q));
   
   
	//we can also solve this by POSITION
    
    //instaces for each modules
    my_dff d1(clk, d, a);
    my_dff d2(clk, a, b);
    my_dff d3(clk, b, q);
	
	
endmodule

