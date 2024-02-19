library	ieee;
use ieee.std_logic_1164.all;

entity	half_adder is
port(
	A,B:in std_logic;
	s,c:out std_logic
);
end half_adder;

architecture behavior of half_adder is
s<= A xor B;
c<= A and B;
end behavior;
 

