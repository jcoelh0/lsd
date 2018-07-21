library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port( enable   : in  std_logic;
			binInput : in  std_logic_vector(3 downto 0);
			decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	decOut_n   <=  "1111111"  when (enable   =  '0')
            else  "1000000"  when (binInput = X"0")
            else  "1111001"  when (binInput = X"1")
            else  "0100100"  when (binInput = X"2")
            else  "0110000"  when (binInput = X"3")
            else  "0011001"  when (binInput = X"4")
            else  "0010010"  when (binInput = X"5")
            else  "0000010"  when (binInput = X"6")
            else  "1111000"  when (binInput = X"7")
            else  "0000000"  when (binInput = X"8")
            else  "0010000"  when (binInput = X"9")
            else  "0001000"  when (binInput = X"A")
            else  "0000011"  when (binInput = X"B")
            else  "1000110"  when (binInput = X"C")
            else  "0100001"  when (binInput = X"D")
            else  "0000110"  when (binInput = X"E")
            else  "0001110";   -- (binInput = X"F")
end Behavioral;