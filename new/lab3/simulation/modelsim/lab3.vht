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
-- Generated on "10/31/2019 16:05:19"
                                                            
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
SIGNAL Bus_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT lab3
	PORT (
	Bus_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Done : BUFFER STD_LOGIC;
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
		  --Test1 mvi
	     -- save 00000000 01001010  to R1
		   DIN<="0000000001001010";  
		  clk<='0';wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		   
			-- save 00000000 01000001 to R0
			DIN<="0000000001000001";
		  clk<='0';  wait for 10ns;  
		  clk<='1'; wait for 10ns;
		  		 
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  	  
		  --  save 10000000 01011001 to R3  (large num)
			  DIN<="1000000001011001";
			  clk<='0';  wait for 10ns;  
		     clk<='1'; wait for 10ns;	
			  
		     clk<='0'; wait for 10ns;
		     clk<='1'; wait for 10ns;
		  
		  --Test2 mv
		  --mv R1 to R4
		  DIN<="0000000000100001";
		    clk<='0';  wait for 10ns;  
		     clk<='1'; wait for 10ns;	
			  
		     clk<='0'; wait for 10ns;
		     clk<='1'; wait for 10ns;
			  
			  
			  
			  
	     -- Test3 Add R0 + R4  -> R0
		  DIN<="0000000010000100";  
		  clk<='0';wait for 10ns;
		  clk<='1'; wait for 10ns;
   
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		   clk<='0';wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
		--CURRENT WORKING  HEREEEEEEE------  
	     --TEST5 Sub 
		  
	   --TEST 4.1 Sub small number. R0-R1
	       -- 00000000 11 000 001 
	         DIN<="0000000011000001";
	         clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		  
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		  clk<='0';wait for 10ns;
		  clk<='1'; wait for 10ns;
		  
	    --TEST 4.2 sub large num. R3 - R4 --save-to--> R3
	    --DIN<="00000000 11 011 100"
	         DIN<="0000000011011100";
	         clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		  
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		 --TEST 5 run
		 Run<='0';
		 DIN<="0000000011001000";
		
		  clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
		 
	
		 
		  
		  --TEST 6 resetn
		  Run<='1';
	


		  clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		 
	
		 
		 Resetn<='0';
		 clk<='0'; wait for 10ns;
		 clk<='1'; wait for 10ns;
		
WAIT;                                                        
END PROCESS always;                                          
END lab3_arch;
