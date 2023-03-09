`timescale 1ns / 1ps

module DecoderBehav( input logic a,b, output logic d0,d1,d2,d3  );

	assign d0 = ~a & ~b;
	assign d1 = ~a & b;
	assign d2 = a & ~b; 
	assign d3 = a & b;

endmodule