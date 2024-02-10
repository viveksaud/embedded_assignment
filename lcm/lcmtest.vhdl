library ieee;
use ieee.std_logic_1164.all;

entity fsmtestlcm is
	end fsmtestlcm;

architecture behavior of fsmtestlcm is
signal clk, reset: std_logic;
signal G, P, lcm: integer;
component fsm_lcm
	port(clk, reset: in std_logic;
	G, P: in integer;
	lcm: out integer
	);
end component;
begin
	fsm_lcm1 : fsm_lcm port map(clk => clk, reset => reset, G => G, P=> P, lcm =>lcm);
clock: process
begin
	clk<='1';
	wait for 100 ns;

	clk <= '0';
	wait for 100 ns;

end process;
process
begin
	reset <='1';
	wait for 10 ns;
	reset <= '0';

	G <= 50;
	P <=20;
	wait for 1600 ns;

	G <=10;
        P <= 12;
	wait for 1600 ns;

	G <= 17;
	P <= 57;
	wait for 1600 ns;

	wait;
end process;
end behavior;


