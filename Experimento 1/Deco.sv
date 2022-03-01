module Deco(input logic A,B,C,D,E,
				output logic G,H,I,J,K,L,M);

		assign G = (~B&C&D&E)|(~A&B&~C&~D)|(~A&B&~C&E)|(A&~B&C&~D&~E)|(A&B&C&~D&E);
		assign H = (~B&~C&E)|(~A&~C&D)|(~B&~C&D)|(~A&D&~E)|(~A&C&~D)|(~A&B&~E)|(A&~C&~D)|(A&B&C&D);
		assign I = (~B&~D&E)|(~A&~C&D)|(~A&D&~E)|(~A&C&~D)|(~A&B&~E)|(B&C&D)|(A&~B&~C);
		assign J = (~A&~C&~D&~E)|(~A&~B&C&E)|(~A&C&D&E)|(~B&C&D&E)|(A&~B&C&~D&~E)|(A&B&~C&D&~E);
		assign K = (A&C&~D&~E)|(A&~B&C&D)|(A&B&~C&~E)|(~A&B&~C&~D&E);
		assign L = (A&~B&C&~D)|(A&~B&C&~E)|(~A&B&~C&~D&E)|(A&B&~C&D&~E);
		assign M = (~A&B&~C&~D)|(~A&B&~C&E)|(~A&~B&~C&D&~E)|(A&~B&C&~D&~E)|(A&B&~C&D&~E)|(A&B&C&~D&E);

endmodule