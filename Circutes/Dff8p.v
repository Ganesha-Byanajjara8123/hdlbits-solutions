
// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Dff8p
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-27
// Link            :  https://hdlbits.01xz.net/wiki/Dff8p
// ============================================
 
module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    always@(negedge clk) begin
       
        if(reset) 
            q<=8'h34; //The flip-flops must be reset to 0x34 rather than zero. 
            else  
                q<=d; 
        end

endmodule
