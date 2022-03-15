library IEEE;
use IEEE.std_logic_1164.all;

entity rest4std_logic_tb is
end entity;

architecture arch of rest4std_logic_tb is

    component rest4std_logic is
	port(A,B: in std_logic_vector(3 downto 0);-- 2 entradas de 4 std_logics
			Bin : in std_logic; -- borrow de 1 std_logic
			Sf: out std_logic_vector(4 downto 0));-- salida 5 std_logics (1 borrow y 4 de resultado)
    end component;

    signal Aaux, Baux: std_logic_vector (3 downto 0);
	 signal Resta : std_logic_vector (4 downto 0);
	 signal Binaux : std_logic;

begin

    unit_under_test : rest4std_logic port map (
        Sf => Resta,

        A => Aaux,
        B => Baux,
		  Bin => Binaux
    );

    generate_signals : process
    begin
        Aaux <= "1100"; Baux <= "0001"; Binaux <= '1'; wait for 10 ns;
		  Aaux <= "0100"; Baux <= "1001"; Binaux <= '0'; wait for 10 ns;
		  Aaux <= "1111"; Baux <= "0001"; Binaux <= '0'; wait for 10 ns;
		  Aaux <= "0000"; Baux <= "0001"; Binaux <= '1'; wait for 10 ns;
        wait;
    end process;

end architecture;