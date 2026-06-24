
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Dff
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-24
// Link            :  https://hdlbits.01xz.net/wiki/Dff
// ============================================

module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    // Use a clocked always block
    //   copy d to q at every positive edge of clk
    //   Clocked always blocks should use non-blocking assignments

    always@(posedge clk) begin
        q<=d;
    end
endmodule
