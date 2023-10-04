LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SerialControl_v2 is
	port(
	enRx :in std_logic;
	accept :in std_logic;
	eq5 : in std_logic;
	clk : in std_logic;
	rst: in std_logic;
	
	clr :out std_logic;
	wr : out std_logic;
	DXval : out std_logic;
	busy : out std_logic
	);
end SerialControl_v2;

architecture behavioral of SerialControl_v2 is

type STATE_TYPE is (STATE_WAITING, STATE_RECEIVING, STATE_WAITING_DISPATCHER, STATE_DONE_DISPATCHER);
signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flops
CurrentState <= STATE_WAITING when rst = '1' else NextState when rising_edge(clk);

-- Generate next state
GenerateNextState:
process(CurrentState, enRx, accept, eq5)
	begin
		case CurrentState is
			when STATE_WAITING					=>if(enRx = '0') then
															NextState <= STATE_RECEIVING;
														  else
															NextState <= STATE_WAITING;
														  end if;
											  
			when STATE_RECEIVING					=>if(enRx = '0') then
															NextState <= STATE_RECEIVING;
															elsif (eq5 = '1' and enRx = '1') then
																NextState <= STATE_WAITING_DISPATCHER;
															else
															NextState <= STATE_WAITING;
														  end if;	
											  
			when STATE_WAITING_DISPATCHER		=>if(accept = '1') then
															NextState <= STATE_DONE_DISPATCHER;
														  else
															NextState <= STATE_WAITING_DISPATCHER;
														  end if;
														  
			when STATE_DONE_DISPATCHER			=>if(accept = '0') then
															NextState <= STATE_WAITING;
														  else
															NextState <= STATE_DONE_DISPATCHER;
														  end if;
											  		end case;
end process;

-- Generate outputs
	clr <= '1' when (CurrentState = STATE_WAITING) else '0';
	wr 	<= '1' when (CurrentState = STATE_RECEIVING) else '0';
	DXval 	<= '1' when (CurrentState = STATE_WAITING_DISPATCHER) else '0';
	busy <= '1' when (CurrentState = STATE_WAITING_DISPATCHER or CurrentState = STATE_DONE_DISPATCHER) else '0';
end behavioral;