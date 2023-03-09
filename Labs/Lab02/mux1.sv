`timescale 1ns / 1ps

module mux1 ( input logic a,b,c,d, s1, s2, output logic y);

assign y = s1 ? ( s2 ? d : c) : ( s2 ? b : a);
endmodule

