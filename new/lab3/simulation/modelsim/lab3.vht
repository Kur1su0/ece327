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
-- Generated on "10/27/2019 20:57:59"
                                                            
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
SIGNAL in_out : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL out_out : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT lab3
	PORT (
	Bus_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Done : OUT STD_LOGIC;
	in_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	out_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
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
	in_out => in_out,
	out_out => out_out,
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
		DIN<="00001001";
		  Run<='1';
		  clk<='0';  wait for 10ns; 
		  Resetn<='0';  wait for 10ns;
		  Resetn<='1'; --low activate
		  
		  --test 2 : mv
		 
		  clk<='1'; wait for 10ns;
		 
		  clk<='0'; wait for 10ns;
		  
		  
		  clk<='1'; wait for 10ns;
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   -- test 3: mvi
        DIN<="01001001";
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		 
		 
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  --test 4: Add init=>load_ir->sub1->sub2->sub3
		  DIN<="11001010";
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
		  
		  --test 5: Add init=>load_ir->add1->add2->add3
		  DIN<="10001010";
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
END lab3_arch;
