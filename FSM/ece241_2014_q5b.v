
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  ece241_2014_q5b
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-22-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5b
// ============================================


module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
    parameter A = 0, B = 1;
    reg[1:0] state, next;
    
    always@(posedge clk or posedge areset)begin
        if(areset)
            state <= 2'b01;
        else
            state <= next;
    end
 
    always@(*)begin
        next[A] = state[A] & ~x;
        next[B] = (state[A] & x) | (state[B] & x) | (state[B] & ~x);
    end
    
    assign z = (state[A] & x) | (state[B] & ~x);
           

endmodule
