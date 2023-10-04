library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Shift_Register is
port(
	data : in std_logic;
	clk : in std_logic;
	enable : in std_logic;
	Rst : in std_logic;
	
	D : out std_logic_vector(4 downto 0)
	);
end Shift_Register;

architecture structural of Shift_Register is
component FFD is
PORT(	CLK : in std_logic;
		RESET : in STD_LOGIC;
		SET : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
		);
end component FFD;

signal outFF1 :std_logic;
signal outFF2 :std_logic;
signal outFF3 :std_logic;
signal outFF4 :std_logic;

begin
FF1: FFD port map(CLK => clk, RESET => Rst, SET =>'0', EN => enable, D => data, Q => outFF1);
D(4) <= outFF1;
FF2: FFD port map(CLK => clk, RESET => Rst, SET =>'0', EN => enable, D => outFF1, Q => outFF2);
D(3) <= outFF2;
FF3: FFD port map(CLK => clk, RESET => Rst, SET =>'0', EN => enable, D => outFF2, Q => outFF3);
D(2) <= outFF3;
FF4: FFD port map(CLK => clk, RESET => Rst, SET =>'0', EN => enable, D => outFF3, Q => outFF4);
D(1) <= outFF4;
FF5: FFD port map(CLK => clk, RESET => Rst, SET =>'0', EN => enable, D => outFF4, Q => D(0));
end structural;