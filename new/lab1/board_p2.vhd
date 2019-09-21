LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY lab1_board2 IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0));
END lab1_board2;

ARCHITECTURE struct OF lab1_board2 IS
COMPONENT part2
PORT (
fib_out : OUT STD_LOGIC;
fib_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : part2
PORT MAP (

fib_in => sw(3 downto 0),
fib_out => ledr(0)


);
end struct;