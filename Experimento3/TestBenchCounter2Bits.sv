module TestBenchCounter2Bits;
	parameter N = 2;
	logic clock, reset;
	
	logic [N - 1 : 0] count;
	
	CounterNBits counterNBits2(clock, reset, count);
	
	initial begin
		clock = 0;
		reset = 1;
		#40;
		
		clock = 0;
		reset = 0;
		#40;
		assert(count == 0) else $error("reset failed");
		

		clock = 1;
		reset = 0;
		#40;
		assert(count == 1) else $error("clock(1) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 2) else $error("clock(2) failed");
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 3) else $error("clock(3) failed");
		
			
		clock = 0;
		reset = 1;
		#40;
		assert(count == 0) else $error("reset failed");

		
	end
	
endmodule