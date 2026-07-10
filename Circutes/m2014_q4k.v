
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  m2014_q4k
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-09-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/m2014_q4k
// ============================================
                


module top_module (
    input clk,
    input resetn,   // synchronous reset (active-low)
    input in,
    output out
);

    // Create a 4-bit register for the 4 stages
    reg [3:0] q;

    // The output comes from the last stage of the shift register
    assign out = q[0];

    always @(posedge clk) begin
        if (~resetn) begin
            q <= 4'b0;
        end
        else begin
            // Shift the input 'in' into the MSB, and shift everything right
            q <= {in, q[3:1]};
        end
    end

endmodule
