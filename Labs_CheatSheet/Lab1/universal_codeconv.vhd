-----------------------------------------------------------------------------
-- Design Name: Universal Code Converter
-- Description: Converts between 4-bit Natural BCD and 4-bit Excess-3 BCD
-- Written by: Wesley Sherman
-- Date: 1/31/2018
-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uniCodeConv is
Port (  A : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0);
        sel : in STD_LOGIC);
end uniCodeConv;
architecture Behavioral of uniCodeConv is
begin
    process(sel,A)
    begin
        case sel is
            when '0' => Y <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) + 3, 4));
            when '1' => Y <= std_logic_vector(to_unsigned(to_integer(unsigned( A )) - 3, 4));
            when others => Y <= "0000";
        end case;
    end process;
end Behavioral;

