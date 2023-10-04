library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_tb is
	end OutputBuffer_tb;
	
architecture behavioral of OutputBuffer_tb is

component OutputBuffer is
	port(
	D: in std_logic_vector(3 downto 0);
	Load, ACK, clk, rst: in std_logic;
	
	Q: out std_logic_vector(3 downto 0);
	OBfree, Dval: out std_logic
	);
end component OutputBuffer;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal  rst_tb, clk_tb, Load_tb, ACK_tb, OBfree_tb, Dval_tb : std_logic;
signal D_tb, Q_tb : std_logic_vector(3 downto 0);

begin

UUT: OutputBuffer port map(Load => Load_tb, ACK => ACK_tb, clk => clk_tb, rst => rst_tb, D => D_tb, OBfree => OBfree_tb, Dval => Dval_tb, Q => Q_tb);

clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;


stimulus: process
begin
   Load_tb <= '0';
	ACK_tb <= '0';
	rst_tb <= '1';
	D_tb <= "0001";
	wait for MCLK_PERIOD;
	
	rst_tb <='0';
	wait for MCLK_PERIOD;
	
	Load_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
	ACK_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
	ACK_tb <= '0';
	wait for MCLK_PERIOD;
	
	wait for MCLK_PERIOD;
	wait;
end process;
end behavioral;

		