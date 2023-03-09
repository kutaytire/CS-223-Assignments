`timescale 1ns / 1ps

module halfsubstractor( input logic a, b, output logic S, Cout);

	logic n1;
	xor1 xorgate4 ( a, b, S);
	Inv inverter(a, n1);
	and1 andgate4( n1,b, Cout);

endmodule