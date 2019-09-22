LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY lab1_board3 IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0));
END lab1_board3;

ARCHITECTURE struct OF lab1_board3 IS
COMPONENT part3
PORT (
next_fib_output : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
next_fib_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : part3
PORT MAP (

next_fib_input => sw(3 downto 0),
next_fib_output=> ledr(4 downto 0)


);
end struct;