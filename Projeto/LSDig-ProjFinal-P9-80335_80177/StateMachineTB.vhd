library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity StateMachineTB is
end StateMachineTB;


--		  clk		        : in  std_logic;
--		  resetSetIn     : in  std_logic; --KEY0
--		  jogarSetIn     : in  std_logic; --KEY1
--		  jogador1Ponto  : in  std_logic; --KEY2
--		  jogador2Ponto  : in  std_logic; --KEY3
--		  resetJogo      : in  std_logic; --SW0
--		  resetSetOutput : out std_logic;
--		  resetJogoOutput: out std_logic;
--		  jogador1Ganhou : out std_logic;
--		  jogador2Ganhou : out std_logic;
--		  initialState   : out std_logic;
        
        
architecture Stimulus of StateMachineTB is

  
   signal s_inputs : std_logic_vector(5 downto 0);
   
   signal s_outputs : std_logic_vector(4 downto 0);
	signal s_clk : std_logic;
   
begin
   
   uut: entity work.StateMachine(Behavioral)
   port map(clk => s_clk,
            resetSetIn => s_inputs(0),
            jogarSetIn => s_inputs(1),
            jogador1Ponto => s_inputs(2),
            jogador2Ponto => s_inputs(3),
            resetJogo => s_inputs(4),
				winner => s_inputs(5),
            
            resetSetOutput => s_outputs(0),
            resetJogoOutput => s_outputs(1),
            jogador1Ganhou => s_outputs(2),
            jogador2Ganhou => s_outputs(3),
            initialState => s_outputs(4));
            
  
   clock_proc : process
   begin
      s_clk <= '0'; wait for 100 ns;
      s_clk <= '1'; wait for 100 ns;
   end process;
            

   stim_proc : process
   begin
      
		wait for 100 ns;
      
		s_inputs <= "100010";
      
      wait for 100 ns;
		
		s_inputs <= "000000";
      
      wait for 100 ns;
      
		s_inputs <= "001000";
      
      wait for 100 ns;
      
		s_inputs <= "010000";
      
      wait for 100 ns;
		
      s_inputs <= "011000";
      
      wait for 100 ns;
		
      s_inputs <= "010101";
      
      wait for 100 ns;
		
		s_inputs <= "011011";
      
      wait for 100 ns;
		
		s_inputs <= "011100";
      
      wait for 100 ns;
		
		s_inputs <= "011110";
      
      wait for 100 ns;
		
		s_inputs <= "111111";
      
      wait for 100 ns;
		
   end process;
end Stimulus;