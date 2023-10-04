	library ieee;
use ieee.std_logic_1164.all;

entity Dispatcher_tb is
	end Dispatcher_tb;
	
architecture behavioral of Dispatcher_tb is

component Dispatcher is
    port(
			Dval: in std_logic;
			Din: in std_logic_vector(4 downto 0);
			clk: in std_logic;
			reset: in std_logic;
		
			Wrl: out std_logic;
			Dout: out std_logic_vector(4 downto 0);
			done: out std_logic
        );
end component Dispatcher;

constant    MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal Dval_tb,clk_tb, reset_tb, done_tb, Wrl_tb : std_logic;
signal Din_tb : std_logic_vector(4 downto 0);
signal Dout_tb : std_logic_vector(4 downto 0);

begin

UUT: Dispatcher port map(Dval => Dval_tb,
                         Din => Din_tb,
                         Wrl => Wrl_tb,
                         clk => clk_tb,
                         reset => reset_tb,
                         Dout => Dout_tb,
                         done => done_tb
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
	 Dval_tb <= '0';
    reset_tb <= '1';
	wait for MCLK_PERIOD;
	
    --Mantem-se no estado STATE_WAITING
	 reset_tb <= '0';
    Dval_tb <= '0';
    Din_tb <= "00001";
	wait for MCLK_PERIOD;
	
	Din_tb <= "00010";
	wait for MCLK_PERIOD;
	
	Din_tb <= "00101";
	
	wait for MCLK_PERIOD;
	Din_tb <= "01011";
	
	wait for MCLK_PERIOD;
	
	Din_tb <= "10110";
	Dval_tb <= '1';
	wait for MCLK_PERIOD*12;

		Dval_tb <= '0';
	wait for MCLK_PERIOD*12;
	
		
		Din_tb <= "00000";
	wait for MCLK_PERIOD;
	
		Din_tb <= "00001";
	wait for MCLK_PERIOD;
	
		Din_tb <= "00010";
	wait for MCLK_PERIOD;
	
	Din_tb <= "00100";
	wait for MCLK_PERIOD;
	
	Din_tb <= "01001";
	Dval_tb <= '1';
	wait for MCLK_PERIOD*12;
	
	Dval_tb <= '0';
	wait for MCLK_PERIOD;
	wait;
end process;
end behavioral;

		