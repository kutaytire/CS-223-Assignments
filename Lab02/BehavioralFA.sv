`timescale 1ns / 1ps

module BehavioralFA (input logic X, Y, Cin, output logic S, Cout);
	assign S = ~X & ~Y & Cin |~X & Y & ~Cin| X & ~Y & ~Cin | X & Y & Cin;
	assign Cout = ~X & Y & Cin |X & Y & ~Cin| X & ~Y & Cin | X & Y & Cin;
	endmodule