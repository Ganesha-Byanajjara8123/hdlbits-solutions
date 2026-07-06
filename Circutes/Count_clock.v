
// ============================================
// HDLBits Problem :  Circuite-Counters
// Topic           :  Count_clock
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-07-06
// Link            :  https://hdlbits.01xz.net/wiki/Count_clock
// ============================================

module top_module (
    input clk,
    input reset,
    input ena,
    output reg pm,
    output reg [7:0] hh,
    output reg [7:0] mm,
    output reg [7:0] ss
);

    always @(posedge clk) begin
        if (reset) begin
            pm <= 1'b0;      // 0 for AM
            hh <= 8'h12;     // 12
            mm <= 8'h00;     // 00
            ss <= 8'h00;     // 00
        end 
        else if (ena) begin
            // ---- SECONDS COUNTER ----
            if (ss == 8'h59) begin
                ss <= 8'h00;
                
                // ---- MINUTES COUNTER ----
                if (mm == 8'h59) begin
                    mm <= 8'h00;
                    
                    // ---- HOURS & AM/PM COUNTER ----
                    if (hh == 8'h11) begin
                        hh <= 8'h12;
                        // PM toggles when moving from 11:59:59 to 12:00:00
                        pm <= ~pm; 
                    end 
                    else if (hh == 8'h12) begin
                        hh <= 8'h01; // 12:59:59 rolls over to 01:00:00
                    end 
                    else begin
                        // Handle standard BCD increment for hours (01 to 09 -> 10)
                        if (hh[3:0] == 4'd9) begin
                            hh[7:4] <= hh[7:4] + 1'b1;
                            hh[3:0] <= 4'd0;
                        end else begin
                            hh[3:0] <= hh[3:0] + 1'b1;
                        end
                    end
                end 
                else begin
                    // Handle standard BCD increment for minutes
                    if (mm[3:0] == 4'd9) begin
                        mm[7:4] <= mm[7:4] + 1'b1;
                        mm[3:0] <= 4'd0;
                    end else begin
                        mm[3:0] <= mm[3:0] + 1'b1;
                    end
                end
            end 
            else begin
                // Handle standard BCD increment for seconds
                if (ss[3:0] == 4'd9) begin
                    ss[7:4] <= ss[7:4] + 1'b1;
                    ss[3:0] <= 4'd0;
                end else begin
                    ss[3:0] <= ss[3:0] + 1'b1;
                end
            end
        end
    end

endmodule
