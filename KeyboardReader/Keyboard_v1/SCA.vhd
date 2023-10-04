LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SCA is
	port(
	CLK : in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	Rst : in std_logic;
	Pswitch, Mswitch :in std_logic;
	
	D: out std_logic_vector(4 downto 0);
	Col1,Col2,Col3: out std_logic;
	Wrl : out std_logic;
	HEX0			: out std_logic_vector(7 downto 0);
	HEX1			: out std_logic_vector(7 downto 0);
	HEX2			: out std_logic_vector(7 downto 0);
	HEX3			: out std_logic_vector(7 downto 0);
	HEX4			: out std_logic_vector(7 downto 0);
	HEX5			: out std_logic_vector(7 downto 0)
	);
end SCA;	


architecture structural of SCA is
component UsbPort is
PORT
	(
		inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component UsbPort;

component door_mecanism IS
	PORT(	MCLK 			: in std_logic;
			RST			: in std_logic;
			onOff			: in std_logic;
			openClose	: in std_logic;
			v				: in std_logic_vector(3 downto 0);
			Pswitch		: in std_logic;
			Sopen			: out std_logic;
			Sclose		: out std_logic;
			Pdetector	: out std_logic;
			HEX0			: out std_logic_vector(7 downto 0);
			HEX1			: out std_logic_vector(7 downto 0);
			HEX2			: out std_logic_vector(7 downto 0);
			HEX3			: out std_logic_vector(7 downto 0);
			HEX4			: out std_logic_vector(7 downto 0);
			HEX5			: out std_logic_vector(7 downto 0)
		);
END component door_mecanism;

component KeyBoardReader is
	port(
	CLK : in std_logic;
	Rst : in std_logic;
	ACK: in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Dval : out std_logic;
	Q : out std_logic_vector(3 downto 0)
	);
end component KeyBoardReader;

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

component SLCDC 
	port(
	SDX: in std_logic;
   SCLK: in std_logic;
   SS: in std_logic;
   rst : in std_logic;
	clk : in std_logic;
	
	Wrl: out std_logic;
	Dout: out std_logic_vector(4 downto 0)
	);
end component SLCDC;

component CLKDIV is
generic(div: natural := 50000000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component CLKDIV;


signal Q0_s:std_logic;
signal Q1_s:std_logic;
signal Q2_s:std_logic;
signal Q3_s:std_logic;
signal i5_s:std_logic;
signal busy_s: std_logic;
signal clk_s: std_logic;
signal SDX_S,SCLK_S, SSdoor_S,SSlcd_S, ACK_S: std_logic;
signal Sclose_S, Sopen_S, Psensor_S, OnOff_S : std_logic;
signal Dout_S: std_logic_vector(4 downto 0);

begin
KD01: KeyBoardReader port map(CLK => CLK, Rst => Rst, Ln1 => Ln1, Ln2 => Ln2, Ln3 => Ln3, 
										Ln4 => Ln4, Col1 => Col1, Col2 => Col2, Col3 => Col3, Dval => i5_s,
										Q(0) => Q0_s, Q(1) => Q1_s,Q(2) => Q2_s,Q(3) => Q3_s, ACK => ACK_S
										);
										
							  
SDC1: SDC port map(SDX => SDX_S, SCLK => SCLK_S, SS => SSdoor_S, rst => Rst, clk => CLK, OnOff => OnOff_S,
						 Dout => Dout_S, Sclose => Sclose_S, Sopen => Sopen_S, Psensor => Psensor_S, busy => busy_s
						 );
						 
SLDC1: SLCDC port map(SDX => SDX_S, SCLK => SCLK_S, SS => SSlcd_S, rst => Rst, clk => CLK, Wrl => Wrl, Dout=>D);
							  
DM1: door_mecanism port map(MCLK => CLK,RST => Rst, Sclose => Sclose_S, Sopen => Sopen_S, Pdetector => Psensor_S, Pswitch => Pswitch,
									 OnOff => OnOff_S, openClose => Dout_S(0), v(0) => Dout_S(1), v(1) => Dout_S(2), v(2) => Dout_S(3),
									 v(3) => Dout_S(4), HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2, HEX3 => HEX3, HEX4 => HEX4, HEX5 => HEX5
									 );

						  
UP: UsbPort port map(inputPort(0) => Q0_s,inputPort(1) => Q1_s ,inputPort(2) => Q2_s,inputPort(3) => Q3_s,inputPort(4) => i5_s, 
							inputPort(6) => busy_s,inputPort(7) => Mswitch, outputPort(3) => SDX_S, outputPort(4) =>SCLK_S,
							outputPort(0) => SSlcd_S, outputport(1) => SSdoor_S, outputPort(7) => ACK_S
							);

end structural;