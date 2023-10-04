LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SLCDC is
	port(
	SDX: in std_logic;
   SCLK: in std_logic;
   SS: in std_logic;
   rst : in std_logic;
	clk : in std_logic;
	
	Wrl: out std_logic;
	Dout: out std_logic_vector(4 downto 0)
	);
end SLCDC;

architecture structural of SLCDC is
component SerialReceiver is
	port
	(
    SDX: in std_logic;
    SCLK: in std_logic;
    SS: in std_logic;
    rst : in std_logic;
    accept: in std_logic;
	 clk : in std_logic;

    DXval: out std_logic;
    D: out std_logic_vector(4 downto 0)
    );
    end component SerialReceiver;
	 
component Dispatcher is
	port(
	Dval: in std_logic;
	Din: in std_logic_vector(4 downto 0);
	clk: in std_logic;
	reset: in std_logic;
	
	Wrl: out std_logic;
	Dout: out std_logic_vector(4 downto 0);
	done: out std_logic
	);
	end component Dispatcher;
	
signal DXval_signal, done_signal: std_logic;
signal D_signal : std_logic_vector(4 downto 0);

begin
SR1: SerialReceiver port map(SDX => SDX, SS =>SS, SCLK =>SCLK, clk=>clk, rst => rst, accept => done_signal,
									  DXval => DXval_signal, D => D_signal
									  );
Disp1: Dispatcher port map(Dval => DXval_signal, Din => D_signal, clk=>clk, reset => rst, Wrl =>Wrl,
									Dout => Dout, done => done_signal
									);
end structural;

