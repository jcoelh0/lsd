library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RAM_1P_Demo is
	port(CLOCK_50 : in  std_logic;
        SW       : in  std_logic_vector(13 downto 0);
        KEY      : in  std_logic_vector(0 downto 0);
		  LEDR     : out std_logic_vector(7 downto 0));
end RAM_1P_Demo;

architecture Shell of RAM_1P_Demo is

begin
	Ram_1p : work.RAM_1P_16_8(RTL)
				port map(writeClk    => KEY(0),
                     writeEnable => SW(0),
                     writeData   => SW(8 downto 1),
                     address     => SW(13 downto 9),
							readData    => LEDR(7 downto 0));

end Shell;
