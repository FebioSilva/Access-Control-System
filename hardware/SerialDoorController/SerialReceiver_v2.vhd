library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver_v2 is
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
    end  SerialReceiver_v2;

architecture structural of SerialReceiver_v2 is
component Shift_Register is
    port(
	data : in std_logic;
	clk : in std_logic;
	enable : in std_logic;
	Rst : in std_logic;

	D : out std_logic_vector(4 downto 0)
	);
    end component Shift_Register;

component CountUP3bit is
    port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(2 downto 0)
	);
	end component CountUP3bit;

component SerialControl_v2 is
    port(
	enRx :in std_logic;
	accept :in std_logic;
	eq5 : in std_logic;
	clk : in std_logic;
	rst: in std_logic;
	
	clr :out std_logic;
	wr : out std_logic;
	DXval : out std_logic;
	busy : out std_logic
	);
    end component SerialControl_v2;

signal rst_signal :std_logic;
signal Count_Out : std_logic_vector(2 downto 0);
signal enable : std_logic;
signal clr_signal: std_logic;
signal Q_signal: std_logic;

begin
rst_signal <= rst;
SR1 : Shift_Register port map(data => SDX, clk => SCLK, enable => enable, Rst => rst_signal, D => D);
CUP1 : CountUP3bit port map(CE =>'1', CLK => SCLK, Rst => clr_signal, Q => Count_Out);
SC1 : SerialControl_v2 port map(enRx => SS, accept => accept, eq5 => Q_signal, 
                            wr => enable, clr => clr_signal, DXval => DXval, clk => clk, rst => rst, busy => busy);
Q_signal <= (Count_Out(2) AND Count_Out(0) AND (NOT Count_Out(1)));
end structural;