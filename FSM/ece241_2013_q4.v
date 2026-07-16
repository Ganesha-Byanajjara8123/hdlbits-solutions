// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  ece241_2013_q4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-16-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q4
// ============================================
 
module top_module (
    input clk,
    input reset,
    input [3:1] s,
    output reg fr3,
    output reg fr2,
    output reg fr1,
    output reg dfr
);

    // Define states to track current level + trajectory (rising vs falling)
    localparam BELOW_S1   = 3'd0,
               S1_RISING  = 3'd1,
               S1_FALLING = 3'd2,
               S2_RISING  = 3'd3,
               S2_FALLING = 3'd4,
               ABOVE_S3   = 3'd5;

    reg [2:0] state, next;

    // Next state logic based on sensor boundaries
    always @(*) begin
        case (state)
            BELOW_S1: begin
                if (s[1]) next = S1_RISING;
                else next = BELOW_S1;
            end

            S1_RISING: begin
                if (s[2]) next = S2_RISING;
                else if (!s[1]) next = BELOW_S1;
                else next = S1_RISING;
            end

            S1_FALLING: begin
                if (s[2]) next = S2_RISING;
                else if (!s[1]) next = BELOW_S1;
                else next = S1_FALLING;
            end

            S2_RISING: begin
                if (s[3]) next = ABOVE_S3;
                else if (!s[2]) next = S1_FALLING;
                else next = S2_RISING;
            end

            S2_FALLING: begin
                if (s[3]) next = ABOVE_S3;
                else if (!s[2]) next = S1_FALLING;
                else next = S2_FALLING;
            end

            ABOVE_S3: begin
                if (!s[3]) next = S2_FALLING;
                else next = ABOVE_S3;
            end

            default: next = BELOW_S1;
        endcase
    end

    // Sequential State Register (Synchronous Reset)
    always @(posedge clk) begin
        if (reset) begin
            state <= BELOW_S1;
        end else begin
            state <= next;
        end
    end

    // Output logic decoded directly from state tracking
    always @(*) begin
        case (state)
            BELOW_S1: begin
                // Water is completely low (below all sensors).
                // Maximize flow rate: turn on all 3 flow rate valves.
                // Since it's at the absolute bottom, dfr = 1 (treat as falling/empty).
                fr1 = 1'b1; fr2 = 1'b1; fr3 = 1'b1; dfr = 1'b1;
            end
            
            S1_RISING: begin
                // Water is between S1 and S2, and it is moving UP.
                // Nominal flow rate: turn on fr1 and fr2.
                // dfr = 0 because the water level is rising.
                fr1 = 1'b1; fr2 = 1'b1; fr3 = 1'b0; dfr = 1'b0;
            end
            
            S1_FALLING: begin
                // Water is between S1 and S2, but it is moving DOWN.
                // Nominal flow rate is fr1 and fr2, but since we are falling, 
                // dfr = 1 to open the supplemental valve and boost flow.
                fr1 = 1'b1; fr2 = 1'b1; fr3 = 1'b0; dfr = 1'b1;
            end
            
            S2_RISING: begin
                // Water is between S2 and S3, and it is moving UP.
                // Nominal flow rate drops to just fr1 as reservoir fills.
                // dfr = 0 because the water level is rising.
                fr1 = 1'b1; fr2 = 1'b0; fr3 = 1'b0; dfr = 1'b0;
            end
            
            S2_FALLING: begin
                // Water is between S2 and S3, but it is moving DOWN.
                // Nominal flow rate is fr1, but dfr = 1 to boost the flow rate 
                // because the previous level was higher.
                fr1 = 1'b1; fr2 = 1'b0; fr3 = 1'b0; dfr = 1'b1;
            end
            
            ABOVE_S3: begin
                // Reservoir is completely full (above the highest sensor).
                // Shut off all valves completely to prevent overflow.
                fr1 = 1'b0; fr2 = 1'b0; fr3 = 1'b0; dfr = 1'b0;
            end
            
            default: begin
                // Safe default values matching the reset state.
                fr1 = 1'b1; fr2 = 1'b1; fr3 = 1'b1; dfr = 1'b1;
            end
        endcase
    end

endmodule
