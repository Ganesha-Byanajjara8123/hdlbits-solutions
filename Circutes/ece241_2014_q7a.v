
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  ece241_2014_q7a
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-05
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q7a
// ============================================

module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //
    
   // Connect all ports, especially the output Q!
count4 the_counter ( 
    .clk(clk), 
    .enable(c_enable), 
    .load(c_load), 
    .d(c_d), 
    .Q(Q) 
);
    
    assign c_enable = enable;
    assign c_load   = reset || (enable && (Q == 4'd12));
    assign c_d = 4'd1;
    
endmodule
