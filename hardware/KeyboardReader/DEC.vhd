library ieee;
use ieee.std_logic_1164.all;

entity DEC is
	port(
	T : in std_logic_vector(1 downto 0);
	Y0 : out std_logic;
	Y1 : out std_logic;
	Y2 : out std_logic
	);
	end DEC;
	
architecture structural of DEC is begin
	Y0 <= NOT(T(0)) AND NOT(T(1));
	Y1 <= T(0) AND NOT(T(1));
	Y2 <= NOT(T(0)) AND T(1);
	end structural;