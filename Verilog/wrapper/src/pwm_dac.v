module pwm_dac
   #(parameter N=32)
   (
    input clk, reset,
    input [N-1:0] PWM_in,
    output PWM_out
   );

reg [N-1:0] count = 0; //initial value
always @(posedge clk or posedge reset) begin
   if (reset)
	count <= 0;
   else
	count <= count + 1'b1;  // free-running counter
end
assign PWM_out = (PWM_in > count);  // comparator
endmodule
