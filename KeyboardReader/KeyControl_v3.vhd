LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyControl_v3 is
	port(
	Kpressed : in std_logic;
	Kack : in std_logic;
	clk : in std_logic;
	reset: in std_logic;
	
	Kscan : out std_logic_vector(1 downto 0);
	Kval : out std_logic
	);
	end KeyControl_v3;
	
architecture behavioral of KeyControl_v3 is

type STATE_TYPE is (STATE_SCANNING, STATE_STORING, STATE_DONE_STORING);
signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flops
CurrentState <= STATE_SCANNING when reset = '1' else NextState when rising_edge(clk);

-- Generate next state
GenerateNextState:
process(CurrentState, Kpressed, Kack)
	begin
		case CurrentState is
			when STATE_SCANNING		=>if(Kpressed = '1') then
													NextState <= STATE_STORING;
												else
													NextState <= STATE_SCANNING;
												end if;
												
			when STATE_STORING		=> if(Kack = '1') then
													NextState <= STATE_DONE_STORING;
												else
													NextState <= STATE_STORING;
												end if;
												
			when STATE_DONE_STORING => if(Kack = '1') then
													NextState <= STATE_DONE_STORING;
												elsif(Kack = '0' and Kpressed = '1') then
													NextState <= STATE_DONE_STORING;
												else
													NextState <= STATE_SCANNING;
												end if;
		end case;
end process;

-- Generate outputs
	Kscan <= "01" when (CurrentState = STATE_SCANNING and Kpressed = '0') else "10" when (CurrentState = STATE_STORING) else "00";
	Kval 	<= '1' when (CurrentState = STATE_STORING) else '0';
	
end behavioral;
			