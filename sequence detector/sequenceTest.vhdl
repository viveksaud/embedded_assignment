LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sequence_1011_detector IS
END sequence_1011_detector;

ARCHITECTURE behavior OF sequence_1011_detector IS

    COMPONENT Sequence_Detector
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         input_bit : IN  std_logic;
         sequence_detected : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal input_bit : std_logic := '0';

   --Outputs
   signal sequence_detected : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: Sequence_Detector PORT MAP (
          clk => clk,
          reset => reset,
          input_bit => input_bit,
          sequence_detected => sequence_detected
        );

   -- Clock process definitions
   clk_process : process
   begin
        while true loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
   end process;

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- Apply stimulus
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '0';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '0';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '0';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '0';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;
      input_bit <= '1';
      wait for clk_period;

      -- End simulation
      wait;
   end process;

END;
