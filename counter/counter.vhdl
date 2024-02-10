library ieee;
use ieee.std_logic_1164.all;

entity TFF is
	port(T,CLK,RST:in std_logic;
	    Q:out std_logic);
end TFF;

architecture TFF of TFF is
	signal Q_temp :std_logic;
begin
	process(CLK,RST)
	BEGIN
	     if RST ='1' then
		     Q_temp<='0';
	     elsif rising_edge(CLK) then
		     if T ='1' then
			     Q_temp <=not Q_temp;
			else
				Q_temp <=Q_temp;
			end if;
		end if;
		end process;

	Q <= Q_temp;
end TFF;

library ieee;
use ieee.std_logic_1164.all;

entity AND_G is
	port(A,B: in std_logic;
	    Z:out std_logic);
end AND_G;

architecture AND_G of AND_G is
begin
	Z <=A and B;

end AND_G;

library ieee;
use ieee.std_logic_1164.all;

entity up_counter is
	port(CLK,RST: in std_logic;
	    Q: out std_logic_vector(2 downto 0));
end up_counter;

architecture up_counter of up_counter is
	component AND_G is 
		port(A,B: in std_logic;
		    Z: out std_logic);
	end component AND_G;

component TFF is
	port(T,CLK,RST: in std_logic;
	    Q: out std_logic);
end component TFF;
signal QA,QB,QC,TC: std_logic;

begin
	T1:TFF port map(T=>'1',CLK=>CLK,RST=>RST,Q=>QA);
	T2:TFF port map (T=>QA,CLK=>CLK,RST=>RST,Q=>QB);
	A1:AND_G port map(A=>QA,B=>QB,Z=>TC);
	T3:TFF port map(T=>TC,CLK=>CLK,RST=>RST,Q=>Q(2));
	Q(0)<='1' when QA='1' else '0';
	Q(1)<='1' when QB='1' else '0';
end up_counter;


