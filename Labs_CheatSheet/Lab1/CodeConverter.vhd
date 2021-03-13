-----------------------------------------------------------------------------
-- Design Name: Simple Code Converter (Structural Behav)
-- Description: Converts 4-bit Natural BCD to 4-bit Excess-3 BCD
-----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity simpleCodeConv is
    Port (  A : in STD_LOGIC_VECTOR(3 downto 0);
            Y : out STD_LOGIC_VECTOR(3 downto 0));
    end simpleCodeConv;
    
architecture Behavioral of simpleCodeConv is

signal A2_N, A1_N, A0_N : STD_LOGIC;

begin
    -- inverted inputs
    A2_N <= NOT A(2);
    A1_N <= NOT A(1);
    A0_N <= NOT A(0);
    -- output functions
    Y(3) <= A(3) OR (A(2) AND A(0)) OR (A(2) AND A(1));
    Y(2) <= (A2_N AND A(0)) OR (A2_N AND A(1)) OR (A(2) AND A1_N AND A0_N);
    Y(1) <= (A1_N AND A0_N) OR (A(1) AND A(0));
    Y(0) <= A0_N;
end Behavioral;