-- Restador completo de 4 bits
 
entity rest4bit is
	port(A,B: in bit_vector(3 downto 0);-- 4 entradas 
			Bin : in BIT;
			Sf: out bit_vector(4 downto 0));-- 5 salidas (1 borrow y 4 de resultado)
end entity;


architecture structural of rest4bit is
	Signal Borrow: bit_vector(2 downto 0);-- Borrows
	--Declaración de componentes
	component rest1bit is
		port(Ai,Bi,Bin: in BIT;
				S,Bout: out BIT);
	end component rest1bit;
	
	begin
	--Sf(0),..,sf(3) = resultado de la resta
	--sf(4) = Borrow de salida
		rest0: rest1bit
			port map(Ai=>A(0),Bi=>B(0),Bin=>Bin,S=>Sf(0),Bout=>Borrow(0));
		rest1: rest1bit
			port map(Ai=>A(1),Bi=>B(1),Bin=>Borrow(0),S=>Sf(1),Bout=>Borrow(1));
		rest2: rest1bit
			port map(Ai=>A(2),Bi=>B(2),Bin=>Borrow(1),S=>Sf(2),Bout=>Borrow(2));
		rest3: rest1bit
			port map(Ai=>A(3),Bi=>B(3),Bin=>Borrow(2),S=>Sf(3),Bout=>Sf(4));	
	
end architecture;