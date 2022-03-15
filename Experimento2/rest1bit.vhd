library IEEE;
use IEEE.std_logic_1164.all;

-- Restador completo de 1 std_logic con borrow de entrada y salida

entity rest1std_logic is
	port(Ai,Bi,Bin: in std_logic;
			S,Bout: out std_logic);
end entity;

architecture structural of rest1std_logic is
	signal w1,w2,w3,w4: std_logic;
	
	begin
		w1 <= Ai xor Bi;
		S <= W1 xor Bin;
		-- Borrow de salida
		w2 <= not(Ai) and Bi;
		w3 <= Bin and not(Ai);
		w4 <= Bin and Bi;
		Bout <= w2 or w3 or w4;		
	
end architecture;