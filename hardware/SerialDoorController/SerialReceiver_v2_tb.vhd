library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver_v2_tb is
	end SerialReceiver_v2_tb;
	
architecture behavioral of SerialReceiver_v2_tb is

component SerialReceiver_v2 is
  port(
	 SDX: in std_logic;
    SCLK: in std_logic;
    SS: in std_logic;
    rst : in std_logic;
    accept: in std_logic;
	 clk : in std_logic;

    DXval: out std_logic;
	 busy : out std_logic;
    D: out std_logic_vector(4 downto 0)
    );
end component SerialReceiver_v2;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal SDX_tb, SS_tb,accept_tb,SCLK_tb,clk_tb,rst_tb, busy_tb : std_logic;

begin

UUT: SerialReceiver_v2 port map(SDX => SDX_tb,
								 SS => SS_tb,
                         clk => clk_tb,
                         rst => rst_tb,
                         accept => accept_tb,
								 busy => busy_tb,
								 SCLK => SCLK_tb
							 );
clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;

clk_gen2 : process
begin
	SCLK_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	SCLK_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;

stimulus: process
begin
    SDX_tb <= '1';
	 SS_tb <= '1';
	 rst_tb <= '1';
	 accept_tb <='0';
	wait for MCLK_PERIOD;
	
	 rst_tb <= '0';
	 SS_tb <='0';	
	wait for 6*MCLK_PERIOD;
	
	 SS_tb <='1';	
	 accept_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
	 accept_tb <= '0';
	wait for MCLK_PERIOD;
	wait;
end process;
end behavioral;

		