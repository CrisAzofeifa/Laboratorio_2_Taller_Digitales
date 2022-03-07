module Deco(input logic A,B,C,D,E,
				output logic [0:6] hex);

		assign hex[0] = (~A & ~C & E ) | ( ~B & C & D & E ) | ( ~A & B & ~C & ~D ) | ( A & ~B & C & ~D & ~E ) | ( A & B & C & ~D & E);
		assign hex[1] = (~A & C & ~D ) | ( A & ~B & ~C ) | ( A & ~C & ~D ) | ( ~A & ~B & ~D & E ) | ( ~A & ~B & D & ~E ) | ( ~A & B & ~C & ~E ) | ( ~A & B & ~C & D ) | ( A & B & C & D & ~E);
		assign hex[2] = (~A & C & ~D ) | ( ~A & ~C & D & ~E ) | ( ~B & C & ~D & E ) | ( ~A & B & ~C & ~E ) | ( ~A & B & D & E ) | ( A & ~B & ~C & ~D ) | ( A & ~B & ~C & E ) | ( A & B & C & D);
		assign hex[3] = (~A & ~C & ~D & ~E ) | ( ~A & ~B & C & E ) | ( ~A & C & D & E ) | ( ~B & C & D & E ) | ( A & ~B & C & ~D & ~E ) | ( A & B & ~C & D & ~E);
		assign hex[4] = (A & ~B & D & ~E ) | ( A & C & ~D & ~E ) | ( A & ~B & C & D ) | ( A & B & ~C & ~E ) | ( ~A & B & ~C & ~D & E);
		assign hex[5] = (A & ~B & C & ~D ) | ( A & ~B & C & ~E ) | ( ~A & ~B & ~C & D & E ) | ( ~A & B & ~C & ~D & E ) | ( A & B & ~C & D & ~E ) | ( A & B & C & D & E);
		assign hex[6] = (~A & B & ~C & ~D ) | ( ~A & B & ~C & E ) | ( ~A & ~B & ~C & D & ~E ) | ( ~A & B & C & D & ~E ) | ( A & ~B & C & ~D & ~E ) | ( A & B & ~C & D & ~E ) | ( A & B & C & ~D & E);

endmodule
