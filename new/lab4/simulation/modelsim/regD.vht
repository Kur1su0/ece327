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
-- Generated on "11/08/2019 16:32:25"
                                                            
-- Vhdl Test Bench template for design  :  regD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regD_vhd_tst IS
END regD_vhd_tst;
ARCHITECTURE regD_arch OF regD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count_flag : STD_LOGIC;
SIGNAL is_finished : STD_LOGIC;
SIGNAL load_Reg : STD_LOGIC;
COMPONENT regD
	PORT (
	clk : IN STD_LOGIC;
	count_flag : IN STD_LOGIC;
	is_finished : OUT STD_LOGIC;
	load_Reg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regD
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count_flag => count_flag,
	is_finished => is_finished,
	load_Reg => load_Reg
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
		  
		  load_Reg<='1';
		  count_flag<='1';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  load_Reg<='0';
		  
		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;

WAIT;                                                        
END PROCESS always;                                          
END regD_arch;
