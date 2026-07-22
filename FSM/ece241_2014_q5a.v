
// ============================================
// HDLBits Problem :  Circuite-FSM
// Topic           :  ece241_2014_q5a
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-22-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5a
// ============================================

module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
    
    parameter A = 0, B = 1, C = 2, D = 3;
    reg[1:0] state, next;
    
    //Areset logic
    always@(posedge clk or posedge areset) begin
        if(areset)
            state <= A;
        else
           state <= next;
    end
    
    //state transacttion loig
    always@(*)begin
        case(state)
            A : next = x ? B : A;
            B : next = x ? D : C;
			C : next = x ? D : C;
            D : next = x ? D : C;
            default: next= A;
        endcase
    end
    
    //moore output logic
    always@(*)begin
        case(state)
            A : z = 1'b0;
            B : z = 1'b1;
            C : z = 1'b1;
            D : z = 1'b0;
            default: z = 1'b0;
        endcase
    end
endmodule
    

