
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  ece241_2014_q7b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-06
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q7b
// ============================================

module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
);

    // Wires to hold the 4-bit count values from each counter
    wire [3:0] q0, q1, q2;

    // 1. The fastest counter (ticks every clock cycle)
    assign c_enable[0] = 1'b1;
    bcdcount counter0 (
        .clk(clk),
        .reset(reset),
        .enable(c_enable[0]),
        .Q(q0)
    );

    // 2. The second counter (ticks when counter0 reaches 9)
    assign c_enable[1] = (q0 == 4'd9);
    bcdcount counter1 (
        .clk(clk),
        .reset(reset),
        .enable(c_enable[1]),
        .Q(q1)
    );

    // 3. The slowest counter (ticks when both counter0 and counter1 reach 9)
    assign c_enable[2] = (q0 == 4'd9 && q1 == 4'd9);
    bcdcount counter2 (
        .clk(clk),
        .reset(reset),
        .enable(c_enable[2]),
        .Q(q2)
    );

    // 4. OneHertz pulses when the entire system hits 999 and is about to roll over
    assign OneHertz = (q0 == 4'd9 && q1 == 4'd9 && q2 == 4'd9);

endmodule
