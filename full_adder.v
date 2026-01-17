module full_adder (
    input in1,
    input in2,
    input carry_in,
    output out,
    output prop,
    output gen
  );

  assign out = in1 ^ in2 ^ carry_in;
  assign prop = in1 | in2;
  assign gen = in1 & in2;

endmodule
