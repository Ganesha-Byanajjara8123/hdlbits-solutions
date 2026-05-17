
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  Vector100r
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-15
// Link           : https://hdlbits.01xz.net/wiki/Vector100r
// ============================================


module top_module( 
    input [99:0] in,
    output [99:0] out
);

     always@ (*) begin
        for (int i=0; i<$bits(out); i++) //Instead of hardcoding the number 100 everywhere,
            out[i] = in[$bits(out)-i-1]; //the solution uses a system function: $bits(). and -i-1 will make reverse order of the bits
            
    end
endmodule
