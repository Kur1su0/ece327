LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part5 IS
PORT(

switcher    : IN std_logic; --- 0 for cur, 1 for next
cur_fib     : IN std_logic_vector (3 downto 0);

seg_out     : OUT std_logic_vector (6 downto 0);
is_valid    : OUT std_logic

);

END part5;





ARCHITECTURE struct OF part5 IS



SIGNAL wire_bit_increase:std_logic_vector(4 downto 0);

SIGNAL wire_next_fib:std_logic_vector(4 downto 0);

SIGNAL wire_select_fib_cur:std_logic_vector(4 downto 0);
SIGNAL wire_select_fib_next: std_logic_vector(4 downto 0);
SIGNAL wire_select_fib_out : std_logic_vector(4 downto 0);


COMPONENT part2
PORT (
fib_output : OUT STD_LOGIC;
fib_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;


COMPONENT part3
PORT(   
		  next_fib_input      : IN std_logic_vector(3 downto 0);
        next_fib_output     : OUT std_logic_vector(4 downto 0)
);
END COMPONENT;

COMPONENT  p5_comp1 
PORT(
    cur_fib_in    : IN std_logic_vector (3 downto 0);
    dest_bit_out  : OUT std_logic_vector (4 downto 0)  --- XXXX OR 00000
);
END COMPONENT;


COMPONENT p5_comp2
    PORT(
        what_fib_in    : IN std_logic_vector (4 downto 0);
        seg_out_out    : OUT std_logic_vector (6 downto 0) --- XXXX OR 00000
    );

END COMPONENT;

COMPONENT p5_comp3
    PORT(   
	     switcher_in       : IN std_logic;
        dest_bit_in       : IN std_logic_vector (4 downto 0);
	     next_fib_in       : IN std_logic_vector (4 downto 0);
        what_fib_out      : OUT std_logic_vector (4 downto 0)
	 );

END COMPONENT;



BEGIN
--Create the device and map it to the appropriate pins
find_valid : part2
PORT MAP (
    fib_input => cur_fib (3 downto 0),
    fib_output => is_valid
);

find_next : part3
PORT MAP (
    next_fib_input => cur_fib(3 downto 0),
    next_fib_output => wire_next_fib(4 downto 0)
);

increase_bit : p5_comp1
PORT MAP(
    cur_fib_in => cur_fib,
	 dest_bit_out => wire_bit_increase
);

select_fib : p5_comp3
PORT MAP(
    switcher_in => switcher  ,
    dest_bit_in => wire_bit_increase,
	 next_fib_in => wire_next_fib ,
    what_fib_out => wire_select_fib_out
);

segment_out : p5_comp2
PORT MAP(
    what_fib_in => wire_select_fib_out,
    seg_out_out => seg_out
);



end struct;









