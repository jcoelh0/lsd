library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	port(CLOCK_50 : in  std_logic;
        SW       : in  std_logic_vector(0 downto 0);
		  LEDR     : out std_logic_vector(7 downto 0));
end ShiftRegister_Demo;

architecture Shell of ShiftRegister_Demo is
   
   signal s_reg : std_logic;

begin
	shiftRegN : work.ShiftRegisterN(Behavioral)
            generic map(size => 8)
				port map(clk     => s_reg,
                     sin     => SW(0),
							dataOut => LEDR(7 downto 0));
                        clkDivN : work.ClkDividerN(Behavioral)
            generic map(divFactor => 50000000)
				port map(clkIn  => CLOCK_50,
							clkOut => s_reg);
end Shell;
