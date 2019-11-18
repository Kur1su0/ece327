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
-- Generated on "11/09/2019 20:39:39"
                                                            
-- Vhdl Test Bench template for design  :  mux
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_vhd_tst IS
END mux_vhd_tst;
ARCHITECTURE mux_arch OF mux_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL mux_out : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL neg1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL neg2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL zero : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT mux
	PORT (
	mux_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	neg1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	neg2 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos2 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	zero : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux
	PORT MAP (
-- list connections between master ports and signals
	mux_out => mux_out,
	neg1 => neg1,
	neg2 => neg2,
	pos1 => pos1,
	pos2 => pos2,
	sel => sel,
	zero => zero
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
		  neg1<="100000001";
		  neg2<="100000010";
		  
		  pos1<="000000001";
		  pos2<="000000010";
		  zero<="000000000";
		  sel<="000";
		  wait for 10ns;
		  
		  
		  
WAIT;                                                        
END PROCESS always;                                          
END mux_arch;
