// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  2014_q3c
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-24-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/2014_q3c
// ============================================

module top_module (
    input clk,
    input [2:0] y,
    input x,
    output reg Y0,
    output reg z
);
													
    always @(*) begin
        case (y)
            3'b000: Y0 = x ? 1'b1 : 1'b0;
            3'b001: Y0 = x ? 1'b0 : 1'b1;
            3'b010: Y0 = x ? 1'b1 : 1'b0;
            3'b011: Y0 = x ? 1'b0 : 1'b1;
            3'b100: Y0 = x ? 1'b0 : 1'b1; // Missing this 1 when x=0!
            default: Y0 = 1'b0;           // Catches states 5, 6, 7
        endcase
    end
    
    // Output logic for z
    assign z = (y == 3'b011 || y == 3'b100);

endmodule
