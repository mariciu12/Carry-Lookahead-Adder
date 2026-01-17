`timescale 1ns/1ps

module tb();

  reg carry_in;
  reg[15:0] a, b;
  wire carry_out, prop_g, gen_g;
  wire[15:0] out;

  adder_16bits inst_add16(
                 .in1(a),
                 .in2(b),
                 .carry_in(carry_in),
                 .out(out),
                 .carry_out(carry_out),
                 .prop_g(prop_g),
                 .gen_g(gen_g)
               );

  initial
  begin
    a = 16'h0002; //2 si 5
    b = 16'h0005;
    carry_in = 1'b0;
    #10;

    a = 16'h0066; //102, 105
    b = 16'h0069;
    #10 

    a = 16'h00ca; //202, 205
    b = 16'h00cd;
    #10 

    a = 16'h012e; //302, 305
    b = 16'h0131;
    #10 

    a = 16'h0192; //402, 405
    b = 16'h0195;
    #10;

    $finish;
  end


  initial
  begin
    $dumpfile("adder16bits.vcd");
    $dumpvars(0, tb);
  end

endmodule
