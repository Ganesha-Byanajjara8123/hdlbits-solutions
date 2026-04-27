// ============================================
// HDLBits Problem : Module
// Topic          :  Module_name
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-27
// Link           : https://hdlbits.01xz.net/wiki/Module_name
// ============================================

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    //instance by named
    mod_a inst1 (.in1(a), .in2(b), .in3(c), .in4(d), .out1(out1), .out2(out2));

endmodule

