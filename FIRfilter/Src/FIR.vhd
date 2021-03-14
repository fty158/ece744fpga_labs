library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity FIR is 
	Port ( 	
			x : in std_logic_vector(0 to 31); 
			y_h : out std_logic_vector(0 to 31);
			clk : in std_logic);
end FIR; 
architecture Behavioral of FIR is
// specify Signals here ...

begin
// write your code here ...

end Behavioral; 