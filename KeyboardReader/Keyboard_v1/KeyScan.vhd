LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyScan is
	port
	(
	Kscan : in std_logic;
	CLK : in std_logic;
	Rst : in std_logic;
	Ln1,Ln2,Ln3,Ln4 : in std_logic;
	
	Col1,Col2,Col3: out std_logic;
	Kpress : out std_logic;
	K : out std_logic_vector(3 downto 0)
	);

end KeyScan;
	
architecture structural of KeyScan is
component CounterUp is
	port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(3 downto 0)
	);
end component CounterUp;

component DEC is
	port(
	T : in std_logic_vector(1 downto 0);
	Y0 : out std_logic;
	Y1 : out std_logic;
	Y2 : out std_logic
	);
	end component DEC;
	
component MUX4 is
	port
	(
	A,B,C,D : in std_logic;
	S : in std_logic_vector(1 downto 0);
		
	R : out std_logic
	);
end component MUX4;

signal Yd0,Yd1,Yd2 : std_logic;
signal MR : std_logic;
signal Qsignal : std_logic_vector(3 downto 0);

begin
CUP1: CounterUP port map( CE => Kscan, CLK => CLK, Rst => Rst, Q => Qsignal);
DEC1: DEC port map( T(1) => Qsignal(3), T(0) => Qsignal(2), Y0 => Yd0,Y1 => Yd1, Y2 => Yd2);
Col1 <= NOT(Yd0);
Col2 <= NOT(Yd1);
Col3 <= NOT(Yd2);
MUX4_1 : MUX4 port map( A => Ln1, B => Ln2, C => Ln3, D => Ln4, S(1) => Qsignal(1), 
								S(0) => Qsignal(0), R => MR);
Kpress <= NOT(MR);
K <= Qsignal;

end structural;