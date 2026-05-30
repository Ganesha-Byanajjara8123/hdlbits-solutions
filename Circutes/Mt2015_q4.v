// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Mt2015_q4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-30
// Link            : https://hdlbits.01xz.net/wiki/Mt2015_q4
// ============================================


module top_module (input x, input y, output z);

	//declare 4-wire w.r.t given circuite 
    wire o1,o2,o3,o4;
    
	//each module instantiation by using order method
    A ia1(x,y,o1);
    B ib1(x,y,o2);
    A ia2(x,y,o3);
    B ib2(x,y,o4);
    
	//OR and AND gate with XOR gate 
    assign z = (o1 | o2) ^ (o3 & o4);
endmodule

//create seperate module for both A & B as mentioned in the quetion
module A (
input x, input y, output z
);
      assign z = (x^y) & x;
endmodule

module B (
input x, input y, output z
);
     assign z = ~(x ^ y);
endmodule
