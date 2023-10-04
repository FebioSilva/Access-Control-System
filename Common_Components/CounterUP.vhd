LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity CounterUP is
	port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(3 downto 0)
	);
	end CounterUP;
	
architecture structural of CounterUP is
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

component MUX2_1 is
	port
	(
	A : in std_logic_vector(3 downto 0);
	B : in std_logic_vector(3 downto 0);
	S : in std_logic;
		
	R : out std_logic_vector(3 downto 0)
	);
end component;	

signal R_MUX_CE : std_logic_vector(3 downto 0);
signal R_Register4 : std_logic_vector(3 downto 0);
signal R_Adder : std_logic_vector(3 downto 0);
signal Co : std_logic;
signal R_MUX_PL : std_logic_vector(3 downto 0);

begin
U0: MUX2_1 port map(A => "0001", B => "0000", S => CE, R => R_MUX_CE);
U1: adder4bit port map(A => R_Register4, B => R_MUX_CE, Ci => '0', S => R_Adder, Co => Co);
U3: MUX2_1 port map(A => "0000", B => R_Adder, S => Rst, R => R_MUX_PL);
U4: Register4 port map(clk => CLK, reset => Rst, en => '1', d => R_MUX_PL, q => R_Register4);
Q <= R_Register4;

end structural;