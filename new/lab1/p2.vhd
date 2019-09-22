LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY part2 IS
    PORT(
	     fib_input      : IN std_logic_vector(3 downto 0);
        fib_output     : OUT std_logic
	 );

END part2;
--- output 1 when input is 0|1|2|3|5|8|13
ARCHITECTURE LogicFunc2 OF part2 IS
BEGIN
    with fib_input select
	     fib_output <= '1' when "0000"|"0001"|"0010"|"0011"|"0101"|"1000"|"1101", ---0|1|2|3|5|8|13,
		                '0' when others;

END LogicFunc2;
