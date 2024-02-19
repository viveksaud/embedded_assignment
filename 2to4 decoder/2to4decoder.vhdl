library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port(I: in_std_logic_vector(1 down to 0);
	     O: out_std_logic_vector(3 down to 0)
	    );
end test;

Architecture behavioural of decoder is
begin
	process(I)
	begin
	O <= "0001" when I="00" else
	O <= "0010" when I="01" else
	O <= "0100" when I="10" else
	O <= "1000" when I="11" else
	"XXXX"
end behavioural;

