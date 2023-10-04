LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX2_1_3bits is 
	port
	(
	A : in std_logic_vector(2 downto 0);
	B : in std_logic_vector(2 downto 0);
	S : in std_logic;
		
	R : out std_logic_vector(2 downto 0)
	);
end MUX2_1_3bits;

architecture structural of MUX2_1_3bits is begin
	R(0) <= (A(0) AND S) OR (B(0) AND NOT(S));
	R(1) <= (A(1) AND S) OR (B(1) AND NOT(S));
	R(2) <= (A(2) AND S) OR (B(2) AND NOT(S));
end structural; 