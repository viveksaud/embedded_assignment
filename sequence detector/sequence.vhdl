library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sequence_Detector is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input_bit : in STD_LOGIC;
           sequence_detected : out STD_LOGIC);
end Sequence_Detector;

architecture Behavioral of Sequence_Detector is
    type state_type is (IDLE, S1, S10, S101, S1011);
    signal state, next_state : state_type;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    process(state, input_bit)
    begin
        case state is
            when IDLE =>
                if input_bit = '1' then
                    next_state <= S1;
                else
                    next_state <= IDLE;
                end if;
            when S1 =>
                if input_bit = '0' then
                    next_state <= S10;
                else
                    next_state <= S1;
                end if;
            when S10 =>
                if input_bit = '1' then
                    next_state <= S101;
                else
                    next_state <= IDLE;
                end if;
            when S101 =>
                if input_bit = '1' then
                    next_state <= S1011;
                else
                    next_state <= S10;
                end if;
            when S1011 =>
                if input_bit = '1' then
                    sequence_detected <= '1';
                    next_state <= S1;
                else
                    sequence_detected <= '1';
                    next_state <= S10;
                end if;
        end case;
    end process;
end Behavioral;
