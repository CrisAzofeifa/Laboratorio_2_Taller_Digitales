module deco_TB();
	
	logic A,B,C,D,E;
	logic [0:6] H;
	Deco deco(A, B, C, D, E, H);
	
	initial begin
   A = 0;
   B = 0;
   C = 0;
   D = 0;
   E = 0; 
   #5

   A = 0;
   B = 0;
   C = 0;
   D = 0;
   E = 1; 
   #5

   A = 0;
   B = 0;
   C = 0;
   D = 1;
   E = 0; 
   #5

   A = 0;
   B = 0;
   C = 0;
   D = 1;
   E = 1; 
   #5

   A = 0;
   B = 0;
   C = 1;
   D = 0;
   E = 0; 
   #5

   A = 0;
   B = 0;
   C = 1;
   D = 0;
   E = 1; 
   #5

   A = 0;
   B = 0;
   C = 1;
   D = 1;
   E = 0; 
   #5

   A = 0;
   B = 0;
   C = 1;
   D = 1;
   E = 1; 
   #5

   A = 0;
   B = 1;
   C = 0;
   D = 0;
   E = 0; 
   #5

   A = 0;
   B = 1;
   C = 0;
   D = 0;
   E = 1; 
   #5

   A = 0;
   B = 1;
   C = 0;
   D = 1;
   E = 0; 
   #5

   A = 0;
   B = 1;
   C = 0;
   D = 1;
   E = 1; 
   #5

   A = 0;
   B = 1;
   C = 1;
   D = 0;
   E = 0; 
   #5

   A = 0;
   B = 1;
   C = 1;
   D = 0;
   E = 1; 
   #5

   A = 0;
   B = 1;
   C = 1;
   D = 1;
   E = 0; 
   #5

   A = 0;
   B = 1;
   C = 1;
   D = 1;
   E = 1; 
   #5

   A = 1;
   B = 0;
   C = 0;
   D = 0;
   E = 0; 
   #5

   A = 1;
   B = 0;
   C = 0;
   D = 0;
   E = 1; 
   #5

   A = 1;
   B = 0;
   C = 0;
   D = 1;
   E = 0; 
   #5

   A = 1;
   B = 0;
   C = 0;
   D = 1;
   E = 1; 
   #5

   A = 1;
   B = 0;
   C = 1;
   D = 0;
   E = 0; 
   #5

   A = 1;
   B = 0;
   C = 1;
   D = 0;
   E = 1; 
   #5

   A = 1;
   B = 0;
   C = 1;
   D = 1;
   E = 0; 
   #5

   A = 1;
   B = 0;
   C = 1;
   D = 1;
   E = 1; 
   #5

   A = 1;
   B = 1;
   C = 0;
   D = 0;
   E = 0; 
   #5

   A = 1;
   B = 1;
   C = 0;
   D = 0;
   E = 1; 
   #5

   A = 1;
   B = 1;
   C = 0;
   D = 1;
   E = 0; 
   #5

   A = 1;
   B = 1;
   C = 0;
   D = 1;
   E = 1; 
   #5

   A = 1;
   B = 1;
   C = 1;
   D = 0;
   E = 0; 
   #5

   A = 1;
   B = 1;
   C = 1;
   D = 0;
   E = 1; 
   #5

   A = 1;
   B = 1;
   C = 1;
   D = 1;
   E = 0; 
   #5

   A = 1;
   B = 1;
   C = 1;
   D = 1;
   E = 1; 
   #5;
	end
	

endmodule