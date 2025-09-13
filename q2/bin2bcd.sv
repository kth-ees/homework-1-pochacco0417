module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  always_comb begin
    bcd='0;
    carry=1'b0;
    case(binary)
      4'd0: bcd=4'b0000;
      4'd1: bcd=4'b0001;
      4'd2: bcd=4'b0010;
      4'd3: bcd=4'b0011;
      4'd4: bcd=4'b0100;
      4'd5: bcd=4'b0101;
      4'd6: bcd=4'b0110;
      4'd7: bcd=4'b0111;
      4'd8: bcd=4'b1000;
      4'd9: bcd=4'b1001;
      4'd10: {bcd, carry}={4'b0000, 1'b1};
      4'd11: {bcd, carry}={4'b0001, 1'b1};
      4'd12: {bcd, carry}={4'b0010, 1'b1};
      4'd13: {bcd, carry}={4'b0011, 1'b1};
      4'd14: {bcd, carry}={4'b0100, 1'b1};
      4'd15: {bcd, carry}={4'b0101, 1'b1};
      default: {bcd, carry}={4'b0000, 1'b0};
    endcase
  end
endmodule
