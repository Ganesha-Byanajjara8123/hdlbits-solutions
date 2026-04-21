// ============================================
// HDLBits Problem : Vector
// Topic          : Vector3
// Solved by      : Byanajjara Ganesha
// Date           : 2026-04-21
// Link           : https://hdlbits.01xz.net/wiki/Vector3
// ============================================

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    // assign { ... } = { ... };
    // here we need make both out and in equal number of bits(like out is 8bit of 4 elements so 8*4=32 but
    //in is 5bits of 6 elements i.e, 5*6=30)
    assign {w,x,y,z} = {a,b,c,d,e,f,2'b11};

endmodule
