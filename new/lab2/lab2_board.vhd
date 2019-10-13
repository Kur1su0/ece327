LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab2_board IS
port(

SW    : IN STD_LOGIC_VECTOR(9 downto 0);
HEX0  : OUT STD_LOGIC_VECTOR(6 downto 0);
HEX1  : OUT STD_LOGIC_VECTOR(6 downto 0);
LEDR : OUT STD_LOGIC_VECTOR(9 downto 0);
KEY  : IN STD_LOGIC_VECTOR(3 downto 0)




);
END lab2_board;


ARCHITECTURE struct OF lab2_board IS
COMPONENT FSM IS
port(
    ivalid: IN std_logic;
    clk: IN std_logic;
    rst: IN std_logic;

    input: IN std_logic_vector(2 downto 0); --- gnd/alt10k/25k/smooth.
    output: OUT std_logic_vector(1 downto 0);--- no-e-sig/seat-belt.
	 
	 seg1: OUT std_logic_vector(6 downto 0);--- seg1
	 seg2: OUT std_logic_vector(6 downto 0)--- seg2
	 
	 --output2: OUT std_logic_vector(3 downto 0)--- no-e-sig/seat-belt.
);


END COMPONENT;

begin 






mmmap : FSM
port map(
    ivalid => SW(8),
	 clk => KEY(0),
	 rst=>SW(7),
	 input=>SW(2 downto 0),
	 output=>LEDR(9 downto 8),
	 seg1 => HEX0,
	 seg2=>HEX1

);




end struct;





