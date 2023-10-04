LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity CountUP3bit is
	port
	(
	CE, CLK, Rst : in std_logic;
	Q : out std_logic_vector(2 downto 0)
	);
	end CountUP3bit;
		
architecture structural of CountUP3bit is
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

component MUX2_1_3bits is
	port
	(
	A : in std_logic_vector(2 downto 0);
	B : in std_logic_vector(2 downto 0);
	S : in std_logic;
		
	R : out std_logic_vector(2 downto 0)
	);
end component;	

signal R_MUX_CE : std_logic_vector(2 downto 0);
signal R_Register3 : std_logic_vector(2 downto 0);
signal R_Adder : std_logic_vector(2 downto 0);
signal Co : std_logic;
signal R_MUX_PL : std_logic_vector(2 downto 0);

begin
U0: MUX2_1_3bits port map(A => "001", B => "000", S => CE, R => R_MUX_CE);
U1: adder3bit port map(A => R_Register3, B => R_MUX_CE, Ci => '0', S => R_Adder, Co => Co);
U3: MUX2_1_3bits port map(A => "000", B => R_Adder, S => Rst, R => R_MUX_PL);
U4: Register3 port map(clk => CLK, reset => Rst, en => '1', d => R_MUX_PL, q => R_Register3);
Q <= R_Register3;

end structural;