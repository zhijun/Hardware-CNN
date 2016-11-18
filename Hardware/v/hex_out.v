`include "../network_params.h"
module rect_linear(
		   input 				     clock,
		   input 				     reset,
		   input [(`FFN_OUT_WIDTH*`NUM_CLASSES)-1:0] data, 
		   output reg [6:0] 			     hex
		   );
   
   always@(posedge clock or negedge reset)begin
      if (reset == 1'b0) begin
	 hex <= 7'b1110111;;
      end else begin
	 if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]) begin // 0 > 1
	    if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]) begin // 0 > 2
	       if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]) begin // 0 > 3
		  if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 0 > 4
		     if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 0 > 5
			if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 0 > 6
			   if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 0 > 7
			      if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 0 > 8
				 if (data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 0 > 9
				    hex <= 7'b1000000;/*0*/ end else begin hex <= 7'b0011000;/*9*/ end // 0 & 9
			      end else begin /* 8 > 0 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 0 & 8
			   end else begin // 7 > 0
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 0 & 7
			end else begin // 6 > 0
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 0 & 6
		     end else begin // 5 > 0
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 0 & 5
		  end else begin // 4 > 0
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 0 & 4      
	       end else begin // 3 > 0
		  if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 3 > 4
		     if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 3 > 5
			if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 3 > 6
			   if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 3 > 7
			      if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 3 > 8
				 if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 3 > 9
				    hex <= 7'b0110000;/*3*/ end else begin hex <= 7'b0011000;/*9*/ end // 3 & 9
			      end else begin /* 8 > 3 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 3 & 8
			   end else begin // 7 > 3
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 3 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 3 & 6
		     end else begin // 5 > 3
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 0 & 5
		  end else begin // 4 > 3
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 3 & 4
	       end // 0 & 3
	    end else begin // 2 > 0
	       if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]) begin // 2 > 3
		  if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 2 > 4
		     if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 2 > 5
			if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 2 > 6
			   if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 2 > 7
			      if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 2 > 8
				 if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 2 > 9
				    hex <= 7'b0100100;/*2*/ end else begin hex <= 7'b0011000;/*9*/ end // 2 & 9
			      end else begin /* 8 > 2 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 2 & 8
			   end else begin // 7 > 2
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 2 & 7
			end else begin // 6 > 2
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 2 & 6
		     end else begin // 5 > 2
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 2 & 5
		  end else begin // 4 > 2
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 0
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 2 & 4      
	       end else begin // 3 > 2
		  if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 3 > 4
		     if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 3 > 5
			if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 3 > 6
			   if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 3 > 7
			      if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 3 > 8
				 if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 3 > 9
				    hex <= 7'b0110000;/*3*/ end else begin hex <= 7'b0011000;/*9*/ end // 3 & 9
			      end else begin /* 8 > 3 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 3 & 8
			   end else begin // 7 > 3
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 3 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 3 & 6
		     end else begin // 5 > 3
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 0 & 5
		  end else begin // 4 > 3
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 3 & 4
	       end // 2 & 3
	    end // 0 & 2
	 end else begin // 1 > 0
	    if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]) begin // 1 > 2
	       if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]) begin // 1 > 3
		  if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 1 > 4
		     if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 1 > 5
			if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 1 > 6
			   if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 1 > 7
			      if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 1 > 8
				 if (data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 1 > 9
				    hex <= 7'b1111001;/*1*/ end else begin hex <= 7'b0011000;/*9*/ end // 0 & 9
			      end else begin /* 8 > 1 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 1 & 8
			   end else begin // 7 > 0
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 1 & 7
			end else begin // 6 > 1
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 1 & 6
		     end else begin // 5 > 1
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 1
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 0 & 5
		  end else begin // 4 > 0
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 0
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 1 & 4      
	       end else begin // 3 > 1
		  if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 3 > 4
		     if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 3 > 5
			if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 3 > 6
			   if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 3 > 7
			      if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 3 > 8
				 if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 3 > 9
				    hex <= 7'b0110000;/*3*/ end else begin hex <= 7'b0011000;/*9*/ end // 3 & 9
			      end else begin /* 8 > 3 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 3 & 8
			   end else begin // 7 > 3
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 3 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 3 & 6
		     end else begin // 5 > 3
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
		      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 0 & 5
		  end else begin // 4 > 3
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 3 & 4
	       end // 1 & 3
	    end else begin // 2 > 1
	       if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]) begin // 2 > 3
		  if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 2 > 4
		     if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 2 > 5
			if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 2 > 6
			   if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 2 > 7
			      if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 2 > 8
				 if (data[(`FFN_OUT_WIDTH*2)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*2]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 2 > 9
				    hex <= 7'b1111001;/*1*/ end else begin hex <= 7'b0011000;/*9*/ end // 0 & 9
			      end else begin /* 8 > 1 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 1 & 8
			   end else begin // 7 > 1
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 1 & 7
			end else begin // 6 > 1
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 1 & 6
		     end else begin // 5 > 1
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 1
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 1 & 5
		  end else begin // 4 > 1
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 1 & 4      
	       end else begin // 3 > 1
		  if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]) begin // 3 > 4
		     if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 3 > 5
			if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 3 > 6
			   if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 3 > 7
			      if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 3 > 8
				 if (data[(`FFN_OUT_WIDTH*3)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*3]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 3 > 9
				    hex <= 7'b0110000;/*3*/ end else begin hex <= 7'b0011000;/*9*/ end // 3 & 9
			      end else begin /* 8 > 3 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 3 & 8
			   end else begin // 7 > 3
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 3 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 3 & 6
		     end else begin // 5 > 3
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end else begin // 6 > 3
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 1 & 5
		  end else begin // 4 > 3
		     if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]) begin // 4 > 5
			if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 4 > 6
			   if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 4 > 7
			      if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 4 > 8
				 if (data[(`FFN_OUT_WIDTH*4)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*4]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 4 > 9
				    hex <= 7'b0011001;/*4*/ end else begin hex <= 7'b0011000;/*9*/ end // 4 & 9
			      end else begin /* 8 > 4 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 4 & 8
			   end else begin // 7 > 4
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 4 & 7
			end else begin // 6 > 4
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 6 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 4 & 6
		     end else begin // 5 > 4
			if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]) begin // 5 > 6
			   if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 5 > 7
			      if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 5 > 8
				 if (data[(`FFN_OUT_WIDTH*5)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*5]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 5 > 9
				    hex <= 7'b0010010;/*5*/ end else begin hex <= 7'b0011000;/*9*/ end // 5 & 9
			      end else begin /* 8 > 5 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 5 & 8
			   end else begin // 7 > 5
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 5 & 7
			end else begin // 6 > 5
			   if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]) begin // 6 > 7
			      if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 6 > 8
				 if (data[(`FFN_OUT_WIDTH*6)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*6]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 6 > 9
				    hex <= 7'b0000010;/*6*/ end else begin hex <= 7'b0011000;/*9*/ end // 6 & 9
			      end else begin /* 8 > 6 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end else begin // 7 > 6
			      if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]) begin // 7 > 8
				 if (data[(`FFN_OUT_WIDTH*7)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*7]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 7 > 9
				    hex <= 7'b1111000;/*7*/ end else begin hex <= 7'b0011000;/*9*/ end // 7 & 9
			      end else begin /* 8 > 7 */
				 if (data[(`FFN_OUT_WIDTH*8)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*8]>data[(`FFN_OUT_WIDTH*9)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*9]) begin // 8 > 9
				    hex <= 7'b0000000;/*8*/ end else begin hex <= 7'b0011000;/*9*/ end // 8 & 9
			      end // 7 & 8
			   end // 6 & 7
			end // 5 & 6
		     end // 4 & 5
		  end // 3 & 4
	       end // 0 & 3
	    end // 1 & 2   
	 end // else: !if(data[(`FFN_OUT_WIDTH*0)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*0]>data[(`FFN_OUT_WIDTH*1)+`FFN_OUT_BITWIDTH:`FFN_OUT_WIDTH*1])	 
      end // else: !if(reset == 1'b0)
   end // always@ (posedge clock or negedge reset)
endmodule


