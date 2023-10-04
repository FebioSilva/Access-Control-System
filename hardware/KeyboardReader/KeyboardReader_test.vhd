LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyBoardReader_test is
	port(
	CLK : in std_logic;
	Rst : in std_logic;
	ACK: in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Dval,Wreg,Kack,CTS,Kval, DAC : out std_logic;
	Q,K : out std_logic_vector(3 downto 0)
	);
end KeyBoardReader_test;

architecture structural of KeyBoardReader_test is
component KeyDecoder is
	port(
	Kack : in std_logic;
	CLK : in std_logic;
	Rst : in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Kval : out std_logic;
	K : out std_logic_vector(3 downto 0)
	);
end component KeyDecoder;

component RingBuffer is
	port(
	CTS, DAV, rst, clk : in std_logic;
	D: in std_logic_vector(3 downto 0);
	
	Wreg, DAC: out std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end component RingBuffer;

component OutputBuffer is
	port(
	D: in std_logic_vector(3 downto 0);
	Load, ACK, clk, rst: in std_logic;
	
	Q: out std_logic_vector(3 downto 0);
	OBfree, Dval: out std_logic
	);
end component OutputBuffer;
component UsbPort is
PORT
	(
		inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component UsbPort;

component CLKDIV is
generic(div: natural := 50000000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component CLKDIV;

signal Kval_s, Kack_s, Wreg_s, CTS_s,Dval_s, ACK_s: std_logic;
signal K_s, Q_s,Qi_s : std_logic_vector(3 downto 0);
signal clk_s:std_logic;

begin
clk1: CLKDIV generic map(1000) port map(clk_in => CLK, clk_out => clk_s);
KD01: KeyDecoder port map(Kack => Kack_s, CLK => clk_s, Rst => Rst, Ln1 => Ln1, Ln2 => Ln2, Ln3 => Ln3, Ln4 => Ln4, Col1 => Col1,
								  Col2 => Col2, Col3 => Col3, Kval => Kval_s, K => K_s);
RingBuffer1: RingBuffer port map(CTS => CTS_s, DAV => Kval_s, rst => rst, clk => clk_s, D => K_s, Wreg => Wreg_s, DAC => Kack_s, Q => Q_s);

OutputBuffer1: OutputBuffer port map(Load => Wreg_s, ACK => ACK_s, clk => clk_s, rst => rst, D => Q_s, Q => Qi_s, OBfree => CTS_s, Dval => Dval_s);
UP: UsbPort port map(inputPort(0) => Qi_s(0),inputPort(1) => Qi_s(1) ,inputPort(2) => Qi_s(2),inputPort(3) => Qi_s(3),inputPort(4) => Dval_s,
							outputPort(7) => ACK_s
							);
Dval <= Dval_s;							
Wreg <= Wreg_s;
Kack <= Kack_s;
CTS  <= CTS_s;
Kval <= Kval_s;
DAC <= 		Kack_s;
K <= Q_s;	
end structural;