`timescale 1ns / 1ps

module norgate ( input logic a, b, output logic y);
	logic n1;
	assign n1 = (a | b);
	inv inverter2(n1, y);
endmodule

