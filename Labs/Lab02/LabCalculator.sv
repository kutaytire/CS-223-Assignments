`timescale 1ns / 1ps

module LabCalculator(input logic D,C,A,B, output logic Y,Z );

	logic n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

	and1 andgate5 (A,B, n1);
	norgate norgate1 (A,B,n2);
	halfadder gate1(A,B,n3,n4);
	halfsubstractor gate2(A,B,n5,n6);

	mux1 muxgate1(n1, n2, n3, n5, C, D, Y);

	and1 andgate6 (C, ~D, n7);
	and1 andgate7 (C, D, n8);
	and1 andgate8 (n7, n4, n9);
	and1 andgate9 (n8, n6, n10);
	or1 orgate4 (n9, n10, Z);

	// Alternative structural implementation for the output Y.
	//mux2 muxgate2(n4 , n6, D);

endmodule

