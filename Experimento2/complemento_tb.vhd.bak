-- Test Bench de complemento
library IEEE;
use IEEE.std_logic_1164.all;

entity complemento_tb is
end entity;

architecture arch of complemento_tb is

    component complemento is
		port(resta: in std_logic_vector(4 downto 0);
				restaComp: out std_logic_vector(4 downto 0));
    end component;

    signal testVectEntrada : std_logic_vector (4 downto 0);
    signal testVectSalida : std_logic_vector (4 downto 0);

begin

    unit_under_test: complemento port map (
        resta => testVectEntrada,
        restaComp => testVectSalida
    );

    generate_signals : process
    begin
        testVectEntrada <= "01000"; wait for 10 ns;
        testVectEntrada <= "11001"; wait for 10 ns;
        testVectEntrada <= "01110"; wait for 10 ns;
        wait;
    end process;

end architecture;