library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_tb is
	end RingBuffer_tb;
	
architecture behavioral of RingBuffer_tb is

component RingBuffer is
	port(
	CTS, DAV, rst, clk : in std_logic;
	D: in std_logic_vector(3 downto 0);
	
	Wreg, DAC: out std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end component RingBuffer;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal DAV_tb, CTS_tb, rst_tb, clk_tb, Wreg_tb,  DAC_tb : std_logic;
signal Q_tb, D_tb : std_logic_vector(3 downto 0);

begin

UUT: RingBuffer port map(DAV => DAV_tb, CTS => CTS_tb, rst => rst_tb, clk => clk_tb,
										  Wreg => Wreg_tb, DAC => DAC_tb, D => D_tb, Q => Q_tb
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
	rst_tb <='1';
	wait for MCLK_PERIOD;
	
	D_tb <= "0001";
	rst_tb <='0';
	DAV_tb <='1';
	wait for 4*MCLK_PERIOD;
	
	DAV_tb <= '0';
	CTS_tb <= '1';
	wait for 4*MCLK_PERIOD;
	
	D_tb <= "0010";
	DAV_tb <= '1';
	wait for 4*MCLK_PERIOD;
	
	D_tb <= "0011";
	wait for 30*MCLK_PERIOD;
	
	DAV_tb <= '0';
	wait for MCLK_PERIOD;
	
	CTS_tb <= '1';
	wait for 4*MCLK_PERIOD;
	
	CTS_tb <= '0';
	wait for MCLK_PERIOD;
	
	CTS_tb <= '1';
	wait for 14	*MCLK_PERIOD;
	
	wait;
end process;
end behavioral;

		