library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port( sel 		: in  std_logic;
			dataIn0  : in  std_logic;
         dataIn1  : in  std_logic;
         dataOut	: out std_logic);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin

    dataOut <= dataIn1 when (SEL = '1') else dataIn0;

end Behavioral;