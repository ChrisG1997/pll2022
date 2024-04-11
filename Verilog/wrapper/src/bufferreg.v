module bufferreg
    #(parameter N=32)
   (
    input clk, reset,
    input [N-1:0] data_in,
    output [N-1:0] data_out
   );

reg[N-1:0] tmp = 0;

always @(posedge clk or posedge reset)
   begin
	if (reset)
	  tmp <= 0;
	else
	  tmp <= data_in;
   end
assign data_out = tmp;
endmodule
