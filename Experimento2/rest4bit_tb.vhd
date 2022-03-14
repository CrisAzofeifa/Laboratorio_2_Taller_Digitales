library IEEE;
use IEEE.std_logic_1164.all;

entity rest4bit_tb is
end entity;

architecture arch of rest4bit_tb is

    component rest4bit is
	port(A,B: in bit_vector(3 downto 0);-- 2 entradas de 4 bits
			Bin : in BIT; -- borrow de 1 bit
			Sf: out bit_vector(4 downto 0));-- salida 5 bits (1 borrow y 4 de resultado)
    end component;

    signal Aaux, Baux: bit_vector (3 downto 0);
	 signal Resta : bit_vector (4 downto 0);
	 signal Binaux : BIT;

begin

    unit_under_test : rest4bit port map (
        Sf => Resta,

        A => Aaux,
        B => Baux,
		  Bin => Binaux
    );

    generate_signals : process
    begin
        Aaux <= "1100"; Baux <= "0001"; Binaux <= '1'; wait for 10 ns;
		  Aaux <= "0100"; Baux <= "0001"; Binaux <= '0'; wait for 10 ns;
		  Aaux <= "1111"; Baux <= "0001"; Binaux <= '0'; wait for 10 ns;
		  Aaux <= "0000"; Baux <= "0001"; Binaux <= '1'; wait for 10 ns;
        wait;
    end process;

end architecture;