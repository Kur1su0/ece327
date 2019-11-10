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
-- Generated on "11/10/2019 13:28:45"
                                                            
-- Vhdl Test Bench template for design  :  regB
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regB_vhd_tst IS
END regB_vhd_tst;
ARCHITECTURE regB_arch OF regB_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input_regC_shift : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL loadreg : STD_LOGIC;
SIGNAL multiplier : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output_proL : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL shift : STD_LOGIC;
COMPONENT regB
	PORT (
	input_regC_shift : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	loadreg : IN STD_LOGIC;
	multiplier : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output_proL : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	output_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	shift : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regB
	PORT MAP (
-- list connections between master ports and signals
	input_regC_shift => input_regC_shift,
	loadreg => loadreg,
	multiplier => multiplier,
	output_proL => output_proL,
	output_sel => output_sel,
	shift => shift
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
		  loadreg<='1';
		  multiplier<="10000001";
		  wait for 10ns;
		  
		  loadreg<='0';
		  input_regC_shift<="11";
		  shift<='1'; wait for 10ns;
		  shift<='0'; wait for 10ns;
		  
		  input_regC_shift<="00";
		  shift<='1'; wait for 10ns;
		  shift<='0'; wait for 10ns;
		  
		  input_regC_shift<="11";
		  shift<='1'; wait for 10ns;
		  shift<='0'; wait for 10ns;
		  

		  
		  
WAIT;                                                        
END PROCESS always;                                          
END regB_arch;
