module demux
   #(parameter N=8)
   (
    input sel,
    input reg[N-1:0] in,
    output reg [N-1:0] out0, out1
   );
always @(in, sel)
begin
case (sel)
1'b0:	begin out0=in; out1=0;
	end
1'b1: 	begin out0=0; out1=in;
	end
default: begin out0=in; out1=0;
	end
endcase
end
endmodule
