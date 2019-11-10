-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/09/2019 11:30:17"
                                                            
-- Vhdl Test Bench template for design  :  regddd
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regddd_vhd_tst IS
END regddd_vhd_tst;
ARCHITECTURE regddd_arch OF regddd_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL continue : STD_LOGIC;
SIGNAL shiftreg : STD_LOGIC;
COMPONENT regddd
	PORT (
	clk_in : IN STD_LOGIC;
	continue : BUFFER STD_LOGIC;
	shiftreg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regddd
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	continue => continue,
	shiftreg => shiftreg
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
WAIT;                                                        
END PROCESS always;                                          
END regddd_arch;
