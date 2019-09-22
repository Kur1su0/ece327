LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY p5_comp1 IS
PORT(
    cur_fib_in    : IN std_logic_vector (3 downto 0);
    dest_bit_out  : OUT std_logic_vector (4 downto 0)  --- XXXX OR 00000
);
END p5_comp1;

ARCHITECTURE bit_increaser OF p5_comp1 IS
BEGIN
    --- dest_bit <= cur_fib OR "00000";
	with cur_fib_in select
	    dest_bit_out <= "00000" when "0000",
	                "00001" when "0001",
			    		 "00010" when "0010",
		    			 "00011" when "0011",
			    		 "00101" when "0101",
			    		 "01000" when "1000",
			   		 "01101" when "1101",
			   		 "11111" when others;
	
	 ---when "0000"|"0001"|"0010"|"0011"|"0101"|"1000"|"1101", ---0|1|2|3|5|8|13,
END bit_increaser;
