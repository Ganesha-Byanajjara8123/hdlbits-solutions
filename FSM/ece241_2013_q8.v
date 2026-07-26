
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  ece241_2013_q8
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-22-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q8
// ============================================


module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 
    
    parameter A = 0, B = 1, C = 2;
    reg[1:0] state, next;
    
    always@(posedge clk or negedge aresetn)begin
        if(!aresetn)
            state <= A;
        else
            state <= next;
    end
    
    always@(*)begin
        case(state)
            A :begin
                if(x) next = B;
                else  next = A;
            end
            B: begin
                if(~x) next = C;
                else   next = B;
            end
            C: begin 
                if(x) next = B;
                else   next = A;
            end
            default : begin next = A;
            end
        endcase
            end
    
    assign z = (state == C && x);

endmodule
