module Deco_7_seg(input logic A,B,C,D,E,
				output logic [0:6] hex);

		assign hex[0] = (~B & C & D & E) | (~A & B & ~C & ~D) | (~A & B & ~C & E) | (A & ~B & C & ~D & ~E) | (A & B & C & ~D & E);
		assign hex[1] = (~B & ~C & E) | (~A & ~C & D) | (~B & ~C & D) | (~A & C & ~D) | (A & ~C & ~D) | (~A & ~B & D & ~E) | (~A & B & ~C & ~E) | (A & B & C & D);
		assign hex[2] = (A & ~B & ~C) | (~B & ~D & E) | (~A & ~C & D) | (~A & B & ~D & ~E) | (~A & ~B & C & ~E) | (A & B & C & D) | (~A & B & C & E); 
		assign hex[3] = (~A & ~C & ~D & ~E) | (~A & ~B & C & E) | (~A & C & D & E) | (~B & C & D & E) | (A & ~B & C & ~D & ~E) | (A & B & ~C & D & ~E);
		assign hex[4] = (A & C & ~D & ~E) | (A & ~B & C & D) | (A & B & ~C & ~E) | (~A & B & ~C & ~D & E);
		assign hex[5] = (A & ~B & C & ~D) | (A & ~B & C & ~E) | (~A & B & ~C & ~D & E) | (A & B & ~C & D & ~E);
		assign hex[6] =  (~A & B & ~C & ~D) | (~A & B & ~C & E) | (~A & ~B & ~C & D & ~E) | (~A & B & C & D & ~E) | (A & ~B & C & ~D & ~E) | (A & B & ~C & D & ~E) | (A & B & C & ~D & E);
		

endmodule