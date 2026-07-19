
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Fsm_serial
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-19-07
// Link            :  https://hdlbits.01xz.net/wiki/Fsm_serial
// ============================================
 
module top_module(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output done
); 
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
            //counter rst condition
            always@(posedge clk) begin
                if(reset) 		
                    bit_cnt <= 3'd0;
                else if(state == DATA)
                    bit_cnt <= bit_cnt + 3'd1;
                else			
                    bit_cnt <= 3'd0;
            end
            
    assign done = (state == DONE);
           
endmodule
