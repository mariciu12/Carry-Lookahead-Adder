module adder_16bits (
    input[15:0] in1,
    input[15:0] in2,
    input carry_in,
    output[15:0] out,
    output carry_out,
    output prop_g,
    output gen_g
  );

  wire[3:0] prop, gen, carry;

  adder_4bits inst_add0 (
               .in1(in1[3:0]),
               .in2(in2[3:0]),
               .carry_in(carry_in),
               .out(out[3:0]),
               .prop_g(prop[0]),
               .gen_g(gen[0])
             );

  adder_4bits inst_add1 (
               .in1(in1[7:4]),
               .in2(in2[7:4]),
               .carry_in(carry[0]),
               .out(out[7:4]),
               .prop_g(prop[1]),
               .gen_g(gen[1])
             );

  adder_4bits inst_add2 (
               .in1(in1[11:8]),
               .in2(in2[11:8]),
               .carry_in(carry[1]),
               .out(out[11:8]),
               .prop_g(prop[2]),
               .gen_g(gen[2])
             );

  adder_4bits inst_add3 (
               .in1(in1[15:12]),
               .in2(in2[15:12]),
               .carry_in(carry[2]),
               .out(out[15:12]),
               .prop_g(prop[3]),
               .gen_g(gen[3])
             );

  cla_4bits inst_cla (
              .prop(prop),
              .gen(gen),
              .carry_in(carry_in),
              .carry(carry),
              .prop_g(prop_g),
              .gen_g(gen_g)
            );

  assign carry_out = carry[3];

endmodule
