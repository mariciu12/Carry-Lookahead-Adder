module adder_4bits(
    input[3:0] in1,
    input[3:0] in2,
    input carry_in,
    output[3:0] out,
    output carry_out,
    output prop_g,
    output gen_g
  );

  wire[3:0] prop, gen, carry;

  full_adder inst_add0 (
               .in1(in1[0]),
               .in2(in2[0]),
               .carry_in(carry_in),
               .out(out[0]),
               .prop(prop[0]),
               .gen(gen[0])
             );

  full_adder inst_add1 (
               .in1(in1[1]),
               .in2(in2[1]),
               .carry_in(carry[0]),
               .out(out[1]),
               .prop(prop[1]),
               .gen(gen[1])
             );

  full_adder inst_add2 (
               .in1(in1[2]),
               .in2(in2[2]),
               .carry_in(carry[1]),
               .out(out[2]),
               .prop(prop[2]),
               .gen(gen[2])
             );

  full_adder inst_add3 (
               .in1(in1[3]),
               .in2(in2[3]),
               .carry_in(carry[2]),
               .out(out[3]),
               .prop(prop[3]),
               .gen(gen[3])
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
