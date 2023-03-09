`timescale 1ns / 1ps

module halfadder( input logic a, b, output logic S, Cout);

	xor1 xorgate4 ( a, b, S);
	and1 andgate4( a,b, Cout);

endmodule