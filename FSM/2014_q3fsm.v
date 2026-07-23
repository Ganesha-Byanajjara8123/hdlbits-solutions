
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  2014_q3fsm
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-23-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/2014_q3fsm
// ============================================

module top_module (
    input clk,
    input reset,   // Synchronous reset
    input s,
    input w,
    output reg z
);

    parameter A = 1'b0, B = 1'b1;
    reg state, next_state;

    reg [1:0] cycle_cnt; // Tracks cycle 0, 1, 2 of the 3-cycle window
    reg [1:0] w_count;   // Tracks number of 1s seen so far in current window

    // State Transition Logic
    always @(*) begin
        case (state)
            A: begin
                if (s) next_state = B;
                else   next_state = A;
            end
            B: begin
                next_state = B; // Once in B, stay in B
            end
            default: next_state = A;
        endcase
    end

    // Sequential logic block
    always @(posedge clk) begin
        if (reset) begin
            state <= A;
            cycle_cnt <= 2'd0;
            w_count <= 2'd0;
            z <= 1'b0;
        end else begin
            state <= next_state;
            
            if (state == A) begin
                // While in state A, keep counters cleared and z low
                cycle_cnt <= 2'd0;
                w_count <= 2'd0;
                z <= 1'b0;
            end else begin
                // State is B (we only enter here the cycle AFTER transitioning to B)
                if (cycle_cnt == 2'd2) begin
                    // 3rd cycle of the window: check if total 1s (including current w) equals 2
                    if ((w_count + w) == 2'd2) begin
                        z <= 1'b1;
                    end else begin
                        z <= 1'b0;
                    end
                    // Reset window trackers for the next 3-cycle block
                    cycle_cnt <= 2'd0;
                    w_count <= 2'd0;
                end else begin
                    // 1st or 2nd cycle of the window
                    cycle_cnt <= cycle_cnt + 1'b1;
                    w_count <= w_count + w;
                    z <= 1'b0; 
                end
            end
        end
    end

endmodule
