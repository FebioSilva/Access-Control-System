library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_v3_tb is
	end KeyControl_v3_tb;
	
architecture behavioral of KeyControl_tb is

component KeyControl_v3 is
  port(
    Kpressed : in std_logic;
    Kack : in std_logic;
    clk : in std_logic;
    reset: in std_logic;
    
    Kscan : out std_logic_vector(1 downto 0);
    Kval : out std_logic
    );
end component KeyControl_v3;

constant    MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal Kpressed_tb, Kack_tb, clk_tb, reset_tb, Kval_tb: std_logic;
signal Kscan_tb: std_logic_vector(1 downto 0);
begin

UUT: KeyControl_v3 port map(Kpressed => Kpressed_tb,
                         clk => clk_tb,
                         reset => reset_tb,
                         Kack => Kack_tb,
								 Kval => Kval_tb,
								 Kscan => Kscan_tb
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
	  
  --Inicia no estado STATE_SCANNING
    Kpressed_tb <= '0';
    Kack_tb <= '0';
    reset_tb <= '1';
	wait for MCLK_PERIOD;
	
    --Mantem-se no estado STATE_SCANNING uma vez que kpressed esta a 0
	  reset_tb <= '0';
	wait for MCLK_PERIOD;
	
    --Muda para o estado STATE_STORING e mantem-se neste estado durante mais 1 periodo de clock até que o Kack fique a true
		Kpressed_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
    --Muda para o estado STATE_DONE_STORING e permanece no mesmo estado durante mais 1 periodo de clock ate que o Kack fique a false 
		Kpressed_tb <= '0';
    Kack_tb <= '1';
	wait for 2*MCLK_PERIOD;

	--Permanece no mesmo estado
    Kack_tb <= '0';
    Kpressed_tb <= '1';
	wait for MCLK_PERIOD;
	
    --Avança para o estado inicial STATE_SCANNING
		Kpressed_tb <= '0';
	wait for 2*MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		