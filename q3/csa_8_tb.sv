module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum,
  logic carry;

  csa_8 dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $display("a\t b\t carry\t sum");
    for(int i=0; i<10; i++) begin
      a=$urandom_range(0, 255);
      b=$urandom_range(0, 255);
      #10;
      $display("%d\t%d\t%b\t%d", a, b, carry, sum);
    end
    $finish;
  end
  
endmodule
