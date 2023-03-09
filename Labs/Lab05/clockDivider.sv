`timescale 1ns / 1ps


module clockDivider( input clkIn, input reset, output newClock ); 
	logic[27:0] counter = {28{1'b0}};
	localparam param= 150000000; 
	always@(posedge clkIn) 
	begin 
		if(reset == 1||counter == param-1) 
		counter <= {28{1'b0}};
	else 
		counter <= counter + 1;
	end
	assign newClock = {counter == param-1}; 
endmodule