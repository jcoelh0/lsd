library ieee;
use ieee.std_logic_1164.all;

entity gate is
	port( clk : in std_logic;
			car : in std_logic;
			sout : out std_logic);
end gate;

architecture Behavioral of gate is
begin

p1:	process(clk)
		begin
			if(rising_edge(clk)) then
				if(car='1') then
               sout <= '1';
            else
               sout <= '0';            end if;
			end if;
		end process;
end Behavioral;