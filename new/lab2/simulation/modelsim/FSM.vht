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
-- Generated on "10/13/2019 16:47:30"
                                                            
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
SIGNAL seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT FSM
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ivalid : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC;
	seg1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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
	rst => rst,
	seg1 => seg1,
	seg2 => seg2
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
		  
      rst<='1'; --LOW Activate
		--TEST state gnd
		clk<='1';
		ivalid<='1';
      input<="000";
		wait for 10ns;	  
		
		--TEST ivalid..  
		
		clk<='0';
	  	clk<='1';
		ivalid<='0';
      input<="100";
		wait for 10ns;
		 --TEST clk =0
		 
		 clk<='0';
		 ivalid<='1';
		 input<="100";
		wait for 10ns;
		 
		
		
		--TEST gnd-->10k
		clk<='0';
		
		wait for 10ns;
		clk<='1';
		input<="100";
		wait for 10ns;
		
		--TEST 10K-->25K
			clk<='0';
		
		wait for 10ns;
		clk<='1';
		input<="010";
		wait for 10ns;
		
		--TEST 25K-->10k
			clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="010";
		wait for 10ns;
		
		--TEST 10k->25k and s1->s2->s3->s4->s5
	   --1.Setting back to  25k
    	clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="010";
		wait for 10ns;
		--2. -->s1
		clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="001";
		wait for 10ns;
		--3. -->s2
			clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="001";
		wait for 10ns;
		--4. -->s3
			clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="001";
		wait for 10ns;
		--5 -->s4
			clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="001";
		wait for 10ns;
		--6 -->s5
			clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="001";
		wait for 10ns;
		
		
		--TEST s5-->alt25k  ()not stable)
    	clk<='0';	
		wait for 10ns;
		clk<='1';
		input<="000";
		wait for 10ns;	

	--TEST rest
     clk<='0';	
		wait for 10ns;
		clk<='1';rst<='0';
		input<="000";
		wait for 10ns;	
WAIT;                                                        
END PROCESS always;                                          
END FSM_arch;
