
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm_ps2data
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-19-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm_ps2data
// ============================================

module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output [23:0] out_bytes,
    output done); //

    // FSM from fsm_ps2
    parameter BYTE1 = 0, BYTE2 = 1, BYTE3 = 2, DONE = 3; 
    reg[1:0]state,next;
    
    reg[7:0] b1,b2,b3;
    
    
    // State transition logic (combinational)
    always@(*)begin
        case(state)
            BYTE1 : next = in[3] ? BYTE2 : BYTE1;
            BYTE2 : next = BYTE3;
            BYTE3 : next = DONE;
            DONE  : next = in[3] ? BYTE2 : BYTE1;
            default: next = BYTE1;
        endcase
    end
            

    // State flip-flops (sequential)
    always@(posedge clk)begin
        if(reset)
            state <= BYTE1;
        else
            state <= next;
    end
            
// Datapath: Capture incoming bytes on the clock edge they arrive
    always @(posedge clk) begin
        if (reset) begin
            b1 <= 8'b0;
            b2 <= 8'b0;
            b3 <= 8'b0;
        end else begin
            // Capture b1 either in BYTE1 or when restarting a new packet from DONE
            if ((state == BYTE1 && in[3]) || (state == DONE && in[3])) b1 <= in;
            if (state == BYTE2)                                        b2 <= in;
            if (state == BYTE3)                                        b3 <= in;
        end
    end
 
    // Output logic

    assign done = (state == DONE);

    // New: Datapath to store incoming bytes.
    assign out_bytes = {b1,b2,b3};

endmodule
