LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyScan_v3 is
	port
	(
	Kscan : in std_logic_vector(1 downto 0);
	CLK : in std_logic;
	Rst : in std_logic;
	Ln1,Ln2,Ln3,Ln4 : in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Kpress : out std_logic;
	K : out std_logic_vector(3 downto 0)
	);

end KeyScan_v3;

architecture structural of KeyScan_v3 is
component DEC is
port(
	T : in std_logic_vector(1 downto 0);
	Y0 : out std_logic;
	Y1 : out std_logic;
	Y2 : out std_logic
	);
end component DEC;

component PEnc4 is 
	port
	(
	A : in std_logic_vector(3 downto 0);--I
	R : out std_logic_vector(1 downto 0);--O
	V : out std_logic--V
	);
end component Penc4;

component Register3 is
	port
	(
	clk: in std_logic;
	reset: in std_logic;
	en: in std_logic;
	d : in std_logic_vector(2 downto 0);
	q : out std_logic_vector(2 downto 0)
	);
end component Register3;

component CountUP3bit is
	port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(2 downto 0)
	);
end component CountUP3bit;


signal CountOut, RegisterOut: std_logic_vector(2 downto 0);
signal PencOut, DecIn: std_logic_vector(1 downto 0);
signal Yd0,Yd1,Yd2,Ln1_s,Ln2_s, Ln3_s,Ln4_s: std_logic;

	
begin

DEC1: DEC port map(T(0) => CountOut(0), T(1) => CountOut(1),Y0 => Yd0, Y1 => Yd1, Y2 => Yd2);	
PEnc1: PEnc4 port map(A(0) => Ln1_s, A(1) => Ln2_S, A(2) => Ln3_s, A(3) => Ln4_s, R(0) => PencOut(0), R(1) => PencOut(1), V => Kpress);
Reg1: Register3 port map(clk => CLK, reset => Rst, en => Kscan(1), d(0) =>	PencOut(0), d(1) =>	PencOut(1), d(2) => '0', q => RegisterOut);
Counter1: CountUP3bit port map(clk => CLK, CE => Kscan(0), Rst => Rst, q => CountOut);
Ln1_s <= NOT(Ln1);
Ln2_s <= NOT(Ln2);
Ln3_s <= NOT(Ln3);
Ln4_s <= NOT(Ln4);
K(0) <= RegisterOut(0);
K(1) <= RegisterOut(1);
K(2) <= CountOut(0);
K(3) <= CountOut(1);
Col1 <= NOT(Yd0);
Col2 <= NOT(Yd1);
Col3 <= NOT(Yd2);
end structural;