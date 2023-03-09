`timescale 1ns / 1ps

module MultiFunction(input logic Inclk, reset, s1, s0, I0, I1, I2, I3, shr_in, shl_in, output logic  Q0, Q1, Q2, Q3 );

    logic n1,n2,n3,n4;
    
    slowClock clk1 (Inclk, clk);
    FourToOneMux mux1 (Q0,I0,Q1,shl_in,s0,s1,n1);
    FourToOneMux mux2 (Q1,I1,Q2,Q0,s0,s1,n2);
    FourToOneMux mux3 (Q2,I2,Q3,Q1,s0,s1,n3);
    FourToOneMux mux4 (Q3,I3,shr_in,Q2,s0,s1,n4);
    
    DFlipFlop flop1(reset,clk,n1,Q0);
    DFlipFlop flop2 (reset,clk,n2,Q1);
    DFlipFlop flop3 (reset,clk,n3,Q2);
    DFlipFlop flop4 (reset,clk,n4,Q3);
    
 
    
endmodule