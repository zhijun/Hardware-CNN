`include "../network_params.h"
module button_mux(
		  input  clock,
		  input  reset,
		  input  bttn0,
		  input  bttn1,
		  input  bttn2,
		  input  bttn3,
		  input  select,
		  output outA0, 
		  output outA1,
		  output outA2, 
		  output outA3,
		  output outB0, 
		  output outB1,
		  output outB2, 
		  output outB3
		  );
   always@(posedge clock or negedge reset)begin
      if (reset == 1'b0) begin
	 outA0 <=  1'b0;
	 outA1 <=  1'b0;
	 outA2 <=  1'b0;
	 outA3 <=  1'b0;
	 outB0 <=  1'b0;
	 outB1 <=  1'b0;
	 outB2 <=  1'b0;
	 outB3 <=  1'b0;
      end else begin
	 if(select == 1'b1) begin
	    outA0 <=  bttn0;
	    outA1 <=  bttn1;
	    outA2 <=  bttn2;
	    outA3 <=  bttn3;
	    outB0 <=  1'b0;
	    outB1 <=  1'b0;
	    outB2 <=  1'b0;
	    outB3 <=  1'b0;
	 end else begin 
	    outA0 <=  1'b0;
	    outA1 <=  1'b0;
	    outA2 <=  1'b0;
	    outA3 <=  1'b0;
	    outB0 <=  bttn0;
	    outB1 <=  bttn1;
	    outB2 <=  bttn2;
	    outB3 <=  bttn3;
	 end
      end // else: !if(reset == 1'b0)
endmodule // moving_pixel
