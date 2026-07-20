
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm_serialdata
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-20-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm_serialdata
// ============================================

module top_module(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output [7:0] out_byte,
    output done
); //

    // Use FSM from Fsm_serial
    parameter IDLE = 0, DATA = 1, STOP = 2, ERROR = 3, DONE = 4; 
    reg [2:0] state, next;
    reg [2:0] bit_cnt;
    
    //reset logic for states
    always@(posedge clk)begin
        if(reset)     state <= IDLE;
            else	  state <= next;
    end
    
     //state transaction       
    always@(*)begin
        case(state)
            IDLE: begin
                if(~in)		next = DATA;
                else		next = IDLE;
            end
            DATA: begin
                if(bit_cnt == 3'd7) next = STOP;
                else				next = DATA;
            end
            STOP : begin
                if ( in ) next = DONE ;
                else     next = ERROR ;
            end
            DONE : begin
                // If a new start bit appears immediately (0), go to DATA, else IDLE
                next = ( ~ in ) ? DATA : IDLE ;
            end
                ERROR: begin
                    if(in) 	next = IDLE;
                    else    next = ERROR;
                end
                default: next = IDLE;
                endcase
            end
           // 1. Shift register counter logic
    always @(posedge clk) begin
        if (reset) 
            bit_cnt <= 3'd0;
        else if (state == DATA) 
            bit_cnt <= bit_cnt + 3'd1;
        else 
            bit_cnt <= 3'd0;
    end

    // 2. Datapath: Shift in bits (LSB first) during the DATA state
    reg [7:0] shift_reg;
    always @(posedge clk) begin
        if (reset) begin
            shift_reg <= 8'b0;
        end else if (state == DATA) begin
            shift_reg <= {in, shift_reg[7:1]}; // Shifts 'in' into MSB, down towards LSB
        end
    end

    // 3. Output assignments
    assign done = (state == DONE);
    assign out_byte = shift_reg;

endmodule
