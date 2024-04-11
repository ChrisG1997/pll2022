module clk_divider 
   #(parameter N=4)
   (
    input clk_in,
    input reg [N-1:0] divider,
    output reg clk_out
);

reg[N-1:0] counter = 0;
reg clk_in_div = 0;
reg clk_in_passthru = 0;

assign clk_out = (divider == 1)?clk_in_passthru:clk_in_div;

always @(posedge clk_in) begin
    
    counter <= counter + 1;

    if (counter >= (divider - 1)) begin
        counter <= 0;
    end

    clk_in_div <= (counter < (divider / 2))?1'b1:1'b0;

end
   assign clk_in_passthru = clk_in;
endmodule
