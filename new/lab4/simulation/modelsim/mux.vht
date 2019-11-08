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
-- Generated on "10/31/2019 17:10:29"
                                                            
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
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL G : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Mux_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT mux
	PORT (
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	G : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Mux_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	R0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux
	PORT MAP (
-- list connections between master ports and signals
	DIN => DIN,
	G => G,
	Mux_out => Mux_out,
	R0 => R0,
	R1 => R1,
	R2 => R2,
	R3 => R3,
	R4 => R4,
	R5 => R5,
	R6 => R6,
	R7 => R7,
	sel => sel
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
	 R0<="0000000000000000";
    R1<="0000000000000001";
   DIN<="1111111111111111";
    --sel R0
    sel<="0000000001"; wait for 10ns;
	 sel<="0000000010"; wait for 10ns;
	 sel<="1000000000"; wait for 10ns;

	

WAIT;                                                        
END PROCESS always;                                          
END mux_arch;
