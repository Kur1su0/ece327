LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab1_board5 IS
port(

SW8   : IN STD_LOGIC;
SW    : IN STD_LOGIC_VECTOR(3 downto 0);
HEX0  : OUT STD_LOGIC_VECTOR(6 downto 0);
LEDR8 : OUT STD_LOGIC
);
END lab1_board5;

ARCHITECTURE struct OF lab1_board5 IS
COMPONENT part5 IS
PORT (

switcher    : IN std_logic; --- 0 for cur, 1 for next
cur_fib     : IN std_logic_vector (3 downto 0);

seg_out     : OUT std_logic_vector (6 downto 0);
is_valid    : OUT std_logic


);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : part5
PORT MAP (

switcher => SW8,
cur_fib  => SW,
seg_out  => HEX0,
is_valid => LEDR8
);
end struct;


