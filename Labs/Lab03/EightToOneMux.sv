`timescale 1ns / 1ps

module EightToOneMux( input logic d0,d1,d2,d3,d4,d5,d6,d7,s1,s2,s3, output logic y);

	logic n1,n2,n3,n4,n5;

	FourToOneMuxStruc mux1 (d0,d1,d2,d3,s2,s3,n1);
	FourToOneMuxStruc mux2 (d4,d5,d6,d7,s2,s3,n2);
	andGate and1 (s1,n2,n3);
	notGate inv (s1,n4);
	andGate and2 (n4,n1,n5);
	orGate or1 (n3,n5,y);

endmodule