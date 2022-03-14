-- BCD a 7 Segmentos
library IEEE;
use IEEE.std_logic_1164.all;

entity BCD7seg is
    port (
	     entrada : in bit_vector (3 downto 0);
        salida : out bit_vector (6 downto 0)
    );
end entity;

architecture arch of BCD7seg is
begin


    process (entrada)
        variable auxVectOut : bit_vector (6 downto 0);
        variable auxVectIn : bit_vector (3 downto 0);
    begin

        auxVectIn := entrada;

        if auxVectIn = "0000" then auxVectOut := "0000001";    -- 0
        elsif auxVectIn = "0001" then auxVectOut := "1001111"; -- 1
        elsif auxVectIn = "0010" then auxVectOut := "0010010"; -- 2
        elsif auxVectIn = "0011" then auxVectOut := "0000110"; -- 3
        elsif auxVectIn = "0100" then auxVectOut := "1001100"; -- 4
        elsif auxVectIn = "0101" then auxVectOut := "0100100"; -- 5
        elsif auxVectIn = "0110" then auxVectOut := "0100000"; -- 6
        elsif auxVectIn = "0111" then auxVectOut := "0001111"; -- 7
        elsif auxVectIn = "1000" then auxVectOut := "0000000"; -- 8
        elsif auxVectIn = "1001" then auxVectOut := "0000100"; -- 9	
		  elsif auxVectIn = "1010" then auxVectOut := "1111110"; -- 10	(menos)
		  elsif auxVectIn = "1011" then auxVectOut := "1111111"; -- 11 (positivo)
        else auxVectOut := "1111111";
        end if;

        salida <= auxVectOut;

    end process;

end architecture;