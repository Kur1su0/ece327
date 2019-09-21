LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY part1 IS
    PORT( s		 : IN std_logic;
			 x, y	 : IN std_logic_vector(7 downto 0);
          m     : OUT std_logic_vector(7 downto 0)
	);

END part1;

ARCHITECTURE LogicFunc OF part1 IS
BEGIN
	 with s select
	     m <= x when '0' ,
		       y when '1',
				 unaffected when others;
				 


	
END LogicFunc;
