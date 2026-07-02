
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  2014_q4a
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-02
// Link            :  https://hdlbits.01xz.net/wiki/Exams/2014_q4a
// ============================================
 
module top_module (
    input clk,
    input w, R, E, L,
    output Q
);

    always@(posedge clk) begin
        Q <= L ? R : (E ? w : Q);
    end
         
endmodule
