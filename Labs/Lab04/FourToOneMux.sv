`timescale 1ns / 1ps

module FourToOneMux(input logic a0, a1, a2, a3, s0, s1, output logic y);

    assign y = s1 ? (s0 ? a3: a2) : (s0 ? a1 : a0);

endmodule
