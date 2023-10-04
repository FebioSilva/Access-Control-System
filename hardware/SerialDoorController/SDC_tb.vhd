library ieee;
use ieee.std_logic_1164.all;

entity SDC_tb is
	end SDC_tb;
	
architecture behavioral of SDC_tb is

component SDC is
  port(
	SDX: in std_logic;
   SCLK: in std_logic;
   SS: in std_logic;
   rst : in std_logic;
	clk : in std_logic;
	Sclose, Sopen, Psensor: in std_logic;
	
	busy : out std_logic;
	OnOff: out std_logic;
	Dout: out std_logic_vector(4 downto 0)
	);
end component SDC;

constant MCLK_PERIOD : time :=20ns;
constant	MCLK_HALF_PERIOD : time :=MCLK_PERIOD/2;

signal SDX_tb, SS_tb,SCLK_tb,clk_tb,rst_tb,Sclose_tb, Sopen_tb, Psensor_tb,busy_tb, OnOff_tb: std_logic;
signal Dout_tb : std_logic_vector(4 downto 0);

begin

UUT: SDC port map(SDX => SDX_tb,
						  SS => SS_tb,
                    clk => clk_tb,
                    rst => rst_tb,
                    Sclose => Sclose_tb, 
						  Sopen => Sopen_tb, 
						  Psensor => Psensor_tb,
						  busy => busy_tb,
						  OnOff => OnOff_tb,
						  SCLK => SCLK_tb,
						  Dout => Dout_tb
						  );
clk_gen : process
begin
	clk_tb <= '0';
	wait for MCLK_HALF_PERIOD/2;
	clk_tb <= '1';
	wait for MCLK_HALF_PERIOD/2;
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
	 Sclose_tb <= '0';
	 Sopen_tb <= '0'; 
	 Psensor_tb <= '0';
	wait for MCLK_PERIOD;
	
	 rst_tb <= '0';
	 SS_tb <='0';	
	wait for MCLK_PERIOD;
	
	 SDX_tb <= '0';
	wait for 4*MCLK_PERIOD;
	
	 SS_tb <= '1';
	 Sopen_tb <= '1'; 
	wait for 2*MCLK_PERIOD;
	
	 SS_tb <= '0';
	wait for 6*MCLK_PERIOD;
	 
	 SS_tb <= '1';
	 Sclose_tb <= '0';
	 Sopen_tb <= '0'; 
	 Psensor_tb <= '0';
	wait for 2*MCLK_PERIOD;
	
	 Psensor_tb <= '1';
	wait for MCLK_PERIOD;
	
	 Sopen_tb <= '1'; 
	wait for MCLK_PERIOD;
	
	 Psensor_tb <= '0';
	 Sopen_tb <= '0';  
	wait for MCLK_PERIOD;
	
	 Sclose_tb <= '1';
	wait for 3*MCLK_PERIOD;
	wait;
end process;
end behavioral;

		