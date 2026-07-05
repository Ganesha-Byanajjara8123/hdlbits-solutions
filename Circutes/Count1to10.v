
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Count1to10
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-05
// Link            :  https://hdlbits.01xz.net/wiki/Count1to10
// ============================================


module top_module (
    input clk,
    input reset,
    output [3:0] q);
    always@(posedge clk) begin
        if(reset)
            q <= 4'b1;  //when counter become 1 then reset
        else if(q == 4'd10)
            q <= 4'b1;     //it should be start from 1 not 0
        else 
            q <= q + 1'b1; // start counting from 1 to 10
    end

endmodule
