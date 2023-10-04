library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_v3_tb is
	end KeyScan_v3_tb;
	
architecture behavioral of KeyScan_v3_tb is

component KeyScan_v3 is
port(
		Kscan : in std_logic_vector(1 downto 0);
		CLK : in std_logic;
		Rst : in std_logic;
		Ln1,Ln2,Ln3,Ln4 : in std_logic;
		Col1,Col2,Col3: out std_logic;
		Kpress : out std_logic;
		K : out std_logic_vector(3 downto 0)
		);
end component KeyScan_v3;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal CLK_tb,Rst_tb,Ln1_tb,Ln2_tb,Ln3_tb,Ln4_tb,Col1_tb,Col2_tb,Col3_tb,Kpress_tb : std_logic;
signal K_tb : std_logic_vector(3 downto 0);
signal Kscan_tb :std_logic_vector(1 downto 0);

begin

UUT: KeyScan_v3 port map(Kscan => Kscan_tb, 
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
	Kscan_tb <= "01";
	Rst_tb <= '1';
	Ln1_tb <='1';
	Ln2_tb <='1';
	Ln3_tb <='1';
	Ln4_tb <='1';
	wait for MCLK_PERIOD;
	
	--Coluna 1
	Rst_tb <='0';
	Kscan_tb <="10";
	Ln1_tb <='0';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="00";
	Ln1_tb <='1';
	wait for MCLK_PERIOD;
	
	--Coluna 2
	Kscan_tb <="01";
	wait for MCLK_PERIOD;
	
	Kscan_tb <="10";
	Ln2_tb <='0';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="00";
	Ln2_tb <='1';
	wait for MCLK_PERIOD;
	
	--Coluna 3 em momentos diferentes pressiona-se 2 teclas da mesma coluna para verificar se o contador incrementa ou não neste caso
	Kscan_tb <="01";
	wait for MCLK_PERIOD;
	
	Kscan_tb <="10";
	Ln4_tb <='0';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="00";
	Ln4_tb <='1';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="10";
	Ln1_tb <='0';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="00";
	Ln1_tb <='1';
	wait for MCLK_PERIOD;
	
	--Pressionar duas teclas em simultaneo
	Kscan_tb <="10";
	Ln2_tb <='0';
	Ln3_tb <='0';
	wait for MCLK_PERIOD;
	
	Kscan_tb <="00";
	Ln2_tb <='1';
	Ln3_tb <='1';
	wait for MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		