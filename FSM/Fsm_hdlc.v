
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm_hdlc
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-21-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm_hdlc
// ============================================

module top_module(
    input clk,
    input reset,    // Synchronous reset
    input in,
    output disc,
    output flag,
    output err);
    
    parameter NONE=0, ONE=1, TWO=2, THREE=3, FOUR=4, FIVE=5, SIX=6, ERROR=7, DISCARD=8, FLAG=9;
    reg [3:0] state, next;
    
    always@(posedge clk) begin
        if(reset)
            state <= NONE;
        else
            state <= next;
    end
    
    always@(*) begin
        case(state)
            NONE: begin
                if(in) next = ONE;
            else 		  next = NONE;
            end
            ONE: begin
                if(in) next = TWO;
                else		 next = NONE;
            end
            TWO: begin
                if(in) next = THREE;
                else		 next = NONE;
            end
            THREE: begin
                if(in) next = FOUR;
                else		   next = NONE;
            end
            FOUR: begin
                if(in) next = FIVE;
                else		  next = NONE;
            end
            FIVE: begin
                if(in) next = SIX;
                else		  next = DISCARD;
            end
            SIX: begin
                if(in) next = ERROR;
                else		 next = FLAG;
            end
            ERROR: begin
                if(in) next = ERROR;
                else 		   next = NONE;
            end
            DISCARD: begin
                if(in) next = ONE;
                else			 next = NONE;
            end
            FLAG: begin
                if(in) next = ONE;
                else 		  next = NONE;
            end
        endcase
    end
     
    assign disc = (state == DISCARD );
    assign flag = (state == FLAG);
    assign err = (state == ERROR);
            

endmodule
