library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture test of testbench is
signal J,K,CLK,RST: std_logic := '0';
signal Q,Qb: std_logic;

component jk is
port(
	J,K,CLK,RST: in std_logic;
	Q,Qb: out std_logic
	);
end component;

begin
	UUT: jk
	port map(J => J, K => K, CLK => CLK, RST => RST, Q =>Q, Qb => Qb);

clock_process: process
begin
	CLK <= '0';
	wait for 100 ns;
end process clock_process;

stimulus_process: process
begin
	RST <= '1';
	wait for 10 ns;

	RST <= '0';
	wait for 10 ns;

	--test case 1
	J <= '0';
	K <= '0';
	wait for 100 ns;

	--test case 2
	J <= '0';
	K <= '1';
	wait for 100 ns;

	--test case 3
	J <= '1';
	K <= '0';
	wait for 100 ns;

	--test case 4
	J <= '1';
	K <= '1';
	wait for 100 ns;

	wait;
end process stimulus_process;
end test;



