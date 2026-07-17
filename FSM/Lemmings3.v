// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Lemmings3
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-17-07
// Link            :  https://hdlbits.01xz.net/wiki/Lemmings3
// ============================================

module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 

     parameter LEFT = 3'd0, RIGHT = 3'd1, FALL_L = 3'd2, FALL_R = 3'd3, DIG_L = 3'd4, DIG_R = 3'd5;
    reg[2:0] state, next;
    
    always@(*)begin
        case(state)
            
            LEFT: begin
                if(~ground)        next = FALL_L;   
                else if(dig)       next = DIG_L;         
                else if(bump_left) next = RIGHT;
                else			   next = LEFT;     
            end
            RIGHT: begin
                if(~ground)       next = FALL_R;
                else if(dig)	  next = DIG_R;
                else if(bump_right) next = LEFT;
                else				next = RIGHT;
            end
            DIG_L: begin
                if(~ground)	  		next = FALL_L;
                else				next = DIG_L;
            end
            DIG_R: begin
                if(~ground)			next = FALL_R;
                else				next = DIG_R;
            end
            FALL_L: begin
                if(ground)			next = LEFT;
                else				next = FALL_L;
        	end
            FALL_R: begin
                if(ground)			next = RIGHT;
                else				next = FALL_R;
            end
                default: 			next = LEFT;
            endcase
         end
    
    
always @(posedge clk or posedge areset) begin
    if (areset)
        state <= LEFT;
    else
        state <= next;
end
    
    //output
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah       = (state == FALL_L || state == FALL_R);
    assign digging    = (state == DIG_L || state == DIG_R);
    
endmodule
