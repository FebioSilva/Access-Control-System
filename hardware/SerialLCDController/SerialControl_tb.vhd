library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_tb is
	end SerialControl_tb;
	
architecture behavioral of SerialControl_tb is

component SerialControl is
    port(
        enRx :in std_logic;
        accept :in std_logic;
        eq5 : in std_logic;
        clk : in std_logic;
        rst: in std_logic;
        
        clr :out std_logic;
        wr : out std_logic;
        DXval : out std_logic
        );
end component SerialControl;

constant    MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal enRx_tb, accept_tb, eq5_tb, clk_tb, rst_tb, clr_tb, wr_tb, DXval_tb : std_logic;

begin

UUT: SerialControl port map(enRx => enRx_tb,
                            accept => accept_tb,
                            eq5 => eq5_tb,
                            clk => clk_tb,
                            rst => rst_tb,
                            clr => clr_tb,
                            wr => wr_tb,
                            DXval => DXval_tb
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
	 enRx_tb <= '0';
    accept_tb <= '0';
    eq5_tb <= '0';
    rst_tb <= '1';
	wait for MCLK_PERIOD;
	
    --Mantem-se no estado STATE_WAITING
	 rst_tb <= '0';
    enRx_tb <= '1';
	wait for MCLK_PERIOD;
	
    --Muda para o estado STATE_RECEIVING e mantem-se neste estado durante 1 periodo de clock
		enRx_tb <= '0';
	wait for 2*MCLK_PERIOD;
	
    --Muda novamente para o STATE_WAITING porque o eq5 ainda permanece a 0
		enRx_tb <= '1';
	wait for MCLK_PERIOD;

	--Passamos para o estado STATE_RECEIVING novamente
		enRx_tb <= '0';
	wait for MCLK_PERIOD;
	
    --Avança para o estado STATE_WAITING_DISPATCHER e verifica se permanece no mesmo estado enquanto o accept for 0
		enRx_tb <= '1';
		eq5_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
    -- Avança para o estado STATE_DONE_DISPATCHER e verificar se permanece no mesmo estado
		accept_tb <= '1';
	wait for 2*MCLK_PERIOD;
	
    --Volta ao estado inicial STATE_WAITING
		accept_tb <= '0';
	wait for MCLK_PERIOD;
	wait;
end process;
end behavioral;

		