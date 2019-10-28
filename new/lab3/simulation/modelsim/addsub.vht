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
-- Generated on "10/26/2019 21:48:03"
                                                            
-- Vhdl Test Bench template for design  :  addsub
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addsub_vhd_tst IS
END addsub_vhd_tst;
ARCHITECTURE addsub_arch OF addsub_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ovf : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sub : STD_LOGIC;
COMPONENT addsub
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ovf : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sub : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : addsub
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	ovf => ovf,
	s => s,
	sub => sub
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
		a<="00000010";
	   b<="00000001";
	   sub<='0';	
		wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END addsub_arch;