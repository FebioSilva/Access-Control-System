library ieee;
use ieee.std_logic_1164.all;

entity Shift_Register_tb is
	end Shift_Register_tb;
	
architecture behavioral of Shift_Register_tb is

component Shift_Register is
  port(
	data : in std_logic;
	clk : in std_logic;
	enable : in std_logic;
	Rst : in std_logic;
	
	D : out std_logic_vector(4 downto 0)
	);
end component Shift_Register;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal data_tb, enable_tb,clk_tb,Rst_tb : std_logic;
signal D_tb : std_logic_vector(4 downto 0);

begin
UUT: Shift_Register port map(data => data_tb,
								 enable => enable_tb,
                         clk => clk_tb,
                         Rst => Rst_tb,
                         D => D_tb
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
		data_tb <= '1';
		enable_tb <= '0';
		Rst_tb <= '1';
		wait for MCLK_PERIOD;
	
		enable_tb <= '1';
		Rst_tb <= '0';
		wait for 5*MCLK_PERIOD;

		enable_tb <= '0';
		wait for MCLK_PERIOD;
	
		wait;
end process;
end behavioral;

		