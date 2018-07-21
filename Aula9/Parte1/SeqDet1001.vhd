library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDet1001 is
	port(CLOCK_50 : in  std_logic;
        SW       : in  std_logic_vector(0 downto 0);
        LEDG     : out  std_logic_vector(8 downto 8);
		  LEDR     : out std_logic_vector(0 downto 0));
end SeqDet1001;

architecture Shell of SeqDet1001 is
   
   signal s_clk : std_logic;

begin
	SeqDetFSM : work.SeqDetFSM(Behavioral)
				port map(clk     => s_clk,
                     reset   => '0',
                     Xin     => SW(0),
							YOut => LEDR(0));
                     
   clkDivN : work.ClkDividerN(Behavioral)
            generic map(divFactor => 200000000)
				port map(clkIn  => CLOCK_50,
							clkOut => s_clk);
                        LEDG(8) <= s_clk;
   
end Shell;
