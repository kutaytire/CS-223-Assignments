`timescale 1ns / 1ps




module TestBench( );

 logic clk,reset, SA, SB;
 logic [2:0] LA, LB;
 LightSystem dut(clk, reset, SA, SB, LA, LB);
 
 always
	begin
	clk <= 1; #5;
	clk <= 0; #5;
 end

 initial begin

 reset= 0;

 SA =0; SB =0; #20;
 SB=1; #20;
 SA=1; SB=0; #20;
 SB=1; #20;

 reset = 1;
 SA =0; SB =0; #20;
 SB=1; #20;
 SA=1; SB=0; #20;
 SB=1; #20;
 end

 
endmodule
