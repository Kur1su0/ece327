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
-- Generated on "11/10/2019 14:27:22"
                                                            
-- Vhdl Test Bench template for design  :  regC
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regC_vhd_tst IS
END regC_vhd_tst;
ARCHITECTURE regC_arch OF regC_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addreg : STD_LOGIC;
SIGNAL carrier : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL loadreg : STD_LOGIC;
SIGNAL output_adder : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL output_prodH : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output_regB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL shift : STD_LOGIC;
COMPONENT regC
	PORT (
	addreg : IN STD_LOGIC;
	carrier : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	loadreg : IN STD_LOGIC;
	output_adder : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	output_prodH : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	output_regB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	shift : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regC
	PORT MAP (
-- list connections between master ports and signals
	addreg => addreg,
	carrier => carrier,
	clk => clk,
	input => input,
	loadreg => loadreg,
	output_adder => output_adder,
	output_prodH => output_prodH,
	output_regB => output_regB,
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
		  
		carrier<='0';
		  
		  loadreg<='1';
		  addreg<='0';
		  shift<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  loadreg<='0';
		  addreg<='1';
		  shift<='1';
		  input<="000000101";
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;

		
		  
WAIT;                                                        
END PROCESS always;                                          
END regC_arch;
