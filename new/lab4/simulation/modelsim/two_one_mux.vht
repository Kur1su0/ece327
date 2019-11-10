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
-- Generated on "11/09/2019 21:57:41"
                                                            
-- Vhdl Test Bench template for design  :  two_one_mux
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY two_one_mux_vhd_tst IS
END two_one_mux_vhd_tst;
ARCHITECTURE two_one_mux_arch OF two_one_mux_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL load_reg : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT two_one_mux
	PORT (
	input : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	load_reg : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : two_one_mux
	PORT MAP (
-- list connections between master ports and signals
	input => input,
	load_reg => load_reg,
	output => output
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
		  input<="111111111";
		  load_reg<='1';
		  wait for 10ns;
		  
		  load_reg<='0';
		  wait for 10ns;
		  
WAIT;                                                        
END PROCESS always;                                          
END two_one_mux_arch;
