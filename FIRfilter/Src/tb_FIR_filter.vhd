library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; 
use IEEE.numeric_std.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.std_logic_textio.all;
use std.textio.all;

entity tb_FIR_filter is
end tb_FIR_filter;

architecture behav of tb_FIR_filter is
    signal x0 : std_logic_vector(0 to 31);
    signal clk : std_logic;
    signal y0 : std_logic_vector(0 to 31);

component FIR is
	Port ( 	
        x : in std_logic_vector(0 to 31); 
        y_h : out std_logic_vector(0 to 31);
        clk : in std_logic);
end component;

begin
    clk_process: process
    begin
        CLK <= '1';
        wait for 100 ns;
        CLK <= '0';
        wait for 100 ns;
    end process clk_process;
	
v1: FIR port map(x0,y0,clk);
process(clk)

file stim_x	: text open read_mode is "stimuli.txt";
file resp_y	: text open write_mode is "respond.txt";

variable line_in_x	:	line;
variable line_out_y	:	line;
variable x_tmp	:	integer;
variable y_tmp	:	integer;

begin
if(clk'event and clk = '1') then

		readline(stim_x, line_in_x);
		read(line_in_x, x_tmp);
		x0	<= conv_std_logic_vector(x_tmp, 32);
		y_tmp := conv_integer(y0);
		
		write(line_out_y, y_tmp);
		writeline(resp_y, line_out_y);

	end if;

end process;
end behav;