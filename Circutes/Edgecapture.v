// ============================================
// HDLBits Problem :  Circuite-D-FF
// Topic           :  Edgecapture
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-04
// Link            : https://hdlbits.01xz.net/wiki/Edgecapture
// ============================================


module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    reg [31:0]last_in_cycle;
    
    always @(posedge clk) begin
      
        if(reset) begin 
            out<=32'b0;  //when reset occures than only out should be 0, otherwise it should hold previous values even in changes
        end
        else begin
            //to capture the edge of values
            out <= out | (last_in_cycle & ~in);     
        end
		//for previous values
          last_in_cycle <= in;
    end
endmodule
