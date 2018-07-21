library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  Xin 	: in  std_logic;
		  Yout	: out std_logic);
end SeqDetFSM;

architecture Behavioral of SeqDetFSM is

	type TState is (State1, State10, State100, State1001);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= State1;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, Xin)
	begin
   
      Yout <= '0';
		
      case (s_currentState) is
		when State1 =>
			if (Xin = '1') then
				s_nextState <= State10;
			else
				s_nextState <= State1;
			end if;

		when State10 =>
			if (Xin = '0') then
				s_nextState <= State100;
			else
				s_nextState <= State1;
			end if;
       
		when State100 =>
			if (Xin = '0') then
				s_nextState <= State1001;
			else
				s_nextState <= State1;
			end if;
      
      when State1001 =>
         if (Xin = '1') then
				s_nextState <= State1;
            Yout <= '1';
			else
				s_nextState <= State1;
			end if;
       
      end case; 
	end process;
end Behavioral;