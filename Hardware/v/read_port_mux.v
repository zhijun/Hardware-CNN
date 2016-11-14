`include "../network_params.h"
module read_port_mux( // combinds several sram read ports into one address space
  input clock,
  input reset,
 
  input [`NUM_KERNELS-1:0] ram_select,
  input [(`FFN_IN_WIDTH*`NUM_KERNELS)-1:0] buffer_data_vector,

  output reg [`FFN_IN_BITWIDTH:0] data_out
);

always@(*) begin
  if (reset == 1'b0) begin 
    data_out = `FFN_IN_WIDTH'd0;
  end else begin
    case(ram_select)
      2'd0: data_out = buffer_data_vector[21:0];
      2'd1: data_out = buffer_data_vector[43:22];
    endcase
  end //reset
end //always
endmodule