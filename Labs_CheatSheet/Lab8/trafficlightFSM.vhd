library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity trafficControlFSM is
    port (  clk : in std_logic;
            ns_r, ns_y, ns_g,
            ew_r, ew_y, ew_g : out std_logic);
end trafficControlFSM;

architecture behav of trafficControlFSM is
-- traffic light controlled by FSM with timer
-- 10 clock cycles for green

-- 1 clock cycle for yellow
-- 1 clock cycle for both red
type state_type is (s0, s1, s2, s3, s4, s5);
signal state, next_state : state_type;
signal timer : integer := 0;
signal timer_reset : std_logic := '0';

begin
    sync_process : process (clk) is
    -- synchronize state transitions and timer with clock
    begin
        if (rising_edge(clk)) then
            state <= next_state;
            if (timer_reset = '1') then
                timer <= 0; -- reset timer
            else
                timer <= timer + 1;
            end if;
        end if;
    end process;
    
    output_decode : process (state) is
    begin
        case (state) is
            when s0 =>
                -- north/south gets green
                ns_r <= '0';
                ns_y <= '0';
                ns_g <= '1';
                -- east/west gets red
                ew_r <= '1';
                ew_y <= '0';
                ew_g <= '0';
                -- hold state for 10 seconds
            when s1 =>
                -- north/south gets yellow
                -- your own code here

                -- east/west gets red
                -- your own code here
                
            when s2 =>
                -- north/south gets red
                -- your own code here

                -- east/west gets red
                -- your own code here

            when s3 =>
                -- north/south gets red
                -- your own code here

                -- east/west gets green
                -- your own code here

            when s4 =>
                -- north/south gets red
                -- your own code here

                -- east/west gets yellow
                -- your own code here

            when s5 =>
                -- north/south gets red
                -- your own code here

                -- east/west gets red
                -- your own code here

            when others =>
                -- north/south gets unknown
                -- your own code here

                -- east/west gets unknown
                -- your own code here

        end case;
    end process;
    
    next_state_decode : process (state, timer) is
    begin
        next_state <= s0; -- initial state
        timer_reset <= '0'; -- negate timer reset
        case (state) is
            when s0 =>
                if (timer = 10) then
                next_state <= s1;
                timer_reset <= '1';
                else
                next_state <= s0;
                end if;
            when s1 =>
            -- your own code here
            when s2 =>
            -- your own code here
            when s3 =>
            -- your own code here
            when s4 =>
            -- your own code here
            when s5 =>
            -- your own code here
            when others =>
                next_state <= s0;
        end case;
    end process;
end behav;

