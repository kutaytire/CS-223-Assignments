`timescale 1ns / 1ps

module slowClock (input clk_in, output clk);

	reg[25: 0] count = 0;
	reg clk;
	always @ (posedge clk_in)
	begin
		count <= count + 1;
		
		if (count == 20_000_000)
		begin
			count <= 0;
			clk = ~clk;
		 end
	end
endmodule