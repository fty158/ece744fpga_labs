library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry_adder_tb is
end ripple_carry_adder_tb;

-- Specify Signals here..

-- .. EndofSignalSpecification

-- Specify Components..
component ripple_carry_adder is
    generic (WIDTH : natural);
    port (
    A : in  std_logic_vector(WIDTH-1 downto 0);
    B : in  std_logic_vector(WIDTH-1 downto 0);
    S : out std_logic_vector(WIDTH downto 0));
end component ripple_carry_adder;
-- .. End Specifying Components 

begin
-- put your own code here ..

-- EndofCode

end rtl;