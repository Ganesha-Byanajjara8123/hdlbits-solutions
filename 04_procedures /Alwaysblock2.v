
// ============================================
// HDLBits Problem : Procedures 
// Topic          :  Alwaysblock2
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-05
// Link           : http://hdlbits.01xz.net/wiki/Alwaysblock2
// ============================================


// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );

    //XOR gate with assignment 
    assign out_assign = a ^ b;
    
    //XOR gate with always@(*)
    always@(*) out_always_comb = a ^ b;
    
    //XOR gate with  always@(posedge clk) 
    always@(posedge clk) begin
        out_always_ff = a ^ b;
    end
        
endmodule
