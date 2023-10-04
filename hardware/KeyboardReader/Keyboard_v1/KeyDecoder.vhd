LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyDecoder is
	port(
	Kack : in std_logic;
	CLK : in std_logic;
	Rst : in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Kval : out std_logic;
	K : out std_logic_vector(3 downto 0)
	);
end KeyDecoder;

architecture structural of KeyDecoder is

component KeyScan is
	port
	(
	Kscan : in std_logic;
	CLK : in std_logic;
	Rst : in std_logic;
	Ln1,Ln2,Ln3, Ln4: in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Kpress : out std_logic;
	K : out std_logic_vector(3 downto 0)
	);
end component KeyScan;

component KeyControl is
	port(
	Kpressed : in std_logic;
	Kack : in std_logic;
	Kscan : out std_logic;
	Kval : out std_logic;
	clk : in std_logic;
	reset: in std_logic
	);
end component KeyControl;
	
signal Kscan_s: std_logic;
signal Kpress_s: std_logic;

begin

ks01: KeyScan port map(Kscan => Kscan_s, CLK => CLK, Rst => Rst, Col1 => Col1, 
								Col2 => Col2, Col3 => Col3, Kpress => Kpress_s, K => K, Ln1 => Ln1, Ln2 => Ln2, Ln3 => Ln3, Ln4 => Ln4);

kc01: KeyControl port map(Kpressed => Kpress_s, Kack => Kack, Kscan => Kscan_s, 
									Kval => Kval, clk => CLK, reset => Rst);
									
end structural;