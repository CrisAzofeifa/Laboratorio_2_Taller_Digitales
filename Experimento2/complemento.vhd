library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

-- Complemento A2

entity complemento is
	port(resta: in std_logic_vector(4 downto 0);
			restaComp: out std_logic_vector(4 downto 0));
end entity;



architecture arch of complemento is	
	
		signal borrowOut : std_logic;
		signal restaAux : std_logic_vector (3 downto 0);
		signal restaAux1 : std_logic_vector (4 downto 0);
    begin process (resta)

    begin
	 
        borrowOut <= resta(4);
		  restaAux1 <= resta;

        if (borrowOut = '1') then 
		  -- Complemento A2
		  restaAux <= not(restaAux1(3)) & not(restaAux1(2)) & not(restaAux1(1)) & not(restaAux1(0));
		  restaAux <= restaAux + 1;
		  restaAux1 <= borrowOut & restaAux; 
        end if;

        restaComp <= restaAux1;

    end process;	
	
end architecture;