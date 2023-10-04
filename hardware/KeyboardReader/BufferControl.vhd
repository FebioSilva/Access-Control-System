library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is
	port(
	Load, ACK, clk, rst: in std_logic;
	
	Wreg, OBfree, Dval: out std_logic
	);
end BufferControl;

architecture behavioral of BufferControl is

type STATE_TYPE is (STATE_WAITING, STATE_DONE_SENDING, STATE_WAITING_LOAD, STATE_DONE_LOAD);
signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flops
CurrentState <= STATE_WAITING when rst = '1' else NextState when rising_edge(clk);

-- Generate next state
GenerateNextState:	
process(CurrentState, Load, ACK)
	begin
		case CurrentState is
			when STATE_WAITING					=>if(Load = '1') then
															NextState <= STATE_WAITING_LOAD;
														  else
															NextState <= STATE_WAITING;
														  end if;
											  
			when STATE_WAITING_LOAD					=>if(Load= '1') then
															NextState <= STATE_WAITING_LOAD;
															else
															NextState <= STATE_DONE_LOAD;
														  end if;
			when STATE_DONE_LOAD					=>if(ACK = '1') then 
															NextState <= STATE_DONE_SENDING;
															else
															NextState <= STATE_DONE_LOAD;
															end if;
			when STATE_DONE_SENDING					=>If(ACK = '1') then
															NextState <= STATE_DONE_SENDING;
															else
															NextState <= STATE_WAITING;
														  end if;
														
	end case;
end process;

-- Generate outputs
	Wreg   	<= '1' when (CurrentState = STATE_WAITING_LOAD) else '0';
	OBfree 	<= '1' when (CurrentState = STATE_WAITING) else '0';
	Dval  	<= '1' when (CurrentState = STATE_DONE_LOAD) else '0';
	
end behavioral;