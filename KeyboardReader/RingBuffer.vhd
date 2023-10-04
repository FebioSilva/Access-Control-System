library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is
	port(
	CTS, DAV, rst, clk : in std_logic;
	D: in std_logic_vector(3 downto 0);
	
	Wreg, DAC: out std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end RingBuffer;

architecture structural of RingBuffer is
component MAC is
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
end component MAC;

component RingB_Control is
	port(
	DAV, CTS, full, empty, rst, clk: in std_logic;
	
	Wr, selPG, Wreg, DAC, incGet, incPut: out std_logic
	);
end component RingB_Control;

component RAM is
	generic(
		ADDRESS_WIDTH : natural := 3;
		DATA_WIDTH : natural := 4
	);
	port(
		address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		wr: in std_logic;
		din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
		dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end component RAM;

signal selPG_S, incPut_S, incGet_S, Wr_S, full_S, empty_s: std_logic;
signal A_S : std_logic_vector(2 downto 0);

begin

RBC1: RingB_Control port map(DAV => DAV, CTS => CTS, full => full_S, empty => empty_S, Wr => Wr_S,
									  selPG => selPG_S, incPut => incPut_S, incGet => incGet_S, Wreg => Wreg, DAC => DAC,
									  clk => clk, rst => rst
									  );
									  
MAC1 : MAC port map(putGet => selPG_S, incPut => incPut_S, incGet => incGet_S, full => full_S, 
						  empty => empty_S, Aout => A_S, clk => clk, reset => rst
						  );
						  
RAM1: RAM port map(address => A_S, wr => Wr_S, din => D, dout => Q);
							

end structural;