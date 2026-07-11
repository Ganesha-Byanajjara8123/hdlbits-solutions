// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  ece241_2013_q12
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-10-07
// Link            :  https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q12
// ============================================

module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    
    reg[7:0] Q; //for 8-bit register and act as a 8x1-memory
    
    always@(posedge clk)begin
        if(enable)begin
            Q <={Q[6:0], S};//which feeds the input of Q[0] (MSB is shifted in first). 
          
        end
        
   end
      
    //when ABC is 000, Z=Q[0], when ABC is 001, Z=Q[1], and so on. 
    always@(*) begin
        case({A,B,C})
                3'b000 : Z = Q[0];
                3'b001 : Z = Q[1];
                3'b010 : Z = Q[2];
                3'b011 : Z = Q[3];
                3'b100 : Z = Q[4];
                3'b101 : Z = Q[5];
                3'b110 : Z = Q[6];
                3'b111 : Z = Q[7];
            endcase
    end

endmodule
