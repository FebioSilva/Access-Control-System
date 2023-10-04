LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SDC is
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
end SDC;

architecture structural of SDC is
component SerialReceiver_v2 is
	port
	(
    SDX: in std_logic;
    SCLK: in std_logic;
    SS: in std_logic;
    rst : in std_logic;
    accept: in std_logic;
	 clk : in std_logic;

    DXval, busy: out std_logic;
    D: out std_logic_vector(4 downto 0)
    );
end component SerialReceiver_v2;
	 
component DoorController is
port(	
		Dval :in std_logic;
		Din : in std_logic_vector(4 downto 0);
		Sclose : in std_logic;
		Sopen : in std_logic;
		Psensor : in std_logic;
		clk : in std_logic;
		rst: in std_logic;
		
		OnOff : out std_logic;
		Dout : out std_logic_vector(4 downto 0);
		done : out std_logic
		);
end component DoorController;

signal DXval_S, done_s: std_logic;
signal D_S: std_logic_vector(4 downto 0);
begin

SR1: SerialReceiver_v2 port map(SDX => SDX, SS => SS, SCLK => SCLK, busy => busy,
											accept => done_s, DXval => DXval_S, D => D_S, rst => rst, clk => clk);
DC1: DoorController port map(Dval => DXval_S, Din => D_S, Sclose => Sclose, Sopen => Sopen,
										Psensor => Psensor, clk => clk, OnOff => OnOff, Dout => Dout, done => done_s, rst => rst);
end structural;										