LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part3 IS
    PORT(   
		  next_fib_input      : IN std_logic_vector(3 downto 0);
        next_fib_output     : OUT std_logic_vector(4 downto 0)
	 );
END part3;
ARCHITECTURE LogicFunc3 OF part3 IS
BEGIN
    with next_fib_input select
	     next_fib_output <= "00010" when "0001",
		                    "00011" when "0010",
								  "00101" when "0011",
								  "01000" when "0101",
								  "01101" when "1000",
								  "11111" when others;
		  
		  

		  
		  ---when "0000"|"0001"|"0010"|"0011"|"0101"|"1000"|"1101", ---0|1|2|3|5|8|13,
END LogicFunc3;
