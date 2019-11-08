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
-- Generated on "11/08/2019 14:51:38"
                                                            
-- Vhdl Test Bench template for design  :  regA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regA_vhd_tst IS
END regA_vhd_tst;
ARCHITECTURE regA_arch OF regA_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL load_Reg : STD_LOGIC;
SIGNAL multiplicand : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL neg1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL neg2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT regA
	PORT (
	clk : IN STD_LOGIC;
	load_Reg : IN STD_LOGIC;
	multiplicand : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	neg1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	neg2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : regA
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	load_Reg => load_Reg,
	multiplicand => multiplicand,
	neg1 => neg1,
	neg2 => neg2,
	pos1 => pos1,
	pos2 => pos2
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
		  clk<='0';
		  wait for 10ns;
		  
		  clk<='1';
		  load_reg<='1';
		  multiplicand<="00000001";
		  wait for 10ns;
		  
WAIT;                                                        
END PROCESS always;                                          
END regA_arch;
