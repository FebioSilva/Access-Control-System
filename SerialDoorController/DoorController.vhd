LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity DoorController is
port(	
		Dval :in std_logic;
		Din : in std_logic_vector(4 downto 0);
		Sclose : in std_logic;
		Sopen : in std_logic;
		Psensor : in std_logic;
		clk : in std_logic;
		rst: in std_logic;
		
		OnOff : out std_logic;
		Dout : out std_logic_vector(4 downto 0);
		done : out std_logic
		);
end DoorController;

architecture behavioral of DoorController is

type STATE_TYPE is (STATE_IDLE, STATE_OPENNING, STATE_DONE, STATE_CLOSING, STATE_PDETECTED);
signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flops
CurrentState <= STATE_IDLE when rst = '1' else NextState when rising_edge(clk);

-- Generate next state
GenerateNextState:
process(CurrentState,Dval,Din,Sopen,Psensor,Sclose)
	begin
		case CurrentState is
			when STATE_IDLE					=>if(Dval = '0') then
															NextState <= STATE_IDLE;
													 elsif(Dval ='1' and Din(0) = '1') then
															NextState <= STATE_OPENNING;
															else 
																NextState <= STATE_CLOSING;
													 end if;
														
			when STATE_OPENNING				=>if(Sopen = '0') then
														NextState <= STATE_OPENNING;
													  else 
														NextState <= STATE_DONE;
													  end if;
													  
		   when STATE_DONE				   =>if(Dval = '0') then
														NextState <= STATE_IDLE;
													  else
														NextState <= STATE_DONE;
													  end if;
													  
			when STATE_CLOSING				=>if(Sclose = '1') then
														NextState <= STATE_DONE;
													  elsif (Psensor = '1' and Sclose = '0') then	
																NextState <= STATE_PDETECTED;
															else
																NextState <= STATE_CLOSING;
														end if;
														
			when STATE_PDETECTED				=>if(Psensor = '0') then
														NextState <= STATE_CLOSING;
													  else
														NextState <= STATE_PDETECTED;
													  end if;
													end case;
end process;
														
-- Generate outputs
	Dout(0) <= '1' when (CurrentState = STATE_OPENNING or CurrentState = STATE_PDETECTED) else '0';
	OnOff 	<= '1' when (CurrentState = STATE_OPENNING or CurrentState = STATE_CLOSING or 
								(CurrentState = STATE_PDETECTED and Psensor='1' and Sopen ='0')) else '0';
	done 	<= '1' when (CurrentState = STATE_DONE) else '0';
	Dout(1) <= Din(1);
	Dout(2) <= Din(2);
	Dout(3) <= Din(3);
	Dout(4) <= Din(4);
end behavioral;														