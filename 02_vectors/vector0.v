// ============================================
// HDLBits Problem : NOT gate
// Topic          : Basics
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-15
// Link           : https://hdlbits.01xz.net/wiki/Vector0
// ============================================

<<<<<<< HEAD:02_vectors/vector0.v
=======

>>>>>>> 19a55e36021ee36fc2e53427e1232094311f6c4e:02_vectors/vectors.v
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration.
    
    assign outv = vec;
    assign o2   = vec[2];
    assign o1   = vec[1];
    assign o0   = vec[0];
    
    //or we can done it like in the cancatination form
    //assign {o2, o1, o0} = vec ;

endmodule
