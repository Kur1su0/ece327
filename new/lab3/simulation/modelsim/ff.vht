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
-- Generated on "10/31/2019 16:24:30"
                                                            
-- Vhdl Test Bench template for design  :  ff
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_vhd_tst IS
END ff_vhd_tst;
ARCHITECTURE ff_arch OF ff_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL XIN : STD_LOGIC;
COMPONENT ff
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	q : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	XIN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	XIN => XIN
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
		  
		  
		  
		  XIN<='1';
		  d<="1111111100000000"; 
		  clk <='0';wait for 10ns;
		  clk <='1';wait for 10ns;
		  
		  
		 
		  

WAIT;                                                        
END PROCESS always;                                          
END ff_arch;
