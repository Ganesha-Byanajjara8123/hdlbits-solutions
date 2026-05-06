
// ============================================
// HDLBits Problem : Procedures 
// Topic          :  Always_if
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-06
// Link           : https://hdlbits.01xz.net/wiki/Always_if
// ============================================

// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    //for assignment with ternary operator
    assign out_assign = (sel_b1 & sel_b2) ? b : a;
    
    //for combinational with if else stmts
    always@ (*) begin
        if(sel_b1 && sel_b2)
            out_always = b;
        else begin
            out_always = a;
        end
    end

endmodule
