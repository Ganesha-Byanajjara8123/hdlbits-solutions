
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm3onehot
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-15-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm3onehot
// ============================================
 
module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;
 

    // State transition logic: Derive an equation for each state flip-flop.
    //when in=0 then take '~in' and when in=1 then take 'in'
    assign next_state[0] = (state[0]&~in) | (state[2]&~in); //A , C
    assign next_state[1] = (state[0]&in) | (state[1]&in) | (state[3]&in); //A,B,D
    assign next_state[2] = (state[1]&~in) | (state[3]&~in);//B,D
    assign next_state[3] = (state[2]&in);//C

    // Output logic: 
    assign out = state[3];//D

endmodule
