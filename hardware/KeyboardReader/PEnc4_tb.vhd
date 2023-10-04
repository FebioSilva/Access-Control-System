library ieee;
use ieee.std_logic_1164.all;

entity PEnc4_tb is
	end PEnc4_tb;
	
architecture behavioral of PEnc4_tb is

component PEnc4 is
		port(
			A : in std_logic_vector(3 downto 0);--I
			
			R : out std_logic_vector(1 downto 0);--O
			V : out std_logic--V
			);
end component PEnc4;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal V_tb : std_logic;
signal A_tb: std_logic_vector(3 downto 0);
signal R_tb : std_logic_vector(1 downto 0);
begin

UUT: Penc4 port map(	A => A_tb,
							R => R_tb,
							V => V_tb
						);

stimulus: process
begin
	
	A_tb <= "0001";
	wait for MCLK_PERIOD;
	
	A_tb <= "0010";
	wait for MCLK_PERIOD;
	
	A_tb <= "0100";
	wait for MCLK_PERIOD;
	
	A_tb <= "1000";
	wait for MCLK_PERIOD;
	
	A_tb <= "0000";
	wait for MCLK_PERIOD;
	
	A_tb <= "0011";
	wait for MCLK_PERIOD;
	
	
	wait;
end process;
end behavioral;

		