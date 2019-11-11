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
-- Generated on "11/10/2019 19:36:45"
                                                            
-- Vhdl Test Bench template for design  :  lab4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4_vhd_tst IS
END lab4_vhd_tst;
ARCHITECTURE lab4_arch OF lab4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL multiplicand : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL multiplier : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT lab4
	PORT (
	busy : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	done : OUT STD_LOGIC;
	multiplicand : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	multiplier : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rst : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	clk => clk,
	done => done,
	multiplicand => multiplicand,
	multiplier => multiplier,
	result => result,
	rst => rst,
	start => start
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
		  start<='1';
			rst<='0';wait for 10ns;
			rst<='1';
			
			
			multiplicand<="11111101";
         multiplier <= "00001000";
			
	      clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;		
			
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
	
			
			
		 
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;
		
		
		
			
			multiplicand<="00000001";
         multiplier <= "00001000";
			
	      clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;		
			
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;	
	
			
			
		 
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;
			
			clk<='0'; wait for 10ns;
			clk<='1'; wait for 10ns;
		
			

			
			
WAIT;                                                        
END PROCESS always;                                          
END lab4_arch;
