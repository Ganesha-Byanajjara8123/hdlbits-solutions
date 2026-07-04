
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Count10
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-04
// Link            :  https://hdlbits.01xz.net/wiki/Count10
// ============================================


module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    
  always@(posedge clk) begin
        if(reset)
            q<=0; // output should become 0 when reset enabled
      else if (q==4'd9)
          q<=0;
      else 
            q <= q + 1; //otherwise it start to increase
    end

endmodule

/* or we can also write it like

always@(posedge clk) begin
if(reset || q==9) //because q should become 0 in 2-cases(1-reset and 2-when count reach 9)so we can combine both by ||
q<=0;
else
q<=q+1;
end

*/
