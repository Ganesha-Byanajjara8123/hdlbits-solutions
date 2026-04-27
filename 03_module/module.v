// ============================================
// HDLBits Problem : Module
// Topic          :  Module
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-25
// Link           : https://hdlbits.01xz.net/wiki/Module
// ============================================


module top_module ( input a, input b, output out );
    //instance declared by NAME 
    mod_a inst1(.in1(a), .in2(b), .out(out));
    
    //instance declared by POSITION
    //mod_a inst1(a,b,out);

endmodule
