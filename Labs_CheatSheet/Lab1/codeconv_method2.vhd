-----------------------------------------------------------------------------
-- Design Name: Simple Code Converter method 2
-- Description: Converts 4-bit Natural BCD to 4-bit Excess-3 BCD
-----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity simpleCodeConv2 is
    Port (  A : in STD_LOGIC_VECTOR(3 downto 0);
            Y : out STD_LOGIC_VECTOR(3 downto 0));
    end simpleCodeConv2;
    
architecture Behavioral of simpleCodeConv2 is

begin
    Y <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + 3, 4));
end Behavioral;