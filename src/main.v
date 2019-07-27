/*
 * main.v
 * Main module connecting all modules.
 *
 * @license: Unlicense
 * @version: 1.0
 * @author: Sherzod Mamadaliev
 *          Yaroslav Cherepanov
 *
 */
module main (
	clock, 
	reset,
	data,
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5,
	ledr
);

    // inputs
    input clock;        // CLOCK50
    input reset;        // KEY[0]
    input [3:0] data;   // SW[0]...SW[3]

    // outputs
    output [6:0] hex0;  // HEX[0]
    output [6:0] hex1;  // HEX[1]
    output [6:0] hex2;  // HEX[2]
    output [6:0] hex3;  // HEX[3]
    output [6:0] hex4;  // HEX[4]
    output [6:0] hex5;  // HEX[5]
    output [2:0] ledr;  // LEDR[0]...LEDR[2]

    // wires
    wire low;
    wire [3:0] out0;
    wire [3:0] out1;
    wire [3:0] out2;
    wire [3:0] out3;
    wire [3:0] out4;
    wire [3:0] out5;

    // low counter
    lower counter (
        .in(clock),
        .out(low)
    );

    // cdd
    cdd device (
        .clock(low),
         .reset(reset),
         .data(data),
         .out0(out0),
         .out1(out1),
         .out2(out2),
         .out3(out3),
         .out4(out4),
         .out5(out5),
        .cnt(ledr)
    );

    // coders
    coder coder0 (
        .in(out0),
        .out(hex0)
    );

    coder coder1 (
        .in(out1),
        .out(hex1)
    );

    coder coder2 (
        .in(out2),
        .out(hex2)
    );

    coder coder3 (
        .in(out3),
        .out(hex3)
    );

    coder coder4 (
        .in(out4),
        .out(hex4)
    );

    coder coder5 (
        .in(out5),
        .out(hex5)
    );

endmodule
