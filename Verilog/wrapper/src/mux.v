module mux
   #(parameter N=8)
   (
    input sel,
    input reg[N-1:0] in0, in1,
    output [N-1:0] out
   );
//assign out = sel[1] ? (sel[0] ? in11 : in10) : (sel[0] ? in01 : in00);
assign out = sel? in1 : in0;
endmodule
