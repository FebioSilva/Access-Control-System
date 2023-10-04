LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Dispatcher is
	port(
	Dval: in std_logic;
	Din: in std_logic_vector(4 downto 0);
	clk: in std_logic;
	reset: in std_logic;
	
	Wrl: out std_logic;
	Dout: out std_logic_vector(4 downto 0);
	done: out std_logic
	);
	end Dispatcher;

architecture behavioral of Dispatcher is

component clkDIV is
generic(div: natural := 50000000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end component clkDIV;



type STATE_TYPE is (STATE_WAITING, STATE_DISPATCHING, STATE_DONE);
signal CurrentState, NextState : STATE_TYPE;
signal clkdiv_s: std_logic;

begin

CLKDIV1: clkDIV generic map(12) port map(clk_in => clk, clk_out => clkdiv_s);
-- Flip-Flops
CurrentState <= STATE_WAITING when reset = '1' else NextState when rising_edge(clkdiv_s);

-- Generate next state
GenerateNextState:
process(Dval,CurrentState)
	begin
		case CurrentState is
			when STATE_WAITING		=>if(Dval = '1') then
												NextState <= STATE_DISPATCHING;
											  else
												NextState <= STATE_WAITING;	
											  end if;
			when STATE_DISPATCHING	=> NextState <= STATE_DONE;
			
			when STATE_DONE			=>if(Dval='1') then
												NextState <= STATE_DONE;
											  else
												NextState <= STATE_WAITING;
											  end if;
											 end case;
end process;

-- Generate outputs
	Wrl <= '1' when (CurrentState = STATE_DISPATCHING) else '0';
	Dout <= Din when(CurrentState = STATE_DISPATCHING);
	done 	<= '1' when (CurrentState = STATE_DONE) else '0';
end behavioral;