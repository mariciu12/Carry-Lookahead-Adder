# Carry-Lookahead-Adder
Carry Lookahead Adder (CLA), implemented in Verilog for the Computer Architecture course, designed to accelerate arithmetic operations by parallel calculation of carry signals. Includes structural module, generate/propagate logic, and a complete testbench for functional verification.

cla_4bit module description - implements the core carry-lookahead logic for a 4-bit block. It receives the propagate (P) and generate (G) signals for each bit and computes the internal carry chain in parallel, significantly reducing the delay compared to ripple‑carry propagation. 
