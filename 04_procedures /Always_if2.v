
// ============================================
// HDLBits Problem : Procedures 
// Topic          :  Always_if2
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-07
// Link           : https://hdlbits.01xz.net/wiki/Always_if2
// ============================================

// synthesis verilog_input_version verilog_2001


// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else 
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule
