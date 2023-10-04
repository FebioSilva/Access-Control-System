library ieee;
use ieee.std_logic_1164.all;

entity DEC_tb is
	end DEC_tb;
	
architecture behavioral of DEC_tb is

component DEC is
	port(
	T : in std_logic_vector(1 downto 0);
	Y0 : out std_logic;
	Y1 : out std_logic;
	Y2 : out std_logic
	);
end component DEC;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal Y0_tb,Y1_tb,Y2_tb : std_logic;
signal T_tb : std_logic_vector(1 downto 0);
begin

UUT: DEC port map(Y0 => Y0_tb,
						Y1 => Y1_tb,
						Y2 => Y2_tb,
						T => T_tb
						);

stimulus: process
begin
	
	T_tb <= "00";
	wait for MCLK_PERIOD;
	
	T_tb <= "01";
	wait for MCLK_PERIOD;
	
	T_tb <= "10";
	wait for MCLK_PERIOD;
	
	
	wait;
end process;
end behavioral;

		