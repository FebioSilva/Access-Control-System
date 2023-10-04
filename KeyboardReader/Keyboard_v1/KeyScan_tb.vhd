library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_tb is
	end KeyScan_tb;
	
architecture behavioral of KeyScan_tb is

component KeyScan is
port(
		Kscan : in std_logic;
		CLK : in std_logic;
		Rst : in std_logic;
		Ln1,Ln2,Ln3,Ln4 : in std_logic;
		Col1,Col2,Col3: out std_logic;
		Kpress : out std_logic;
		K : out std_logic_vector(3 downto 0)
		);
end component KeyScan;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal Kscan_tb,CLK_tb,Rst_tb,Ln1_tb,Ln2_tb,Ln3_tb,Ln4_tb,Col1_tb,Col2_tb,Col3_tb,Kpress_tb : std_logic;
signal K_tb : std_logic_vector(3 downto 0);
begin

UUT: KeyScan port map(Kscan => Kscan_tb, 
							 CLK => CLK_tb, 
							 Rst => Rst_tb, 
							 Ln1 => Ln1_tb,
							 Ln2 => Ln2_tb,
							 Ln3 => Ln3_tb, 
							 Ln4 => Ln4_tb,
							 Col1 => Col1_tb,
							 Col2 => Col2_tb,
							 Col3 => Col3_tb,
							 Kpress => Kpress_tb,
							 K => K_tb
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
	Kscan_tb <= '0';
	Rst_tb <= '1';
	Ln1_tb <='1';
	Ln2_tb <='1';
	Ln3_tb <='1';
	Ln4_tb <='1';
	wait for MCLK_PERIOD;
	
	--Coluna 1
	Rst_tb <='0';
	Kscan_tb <='1';
	Ln1_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln1_tb <='1';
	Ln2_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln2_tb <='1';
	Ln3_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln3_tb <='1';
	Ln4_tb <='0';
	wait for MCLK_PERIOD;
	
	--Coluna 2
	Ln4_tb <='1';
	Ln1_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln1_tb <='1';
	Ln2_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln2_tb <='1';
	Ln3_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln3_tb <='1';
	Ln4_tb <='0';
	wait for MCLK_PERIOD;
	
	--Coluna 3
	Ln4_tb <='1';
	Ln1_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln1_tb <='1';
	Ln2_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln2_tb <='1';
	Ln3_tb <='0';
	wait for MCLK_PERIOD;
	
	Ln3_tb <='1';
	Ln4_tb <='0';
	wait for MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		