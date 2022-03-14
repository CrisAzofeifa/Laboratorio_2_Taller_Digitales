library IEEE;
use IEEE.std_logic_1164.all;

-- Restador completo de 1 bit con borrow de entrada y salida

entity rest1bit is
	port(Ai,Bi,Bin: in BIT;
			S,Bout: out BIT);
end entity;

architecture structural of rest1bit is
	signal w1,w2,w3,w4: BIT;
	
	begin
		w1 <= Ai xor Bi;
		S <= W1 xor Bin;
		-- Borrow de salida
		w2 <= not(Ai) and Bi;
		w3 <= Bin and not(Ai);
		w4 <= Bin and Bi;
		Bout <= w2 or w3 or w4;		
	
end architecture;