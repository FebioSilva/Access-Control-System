LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity RingB_Control is
	port(
	DAV, CTS, full, empty, rst, clk: in std_logic;
	
	Wr, selPG, Wreg, DAC, incGet, incPut: out std_logic
	);
end RingB_Control;

architecture behavioral of RingB_Control is

type STATE_TYPE is (STATE_WAITING, STATE_GET,STATE_NEW, STATE_ADDR_PUT, STATE_PUT, STATE_DONE);
signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flops
CurrentState <= STATE_WAITING when rst = '1' else NextState when rising_edge(clk);

-- Generate next state
GenerateNextState:	
process(CurrentState, DAV, CTS, full, empty)
	begin
		case CurrentState is
			when STATE_WAITING					=>if(DAV = '1' and full = '0') then
															NextState <= STATE_ADDR_PUT;
															elsif(DAV ='1' and full = '1' and CTS = '1' and empty = '0') then
															NextState <= STATE_GET;
															elsif(DAV ='0' and CTS ='1' and empty ='0') then
															NextState <= STATE_GET;
														  else
															NextState <= STATE_WAITING;
														  end if;
											  
			when STATE_GET							=>if(CTS = '0') then
															NextState <= STATE_NEW;
															else
															NextState <= STATE_GET;
														  end if;
			when STATE_NEW							=>NextState<= STATE_WAITING;
											  
			when STATE_ADDR_PUT					=>NextState <= STATE_PUT;
														  
														  
			when STATE_PUT							=>NextState <= STATE_DONE;
			
			when STATE_DONE						=>if(DAV = '0') then
															NextState <= STATE_WAITING;
															else
															NextState <= STATE_DONE;
															end if;
	end case;
end process;

-- Generate outputs
	Wreg   <= '1' when (CurrentState = STATE_GET) else '0';
	Wr 	 <= '1' when (CurrentState = STATE_PUT) else '0';
	selPG  <= '1' when (CurrentState = STATE_ADDR_PUT or CurrentState = STATE_PUT) else '0';
	incGet <= '1' when (CurrentState = STATE_NEW) else '0';
	incPut <= '1' when (CurrentState = STATE_PUT) else '0';
	DAC 	 <= '1' when (CurrentState = STATE_DONE) else '0';
end behavioral;