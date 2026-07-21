
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm_serialdp
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-21-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm_serialdp
// ============================================

module top_module (
    input clk,
    input in,
    input reset,    // Synchronous reset
    output [7:0] out_byte,
    output done
);

    parameter IDLE = 0, DATA = 1, STOP = 2, ERROR = 3, DONE = 4;
    reg [2:0] state, next;
    reg [3:0] bit_cnt;

    // State transition logic
    always @(posedge clk) begin
        if (reset) state <= IDLE;
        else state <= next;
    end

    // Next-state combinational logic
    always @(*) begin
        case (state)
            IDLE:  next = (~in) ? DATA : IDLE;
            DATA:  next = (bit_cnt == 4'd8) ? STOP : DATA; // 8 data bits + 1 parity bit
            STOP:  next = in ? DONE : ERROR;
            DONE:  next = (~in) ? DATA : IDLE;
            ERROR: next = in ? IDLE : ERROR;
            default: next = IDLE;
        endcase
    end

    // Bit counter logic
    always @(posedge clk) begin
        if (reset)
            bit_cnt <= 4'd0;
        else if (state == DATA)
            bit_cnt <= bit_cnt + 4'd1;
        else
            bit_cnt <= 4'd0;
    end

    // Datapath Shift Register: Capture only the first 8 data bits
    reg [7:0] shift_reg;
    always @(posedge clk) begin
        if (reset) begin
            shift_reg <= 8'b0;
        end else if (state == DATA && bit_cnt < 4'd8) begin
            shift_reg <= {in, shift_reg[7:1]}; 
        end
    end

    // Parity Checker Instantiation
    wire parity_reset;
    // We keep parity alive through DATA and STOP so it can be sampled cleanly
    assign parity_reset = reset || (state == IDLE) || (state == DONE) || (state == ERROR);
    wire odd;

    parity parity_instance (
        .clk(clk),
        .reset(parity_reset),
        .in(in),
        .odd(odd)
    );

    // Save the parity check verification flag 
    reg parity_ok;
    always @(posedge clk) begin
        if (reset)
            parity_ok <= 1'b0;
        else if (state == STOP)
            parity_ok <= odd; // Captures the settled odd status during the STOP state
    end

    // Done is only valid if we reached DONE successfully and parity passed
    assign done = (state == DONE) && parity_ok;
    assign out_byte = shift_reg;

endmodule
