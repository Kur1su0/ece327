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
-- Generated on "10/28/2019 13:36:43"
                                                            
-- Vhdl Test Bench template for design  :  lab3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3_vhd_tst IS
END lab3_vhd_tst;
ARCHITECTURE lab3_arch OF lab3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Bus_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT lab3
	PORT (
	Bus_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Done : OUT STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab3
	PORT MAP (
-- list connections between master ports and signals
	Bus_out => Bus_out,
	clk => clk,
	DIN => DIN,
	Done => Done,
	Resetn => Resetn,
	Run => Run
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
		  		  	  Run<='1';
		  Resetn<='1';
		  --Test1 mvi 001010 >-->  Regx
	      
		  clk<='0';wait for 10ns;
		  DIN<="01001010"; wait for 5ns;
		  clk<='1'; wait for 10ns;
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
       
		  
		  --Test2 mv 001--> regx
		   
			
			
		  clk<='0';  wait for 10ns;
		DIN<="00010001"; wait for 5ns;
		   
		  clk<='1'; wait for 10ns;
		  
			 
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  

		  
	     -- Test3 add 
		  clk<='0';	   wait for 10ns;
	DIN<="10001010"; wait for 5ns;
		  clk<='1'; wait for 10ns;
 
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  
WAIT;                                                        
END PROCESS always;                                          
END lab3_arch;
