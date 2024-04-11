module dcc (VGND,
    VPWR,
    clk_in,
    ref_in,
    clk_out);
 input VGND;
 input VPWR;
 input clk_in;
 input ref_in;
 output clk_out;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;

 sky130_fd_sc_hd__dfxbp_1 dff01 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .CLK(net9), .D(clk_in), .Q(net1), .Q_N(net12));

 sky130_fd_sc_hd__dfxbp_1 dff02 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .CLK(net1), .D(net2), .Q(net5), .Q_N(net2));

 sky130_fd_sc_hd__dfxbp_1 dff03 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .CLK(net4), .D(net3), .Q(net6), .Q_N(net3));

 sky130_fd_sc_hd__dfxbp_1 dff04 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .CLK(net9), .D(net11), .Q(net10), .Q_N(net13));

 sky130_fd_sc_hd__inv_1 inv01 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(net1), .Y(net4));

sky130_fd_sc_hd__inv_1 inv02 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(ref_in), .Y(net7));

sky130_fd_sc_hd__inv_1 inv03 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(net8), .Y(net9));

sky130_fd_sc_hd__inv_1 inv04 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(net10), .Y(net11));

sky130_fd_sc_hd__xor2_1 xor01 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(net5), .B(net6), .X(clk_out));

sky130_fd_sc_hd__xor2_1 xor02 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR), .A(net11), .B(net7), .X(net8));

endmodule
