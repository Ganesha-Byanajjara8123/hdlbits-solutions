
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Shift4
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-07
// Link            :  https://hdlbits.01xz.net/wiki/Shift4
// ============================================
 
module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
    always@(posedge clk or posedge areset) begin
        if(areset)begin
            q <= 4'b0000;
        end
         else begin
             if(load) begin
                 q <= data;  //for data
             end
             else if(ena) begin  // shift is enabled
                 q <= {1'b0, q[3:1]}; //used vector part select to express the shift
             end
         end
    end
                 

endmodule
