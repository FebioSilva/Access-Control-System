library ieee;
use ieee.std_logic_1164.all;

entity MUX4_tb is
	end MUX4_tb;
	
architecture behavioral of MUX4_tb is

component MUX4 is 
	port
	(
	A,B,C,D : in std_logic;
	S : in std_logic_vector(1 downto 0);
		
	R : out std_logic
	);
	
end component MUX4;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal A_tb,B_tb,C_tb, D_tb,R_tb : std_logic;
signal S_tb : std_logic_vector(1 downto 0);
begin

UUT: MUX4 port map(A => A_tb,
						B => B_tb,
						C => C_tb,
						D => D_tb,
						R => R_tb,
						S => S_tb
						);

stimulus: process
begin
	
	A_tb <= '1';
	B_tb <= '0';
	C_tb <= '1';
	D_tb <= '1';
	S_tb <= "00";
	wait for MCLK_PERIOD;
	
	S_tb <= "01";
	wait for MCLK_PERIOD;
	
	S_tb <= "10";
	wait for MCLK_PERIOD;
	
	S_tb <= "11";
	wait for MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		