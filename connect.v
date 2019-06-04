module connect (
	op_clock, 
	op_reset,
	op_data,
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5,
	led0
);

    // ==========[ inputs ]==========
    input op_clock;      // CLOCK50
    input op_reset;      // KEY[0]
    input [3:0] op_data; // SW[0]...SW[3]

    // ==========[ outputs ]==========
    output [6:0] hex0; // HEX[0]
    output [6:0] hex1; // HEX[1]
    output [6:0] hex2; // HEX[2]
    output [6:0] hex3; // HEX[3]
    output [6:0] hex4; // HEX[4]
    output [6:0] hex5; // HEX[5]
    output [2:0] led0; // LEDR[0]...LEDR[2]

    // ==========[ wires ]==========
    wire cnt;
    wire [3:0] out0;
    wire [3:0] out1;
    wire [3:0] out2;
    wire [3:0] out3;
    wire [3:0] out4;
    wire [3:0] out5;

    // ==========[ low counter ]==========
    low_counter op_low_counter(
        .clock(op_clock),
        .out(cnt)
    );

    // ==========[ cdd ]==========
    cdd op_cdd(
         .clock(cnt),
         .reset(op_reset),
         .data(op_data),
         .out0(out0),
         .out1(out1),
         .out2(out2),
         .out3(out3),
         .out4(out4),
         .out5(out5),
         .cnt(led0)
    );

    // ==========[ coders ]==========
    coder op_coder0(
        .in(out0),
        .out(hex0)
    );

    coder op_coder1(
        .in(out1),
        .out(hex1)
    );

    coder op_coder2(
        .in(out2),
        .out(hex2)
    );

    coder op_coder3(
        .in(out3),
        .out(hex3)
    );

    coder op_coder4(
        .in(out4),
        .out(hex4)
    );

    coder op_coder5(
        .in(out5),
        .out(hex5)
    );

endmodule
