module wrapper #(parameter N=96, M=10) (
    input ref_in, clk_in, s_in, read, load, reset, vco_in,
    output s_out,
    output reg [M-1:0] dac, 
    output reg [2:0] corner,
    output lock,
    //input vco_1, vco_2, vco_3, vco_4,
    //output vco_out,
    output [2:0] slope_ctrl,
    output [7:0] vbias1, vbias2, vbias3
);
//divider=4bit, upper=10bit, lower=10bit, ref_time=10bit

reg[N-1:0] r_config;
reg[M-1:0] dac_tmp;
reg[2:0] corner_tmp;

//clk_divider    d1(.clk_in(ref_in), .divider(r_config[3:0]), .clk_out(clk_out));
shiftregister  #(.N(N)) d2 (.clk(clk_in), .reset(reset), .load(load), .read(read), .s_in(s_in), .s_out(s_out), .r_read(r_config), .r_load(r_config));
fll_wrapper_2 #(.N(M)) d5 (.ref(ref_in), .reset(reset), .clk(vco_in), .upper(r_config[29:20]), .lower(r_config[19:10]), .ref_time(r_config[9:0]), .dac(dac_tmp), .corner(corner_tmp), .lock(lock_tmp), .test(r_config[57]), .test_val(r_config[56:47]), .buffer_val(r_config[67:58]));
mux #(.N(3)) m1 (.sel(r_config[33]), .in0(corner_tmp), .in1(r_config[32:30]), .out(corner));//corner
mux #(.N(8)) m2 (.sel(r_config[44]), .in0(dac_tmp), .in1(r_config[43:34]), .out(dac));//dac
mux #(.N(1)) m3 (.sel(r_config[46]), .in0(lock_tmp), .in1(r_config[45]), .out(lock));//lock

assign slope_ctrl = r_config[70:68];
assign vbias1 = r_config[78:71];
assign vbias2 = r_config[86:79];
assign vbias3 = r_config[94:87];
endmodule