-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/21/2019 17:33:42"
                                                            
-- Vhdl Test Bench template for design  :  part2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part2_vhd_tst IS
END part2_vhd_tst;
ARCHITECTURE part2_arch OF part2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fib_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fib_output : STD_LOGIC;
COMPONENT part2
	PORT (
	fib_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	fib_output : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part2
	PORT MAP (
-- list connections between master ports and signals
	fib_input => fib_input,
	fib_output => fib_output
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  fib_input <= "0000";   wait for 10 ns;  fib_input <= "1111";   wait for 10 ns;
		 
		  
		  fib_input <= "0001";    wait for 10 ns;  fib_input <= "1111";   wait for 10 ns;
		  
		  fib_input <= "0010";    wait for 10 ns; fib_input <= "1111";   wait for 10 ns;
		 
		  fib_input <= "0011";  wait for 10 ns; fib_input <= "1111";   wait for 10 ns;
		  
		  fib_input <= "0101";   wait for 10 ns; fib_input <= "1111";   wait for 10 ns;
		  
		  fib_input <= "1000";   wait for 10 ns; fib_input <= "1111";   wait for 10 ns;
		 
		  fib_input <= "1101";  wait for 10 ns; fib_input <= "1111";   wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END part2_arch;
