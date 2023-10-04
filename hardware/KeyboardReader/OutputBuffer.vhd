library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is
	port(
	D: in std_logic_vector(3 downto 0);
	Load, ACK, clk, rst: in std_logic;
	
	Q: out std_logic_vector(3 downto 0);
	OBfree, Dval: out std_logic
	);
end OutputBuffer;

architecture structural of OutputBuffer is
component BufferControl is
	port(
	Load, ACK, clk, rst: in std_logic;
	
	Wreg, OBfree, Dval: out std_logic
	);
end component BufferControl;

component Register4 is
	port
	(
	clk: in std_logic;
	reset: in std_logic;
	en: in std_logic;
	d : in std_logic_vector(3 downto 0);
	q : out std_logic_vector(3 downto 0)
	);
end component Register4;

signal Wreg_s:std_logic;
begin

BC1: BufferControl port map(Load => Load, ACK => ACK, Wreg => Wreg_s, OBfree => OBfree, 
									 Dval => Dval, clk => clk, rst => rst
									 );
									 
Register1: Register4 port map(clk => Wreg_s, reset => rst, en => '1', d => D, Q=> Q);

end structural;