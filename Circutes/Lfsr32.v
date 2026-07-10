// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Lfsr32
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-09-07
// Link            :  https://hdlbits.01xz.net/wiki/Lfsr32
// ============================================


module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output [31:0] q
); 

    always@(posedge clk)begin
        if(reset)begin
            q <= 32'h1;
        end
            else begin
                q <= {1'b0, q[31:1]} ^ (q[0] ? 32'h80200003 : 32'h0);
            end
        end
endmodule



/*
//The Right Shift: {1'b0, q[31:1]}
  
If q[0] is 0: It evaluates to 32'h0. XORing any value with 0 changes nothing.
 The register simply performs the basic right shift described above.

If q[0] is 1: It evaluates to 32'h80200003. This mask gets XORed with the shifted register,
flipping the bits only at the specific tap positions.

Binary:  1000  0000  0010  0000  0000  0000  0000  0011
Hex:       8     0     2     0     0     0     0     3
*/
