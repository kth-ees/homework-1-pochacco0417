module arithmetic_right_shifter_tb;

  localparam N = 8;

  logic [N-1:0] input_data;
  logic [1:0] control;
  logic [N-1:0] shifed_result;

  arithmetic_right_shifter #(.N(N)) dut(
    .input_data(input_data),
    .control(control),
    .shifted_result(shifted_result)
  );

  initial begin
    input_data=8'b10000000;
    control=2'b00;
    #10;
    control=2'b01;
    #10;
    control=2'b10;
    #10;
    control=2'b11;
    #10;
    $stop;
  end
endmodule
