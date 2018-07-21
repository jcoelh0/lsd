library ieee;
use ieee.std_logic_1164.all;

entity timer is
	generic(	TIME_S 			: positive := 1;			-- Pulse duration, in seconds
				CLK_FREQ_KHZ	: positive := 50000);	-- Input clock frequency, in kHz (default is 50 MHz)
	port( clk 		 : in std_logic;
			reset 	 : in std_logic;
			start 	 : in std_logic;
			pulseOut1 : out std_logic;
         pulseOut2 : out std_logic;
         pulseOut3 : out std_logic);
end timer;

architecture Behavioral of timer is
--	constant TIME_CYCLES : positive := 4; -- For simulation purposes only 
	constant TIME_CYCLES100 : positive := TIME_S * CLK_FREQ_KHZ * 1000;
   constant TIME_CYCLES10  : positive := TIME_S * CLK_FREQ_KHZ * 100;
   constant TIME_CYCLES80  : positive := TIME_S * CLK_FREQ_KHZ * 800;
	signal s_count : natural := 0;
begin

p1:	process(clk)
		begin
			if(rising_edge(clk)) then
				if(reset = '1') then
					s_count <= 0;
               pulseOut1 <= '0';
               pulseOut2 <= '0';
               pulseOut3 <= '0';
            elsif(s_count <= TIME_CYCLES10 and s_count /= 0) then
               s_count <= s_count + 1;
					pulseOut1 <= '1';
               pulseOut2 <= '0';
               pulseOut3 <= '0';
            elsif(s_count < TIME_CYCLES80 and s_count > TIME_CYCLES10) then
					s_count <= s_count + 1;
               pulseOut1 <= '0';
               pulseOut2 <= '1';
               pulseOut3 <= '0';
            elsif(s_count >= TIME_CYCLES80 and s_count /= TIME_CYCLES100) then
					s_count <= s_count + 1;
               pulseOut1 <= '0';
               pulseOut2 <= '0';
               pulseOut3 <= '1';
				elsif(s_count = TIME_CYCLES100) then
					s_count <= 0;
               pulseOut1 <= '0';
               pulseOut2 <= '0';
               pulseOut3 <= '0';
            elsif(start = '1' or s_count /= 0) then
					s_count <= s_count + 1;
					pulseOut1 <= '0';
               pulseOut2 <= '0';
               pulseOut3 <= '0';
				else
					s_count <= 0;
				end if;
			end if;
		end process;
end Behavioral;
