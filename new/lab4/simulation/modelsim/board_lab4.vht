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
-- Generated on "11/15/2019 00:41:54"
                                                            
-- Vhdl Test Bench template for design  :  board_lab4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY board_lab4_vhd_tst IS
END board_lab4_vhd_tst;
ARCHITECTURE board_lab4_arch OF board_lab4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT board_lab4
	PORT (
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : board_lab4
	PORT MAP (
-- list connections between master ports and signals
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
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
		  
		   SW(9)<='0';SW(8)<='0'; wait for 10ns;
		  SW(9)<='1';SW(8)<='1';
		       

			SW(7 downto 4)<="0101";
         SW(3 downto 0)<="1001";
		   KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
			KEY(0)<='0'; wait for 10ns;
		   KEY(0)<='1'; wait for 10ns;
			
WAIT;                                                        
END PROCESS always;                                          
END board_lab4_arch;
