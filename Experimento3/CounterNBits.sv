module CounterNBits #(parameter N = 6)
	(input logic clock, reset, output logic [N-1:0] count);
	
	initial begin
		count = 0;
	end
	
	always @(posedge clock or posedge reset)
	begin
		if(reset)
			count = 0;
		else if(((2**N)-1) <= count)
			count = 0;
		else
			count <= count + 1;
	end
	
endmodule