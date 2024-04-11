module fll_2
   #(parameter N=32)
   (
    input clk_ref, reset,
    input clk_in,
    input [N-1:0] lower_bound,
    input [N-1:0] upper_bound,
    input [N-1:0] gate_time,
    output [N-1:0] value,
    output reg strobe,
    output reg locked,
    output [2:0] corner //stf
   );

   //reg[N-1:0] ref_count = 0;
   reg counter_reset = 1;
   wire[N-1:0] counter_val;
   wire[N-1:0] ref_val;
   reg[N-1:0] tmp = 111000000; //set initial value here
   reg[2:0] corner_tmp = 010; //stf
   //reg[N-1:0] ref = REF;

fll_counter #(.N(N)) counter1 (.reset(counter_reset), .clk_in(clk_in), .value(counter_val));
fll_counter #(.N(N)) counter2 (.reset(counter_reset), .clk_in(clk_ref), .value(ref_val));

always @(posedge clk_ref or posedge reset)
   begin
	if (reset) begin
	  counter_reset <= 1;
	  tmp <= 1;
	  //ref_count <= 0;
	  strobe <= 0;
	  locked <= 0;
	end else begin
	  counter_reset <= 0;
	  strobe <= 0;
	  //ref_count <= ref_count + 1'b1;
	if(ref_val == gate_time) begin
	  strobe <= 1;
	  if (counter_val > upper_bound) begin
	      locked <= 0;
	      if (tmp + 1'b1 <= (2**N-1))
		tmp <= tmp + 1'b1;
	      else corner_tmp = 100;
		counter_reset <= 0;
	  end else if (counter_val < lower_bound) begin
	      locked <= 0;
	      if (tmp - 1'b1 > 0)
		tmp <= tmp - 1'b1;
	      else corner_tmp = 001;
		counter_reset <= 0;
	  end else if (counter_val >= lower_bound && counter_val <= upper_bound) begin
		counter_reset <= 0;
		locked <= 1;
	  end
	  //ref_count <= 0;
	  counter_reset <= 1;
	end
	end
   end
assign value = tmp;
assign corner = corner_tmp;
endmodule
