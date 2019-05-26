module connect (op_clock, op_reset, op_data, hex0, hex1, hex2, hex3, hex4, hex5);

// inputs
input op_clock;
input op_reset;
input [3:0] op_data;

// outputs
output hex0; // hex_0
output hex1; // hex_0
output hex2; // hex_0
output hex3; // hex_0
output hex4; // hex_0
output hex5; // hex_0


cdd op_cdd();

coder op_coder();

endmodule
