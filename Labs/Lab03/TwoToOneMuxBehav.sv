`timescale 1ns / 1ps

module TwoToOneMuxBehav(input logic a,b,s, output logic y);

assign y = a & ~s | b & s;
endmodule
