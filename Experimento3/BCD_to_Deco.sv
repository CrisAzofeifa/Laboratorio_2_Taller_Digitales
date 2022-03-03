module BCD_to_Deco(input logic A,B,C,D,
						output logic E,F,G,H,I);

	assign E = (~A & D) | (~A & C) | (~A & B) | (A & ~B & ~C);
	assign F = (~B & ~C & ~D) | (~A & B & D) | (~A & B & C) | (A & ~B & ~C);
	assign G = (~A & ~B) | (~A & ~C & ~D) | (~B & ~C & D);
	assign H = (~C & ~D) | (C & D) | (A & ~D) | (A & B);
	assign I = (C & ~D) | (B & ~D) | (A & ~D) |(A & C) | (A & B);

endmodule