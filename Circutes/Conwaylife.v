// ============================================
// HDLBits Problem :  Circuite-Shifters
// Topic           :  Conwaylife
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-12-07
// Link            :  https://hdlbits.01xz.net/wiki/Conwaylife
// ============================================

module top_module(
    input clk,
    input load,
    input [255:0] data,
    output [255:0] q ); 
    
    wire [255:0] next_q;
    
    genvar i;
    generate 
        for(i=0; i<256; i=i+1)begin : game_logic
            
            wire [3:0] row = i/16;
            wire [3:0] col = i%16;
            
            wire [3:0] r_up = row - 1;
            wire [3:0] r_down = row + 1;
            wire [3:0] c_left = col - 1;
            wire [3:0] c_right = col + 1;
            
            wire[3:0] neighbors_count;
            assign neighbors_count = 
                q[{r_up,   c_left}]  + q[{r_up,   col}]  + q[{r_up,   c_right}] +
                q[{row,    c_left}]  +                        q[{row,    c_right}] +
                q[{r_down, c_left}]  + q[{r_down, col}]  + q[{r_down, c_right}];
            
            assign next_q[i] = (neighbors_count == 3) ? 1'b1 :
                               (neighbors_count == 2) ? q[i]  : 1'b0;
        end
    endgenerate
            
    
    always@(posedge clk)begin
        if(load)begin
            q <= data;
        end
        else begin
            q <= next_q;
        end
    end

endmodule
