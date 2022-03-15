-- Top Level
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
 
entity main is
	port(Ai, Bi: in std_logic_vector(3 downto 0);--Entradas 4 std_logics
			Bentrada : in std_logic; -- Borrow de entrada
			Display1, Display2, Display3: out std_logic_vector(6 downto 0));-- Salida 14 std_logics, 3 Displays de 7 segmentos (Unidades, decenas y borrow)
end entity;


architecture structural of main is


	component rest4bit is
	port(A, B: in std_logic_vector(3 downto 0);-- 4 entradas
			Bin: in std_logic;
			Sf: out std_logic_vector(4 downto 0));-- 5 salidas (1 borrow y 4 de resultado)
	end component rest4bit;
	
	component complemento is
		port(resta: in std_logic_vector(4 downto 0);
				restaComp: out std_logic_vector(4 downto 0));
	end component complemento;
	
	component decoBCD is
    port (
		  entradaBCD : in std_logic_vector (3 downto 0);
        salidaBCD : out std_logic_vector (4 downto 0)  
    );
	end component decoBCD;
	
	component BCD7seg is
    port (
	     entrada : in std_logic_vector (3 downto 0);
        salida : out std_logic_vector (6 downto 0)
    );
	end component BCD7seg;
	
	Signal Sfaux: std_logic_vector(4 downto 0);-- Señal de salida auxiliar
	Signal Srcomp: std_logic_vector(4 downto 0); --Salida del restador
	Signal Sr: std_logic_vector(4 downto 0); --Salida del restador
	Signal auxVectOutDisplay : std_logic_vector (3 downto 0);
	Signal auxVectOut : std_logic_vector (4 downto 0);
	Signal auxVectUnidades : std_logic_vector (3 downto 0);
	Signal auxVectDecenas : std_logic_vector (3 downto 0);

	begin
	 	 
	 	--Sfauxmap: rest4bit
		--port map(A,B,Bin,sf=>sfaux);
	
		rest4: rest4bit
			port map(A=>Ai,B=>Bi,Bin=>Bentrada,Sf=>Srcomp);

		compA2: complemento
			port map(resta=>Srcomp,restaComp=>Sr);			
			
		decoBCDD: decoBCD
			port map(entradaBCD=>Sr(3) & Sr(2) & Sr(1) & Sr(0),salidaBCD=>auxVectOut);
			
		auxVectUnidades <= auxVectOut(3) & auxVectOut(2) & auxVectOut(1) & auxVectOut(0);
		auxVectDecenas <= "000" & auxVectOut(4);
		
		-- (F, G, H, I)
		BCD7seg1: BCD7seg
			port map(entrada=>auxVectUnidades,salida=>Display1);
		-- (0, 0, 0, E)
		BCD7seg2: BCD7seg
			port map(entrada=>auxVectDecenas,salida=>Display2);
		-- (0, 0, 0, BorrowOut)
		BCD7seg3: BCD7seg
			port map(entrada=>auxVectOutDisplay,salida=>Display3);
		

	 negPos: process (Sr) is

    begin
			-- negativo
        if (Sr(4) = '1') then auxVectOutDisplay <= "1010";
			--positivo
        else auxVectOutDisplay <= "1011";
        end if;
		  
	 end process negPos;
	
	
end structural;