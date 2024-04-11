module fll_wrapper_2
   #(parameter N=10)
   (
    input ref, reset,
    input clk,
    input [N-1:0] upper,
    input [N-1:0] lower,
    input [N-1:0] ref_time,
    input [N-1:0] test_val,
    input test,
    output [N-1:0] buffer_val,
    output [N-1:0] dac,
    output [2:0] corner,
    output lock
   );
   
   reg strb;
   reg[N-1:0] pre_val;
   reg[N-1:0] val;
   reg[N-1:0] dac_val;

fll_2 #(.N(N)) fll_core (.reset(reset), .clk_ref(ref), .clk_in(clk), .lower_bound(lower), .upper_bound(upper), .gate_time(ref_time), .value(pre_val), .strobe(strb), .corner(corner), .locked(lock));
mux #(.N(N)) mux01 (.sel(test), .in0(pre_val), .in1(test_val), .out(val));
bufferreg #(.N(N)) register (.reset(reset), .clk(strb), .data_in(val), .data_out(dac_val));

assign buffer_val = dac_val;//redundant?
assign dac = dac_val;
endmodule