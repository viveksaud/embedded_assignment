library ieee;
use ieee.std_logic_1164.all;

entity fsmgcd is
	port(RESET,CLK: in std_logic;
	    A,B: in integer;
            GCD: out integer);
end fsmgcd;

architecture behavior of fsmgcd is
	type state is (start, input,output,check,check1,updatex,updatey);
	signal current_state,next_state:state;
begin
	state_register:process(CLK,RESET)
	begin
		if(RESET ='1') then
			current_state <=start;
		elsif(rising_edge(CLK)) then
			current_state <= next_state;
		end if;
	end process;
	compute:process(A,B,current_state)
		variable x,y,r,p: integer;
	begin
		case current_state is
			when start =>
				next_state <= input;
			when input =>
				x:= A;
				y:= B;
				next_state <= check;
			when check =>
				if(x<y) then
					next_state <= updatex;
				else
					next_state <=updatey;
				end if;
				next_state <=check1;
			when check1 =>
				while y /= 0 loop
					r:=x mod y;
					x:=y;
					y:=r;
				end loop;
				next_state <= output;
			when updatex =>
				p:=x;
				x:=y;
				y:=p;
			when updatey =>
				x:=x;
				y:=y;
			when output =>
				GCD <= x;
				next_state <= start;
			when others =>
				next_state <= start;
			end case;
		end process compute;
	end behavior;

