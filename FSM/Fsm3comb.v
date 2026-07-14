// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm3comb
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-14-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm3comb
// ============================================
 
module top_module(
    input in,
    input [1:0] state,
    output [1:0] next_state,
    output out); //

    parameter 	

    //State transition logic: next_state = f(state, in)
    always@(*)begin
        case(state)
            A : next_state = in ? B : A;
            B : next_state = in ? B : C;
            C : next_state = in ? D : A;
            D : next_state = in ? B : C;
        endcase 
    end

    // Output logic:  out = f(state) for a Moore state machine
    assign out = (state == D);

endmodule
