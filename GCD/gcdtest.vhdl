library ieee;
use ieee.std_logic_1164.all;

entity fsmgcdtest is
end fsmgcdtest;

architecture behavior of fsmgcdtest is
	signal CLK,RESET: std_logic;
	signal A,B,GCD: integer;
	component fsmgcd
		port(CLK,RESET: in std_logic;
		    A,B:in integer;
	            GCD: out integer);
	end component;
begin
	fsmgcd1:fsmgcd port map(CLK=> CLK,RESET=> RESET,A=>A,B=>B,GCD=>GCD);
	clock: process
begin
	CLK<= '1';
	wait for 100 ns;

	CLK<= '0';
	wait for 100 ns;

end process;
process
begin
	RESET<= '1';
	wait for 10 ns;
	RESET <= '0';

	A<= 10;
	B<= 15;
	wait for 2600 ns;

	A<=3456;
	B<=234;
	wait for 2600 ns;

	A<=546;
	B<=23;
	wait for 2600 ns;
wait;
end process;
end behavior;


