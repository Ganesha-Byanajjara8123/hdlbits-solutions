
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Mt2015_q4b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-29
// Link            : https://hdlbits.01xz.net/wiki/Mt2015_q4b
// ============================================


module top_module ( input x, input y, output z );

   //the given above wave form is output of the XNOR gate
    assign z = ~(x ^ y); 
    
endmodule
