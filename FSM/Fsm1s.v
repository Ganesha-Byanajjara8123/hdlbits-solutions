
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm1s
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-13-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm1s
// ============================================


module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

    parameter A = 0, B = 1;
    // Fill in state name declarations
    reg present_state, next_state;

    always @(posedge clk) begin
        if (reset) begin  
           present_state <= B; // Fill in reset logic
        end else begin
            case (present_state)
               A : next_state = in ? A : B; // Fill in state transition logic
               B : next_state = in ? B : A; 
            endcase

            // State flip-flops
           present_state = next_state;   
        end
    end
    
    assign out = (present_state == B);

endmodule
