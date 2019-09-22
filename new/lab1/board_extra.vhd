LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab1_board_extra IS
port(

SW    : IN STD_LOGIC_VECTOR(9 downto 0);
HEX0  : OUT STD_LOGIC_VECTOR(6 downto 0);
HEX1  : OUT STD_LOGIC_VECTOR(6 downto 0);
LEDR : OUT STD_LOGIC_VECTOR(9 downto 0)
);
END lab1_board_extra;

ARCHITECTURE struct OF lab1_board_extra IS
COMPONENT extra IS
PORT (

switcher    : IN std_logic; --- 0 for cur, 1 for next
cur_fib     : IN std_logic_vector (3 downto 0);

seg_out     : OUT std_logic_vector (6 downto 0);
seg_out2    : OUT std_logic_vector (6 downto 0);
is_valid    : OUT std_logic


);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : extra
PORT MAP (

switcher => SW(8),
cur_fib  => SW(3 downto 0),
seg_out  => HEX0(6 downto 0),
seg_out2  => HEX1(6 downto 0),
is_valid => LEDR(8)
);
end struct;


