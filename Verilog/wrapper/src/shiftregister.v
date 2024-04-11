// referencedesigner.com
// Example of shift register
module shiftregister
   #(parameter N=32)
   (
    input clk, reset, load, read,
    input s_in,
    output s_out,
    output [N-1:0] r_load,
    input [N-1:0] r_read
   );
 
   reg [N-1:0] r_reg = 0;
   reg [N-1:0] t_load = 0; // or initial coniguration
   
   always @(posedge clk or posedge reset)
   begin
      if (reset) begin
         r_reg <= 0;
	 t_load <= 0; //or initial configuration
      end
      else begin
	 if (load) begin
	    t_load <= r_reg;
         end
	 else if (read) begin
	    r_reg <= r_read; 
         end
         else begin 
            r_reg <= {s_in, r_reg[N-1:1]};
         end
      end
   end	
   assign s_out = r_reg[0];
   assign r_load = t_load;
endmodule