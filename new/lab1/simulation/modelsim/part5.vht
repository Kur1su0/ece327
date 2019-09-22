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
-- Generated on "09/22/2019 00:49:39"
                                                            
-- Vhdl Test Bench template for design  :  part5
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part5_vhd_tst IS
END part5_vhd_tst;
ARCHITECTURE part5_arch OF part5_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cur_fib : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL is_valid : STD_LOGIC;
SIGNAL seg_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL switcher : STD_LOGIC;
COMPONENT part5
	PORT (
	cur_fib : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	is_valid : OUT STD_LOGIC;
	seg_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	switcher : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part5
	PORT MAP (
-- list connections between master ports and signals
	cur_fib => cur_fib,
	is_valid => is_valid,
	seg_out => seg_out,
	switcher => switcher
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
		   cur_fib <= "0001";
		  switcher <= '1';
		  wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END part5_arch;
