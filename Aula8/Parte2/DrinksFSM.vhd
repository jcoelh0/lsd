library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  coin20	: in  std_logic;
		  coin50	: in  std_logic;
		  drink	: out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (initialState, State20, State40, State5060, State7080, finalState);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= initialState;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, coin20, coin50)
	begin
		case (s_currentState) is
      
		when initialState =>
			drink <= '0';
			if (coin20 = '1') then
				s_nextState <= State20;
         elsif (coin50 = '1') then
            s_nextState <= State5060;
			else
				s_nextState <= initialState;
			end if;

		when State20 =>
			drink <= '0';
			if (coin20 = '1') then
				s_nextState <= State40;
			elsif (coin50 = '1') then
				s_nextState <= State7080;
			else
				s_nextState <= State20;
			end if;

		when State40 =>
			drink <= '0';
			if (coin20 = '1') then
				s_nextState <= State5060;
			elsif (coin50 = '1') then
				s_nextState <= finalState;
			else
				s_nextState <= State40;
			end if;
       
		when State5060 =>
			drink <= '0';
			if (coin20 = '1') then
				s_nextState <= State7080;
			elsif (coin50 = '1') then
				s_nextState <= finalState;
			else
				s_nextState <= State5060;
			end if;
      
      when State7080 =>
			drink <= '0';
			if (coin20 = '1') then
				s_nextState <= finalState;
			elsif (coin50 = '1') then
				s_nextState <= finalState;
			else
				s_nextState <= State7080;
			end if;
         
      when finalState =>
			drink <= '1';
         
		end case; 
	end process;
end Behavioral;