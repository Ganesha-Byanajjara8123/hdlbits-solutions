// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Dff8ar
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-28
// Link            :  https://hdlbits.01xz.net/wiki/Dff8ar
// ============================================
 
module top_module (n
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always@(posedge clk or posedge areset) begin

        if(areset)
           q<=8'b0;
        else
            q<=d;
    end
endmodule

