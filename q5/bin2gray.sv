module bin2gray (
  input logic [3:0] binary,
  output logic [3:0] gray
);
  
  assign gray[3]=binary[3];
  assign gray[0]=binary[0] xor binary[1];
  assign gray[1]=binary[1] xor binary[2];
  assign gray[2]=binary[2] xor binary[3];
  
endmodule
