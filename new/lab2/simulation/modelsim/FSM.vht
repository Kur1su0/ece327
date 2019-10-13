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
-- Generated on "10/12/2019 18:54:45"
                                                            
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
SIGNAL output2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT FSM
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ivalid : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	output2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
	output2 => output2,
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
		rst<='1';		
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
		---	clk<='1';ivalid<='1';		rst<='1';
       -- input<="000"; ---fake input, which won't affect the rest opt.

      --  wait for 10ns;
		--  rst<='0';
		  
        --TEST alt10k(000) --> alt alt20k(100)
		clk<='1';ivalid<='1';
        input <= "100";
		 wait for 10ns;

        --TEST alt20k --> alt alt10k
      -- input <= "000";
		--  wait for 10ns;
        
        --TEST alt20k(100) --> alt25k(010)        10k(000) 20k(100) 25k(010) smooth(001)
    --   input <="100";
		--  wait for 10ns;
		clk<='0'; wait for 10ns;
		clk<='1';ivalid<='1';
		  input <="010";
		  wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1';ivalid<='1';
		  input <="001";
		  wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1';ivalid<='1';
		   input <="001";
		  wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1';ivalid<='1';
		   input <="001";
		  wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1';ivalid<='1';
		   input <="001";
		  wait for 10ns;
		  
		  clk<='0'; wait for 10ns;
		  clk<='1';ivalid<='1';
		   input <="001";
		  wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END FSM_arch;
