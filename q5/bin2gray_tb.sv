module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  bin2gray dut(
    .binary(binary),
    .gray(gray)
  );

  initial begin
    $display("binary\tgray");
    for(int i=0; i<16; i++) begin
      binary=i;
      #1;
      $display("%b\t%b", binary, gray);
    end
    $finish
  end
endmodule
