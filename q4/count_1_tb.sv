module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  count_1 dut(
    .a(a),
    .out(out)
  );

  initial begin
    a=4'b0000;
    #10ns;
    a=4'b0001;
    #10ns;
    a=4'b0101;
    #10ns;
    a=4'b1110;
    #10ns;
    a=4'b1111;
    #10ns;
    $finish
  end
endmodule
