`timescale 1ns / 1ps

module FourToOneMuxStruc(input logic d0,d1,d2,d3,s1,s2, output logic y);

	logic n1, n2;

	TwoToOneMuxBehav mux1(d0,d1,s2,n1);
	TwoToOneMuxBehav mux2(d2,d3,s2,n2);
	TwoToOneMuxBehav mux3(n1,n2,s1,y);
endmodule

