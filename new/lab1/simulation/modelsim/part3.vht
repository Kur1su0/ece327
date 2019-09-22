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
-- Generated on "09/22/2019 19:32:52"
                                                            
-- Vhdl Test Bench template for design  :  part3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part3_vhd_tst IS
END part3_vhd_tst;
ARCHITECTURE part3_arch OF part3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL next_fib_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL next_fib_output : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT part3
	PORT (
	next_fib_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	next_fib_output : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : part3
	PORT MAP (
-- list connections between master ports and signals
	next_fib_input => next_fib_input,
	next_fib_output => next_fib_output
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
		  
	 next_fib_input <= "0001"; wait for 2 ns; --- 1
		 
	 next_fib_input <= "0010"; wait for 2 ns; --- 2
	 
	 next_fib_input <= "0011"; wait for 2 ns; --- 3
	 
	 next_fib_input <= "0101"; wait for 2 ns; --- 5
	 
	 next_fib_input <= "1000"; wait for 2 ns; --- 8
	 
	 next_fib_input <= "1101"; wait for 2 ns; --- 13
	 
	 ---error test
	 next_fib_input <= "0000"; wait for 2 ns; --- 0
	 next_fib_input <= "0100"; wait for 2 ns; --- 4
	 next_fib_input <= "0111"; wait for 2 ns; --- 7
WAIT;                                                        
END PROCESS always;                                          
END part3_arch;
