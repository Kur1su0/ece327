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
-- Generated on "11/10/2019 16:59:13"
                                                            
-- Vhdl Test Bench template for design  :  fsm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_vhd_tst IS
END fsm_vhd_tst;
ARCHITECTURE fsm_arch OF fsm_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addreg : STD_LOGIC;
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL is_done : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sel_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT fsm
	PORT (
	addreg : OUT STD_LOGIC;
	busy : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC;
	done : OUT STD_LOGIC;
	is_done : IN STD_LOGIC;
	loadreg : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	shiftreg : OUT STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm
	PORT MAP (
-- list connections between master ports and signals
	addreg => addreg,
	busy => busy,
	clk => clk,
	count => count,
	done => done,
	is_done => is_done,
	loadreg => loadreg,
	rst => rst,
	sel => sel,
	sel_out => sel_out,
	shiftreg => shiftreg,
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
		    rst<='1';
		  
		  start<='1';
		  ---notBusy
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---load_reg
		  is_done<='0';
		  sel<="001";
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---1 add_reg
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---1 shift_reg
		  sel<="010";
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---2 add_reg
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---2 shift_reg
		  sel<="011";
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  ---3 add_reg
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  ---3 shift_reg
		  sel<="100";
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
        ---4 add_reg
		  
		  is_done<='0';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  ---4 shift_reg
		  is_done<='1';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  
		  --fin
		  is_done<='1';
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END fsm_arch;
