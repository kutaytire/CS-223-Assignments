`timescale 1ns / 1ps

module TwoBitAdder (input logic A0, A1, B0, B1, C0, output logic S1, S2, Cout);

	logic n1, n2, n3, n4, n5, n6, n7;
	fullAdderStr fulladder1(A0, B0, C0, S1, n4);
	fullAdderStr fulladder2(n4, A1, B1, S2, Cout);

endmodule