library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_Arith.all;
use ieee.std_logic_unsigned.all;

entity bench is 
end bench;

Architecture bench of bench is
	signal A0,A1,E,Y3,Y2,Y1,Y0:std_logic;

component test 
	port(A0,A1,E: in std_logic;
	    Y3,Y2,Y1,Y0: out std_logic);
end component;

begin
	uut: test
	port map (A0 => A0, A1 => A1, E => E,Y3 => Y3,Y2 => Y2, Y1 => Y1, Y0 => Y0);

stimulus_process: process
begin
--test case 1
	A0<='0';
	A1<='0';
        E<='1';
	wait for 10 ns;

	--test case 2
        A0<='1';
        A1<='0';
	E<='1';
	wait for 10 ns;

	--test case 3
	A0<='0';
	A1<='1';
	E<='1';
	wait for 10 ns;

	--test case 4
	A0<='1';
	A1<='1';
	E<='1';
	wait for 10 ns;

	wait;
end process stimulus_process;
end bench;


