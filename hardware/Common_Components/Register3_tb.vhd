library ieee;
use ieee.std_logic_1164.all;

entity Register3_tb is
	end Register3_tb;
	
architecture behavioral of Register3_tb is

component Register3 is
	port
	(
	clk: in std_logic;
	reset: in std_logic;
	en: in std_logic;
	d : in std_logic_vector(2 downto 0);
	
	q : out std_logic_vector(2 downto 0)
	);
end component Register3;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal en_tb,clk_tb,reset_tb : std_logic;
signal d_tb, q_tb : std_logic_vector(3 downto 0);
begin

UUT: Register3 port map(en => en_tb,
								clk => clk_tb,
								reset => reset_tb,
								d => d_tb,
								q => q_tb
							 );
clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin
	
	en_tb <= '0';
	reset_tb <= '1';
	wait for MCLK_PERIOD;
	
	d_tb <= "001";
	reset_tb <= '0';
	wait for MCLK_PERIOD;
	
	en_tb <='1';
	wait for MCLK_PERIOD;
	
	reset_tb <='0';
	wait for MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		