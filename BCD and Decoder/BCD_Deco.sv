module BCD_Deco(input logic A,B,C,D,E,F,
			output logic G,H,I,J,K,L,M);
			
		assign G = (A & B) | (A & C);
		assign H = (~A & B & D) | (~A & B & C) | (B & C & D) | (A & ~B & ~C);
		assign I = (A & ~B & ~C) | (A & ~C & E) | (A & ~C & D) | (~A & ~B & C & E) | (~A & ~B & C & D) | (~A & C & D & E) | (~A & B & ~C & ~D) | (A & B & C & ~D);
		assign J = (~A & ~B & C & ~D & ~E) | (~A & B & ~C & ~D & E) | (~A & B & C & D & ~E) | (A & ~B & ~C & D & E) | (A & B & ~C & ~D & ~E) | (A & B & C & ~D & E);
		assign K = (~A & ~B & ~C & D) | (~B & C & D & E) | (~A & B & ~D & ~E) | (~A & B & C & ~D) | (B & C & ~D & ~E) | (A & ~B & D & ~E) | (A & ~B & ~C & ~D & E) | (A & B & ~C & D & E);
		assign L = (~A & ~B & ~C & E) | (~A & ~C & D & E) | (A & ~B & ~C & ~E) | (A & ~C & D & ~E) | (A & ~B & C & E) | (A & C & D & E) | (~A & ~B & C & D & ~E) | (~A & B & ~C & ~D & ~E) | (~A & B & C & ~D & E) | (A & B & C & ~D & ~E);
		assign M = F;
		
endmodule