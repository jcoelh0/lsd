library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterLoadUpDown4 is
	port(clk    : in std_logic;
		  enable : in std_logic;
		  load   : in std_logic;
		  reset  : in std_logic;
		  upDown : in std_logic;
		  dataIn : in std_logic_vector(3 downto 0);
		  count  : out std_logic_vector(3 downto 0));
end CounterLoadUpDown4;

architecture Behavioral of CounterLoadUpDown4 is

	signal s_count  : unsigned(3 downto 0);
	signal s_dataIn : unsigned(3 downto 0);
	
begin
	s_dataIn <= unsigned(dataIn);
	process(clk)
	begin
		if (rising_edge(clk)) then
			if ( reset = '1') then
				s_count <= "0000";
			elsif ( enable = '0') then
				s_count <= "0000";
			elsif ( load = '1') then
				s_count <= s_dataIn;
			elsif ( upDown = '1') then
				s_count <= s_count + 1;
			else
				s_count <= s_count - 1;
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end Behavioral;