
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Lemmings4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-18-07
// Link            :  https://hdlbits.01xz.net/wiki/Lemmings4
// ============================================

module top_module (
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging
);

    parameter LEFT = 4'd0, RIGHT = 4'd1, FALL_L = 4'd2, FALL_R = 4'd3, DIG_L = 4'd4, DIG_R = 4'd5, SPLAT = 4'd6;
    reg [3:0] state, next;
    reg [4:0] fall_count;

    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= LEFT;
            fall_count <= 5'd0;
        end else begin
            state <= next;
            // Check next state so the counter perfectly aligns with the air-time
            if (next == FALL_L || next == FALL_R) begin
                if (fall_count < 5'd31) // Prevent counter overflow on deep falls
                    fall_count <= fall_count + 1'b1;
            end else begin
                fall_count <= 5'd0;
            end
        end
    end

    always @(*) begin
        case (state)
            LEFT: begin
                if (~ground) next = FALL_L;
                else if (dig) next = DIG_L;
                else if (bump_left) next = RIGHT;
                else next = LEFT;
            end
            RIGHT: begin
                if (~ground) next = FALL_R;
                else if (dig) next = DIG_R;
                else if (bump_right) next = LEFT;
                else next = RIGHT;
            end
            DIG_L: begin
                if (~ground) next = FALL_L;
                else next = DIG_L;
            end
            DIG_R: begin
                if (~ground) next = FALL_R;
                else next = DIG_R;
            end
            FALL_L: begin
                if (ground) begin
                    if (fall_count > 5'd20) // 20 cycles is survivable, 21 splats
                        next = SPLAT;
                    else
                        next = LEFT;
                end else begin
                    next = FALL_L;
                end
            end
            FALL_R: begin
                if (ground) begin
                    if (fall_count > 5'd20) // 20 cycles is survivable, 21 splats
                        next = SPLAT;
                    else
                        next = RIGHT;
                end else begin
                    next = FALL_R;
                end
            end
            SPLAT: begin
                next = SPLAT; // Stuck here forever until areset
            end
            default: next = LEFT;
        endcase
    end

    // Output assignments
    assign walk_left  = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah       = (state == FALL_L || state == FALL_R);
    assign digging    = (state == DIG_L || state == DIG_R);

endmodule
