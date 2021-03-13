library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity simpleCodeConv_test is
-- Port ( );
end simpleCodeConv_test;

architecture sim of simpleCodeConv_test is

component simpleCodeConv2
    port (  A : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(3 downto 0));
end component;

signal a : std_logic_vector(3 downto 0) := "0000";
signal y : std_logic_vector(3 downto 0);
signal clk : std_logic := '1';

begin
    uut : simpleCodeConv2
    port map (  A => a,
                Y => y);
                
    clock : process is
    begin
    clk <= '0'; wait for 5ns;
    clk <= '1'; wait for 5ns;
    -- clock period is 10ns
    end process clock;
    
    process(clk)
    variable count : integer := 0;
    begin
        if clk = '1' and clk'event then
            count := count + 1;
            a <= std_logic_vector(to_unsigned(count,4));
        end if;
    end process;
end sim;