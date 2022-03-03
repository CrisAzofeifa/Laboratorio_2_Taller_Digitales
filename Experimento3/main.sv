module main(input logic clock, reset, output logic [0:6] hex1, hex2);
	
	reg [5:0] count;
	
	CounterNBits counter5(clock, reset, count);
	BCD_Deco bcd_deco(count[5], count[4], count[3], count[2], count[1], count[0], G, H, I, J, K, L, M);
	
	BCD_to_Deco BCDToDeco1(J,K,L,M, 
                    E1,F1,G1,H1,I1);

    BCD_to_Deco BCDToDeco2(0,G,H,I, 
                    E2,F2,G2,H2,I2);

    Deco_7_seg Deco_7_seg1(E1,F1,G1,H1,I1, hex1);

    Deco_7_seg Deco_7_seg2(E2,F2,G2,H2,I2, hex2);
	
endmodule