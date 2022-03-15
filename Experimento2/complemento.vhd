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
	 signal restaAux : std_logic_vector(4 downto 0);
    begin process (resta, borrowOut, restaAux)

    begin
	 
		  borrowOut <= resta(4);
		  restaAux <= resta;
		  
        if (borrowOut = '1') then 
		  restaAux <= borrowOut & ((not(resta(3)) & not(resta(2)) & not(resta(1)) & not(resta(0))) + 1);
        end if;
		  restaComp <= restaAux;

    end process;	
	
end architecture;