library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
	     x,y: in std_logic;
	     z: out std_logic
     );
end or_gate;

architecture or_arch of or_gate is
begin
	z <=x or y;
end or_arch;

library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
	a,b: in std_logic;
	s,c: out std_logic
);
end half_adder;

architecture ha_arch of half_adder is
begin
	s<=a xor b;
	c<=a and b;
end ha_arch;

library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
	A,B,Cin: IN std_logic;
	S,C:out std_logic
);
end full_adder;
architecture fa_arch of full_adder is
	component or_gate is
		port(x,y:in std_logic;
		    z: out std_logic
	    );
end component or_gate;

component half_adder is
	port(
	a,b:in std_logic;
	s,c: out std_logic
	);
end component half_adder;

signal S1, C1,C2:std_logic;
begin
	HA1:half_adder port map(a=>A,b=>B,s=>S1,c=>C1);
	HA2:half_adder port map(a=>S1,b=>Cin,s=>S,c=>C2);
	OR1:or_gate port map(x=>C1,y=>C2,z=>C);
end fa_arch;

		    



