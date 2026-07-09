
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Lfsr5
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-08
// Link            :  https://hdlbits.01xz.net/wiki/Lfsr5
// ============================================


module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
); 
    always@(posedge clk)begin
        if(reset) begin
            q <= 5'h1;  
        end
        else begin
            q[4] <= q[0] ^ 0; //at position 5 the 'tap' - XOR is there
            q[3] <= q[4];      //there is no tap just simply recieves q[4]
            q[2] <= q[3] ^ q[0]; //at position 3 the 'tap' - XOR is there
            q[1] <= q[2];         //there is no tap just simply recieves q[2]
            q[0] <= q[1];         //there is no tap just simply recieves q[1]
        end
    end           

endmodule
