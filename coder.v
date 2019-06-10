/*
 * coder.v
 * Data decoder for display.
 *
 * @version: 1.0
 *
 */
module coder (
    in,
    out
);

    // inputs
    input [3:0] in;
    
    // outputs
    output [6:0] out;
    
    // regs
    reg [6:0] code;
    
    // assigns
    assign out = code;

    // alphabet
    always@* begin
        case (in)
            4'b0000: code = 7'b1000000;
            4'b0001: code = 7'b1111001;
            4'b0010: code = 7'b0100100;
            4'b0011: code = 7'b0110000;
            4'b0100: code = 7'b0011001;
            4'b0101: code = 7'b0010010;
            4'b0110: code = 7'b0000010;
            4'b0111: code = 7'b1111000;
            4'b1000: code = 7'b0000000;
            4'b1001: code = 7'b0010000;
            4'b1010: code = 7'b0001000;
            4'b1011: code = 7'b0000011;
            4'b1100: code = 7'b1000110;
            4'b1101: code = 7'b0100001;
            4'b1110: code = 7'b0000110;
            4'b1111: code = 7'b0001110;
        endcase
    end
endmodule
