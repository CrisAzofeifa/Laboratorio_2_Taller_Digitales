module main(input logic A,B,C,D,E,F,
				output logic [0:6] hex1, hex2);
	
	BCD_Deco BCDeco(A,B,C,D,E,F, 
					G,H,I,J,K,L,M);
	
	BCD_to_Deco BCDToDeco1(J,K,L,M, 
					E1,F1,G1,H1,I1);

	BCD_to_Deco BCDToDeco2(0,G,H,I, 
					E2,F2,G2,H2,I2);

	Deco_7_seg Deco_7_seg1(E1,F1,G1,H1,I1, hex1);

	Deco_7_seg Deco_7_seg2(E2,F2,G2,H2,I2, hex2);

		

endmodule
