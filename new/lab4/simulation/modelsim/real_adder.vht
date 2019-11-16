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
-- Generated on "11/10/2019 15:00:50"
                                                            
-- Vhdl Test Bench template for design  :  real_adder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY real_adder_vhd_tst IS
END real_adder_vhd_tst;
ARCHITECTURE real_adder_arch OF real_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL ovf : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT real_adder
	PORT (
	a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	ovf : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : real_adder
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	ovf => ovf,
	s => s
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
		   a<="100000000";
		   b<="100000000";
		  wait for 10ns;
		  
		  a<="010000000";
		  b<="011111111";
		  wait for 10ns;
		  
		  	  
		  a<="010000000";
		  b<="111111111";
		  wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END real_adder_arch;
