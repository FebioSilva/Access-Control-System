library ieee;
use ieee.std_logic_1164.all;

entity CounterUp_tb is
	end CounterUp_tb;
	
architecture behavioral of CounterUp_tb is

component CounterUP is
	port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(3 downto 0)
	);
end component CounterUP;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal CE_tb,CLK_tb,Rst_tb : std_logic;
signal Q_tb : std_logic_vector(3 downto 0);
begin

UUT: CounterUP port map(CE => CE_tb,
							 CLK => CLK_tb, 
							 Rst => Rst_tb, 
							 Q => Q_tb
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
	CE_tb <= '0';
	Rst_tb <= '1';
	
	wait for MCLK_PERIOD;
	
	Rst_tb <='0';
	CE_tb <= '1';
	wait for 12*MCLK_PERIOD;
	
	Rst_tb <='1';
	wait for MCLK_PERIOD;
	
	Rst_tb <='0';
	wait for 4*MCLK_PERIOD;
	
	CE_tb <='0';
	wait for MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		