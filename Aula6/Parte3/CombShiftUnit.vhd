library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is
   port(dataIn   : in std_logic_vector(7 downto 0);
        shAmount : in std_logic_vector(2 downto 0);
        rotate   : in std_logic;
        dirLeft  : in std_logic;
        shArith  : in std_logic;
        dataOut  : out std_logic_vector(7 downto 0));
end CombShiftUnit;

architecture Behavioral of CombShiftUnit is
 
begin
   
   function SHIFT_LEFT (unsigned(dataIn), to_integer(unsigned(shAmount))) return unsigned(dataOut);
   --function SHIFT_RIGHT (unsigned(dataIn), to_integer(unsigned(shAmount))) return UNSIGNED(dataOut);

   --function SHIFT_LEFT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;
   --function SHIFT_RIGHT (ARG: SIGNED; COUNT: NATURAL) return SIGNED;

   --function ROTATE_LEFT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;
   --function ROTATE_RIGHT (ARG: UNSIGNED; COUNT: NATURAL) return UNSIGNED;

   
end Behavioral;