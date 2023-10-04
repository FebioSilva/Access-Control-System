LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX4 is 
	port
	(
	A,B,C,D : in std_logic;
	S : in std_logic_vector(1 downto 0);
		
	R : out std_logic
	);
	
end MUX4;

architecture structural of MUX4 is begin
	R <= (NOT(S(0)) AND NOT(S(1)) AND A) OR (S(0) AND NOT(S(1)) AND B) OR (NOT(S(0)) AND S(1) AND C) OR (S(0) AND S(1) AND D);
end structural; 

