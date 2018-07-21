library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
   generic( N   : positive := 4);
	port(dataIn  : in  std_logic_vector((N-1) downto 0);
        clk     : in  std_logic;
        enable  : in  std_logic; 
        reset   : in  std_logic;
        dataOut : out std_logic_vector((N-1) downto 0));
end AccN;

architecture Behavioral of AccN is

   signal s_regOut, s_adderOut : std_logic_vector((N-1) downto 0);
  
begin
   
   adderN : work.AdderN(Behavioral)
            generic map(N => N)
				port map(operand0 => dataIn,
                     operand1 => s_regOut,
							result   => s_adderOut);
                     
   regN   : work.RegN(Behavioral)
            generic map(N => N)
            port map(dataIn   => s_adderOut,
                     dataOut  => s_regOut,
							reset    => reset,
                     enable   => enable,
                     clk      => clk);
   
   dataOut <= s_regOut;
end Behavioral;
