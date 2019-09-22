LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY lab1_board4 IS
port(

SW: IN STD_LOGIC_VECTOR(3 downto 0);
HEX0 : OUT STD_LOGIC_VECTOR(6 downto 0)
);
END lab1_board4;

ARCHITECTURE struct OF lab1_board4 IS
COMPONENT part4
PORT (

seg_fib_input      : IN std_logic_vector(3 downto 0);
seg_fib_output     : OUT std_logic_vector(6 downto 0)

);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : part4
PORT MAP (

seg_fib_input => sw(3 downto 0),
seg_fib_output => HEX0(6 downto 0)


);
end struct;