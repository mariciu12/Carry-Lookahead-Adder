module cla_4bits (
    input[3:0] prop,
    input[3:0] gen,
    input carry_in,
    output[3:0] carry,
    output prop_g,
    output gen_g
  );

  assign carry[0] = gen[0] | prop[0] & carry_in;
  assign carry[1] = gen[1] | prop[1] & carry[0];
  assign carry[2] = gen[2] | prop[2] & carry[1];
  assign carry[3] = gen[3] | prop[3] & carry[2];

  assign prop_g = &prop;  
  assign gen_g = gen[3] | (gen[2] & prop[3]) | (gen[1] & prop[2] & prop[3]) | (gen[0] & prop[1] & prop[2] & prop[3]);

endmodule
