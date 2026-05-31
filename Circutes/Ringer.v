
// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Ringer
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-05-31
// Link            : https://hdlbits.01xz.net/wiki/Ringer
// ============================================


module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);

    //phone start to ring when its rigning but it's not on vibrate_mode
    assign ringer = ring & (~vibrate_mode);
   
    //phone is start to vibrate when motor turn ON and also start to ring
    assign motor = vibrate_mode & ring; 
 
endmodule
