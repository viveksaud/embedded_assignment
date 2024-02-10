library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

Architecture testArch of testbench is
	component sequence
		port(
		     CLK : in std_logic;
		     RST : in std_logic;
		     X : in std_logic;
		     Z : out std_logic
		    );
end component;

	signal CLK, RST,X : std_logic :='0';
	signal Z : std_logic;

constant CLK_period : time := 10 ns;
begin
	uut: sequence port map (CLK => CLK, RST => RST, X => X, Z => Z);
	CLK_process : process
begin

	CLK <= '0';
	wait for CLK_period/2;
	CLK <= '1';
	wait for CLK_period/2;

end process;
--stimulus process
stimulus_proc: process
begin
	X <= '0';
	RST <= '1';
	wait for 30 ns;
	RST <= '0';
	wait for 40 ns;
	X <= '1';
	wait for 10 ns;
	X <= '0';
        wait for 10 ns;
	X <= '1';
	wait for 10 ns;
	X <= '1';
	wait for 10 ns;
	X <= '0';
	wait for 10 ns;
	X <= '0';
	-- insert stimulus here
	wait;
end process stimulus_proc;
end testArch;


	
