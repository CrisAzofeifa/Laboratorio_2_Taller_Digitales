module TestBenchCounter6Bits;
	parameter N = 6;
	logic clock, reset;
	
	logic [N - 1 : 0] count;
	
	CounterNBits counterNBits6(clock, reset, count);
	
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
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 16) else $error("clock(16) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 17) else $error("clock(17) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 18) else $error("clock(18) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 19) else $error("clock(19) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 20) else $error("clock(20) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 21) else $error("clock(21) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 22) else $error("clock(22) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 23) else $error("clock(23) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 24) else $error("clock(24) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 25) else $error("clock(25) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 26) else $error("clock(26) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 27) else $error("clock(27) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 28) else $error("clock(28) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 29) else $error("clock(29) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 30) else $error("clock(30) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 31) else $error("clock(31) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 32) else $error("clock(32) failed");
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 33) else $error("clock(33) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 34) else $error("clock(34) failed");
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 35) else $error("clock(35) failed");
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 36) else $error("clock(36) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 37) else $error("clock(37) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 38) else $error("clock(38) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 39) else $error("clock(39) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 40) else $error("clock(40) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 41) else $error("clock(41) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 42) else $error("clock(42) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 43) else $error("clock(43) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 44) else $error("clock(44) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 45) else $error("clock(45) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 46) else $error("clock(46) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 47) else $error("clock(47) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 48) else $error("clock(48) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 49) else $error("clock(49) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 50) else $error("clock(50) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 51) else $error("clock(51) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 52) else $error("clock(52) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 53) else $error("clock(53) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 54) else $error("clock(54) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 55) else $error("clock(55) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 56) else $error("clock(56) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 57) else $error("clock(57) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 58) else $error("clock(58) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 59) else $error("clock(59) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 60) else $error("clock(60) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 61) else $error("clock(61) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 62) else $error("clock(62) failed");
		
		
		clock = 0;
		reset = 0;
		#40;
		
		clock = 1;
		reset = 0;
		#40;
		assert(count == 63) else $error("clock(63) failed");
		
		
		clock = 0;
		reset = 1;
		#40;
		assert(count == 0) else $error("reset failed");
		
		
	end
	
endmodule