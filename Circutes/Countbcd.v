
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Countbcd
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-06
// Link            :  https://hdlbits.01xz.net/wiki/Countbcd
// ============================================

//for module instantiate purpose
module counter10 ( 
    input clk, 
    input reset, 
    input ena, 
    output reg [3:0] q 
);
        always @(posedge clk) begin
        if (reset) begin	
                q <= 4'd0;
        end
            else if(ena) begin //when ena active and
                if(q == 4'd9)   // counter become 9 then
                q <= 4'd0;      // q should be 0
                else 
                    q <= q + 4'd1; //otherwise start to count
            end
        end

endmodule

module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
   
    //assign the ones,tens and thousands A/C problem requirement
    assign ena[1] = (q[3:0] == 4'd9); 
    assign ena[2] = (q[3:0] == 4'd9) && (q[7:4] == 4'd9);
    assign ena[3] = (q[3:0] == 4'd9) && (q[7:4] == 4'd9) && (q[11:8] == 4'd9);
    
    //module instantiation 
    counter10 inst_ones ( .clk(clk), .reset(reset), .ena(1'b1),    .q(q[3:0]));
    counter10 inst_tens ( .clk(clk), .reset(reset), .ena(ena[1]), .q(q[7:4]));
    counter10 inst_hund ( .clk(clk), .reset(reset), .ena(ena[2]), .q(q[11:8]));
    counter10 inst_thou ( .clk(clk), .reset(reset), .ena(ena[3]), .q(q[15:12]));

endmodule
