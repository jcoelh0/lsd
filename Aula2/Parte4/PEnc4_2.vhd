library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity PEnc4_2 is
	port(decodedIn  : in  STD_LOGIC_VECTOR(3 downto 0);
		  encodedOut : out STD_LOGIC_VECTOR(1 downto 0);
		  validOut   : out STD_LOGIC);
end PEnc4_2;
 
architecture Behavioral of PEnc4_2 is
begin
	process(decodedIn)
	begin
		if (decodedIn="1000") then
			encodedOut <= "00";
			validOut   <= '1';
		elsif (decodedIn="0100") then
			encodedOut <= "01";
			validOut   <= '1';
		elsif (decodedIn="0010") then
			encodedOut <= "10";
			validOut   <= '1';
		elsif (decodedIn="0001") then
			encodedOut <= "11";
			validOut   <= '1';
		else
			encodedOut <= "ZZ";
			validOut   <= '0';
		end if;
end process;
 
end Behavioral;