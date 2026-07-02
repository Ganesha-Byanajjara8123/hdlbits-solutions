
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  ece241_2014_q4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-02
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q4
// ============================================

module top_module (
    input clk,
    input x,
    output z
); 

    //to store the D's value for an clk priode 
    reg Q1, Q2, Q3;
    
    //to pass value to the Q
    wire D1, D2, D3;
    
    //A/C circute
    assign D1 = Q1 ^ x;
    assign D2 = (~Q2) & x;
    assign D3 = (~Q3) | x;
    
    assign z = ~(Q1 | Q2 | Q3);
    
    //for DFF
    always@(posedge clk) begin
        Q1<=D1;
        Q2<=D2;
        Q3<=D3;
    end

endmodule
