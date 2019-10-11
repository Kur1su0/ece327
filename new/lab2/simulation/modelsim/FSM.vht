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
-- Generated on "10/11/2019 16:22:57"
                                                            
-- Vhdl Test Bench template for design  :  FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_tst IS
END FSM_vhd_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ivalid : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT FSM
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ivalid : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	input => input,
	ivalid => ivalid,
	output => output,
	rst => rst
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
		--- TEST clk
	  	clk<='1';
		ivalid<='0';
        input<="000";
		wait for 10ns;
		 
        --- TEST ivalid
	    clk<='0';
		ivalid<='1';
        input<="000";
		wait for 10ns;	  
		  
		--- TEST alt10k
        clk<='1';ivalid<='1';
        input<="000";
        wait for 10ns;
		  
		---TEST clk during a flight.
		clk<='0';ivalid<='0';
        input<="000";
        wait for 10ns;
		  
		---TEST alt rest
		clk<='1';ivalid<='1';
        input<="001"; ---fake input, which won't affect the rest opt.
		rst<='1';
        wait for 10ns;

		rst<='0';
        --TEST alt10k(000) --> alt alt20k(100)
		clk<='1';ivalid<='1';
        input <= "100";

        --TEST alt20k --> alt alt10k
        input <= "000";
        
        --TEST alt20k(100) --> alt25k(010)        10k(000) 20k(100) 25k(010) smooth(001)
        --input <=""
		  
WAIT;                                                        
END PROCESS always;                                          
END FSM_arch;
