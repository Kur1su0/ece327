LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY p5_comp3 IS
PORT(
    switcher_in       : IN std_logic;
    dest_bit_in       : IN std_logic_vector (4 downto 0);
	 next_fib_in       : IN std_logic_vector (4 downto 0);
    what_fib_out      : OUT std_logic_vector (4 downto 0)
	 );
END p5_comp3;

ARCHITECTURE select_which_fib OF p5_comp3 IS
BEGIN
    with switcher_in select
	     what_fib_out <= dest_bit_in when '0',
		              next_fib_in when '1',
						  unaffected when others;
END select_which_fib;



