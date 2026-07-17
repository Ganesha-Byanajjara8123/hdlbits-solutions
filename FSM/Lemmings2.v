// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  Lemmings2
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-17-07
// Link            :  https://hdlbits.01xz.net/wiki/Lemmings2
// ============================================
 
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    
    parameter LEFT = 2'd0, RIGHT = 2'd1, FALL_L = 2'd2, FALL_R = 2'd3;
    reg[1:0] state, next;
    
    always@(*)begin
        case(state)
            LEFT: begin
                case({ground, bump_left})
                    2'b00, 2'b01: next = FALL_L;
                    2'b11:        next = RIGHT;
                    2'b10:		  next = LEFT;
                    default:   	  next = LEFT;
                endcase
            end
                
            RIGHT: begin
                case({ground, bump_right})
                    2'b00, 2'b01: next = FALL_R;
                    2'b11:		  next = LEFT;
                    2'b10: 		  next = RIGHT;
                    default:	  next = RIGHT;
                endcase
            end
            FALL_L: begin
                case(ground)
                    1'b0: next = FALL_L;
                    1'b1: next = LEFT;
                    default: next = FALL_L;
                endcase
            end
            FALL_R: begin
                case(ground)
                    1'b0: next = FALL_R;
                    1'b1: next = RIGHT;
                    default : next = FALL_R;
                endcase
            end
            default: next = LEFT;
          
        endcase
    end
    
    always@(posedge clk or posedge areset)begin
        if(areset)
            state <= LEFT;
        else
            state <= next;
    end
    
    //output
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah       = (state == FALL_L || state == FALL_R);
            

endmodule
