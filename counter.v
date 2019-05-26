`timescale 1ns/10ps

module testbench;

localparam T = 20;

reg clock;
reg enable;
reg reset;

//connect new_connect (); // TODO: add parameters

always begin
	clock = 1'd1;

	#(T/2);
	
	clock = 1'd0;

	#(T/2);
end

initial begin
	enable = 1'd0;
	reset = 1'd0;

	#(T/2);

	reset = 1'd1;
	enable = 1'd1;
end
endmodule
