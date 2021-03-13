library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7segment is
    Port (  BCDin : in STD_LOGIC_VECTOR (3 downto 0);
            Seven_Segment : out STD_LOGIC_VECTOR (7 downto 0));
end bcd_7segment;

architecture Behavioral of bcd_7segment is

begin
    process(BCDin)
    begin
        case BCDin is
            when "0000" => Seven_Segment <= "00000011"; ---0
            when "0001" => Seven_Segment <= "10011111"; ---1
            when "0010" => Seven_Segment <= "00100101"; ---2
            when "0011" => Seven_Segment <= "00001101"; ---3
            when "0100" => Seven_Segment <= "10011001"; ---4
            when "0101" => Seven_Segment <= "01001001"; ---5
            when "0110" => Seven_Segment <= "01000001"; ---6
            when "0111" => Seven_Segment <= "00011111"; ---7
            when "1000" => Seven_Segment <= "00000001"; ---8
            when "1001" => Seven_Segment <= "00001001"; ---9
            when "1010" => Seven_Segment <= "00010001";  -- 'A'
            when "1011" => Seven_Segment <= "11000001";  -- 'b'
            when "1100" => Seven_Segment <= "01100011";  -- 'C'
            when "1101" => Seven_Segment <= "10000101";  -- 'd'
            when "1110" => Seven_Segment <= "01100001";  -- 'E'
            when "1111" => Seven_Segment <= "01110001";  -- 'F'
            when others => Seven_Segment <= "11111111"; ---null
        end case;
    end process;
end Behavioral;
