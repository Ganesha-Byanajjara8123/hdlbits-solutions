// ============================================
// HDLBits Problem : Module
// Topic          :  Module_shift8 
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-29
// Link           : https://hdlbits.01xz.net/wiki/Module_shift8
// ============================================

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    // declare internal 3-wire with 8-bit width
    wire [7:0] a, b, c;
    
	//instantiate 3 modules
    my_dff8 inst1 (clk, d, a);
    my_dff8 inst2 (clk, a, b );
    my_dff8 inst3 (clk, b, c);
    
	//by using case stmt we write MUX logic
    always @(*) begin
        case(sel)
           2'b00: q = d;
           2'b01: q = a;
           2'b10: q = b;
           2'b11: q = c;
        endcase
    end
            

endmodule

