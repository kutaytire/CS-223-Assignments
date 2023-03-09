`timescale 1ns / 1ps

module fullAdderStr (input logic a, b, c, output logic S, Cout);

	logic n1, n2, n3;
	xor1 xorgate (a, b, n1);
	and1 andgate1(a, b, n2);
	and1 andgate2(c, n1, n3);
	or1 orgate1(n2, n3, Cout);
	xor1 xorgate2 (n1, c, S);

endmodule