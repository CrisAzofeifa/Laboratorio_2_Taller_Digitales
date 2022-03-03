module TestBenchCounter4Bits;
	parameter N = 4;
	logic clock, reset;
	
	logic [N - 1 : 0] count;

	CounterNBits counterNBits4(clock, reset, count);

	
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
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 4) else $error("clock(4) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 5) else $error("clock(5) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 6) else $error("clock(6) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 7) else $error("clock(7) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 8) else $error("clock(8) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 9) else $error("clock(9) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 10) else $error("clock(10) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 11) else $error("clock(11) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 12) else $error("clock(12) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 13) else $error("clock(13) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 14) else $error("clock(14) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 15) else $error("clock(15) failed");
		
		
		clock = 0;
		reset = 1;
		#40;
		assert(count == 0) else $error("reset failed");
		
		
	end
	
endmodule