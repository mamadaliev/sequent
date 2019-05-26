module cdd (T, clock, reset, data, out0, out1, out3, out4, out5);

// inputs
input T;
input clock;
input reset; // KEY0
input [3:0] data; // SW0..SW9

// outputs
output [3:0] out0; // HEX0
output [3:0] out1; // HEX1
output [3:0] out2; // HEX2
output [3:0] out3; // HEX3
output [3:0] out4; // HEX4
output [3:0] out5; // HEX5

// registers
reg [3:0] memory0;
reg [3:0] memory1;
reg [3:0] memory2;
reg [3:0] memory3;
reg [3:0] memory4;
reg [3:0] memory5;

reg [3:0] memory; // TODO: in always code memory = data;

wire [3:0] line;

assign line = memory;

// assigns
assign out0 = memory0;
assign out1 = memory1;
assign out2 = memory2;
assign out3 = memory3;
assign out4 = memory4;
assign out5 = memory5;

reg [3:0] state; // max: 8
reg [3:0] counter; // max: 8 (for  counting transitions of shift)

// states
parameter RESET  = 0; // start program
parameter WAIT   = 0; // wait to input data
parameter OUTPUT = 0; // display numbers to 
parameter READ   = 0; // reads numbers on switchers
parameter SHIFT  = 0; // shift numbers

// state of transitions
always@(posedge clock or negedge reset)
begin
    if (reset) begin
        state <= RESET; // state: 0
    end else begin
        case (state)
            RESET:
                state <= WAIT; // state: 1

            WAIT:
                if (T == 4) begin
                    state <= OUTPUT; // state: 2
                end

            OUTPUT:
                if (T == 4) begin
                    state <= READ; // state: 3
                end

            READ:
                if (T == 4) begin
                    state <= SHIFT; // state: 4
                end

            SHIFT:
                if (T == 4) begin
                    state <= OUTPUT; // state: 2
                end
        endcase
    end
end

// state of actions
always@(posedge clock or negedge reset)
begin
    if (reset) begin
        memory0 = 4'd0;
        memory1 = 4'd0;
        memory2 = 4'd0;
        memory3 = 4'd0;
        memory4 = 4'd0;
        memory5 = 4'd0;
    end else begin
        case (state)
            // RESET:

            // WAIT:

            OUTPUT:
                line <= data;

            //READ:

            //SHIFT:

        endcase
    end
end
endmodule
