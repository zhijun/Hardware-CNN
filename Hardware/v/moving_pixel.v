`include "../network_params.h"
module moving_pixel(
		    input 			      clock,
		    input 			      reset,
		    input 			      x_inc,
		    input 			      x_dec,
		    input 			      y_inc,
		    input 			      y_dec,
		    input [`SCREEN_X_BITWIDTH:0]      x_coord, 
		    input [`SCREEN_Y_BITWIDTH:0]      y_coord,
		    output reg [`SCREEN_X_BITWIDTH:0] x_new, 
		    output reg [`SCREEN_Y_BITWIDTH:0] y_new
		    );
   always@(posedge clock or negedge reset)begin
      if (reset == 1'b0) begin
	 x_new <= `SCREEN_X_WIDTH'd0;
	 y_new <= `SCREEN_Y_WIDTH'd0;
      end else begin
	 if (min_value < x_coord && x_coord < max_value) begin
	    if (x_inc == 1'b1) begin
	       x_new <= x_coord+`SCREEN_X_WIDTH'd1;
	    end
	    else if (x_dec == 1'b1) begin
	       x_new <= x_coord-`SCREEN_X_WIDTH'd1;
	    end else begin
	       x_new <= x_coord;
	    end
	 end else begin
	    x_new <= x_coord;
	 end // else: !if(min_value < x_coord && x_coord < max_value)
	 
	 if (min_value < y_coord && y_coord < max_value) begin
	    if (y_inc == 1'b1) begin
	       y_new <= y_coord+`SCREEN_Y_WIDTH'd1;
	    end
	    else if (y_dec == 1'b1) begin
	       y_new <= y_coord-`SCREEN_Y_WIDTH'd1;
	    end else begin
	       y_new <= y_coord;
	    end   
	 end else begin
	    y_new <= y_coord;
	 end // else: !if(min_value < y_coord && y_coord < max_value)
      end // else: !if(reset == 1'b0)
endmodule // moving_pixel
