
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Popcount3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-02
// Link            : https://hdlbits.01xz.net/wiki/Popcount3
// ============================================

module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always@(*) begin
        out = 0;  //set default before counting no.of 1's
        for(int i=0; i<3; i++) //make for loop with taking i as integer
            out = out + in[i]; //here it counts number of 1's
    end
endmodule
