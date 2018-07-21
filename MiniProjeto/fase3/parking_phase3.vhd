library ieee;
use ieee.std_logic_1164.all;

entity parking_Phase3 is
	port( KEY 		: in std_logic_vector(1 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			CLOCK_50	: in std_logic);
end parking_Phase3;


architecture Shell of parking_Phase3 is
	
   signal s_clk_2hz   : std_logic;
   signal s_pulseOut1 : std_logic;
   signal s_pulseOut2 : std_logic;
   signal s_pulseOut3 : std_logic;
   signal s_KEY0, s_KEY1 : std_logic;
begin
   s_KEY0 <= not KEY(0);
   s_KEY1 <= not KEY(1);
   t0:	entity work.timer(Behavioral)
            generic map(TIME_S  => 10)	-- Time in seconds (10 s)
            port map(clk		  => CLOCK_50, 
                     reset 	  => '0',
                     Sin        => s_KEY1,
                     start		  => s_KEY0,
                     pulseOut1  => s_pulseOut1,
                     pulseOut2  => s_pulseOut2,
                     pulseOut3  => s_pulseOut3);
                     

   f1:	entity work.freqDivider(Behavioral)
            generic map(DIV_FACTOR => 25E6)	-- fout is 50E6 / 25E6 = 2Hz
            port map(clkIn		=> CLOCK_50,
                     clkOut	=> s_clk_2hz);
   

	LEDR(0) <= s_pulseOut1;
   LEDR(1) <= s_pulseOut3;
   
   LEDG(8) <= (s_pulseOut1 or s_pulseOut2 or s_pulseOut3) and s_clk_2hz;
      
end Shell;