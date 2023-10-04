library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity MAC is
	port(
	putget: in std_logic;
	incPut: in std_logic;
	incGet: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	
	full: out std_logic;
	empty: out std_logic;
	Aout: out std_logic_vector(2 downto 0)
	);
end MAC;

architecture structural of MAC is
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

component Register4 is
	port
	(
	clk: in std_logic;
	reset: in std_logic;
	en: in std_logic;
	d : in std_logic_vector(3 downto 0);
	
	q : out std_logic_vector(3 downto 0)
	);
end component Register4;

component MUX2_1_3bits is 
	port
	(
	A : in std_logic_vector(2 downto 0);
	B : in std_logic_vector(2 downto 0);
	S : in std_logic;
		
	R : out std_logic_vector(2 downto 0)
	);
end component MUX2_1_3bits;

component MUX2_1 is 
	port
	(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	S : in std_logic;
		
	R : out std_logic_vector(3 downto 0)
	);
end component MUX2_1;

component adder3bit is
	port
	(
	A  : in std_logic_vector(2 downto 0);
	B  : in std_logic_vector(2 downto 0);
		Ci : in std_logic;
	S  : out std_logic_vector(2 downto 0);
	Co : out std_logic
	);
end component adder3bit;

component adder4bit is
	port
	(
	A  : in std_logic_vector(3 downto 0);
	B  : in std_logic_vector(3 downto 0);
		Ci : in std_logic;
	S  : out std_logic_vector(3 downto 0);
	Co : out std_logic
	);
end component adder4bit;

signal getReg, putReg, D_getReg,D_putReg: std_logic_vector(2 downto 0);
signal Adder4_B, Adder4_A, R4_D:std_logic_vector(3 downto 0);
signal putget_S, adder_Co, enable_s :std_logic;

begin

putget_S<=putget;
UA3bit_1: adder3bit port map(A(0) => incGet, A(1) => '0', A(2) => '0',B => getReg, Ci => '0', S => D_getReg, Co => adder_Co);
UR3bit_1: Register3 port map(clk => clk, reset => reset, en =>'1', d => D_getReg, q => getReg);
UMux3bit_1: MUX2_1_3bits port map(A => putReg, B => getReg, S => putget_S , R => Aout);
UA3bit_2: adder3bit port map(A(0) => incPut, A(1) => '0', A(2) => '0', B => putReg, Ci => '0', S => D_putReg, Co =>adder_Co);
UR3bit_2: Register3 port map(clk => clk, reset => reset, en =>'1', d => D_putReg, q => putReg);
UMux4bit: MUX2_1 port map(A => "0001", B=> "1111", S => incPut, R => Adder4_B);
UA4bit_1: adder4bit port map(A => Adder4_A, B => Adder4_B, Ci => '0', S => R4_D, Co => adder_Co);
UR4bit_1: Register4 port map(clk => clk, reset => reset, en => enable_s, d => R4_D, q => Adder4_A);
empty <= (NOT Adder4_A(0)) AND (NOT Adder4_A(1)) AND (NOT Adder4_A(2)) AND (NOT Adder4_A(3));
full <= Adder4_A(3);
enable_s <= incPut XOR incGet;
end structural;

 