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
-- Generated on "09/21/2019 16:14:46"
                                                            
-- Vhdl Test Bench template for design  :  part1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part1_vhd_tst IS
END part1_vhd_tst;
ARCHITECTURE part1_arch OF part1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT part1
	PORT (
	m : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : part1
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	s => s,
	x => x,
	y => y
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
        s <= '0';  --select X
		  x <= "00000001";
		  y <= "10000000";  
		  wait for 10 ns;
		  s <= '1';  --select Y
		  x <= "00000001";
		  y <= "10000000";  
		  wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END part1_arch;