library ieee;
use ieee.std_logic_1164.all;

entity parking_Phase2 is
	port( KEY 		: in std_logic_vector(0 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			CLOCK_50	: in std_logic);
end parking_Phase2;


architecture Shell of parking_Phase2 is
	
   signal s_clk_2hz   : std_logic;
   signal s_pulseOut  : std_logic := '0';
   signal s_pulseOut3 : std_logic := 'U';
   signal s_pulseOut2 : std_logic := '0';
   signal s_pulseOut4 : std_logic := '0';
begin
   
  
   t0:	entity work.timer(Behavioral)
            generic map(TIME_S => 10)	-- Time in seconds (10 s)
            port map(clk		=> CLOCK_50, 
                     reset 	=> '0',
                     start		=> s_pulseOut,
                     pulseOut	=> s_pulseOut4);
                     
   t1:	entity work.timer(Behavioral)
            generic map(TIME_S => 1)	-- Time in seconds (1 s)
            port map(clk		=> CLOCK_50, 
                     reset 	=> '0',
                     start		=> not KEY(0),
                     pulseOut	=> s_pulseOut);
                     
   t2:	entity work.timer(Behavioral)
            generic map(TIME_S => 2)	-- Time in seconds (2 s)
            port map(clk		=> CLOCK_50, 
                     reset 	=> not s_pulseOut4,
                     start		=> not s_pulseOut3,
                     pulseOut	=> s_pulseOut2);
                     
   t3:	entity work.timer(Behavioral)
            generic map(TIME_S => 8)	-- Time in seconds (8-1=7 s)
            port map(clk		=> CLOCK_50, 
                     reset 	=> '0',
                     start		=> s_pulseOut, 
                     pulseOut	=> s_pulseOut3);

   f1:	entity work.freqDivider(Behavioral)
            generic map(DIV_FACTOR => 25E6)	-- fout is 50E6 / 25E6 = 2Hz
            port map(clkIn		=> CLOCK_50,
                     clkOut	=> s_clk_2hz);
   

	LEDR(0) <= s_pulseOut;
   LEDR(1) <= s_pulseOut2;
   
   LEDG(8) <= (s_pulseOut3 or s_pulseOut2 or s_pulseOut) and s_clk_2hz;
      
end Shell;