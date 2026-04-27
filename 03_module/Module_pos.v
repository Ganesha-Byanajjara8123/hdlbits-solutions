// ============================================
// HDLBits Problem : Module
// Topic          :  Module_pos
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-26
// Link           : https://hdlbits.01xz.net/wiki/Module_pos
// ============================================


module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

    //instace by POSITIONS
       mod_a inst1(out1,out2,a,b,c,d);
    
endmodule
