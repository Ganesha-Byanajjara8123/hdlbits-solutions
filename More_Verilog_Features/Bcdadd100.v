
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  Bcdadd100
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-18
// Link           : https://hdlbits.01xz.net/wiki/Bcdadd100
// ============================================


module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire[100:0] carry; // We need 99 intermediate carry wires to connect the 100 adders.
    
    assign carry[0]=cin;    // Assign the input carry-in to the first slot 
    assign cout=carry[100];  // Assign the final carry-out to the top_module's cout

    genvar i;
    
    generate 
        for(i=0; i<100; i=i+1) begin : bcd_adder_instances
            bcd_fadd inst(
                .a(a[(i*4)+3 : i*4]),  //a[(i*4)+3] which is like [3:0], [7:4], [11:8]
                .b(b[(i*4)+3 : i*4]), 
                .cin(carry[i]),
                .cout(carry[i+1]),
                .sum(sum[(i*4)+3 : i*4])
            );
         
        end
    endgenerate
                
endmodule
