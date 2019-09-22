LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY p5_comp2 IS
PORT(
    what_fib_in    : IN std_logic_vector (4 downto 0);
    seg_out_out    : OUT std_logic_vector (6 downto 0) --- XXXX OR 00000
);

END p5_comp2;


ARCHITECTURE display_seg OF p5_comp2 IS
BEGIN
    with what_fib_in select
	     seg_out_out  <= "1000000" when "00000",  --- 0
		              "1111001" when "00001",  --- 1
		              "0100100" when "00010",  --- 2  | 0 1 6 3
                    "0110000" when "00011",  --- 3 | 0 1 2 3 6
						  "0010010" when "00101",  --- 5 | 0 5 6 2 3
						  "0000000" when "01000",  --- 8 | 6543210
						  "0000110" when others;   --- E | 0 5 6 4 3
END display_seg;


