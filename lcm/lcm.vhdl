library ieee;
use ieee.std_logic_1164.all;

entity fsm_lcm is
	port(
	    reset, clk : in std_logic;
	    G, P : in integer;
	    lcm : out integer
            );
	end fsm_lcm;

architecture behavior of fsm_lcm is
type state is (start, input, check, updatea, updateb, output);
signal ps, ns:state;
begin
	seq_proc:process(clk, reset)
	begin
		if(reset = '1') then
			ps <= start;
		elsif(rising_edge(clk)) then
			ps <= ns;
		end if;
	end process seq_proc;
comb_proc: process(G,P,ps)
	variable a, b, c, GCD:integer;
begin
	case ps is
	    when start =>
		lcm <= 0;
		ns <= input;
	    when input =>
		a:= G;
		b:= P;
		c:= a*b;
		ns <= check;
	    when check =>
		if(a>b) then
			ns <= updatea;
		elsif (a<b) then
			ns <= updateb;
		else
			ns <= output;
		end if;
	    when updatea =>
			a:= a - b;
			ns <= check;
	    when updateb =>
			b:= b - a;
			ns <= check;
	    when output =>
			GCD:= a;
			lcm <= c/GCD;
			ns <= input;
	    when others =>
			lcm <= 0;
			ns <= input;
	end case;
end process comb_proc;
end behavior;




