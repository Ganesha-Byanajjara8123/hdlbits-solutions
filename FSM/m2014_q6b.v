// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  m2014_q6b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-24-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q6b
// ============================================

module top_module (
    input [3:1] y,
    input w,
    output reg Y2
);

    parameter A = 3'd0, B = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4, F = 3'd5;

    always @(*) begin
        //A & D are the Reset states
        case (y)
            B:       Y2 = 1'b1;      // Transitions to C (w=0) or D (w=1) -> Both have Y2=1
            F:       Y2 = 1'b1;      // Transitions to C (w=0) or D (w=1) -> Both have Y2=1
            C:       Y2 = w ? 1'b1 : 1'b0; // Transitions to D only if w=1
            E:       Y2 = w ? 1'b1 : 1'b0; // Transitions to D only if w=1
            default: Y2 = 1'b0;      // A, D, and invalid states (6, 7)
        endcase
    end

endmodule
