library ieee;
use ieee.std_logic_1164.all;

entity HA is
	port
	(
	A : in std_logic;
	B : in std_logic;
	S : out std_logic;
	Co : out std_logic
	);
end HA;

architecture structural of HA is
begin

S <= A xor B;
Co <= A and B; 

end structural;