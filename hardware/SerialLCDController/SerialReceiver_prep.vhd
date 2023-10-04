LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SerialReceiver_prep is
	port
	(
    SDX: in std_logic;
    SCLK: in std_logic;
    SS: in std_logic;
    rst : in std_logic;
    accept: in std_logic;
	 clk : in std_logic;

    DXval: out std_logic;
    D: out std_logic_vector(4 downto 0)
    );
end  SerialReceiver_prep;

architecture structural of SerialReceiver_prep is
component SerialReceiver is
	 port(
    SDX: in std_logic;
    SCLK: in std_logic;
    SS: in std_logic;
    rst : in std_logic;
    accept: in std_logic;
	 clk : in std_logic;

    DXval: out std_logic;
    D: out std_logic_vector(4 downto 0)
    );
end component SerialReceiver;
component UsbPort is
PORT
	(
		inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component UsbPort;

signal op0,op1,ss_s:std_logic;
signal input_S: std_logic_vector(7 downto 0);
begin

SR1: SerialReceiver port map(SDX => op0, SCLK => op1, SS => ss_s, rst => rst, clk => clk, accept => accept, DXval => DXval,D => D);
	
UP: UsbPort port map(outputPort(0) => op0, outputPort(1) => op1, outputPort(2) => ss_s,inputPort => input_S);
end structural;
