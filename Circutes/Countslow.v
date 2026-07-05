
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Countslow
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-05
// Link            :  https://hdlbits.01xz.net/wiki/Countslow
// ============================================


module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    
    always@(posedge clk)begin
        if(reset)begin
            q<=1'b0;
        end
        else if(slowena) begin
            if(q==9)begin
                q<=4'b0;   //when slowena=0 but counter 9 still continue untill slowena=1
            end
            else begin
            q<=q+1'b1;
            end
        end
    end
            

endmodule
