
// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Rotate100
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-07
// Link            :  https://hdlbits.01xz.net/wiki/Rotate100
// ============================================
 
module top_module(
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    output reg [99:0] q); 
    
    always@(posedge clk)begin
        if(load) begin
            q <= data;    //to load the data to q
            end else begin
                if(ena == 2'b01)begin // Rotate right
                    q <= {q[0], q[99:1]};
                end else if (ena == 2'b10)begin // Rotate Left
                    q <={q[98:0], q[99]};
                    end
                  
                else begin
                    q <= q; // to store it's current value
                end 
            end
    end
endmodule
