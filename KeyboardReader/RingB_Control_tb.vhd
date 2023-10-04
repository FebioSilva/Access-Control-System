library ieee;
use ieee.std_logic_1164.all;

entity RingB_Control_tb is
	end RingB_Control_tb;
	
architecture behavioral of RingB_Control_tb is

component RingB_Control is
	port(
	DAV, CTS, full, empty, rst, clk: in std_logic;
	
	Wr, selPG, Wreg, DAC, incGet, incPut: out std_logic
	);
end component RingB_Control;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal DAV_tb, CTS_tb, full_tb, empty_tb, rst_tb, clk_tb, Wr_tb, selPG_tb, Wreg_tb, DAC_tb, incGet_tb, incPut_tb : std_logic;

begin

UUT: RingB_Control port map(DAV => DAV_tb, CTS => CTS_tb, full => full_tb, empty => empty_tb, rst => rst_tb, clk => clk_tb,
										  Wr => Wr_tb, selPG => selPG_tb, Wreg => Wreg_tb, DAC => DAC_tb, incGet => incGet_tb, incPut => incPut_tb
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
   DAV_tb <= '0';
	CTS_tb <= '0';
	full_tb <= '0';
	empty_tb <='1';
	rst_tb <='1';
	wait for MCLK_PERIOD;
	
	rst_tb <='0';
	DAV_tb <='1';
	wait for 3*MCLK_PERIOD;
	
	empty_tb <='0';
	DAV_tb <= '0';
	wait for MCLK_PERIOD;
	
	CTS_tb <= '1';
	wait for MCLK_PERIOD;
	
	CTS_tb <= '0';
	wait for MCLK_PERIOD;
	
	CTS_tb <= '1';
	wait for MCLK_PERIOD;
	
	DAV_tb <= '1';
	full_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
	DAV_tb <= '0';
	empty_tb <= '1';
	wait for MCLK_PERIOD;
	wait;
end process;
end behavioral;

		