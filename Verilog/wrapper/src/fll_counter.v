module fll_counter
   #(parameter N=32)
   (
    input reset,
    input clk_in,
    output [N-1:0] value
   );

   reg[N-1:0] count = 0;

always @(posedge clk_in or posedge reset)
   begin
	if (reset)
	  count <= 0;
	else 
	  count <= count + 1'b1;	
   end
assign value = count;
endmodule
