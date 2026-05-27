
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Mt2015_eq2
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-27
// Link            :  https://hdlbits.01xz.net/wiki/Mt2015_eq2
// ============================================


module top_module ( input [1:0] A, input [1:0] B, output z ); 

    /* By using if else stmt
    always @ (*) begin
        if(A == B)
            z = 1'b1;
        else
            z = 1'b0;
    end
    */
    
    /*by using ternary operator
    assign z =  (A == B) ? 1'b1 : 1'b0; 
    */
	
    // By using comparison
    assign z = (A[1:0] == B[1:0]);
    
endmodule
