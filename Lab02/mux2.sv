`timescale 1ns / 1ps


module mux2 ( input logic a, b, c, output logic y) ;

assign y = c ? a : b;
endmodule

