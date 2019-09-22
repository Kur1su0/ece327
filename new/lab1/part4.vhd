LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part4 IS
    PORT(   
		  seg_fib_input      : IN std_logic_vector(3 downto 0);
        seg_fib_output     : OUT std_logic_vector(6 downto 0)
	 );
END part4;
ARCHITECTURE LogicFunc4 OF part4 IS
BEGIN
    with seg_fib_input select
	     seg_fib_output <= "1000000" when "0000",  --- 0
		                    "1111001" when "0001",  --- 1
		                    "0110100" when "0010",  --- 2  | 0 1 6 3
								  "0010010" when "0101",  --- 5 | 0 5 6 2 3
								  "0000000" when "1000",  --- 8 | 6543210
								  "0000110"when others;  --- E | 0 5 6 4 3
		  
		  

		  
		  ---when "0000"|"0001"|"0010"|"0011"|"0101"|"1000"|"1101", ---0|1|2|3|5|8|13,
END LogicFunc4;