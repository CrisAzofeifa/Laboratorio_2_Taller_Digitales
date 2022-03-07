module ();
	
	logic A,B,C,D,D4, D3, D2, D1, D0;
	
	decoderBinaryToBCD modulo(A, B, C,  D, D4, D3, D2, D1, D0);
	
	initial begin
	A = 0;
	B = 0;
	C = 0;
	D = 0;
	
	#5
	A = 0;
	B = 0;
	C = 0;
	D = 1;

	#5
	A = 0;
	B = 0;
	C = 1;
	D = 0;
	
	
	#5
	A = 0;
	B = 0;
	C = 1;
	D = 1;
	
	#5
	A = 0;
	B = 1;
	C = 0;
	D = 0;
	
	#5
	A = 0;
	B = 1;
	C = 0;
	D = 1;
	
	#5
	A = 0;
	B = 1;
	C = 1;
	D = 0;
	
	#5
	A = 0;
	B = 1;
	C = 1;
	D = 1;
	
	#5
	A = 1;
	B = 0;
	C = 0;
	D = 0;
	
	#5
	A = 1;
	B = 0;
	C = 0;
	D = 1;
	
	#5
	A = 1;
	B = 0;
	C = 1;
	D = 0;
	
	#5
	A = 1;
	B = 0;
	C = 1;
	D = 1;
	
	#5
	A = 1;
	B = 1;
	C = 0;
	D = 0;
	
	#5
	A = 1;
	B = 1;
	C = 0;
	D = 1;
	
	#5
	A = 1;
	B = 1;
	C = 1;
	D = 0;
	
	#5
	A = 1;
	B = 1;
	C = 1;
	D = 1;
	#5;
	end
	

endmodule