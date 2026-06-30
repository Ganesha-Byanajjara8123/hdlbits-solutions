
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  m2014_q4a
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-30
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q4a
// ============================================

module top_module (
    input d, 
    input ena,
    output q);

    always@(*) begin
        if(ena)
            q<=d;
    end
endmodule
