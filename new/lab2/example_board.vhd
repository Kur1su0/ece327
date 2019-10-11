LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY example_board IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0));
END example_board;
ARCHITECTURE struct OF example_board IS
COMPONENT example
PORT (
clk : IN STD_LOGIC;
d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : example
PORT MAP (
clk => sw(4),
d => sw(3 downto 0),
q => ledr(3 downto 0)
);
end struct;
