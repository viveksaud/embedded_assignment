library ieee;
use ieee.std_logic_1164.all;

entity test is
	port(A1,A0,E: in std_logic;
	     Y3,Y2,Y1,Y0: out std_logic
	    );
end test;

Architecture test of test is
begin
	Y3 <= E and A1 AND A0;
	Y2 <= E and A1 AND (not A0);
	Y1 <= E and (not A1) AND A0;
	Y0 <= E and (not A1) AND (not A0);
end test;

