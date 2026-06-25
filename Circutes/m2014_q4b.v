// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  m2014_q4b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-25
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q4b
// ============================================
 

module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);

    always@(posedge clk or posedge ar) begin
        if(ar)
            q<=1'b0;
        else
             q<=d;
    end
endmodule
