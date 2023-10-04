LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Register4 is
	port
	(
	clk: in std_logic;
	reset: in std_logic;
	en: in std_logic;
	d : in std_logic_vector(3 downto 0);
	q : out std_logic_vector(3 downto 0)
	);
	end Register4;

architecture structural of Register4 is
component FFD is
	port
	(
	CLK : in std_logic;
	RESET : in STD_LOGIC;
	SET : in std_logic;
	D : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	Q : out std_logic
	);
	end component;
	
	
begin
U0: FFD port map(CLK => clk, RESET => reset, SET => '0', D => d(0), EN => en, Q => q(0));
U1: FFD port map(CLK => clk, RESET => reset, SET => '0', D => d(1), EN => en, Q => q(1));
U2: FFD port map(CLK => clk, RESET => reset, SET => '0', D => d(2), EN => en, Q => q(2));
U3: FFD port map(CLK => clk, RESET => reset, SET => '0', D => d(3), EN => en, Q => q(3));
end structural;
