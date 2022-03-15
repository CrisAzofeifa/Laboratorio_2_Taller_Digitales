-- Restador completo de 1 std_logic
library IEEE;
use IEEE.std_logic_1164.all;

entity rest1std_logic_tb is
end entity;

architecture arch of rest1std_logic_tb is

    component rest1std_logic is
		port(Ai,Bi,Bin: in std_logic;
				S,Bout: out std_logic);
    end component;

    signal testVectEntrada : std_logic_vector (2 downto 0);
    signal testRestOut, testBorrowOut : std_logic;

begin

    unit_under_test: rest1std_logic port map (
        S => testRestOut,
        Bout => testBorrowOut,
        Bin => testVectEntrada(2),
        Bi => testVectEntrada(1),
        Ai => testVectEntrada(0)
    );

    generate_signals : process
    begin
        testVectEntrada <= "000"; wait for 10 ns;
        testVectEntrada <= "001"; wait for 10 ns;
        testVectEntrada <= "010"; wait for 10 ns;
        testVectEntrada <= "011"; wait for 10 ns;
        testVectEntrada <= "100"; wait for 10 ns;
        testVectEntrada <= "101"; wait for 10 ns;
        testVectEntrada <= "110"; wait for 10 ns;
        testVectEntrada <= "111"; wait for 10 ns;
        wait;
    end process;

end architecture;