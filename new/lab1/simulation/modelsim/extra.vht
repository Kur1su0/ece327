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
-- Generated on "09/22/2019 19:07:30"
                                                            
-- Vhdl Test Bench template for design  :  extra
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY extra_vhd_tst IS
END extra_vhd_tst;
ARCHITECTURE extra_arch OF extra_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cur_fib : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL is_valid : STD_LOGIC;
SIGNAL seg_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg_out2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL switcher : STD_LOGIC;
COMPONENT extra
	PORT (
	cur_fib : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	is_valid : BUFFER STD_LOGIC;
	seg_out : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg_out2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	switcher : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : extra
	PORT MAP (
-- list connections between master ports and signals
	cur_fib => cur_fib,
	is_valid => is_valid,
	seg_out => seg_out,
	seg_out2 => seg_out2,
	switcher => switcher
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
		  --- Same tst as part5
		  cur_fib <= "0001";
		  switcher <= '1';
		  wait for 10 ns;
		  
		  cur_fib <= "0001";
		  switcher <= '0';
		  wait for 10 ns;
		  
		  cur_fib <= "1010";
		  switcher <= '0';
		  wait for 10 ns;
		  --- Trst fot input of "8" and "13"
		  
		  cur_fib <= "1000";
		  switcher <= '1';
		  wait for 10 ns;
		  
		  cur_fib <= "1101";
		  switcher <= '1';
		  wait for 10 ns;
		  
WAIT;                                                        
END PROCESS always;                                          
END extra_arch;