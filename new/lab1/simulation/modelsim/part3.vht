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
-- Generated on "09/21/2019 19:03:44"
                                                            
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
SIGNAL nxt_fib_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nxt_fib_output : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT part3
	PORT (
	nxt_fib_input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	nxt_fib_output : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : part3
	PORT MAP (
-- list connections between master ports and signals
	nxt_fib_input => nxt_fib_input,
	nxt_fib_output => nxt_fib_output
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
		  nxt_fib_input <= "0000"; wait for 2 ns;
	 
	 nxt_fib_input <= "0001"; wait for 2 ns;
	 
	 nxt_fib_input <= "0010"; wait for 2 ns;
	 
	 nxt_fib_input <= "0011"; wait for 2 ns;
	 
	 nxt_fib_input <= "0101"; wait for 2 ns;
	 
	 nxt_fib_input <= "1000"; wait for 2 ns;
	 
	 nxt_fib_input <= "1101"; wait for 2 ns;
	 
	 ---error test
	 nxt_fib_input <= "0100"; wait for 2 ns;
	 nxt_fib_input <= "0111"; wait for 2 ns;
	 
	 
WAIT;                                                        
END PROCESS always;                                          
END part3_arch;
