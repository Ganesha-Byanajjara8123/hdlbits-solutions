// ============================================
// HDLBits Problem :  Circuite
// Topic           :  Thermostat
// Solved by       :  Byanajjara Ganesha
// Date            :  2026-06-01
// Link            : https://hdlbits.01xz.net/wiki/Thermostat
// ============================================

module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    //heater trun on in winter, when mode=1
     assign heater = too_cold &  mode;
	 
    //air conditionar trun in summer, when mode=0
    assign aircon   = too_hot & (~mode);
	
    //as per discribed in the problem When the heater or air conditioner are on,
    //also turn on the fan to circulate the air. and also request to fan_on = 1;
    assign fan    = heater | aircon | fan_on ;
	
endmodule
