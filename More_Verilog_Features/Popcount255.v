
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  Popcount255
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-16
// Link           : https://hdlbits.01xz.net/wiki/Popcount255
// ============================================

module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    always@(*) begin
        out = 0;                 //declare default before assing value
        for (int i=0; i<255; i++)
            out = out + in[i];
    end

endmodule
