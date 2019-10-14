LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY airplane_cl is
	PORT(clock, resetn, ivalid, iready: IN std_logic;
		  datain: IN std_logic_vector(7 downto 0);
		  oready, ovalid: OUT std_logic;
		  dataout: OUT std_logic_vector(7 downto 0));
END airplane_cl;

ARCHITECTURE structure of airplane_cl is
	--Declare the component, then port map it!
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

BEGIN

mapport: FSM
port map(
    ivalid=>ivalid,
    rst=>resetn,
    clk=>clock,
    input=>datain(2 downto 0),
    output=>dataout(1 downto 0)
    
);

dataout(7 downto 2)<="000000";

END structure;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
