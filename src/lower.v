/*
 * lower.v
 * Lowering counter to lower the clock takts.
 *
 * @version: 1.0
 *
 */
module lower
    #(parameter N=26, DIV = 25'd25000000)
    (input wire in,
    output reg out);

    reg [N:0] gen2;
    wire[N:0] gen2_next;
    wire counter_next;

        always@(posedge in)
    begin
        gen2 <= gen2_next;
        out <= out;
        if (gen2 == DIV) begin
            gen2 <= 0;
            out <= ~out;
        end
    end

    assign gen2_next=gen2 + 1'b1;
endmodule
