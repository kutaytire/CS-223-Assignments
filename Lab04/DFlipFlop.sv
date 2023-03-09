`timescale 1ns / 1ps

module DFlipFlop( input logic reset, input logic clk, input logic I, output logic Q);


	always_ff @ (posedge clk)

	if (reset) Q <= 0;
	else  Q <= I;
endmodule