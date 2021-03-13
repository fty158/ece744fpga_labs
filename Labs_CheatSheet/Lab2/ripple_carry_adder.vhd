library ieee;
use ieee.std_logic_1164.all;
 
entity ripple_carry_adder is
generic (WIDTH : natural := 4);
port (
        A  : in std_logic_vector(WIDTH-1 downto 0);
        B  : in std_logic_vector(WIDTH-1 downto 0);
        S   : out std_logic_vector(WIDTH downto 0));
end ripple_carry_adder;
 
 
architecture rtl of ripple_carry_adder is

-- Specify Components..
component full_adder is
port (
        a  : in  std_logic;
        b  : in  std_logic;
        c_in : in  std_logic;
        s   : out std_logic;
        c_out : out std_logic);
end component full_adder;
-- .. End Specifying Components 

-- Specify Signals here..

-- .. EndofSignalSpecification
 
begin
-- put your own code here ..

-- .. EndofCode

end rtl;