module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);
  
  logic c1, c2, c3;
  logic [3:0] sum1, sum2, sum3;

  adder_4 adder1(
    .A(a[3:0]),
    .B(b[3:0]),
    .sum(sum1),
    .carry(c1)
  );

  adder_4 adder2(
    .A(a[7:4]),
    .B(b[7:4]),
    .sum(sum2),
    .carry(c2)
  );

  adder_4 adder3(
    .A(a[7:4]),
    .B(b[7:4]+4'b0001),
    .sum(sum3),
    .carry(c3)
  );

  always_comb begin
    sum[3:0]=sum1;
    if(c1==0) begin
      sum[7:4]=sum2;
      carry=c2;
    end else begin
      sum[7:4]=sum3;
      carry=c3;
    end
  end
  
endmodule
