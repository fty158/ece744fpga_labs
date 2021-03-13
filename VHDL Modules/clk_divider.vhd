----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:40 10/27/2006 
-- Design Name: 
-- Module Name:    clk_divider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_divider is
    Port ( clk : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

begin

-- If s1 and s0 are both low, the output clock rate is 1/10 Hz. 
-- If s1 is low and s0 is high, the output clock rate is 1 Hz. 
-- If s1 is high and s0 is low, the output clock rate is 10 Hz. 
-- If s1 and s0 are both high, the output clock rate is 1 KHz.

process (clk, s0, s1)

variable count : integer := 0; 
begin 

if clk = '1' and clk'event then
	count := count + 1;
	
	-- Code to create the 1/10 Hz clock.
	if s0 = '0' and s1 = '0' then
		if count >= 1000000000 then
			count := 0;
		end if;
		if count >= 0 and count <= 500000000 then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
	end if;
	
	-- Code to create the 1 Hz clock.
	if s0 = '1' and s1 = '0' then
		if count >= 100000000 then 
			count := 0;
		end if;
		if count >= 0 and count <= 50000000 then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
	end if;
	
	-- Code to create the 10 Hz clock.
	if s0 = '1' and s1 = '0' then
		if count >= 10000000 then 
			count := 0;
		end if;
		if count >= 0 and count <= 5000000 then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
	end if;
	
	-- Code to create the 1 KHz clock.
	if s0 = '1' and s1 = '0' then
		if count >= 100000 then 
			count := 0;
		end if;
		if count >= 0 and count <= 50000 then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
	end if;
	
end if;
end process;
end Behavioral;

