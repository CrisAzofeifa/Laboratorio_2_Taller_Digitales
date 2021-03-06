-- Deco BCD
library IEEE;
use IEEE.std_logic_1164.all;

entity decoBCD is
    port (
		  entradaBCD : in std_logic_vector (3 downto 0);
        salidaBCD : out std_logic_vector (4 downto 0)  
    );
end entity;

architecture arch of decoBCD is
begin


    process (entradaBCD)
        variable auxVectOut : std_logic_vector (4 downto 0);
        variable auxVectIn : std_logic_vector (3 downto 0);
    begin

        auxVectIn := entradaBCD;

        if auxVectIn = "0000" then auxVectOut := "00000";    -- 0
        elsif auxVectIn = "0001" then auxVectOut := "00001"; -- 1
        elsif auxVectIn = "0010" then auxVectOut := "00010"; -- 2
        elsif auxVectIn = "0011" then auxVectOut := "00011"; -- 3
        elsif auxVectIn = "0100" then auxVectOut := "00100"; -- 4
        elsif auxVectIn = "0101" then auxVectOut := "00101"; -- 5
        elsif auxVectIn = "0110" then auxVectOut := "00110"; -- 6
        elsif auxVectIn = "0111" then auxVectOut := "00111"; -- 7
        elsif auxVectIn = "1000" then auxVectOut := "01000"; -- 8
        elsif auxVectIn = "1001" then auxVectOut := "01001"; -- 9
		  elsif auxVectIn = "1010" then auxVectOut := "10000"; -- 10
        elsif auxVectIn = "1011" then auxVectOut := "10001"; -- 11
        elsif auxVectIn = "1100" then auxVectOut := "10010"; -- 12
        elsif auxVectIn = "1101" then auxVectOut := "10011"; -- 13
        elsif auxVectIn = "1110" then auxVectOut := "10100"; -- 14
        elsif auxVectIn = "1111" then auxVectOut := "10101"; -- 15	
        else auxVectOut := "00000";
        end if;

		  salidaBCD <= auxVectOut;

    end process;

end architecture;