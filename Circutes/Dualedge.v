
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Dualedge
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-04
// Link            : https://hdlbits.01xz.net/wiki/Dualedge
// ============================================


module top_module (
    input clk,
    input d,
    output q
);
    //registers for store the poesedge and negedge clk value  
    reg q_posedge;
    reg q_negedge;
    
    always@(posedge clk) begin
        q_posedge<=d; //it gives positive clk edge value
    end

     always@(negedge clk) begin
         q_negedge<=d;  //it gives negetive clk edge value
     end
    //by using ternary operator we can write
    assign q = clk ? q_posedge : q_negedge; 
endmodule
