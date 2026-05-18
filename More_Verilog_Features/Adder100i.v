
// ============================================
// HDLBits Problem :  More_verilog_features 
// Topic           :  Adder100i
// Solved by      : Byanajjara Ganesha
// Date           : 2026-05-17
// Link           : https://hdlbits.01xz.net/wiki/Adder100i
// ============================================


module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
      genvar i;
    
    generate 
        for (i=0; i<100; i=i+1) begin : adder_block  //(adder_block is the file name)
            if (i==0) begin  //initially we have to set zero for all
                assign sum[0]=a[0]^b[0]^cin;
                assign cout[0]=(a[0]&b[0] | a[0]&cin | b[0]&cin);
            end
            else begin
                     //from here we start our adder100 
                assign sum[i]=a[i]^b[i]^cout[i-1];
                assign cout[i]=(a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1]);
                
            end
        end
    endgenerate

endmodule
