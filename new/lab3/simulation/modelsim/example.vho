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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

-- DATE "10/28/2019 15:59:18"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END lab3_board;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_board IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|state.T3~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|Selector17~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector5~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector1~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|state.T0~q\ : std_logic;
SIGNAL \mapping|state_machine|Selector2~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|state.T1~q\ : std_logic;
SIGNAL \mapping|state_machine|Selector3~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|state.T2~q\ : std_logic;
SIGNAL \mapping|state_machine|Selector13~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|Selector20~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|Selector0~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|Selector9~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector11~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector15~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector16~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector21~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector6~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector12~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector19~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector10~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal3~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector18~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector9~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector0~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector0~2_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector7~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector6~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector8~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|WideNor0~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal0~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal2~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal1~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal4~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal0~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal8~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|WideNor0~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector23~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~5_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector20~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~2_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector21~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal3~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector22~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector28~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector29~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal4~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal9~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Equal6~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector19~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector18~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector25~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|Selector24~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector7~6_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~1\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~2\ : std_logic;
SIGNAL \mapping|R3|internal_d[1]~feeder_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector6~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~5_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~4\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~5\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector5~6_combout\ : std_logic;
SIGNAL \mapping|R2|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~0_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~7\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~8\ : std_logic;
SIGNAL \mapping|R3|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector4~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~5_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~10\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~11\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector3~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~5_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~13\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~14\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector2~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~3_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~16\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~17\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector1~6_combout\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~19\ : std_logic;
SIGNAL \mapping|Add_sub|Ai|_~20\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~3_combout\ : std_logic;
SIGNAL \mapping|R0|internal_d[7]~feeder_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~0_combout\ : std_logic;
SIGNAL \mapping|R2|internal_d[7]~feeder_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|Selector0~6_combout\ : std_logic;
SIGNAL \mapping|state_machine|DONE_signal~combout\ : std_logic;
SIGNAL \mapping|state_machine|out_sig_signal\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mapping|RA|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|state_machine|in_sig_signal\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mapping|IR_ff|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R6|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R0|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R1|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R2|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|Add_sub|Ai|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R7|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|G|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R3|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R4|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R5|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_in_sig_signal\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \mapping|state_machine|ALT_INV_DONE_signal~combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_out_sig_signal\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mapping|state_machine|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \mapping|RA|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|state_machine|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_state.T0~q\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_state.T3~q\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \mapping|IR_ff|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|state_machine|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_state.T1~q\ : std_logic;
SIGNAL \mapping|state_machine|ALT_INV_state.T2~q\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~5_combout\ : std_logic;
SIGNAL \mapping|R5|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \mapping|R4|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R3|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|G|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \mapping|R7|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|R6|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \mapping|R2|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \mapping|R1|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \mapping|R0|ALT_INV_internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~6_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~5_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~4_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \mapping|MUX_sel|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\mapping|state_machine|ALT_INV_in_sig_signal\(9) <= NOT \mapping|state_machine|in_sig_signal\(9);
\mapping|state_machine|ALT_INV_in_sig_signal\(10) <= NOT \mapping|state_machine|in_sig_signal\(10);
\mapping|state_machine|ALT_INV_in_sig_signal\(11) <= NOT \mapping|state_machine|in_sig_signal\(11);
\mapping|state_machine|ALT_INV_in_sig_signal\(5) <= NOT \mapping|state_machine|in_sig_signal\(5);
\mapping|state_machine|ALT_INV_in_sig_signal\(4) <= NOT \mapping|state_machine|in_sig_signal\(4);
\mapping|state_machine|ALT_INV_in_sig_signal\(3) <= NOT \mapping|state_machine|in_sig_signal\(3);
\mapping|state_machine|ALT_INV_in_sig_signal\(8) <= NOT \mapping|state_machine|in_sig_signal\(8);
\mapping|state_machine|ALT_INV_in_sig_signal\(7) <= NOT \mapping|state_machine|in_sig_signal\(7);
\mapping|state_machine|ALT_INV_in_sig_signal\(6) <= NOT \mapping|state_machine|in_sig_signal\(6);
\mapping|state_machine|ALT_INV_in_sig_signal\(2) <= NOT \mapping|state_machine|in_sig_signal\(2);
\mapping|state_machine|ALT_INV_in_sig_signal\(1) <= NOT \mapping|state_machine|in_sig_signal\(1);
\mapping|state_machine|ALT_INV_in_sig_signal\(0) <= NOT \mapping|state_machine|in_sig_signal\(0);
\mapping|state_machine|ALT_INV_DONE_signal~combout\ <= NOT \mapping|state_machine|DONE_signal~combout\;
\mapping|state_machine|ALT_INV_out_sig_signal\(9) <= NOT \mapping|state_machine|out_sig_signal\(9);
\mapping|state_machine|ALT_INV_out_sig_signal\(7) <= NOT \mapping|state_machine|out_sig_signal\(7);
\mapping|state_machine|ALT_INV_out_sig_signal\(6) <= NOT \mapping|state_machine|out_sig_signal\(6);
\mapping|state_machine|ALT_INV_out_sig_signal\(8) <= NOT \mapping|state_machine|out_sig_signal\(8);
\mapping|state_machine|ALT_INV_out_sig_signal\(5) <= NOT \mapping|state_machine|out_sig_signal\(5);
\mapping|state_machine|ALT_INV_out_sig_signal\(4) <= NOT \mapping|state_machine|out_sig_signal\(4);
\mapping|state_machine|ALT_INV_out_sig_signal\(3) <= NOT \mapping|state_machine|out_sig_signal\(3);
\mapping|state_machine|ALT_INV_out_sig_signal\(2) <= NOT \mapping|state_machine|out_sig_signal\(2);
\mapping|state_machine|ALT_INV_out_sig_signal\(0) <= NOT \mapping|state_machine|out_sig_signal\(0);
\mapping|state_machine|ALT_INV_out_sig_signal\(1) <= NOT \mapping|state_machine|out_sig_signal\(1);
\mapping|state_machine|ALT_INV_Selector29~0_combout\ <= NOT \mapping|state_machine|Selector29~0_combout\;
\mapping|state_machine|ALT_INV_Selector28~0_combout\ <= NOT \mapping|state_machine|Selector28~0_combout\;
\mapping|RA|ALT_INV_internal_d\(7) <= NOT \mapping|RA|internal_d\(7);
\mapping|RA|ALT_INV_internal_d\(6) <= NOT \mapping|RA|internal_d\(6);
\mapping|RA|ALT_INV_internal_d\(5) <= NOT \mapping|RA|internal_d\(5);
\mapping|RA|ALT_INV_internal_d\(4) <= NOT \mapping|RA|internal_d\(4);
\mapping|RA|ALT_INV_internal_d\(3) <= NOT \mapping|RA|internal_d\(3);
\mapping|RA|ALT_INV_internal_d\(2) <= NOT \mapping|RA|internal_d\(2);
\mapping|RA|ALT_INV_internal_d\(1) <= NOT \mapping|RA|internal_d\(1);
\mapping|state_machine|ALT_INV_Selector23~0_combout\ <= NOT \mapping|state_machine|Selector23~0_combout\;
\mapping|state_machine|ALT_INV_Selector22~0_combout\ <= NOT \mapping|state_machine|Selector22~0_combout\;
\mapping|state_machine|ALT_INV_Selector21~1_combout\ <= NOT \mapping|state_machine|Selector21~1_combout\;
\mapping|RA|ALT_INV_internal_d\(0) <= NOT \mapping|RA|internal_d\(0);
\mapping|state_machine|ALT_INV_Selector25~0_combout\ <= NOT \mapping|state_machine|Selector25~0_combout\;
\mapping|state_machine|ALT_INV_Selector24~0_combout\ <= NOT \mapping|state_machine|Selector24~0_combout\;
\mapping|state_machine|ALT_INV_Selector20~1_combout\ <= NOT \mapping|state_machine|Selector20~1_combout\;
\mapping|state_machine|ALT_INV_Selector19~1_combout\ <= NOT \mapping|state_machine|Selector19~1_combout\;
\mapping|state_machine|ALT_INV_Selector18~1_combout\ <= NOT \mapping|state_machine|Selector18~1_combout\;
\mapping|state_machine|ALT_INV_Selector3~0_combout\ <= NOT \mapping|state_machine|Selector3~0_combout\;
\mapping|state_machine|ALT_INV_Selector5~0_combout\ <= NOT \mapping|state_machine|Selector5~0_combout\;
\mapping|state_machine|ALT_INV_Selector17~0_combout\ <= NOT \mapping|state_machine|Selector17~0_combout\;
\mapping|state_machine|ALT_INV_state.T0~q\ <= NOT \mapping|state_machine|state.T0~q\;
\mapping|state_machine|ALT_INV_Selector16~0_combout\ <= NOT \mapping|state_machine|Selector16~0_combout\;
\mapping|state_machine|ALT_INV_Selector12~0_combout\ <= NOT \mapping|state_machine|Selector12~0_combout\;
\mapping|state_machine|ALT_INV_Selector11~0_combout\ <= NOT \mapping|state_machine|Selector11~0_combout\;
\mapping|state_machine|ALT_INV_Selector15~0_combout\ <= NOT \mapping|state_machine|Selector15~0_combout\;
\mapping|state_machine|ALT_INV_Selector10~0_combout\ <= NOT \mapping|state_machine|Selector10~0_combout\;
\mapping|state_machine|ALT_INV_Selector9~1_combout\ <= NOT \mapping|state_machine|Selector9~1_combout\;
\mapping|state_machine|ALT_INV_Selector9~0_combout\ <= NOT \mapping|state_machine|Selector9~0_combout\;
\mapping|state_machine|ALT_INV_Selector8~0_combout\ <= NOT \mapping|state_machine|Selector8~0_combout\;
\mapping|state_machine|ALT_INV_Selector21~0_combout\ <= NOT \mapping|state_machine|Selector21~0_combout\;
\mapping|state_machine|ALT_INV_Selector7~0_combout\ <= NOT \mapping|state_machine|Selector7~0_combout\;
\mapping|state_machine|ALT_INV_Selector20~0_combout\ <= NOT \mapping|state_machine|Selector20~0_combout\;
\mapping|state_machine|ALT_INV_Selector0~2_combout\ <= NOT \mapping|state_machine|Selector0~2_combout\;
\mapping|state_machine|ALT_INV_Selector18~0_combout\ <= NOT \mapping|state_machine|Selector18~0_combout\;
\mapping|state_machine|ALT_INV_Selector0~1_combout\ <= NOT \mapping|state_machine|Selector0~1_combout\;
\mapping|state_machine|ALT_INV_Selector13~0_combout\ <= NOT \mapping|state_machine|Selector13~0_combout\;
\mapping|state_machine|ALT_INV_state.T3~q\ <= NOT \mapping|state_machine|state.T3~q\;
\mapping|state_machine|ALT_INV_Selector6~1_combout\ <= NOT \mapping|state_machine|Selector6~1_combout\;
\mapping|state_machine|ALT_INV_Selector0~0_combout\ <= NOT \mapping|state_machine|Selector0~0_combout\;
\mapping|IR_ff|ALT_INV_internal_d\(5) <= NOT \mapping|IR_ff|internal_d\(5);
\mapping|state_machine|ALT_INV_Selector19~0_combout\ <= NOT \mapping|state_machine|Selector19~0_combout\;
\mapping|IR_ff|ALT_INV_internal_d\(4) <= NOT \mapping|IR_ff|internal_d\(4);
\mapping|IR_ff|ALT_INV_internal_d\(3) <= NOT \mapping|IR_ff|internal_d\(3);
\mapping|state_machine|ALT_INV_Selector6~0_combout\ <= NOT \mapping|state_machine|Selector6~0_combout\;
\mapping|state_machine|ALT_INV_state.T1~q\ <= NOT \mapping|state_machine|state.T1~q\;
\mapping|IR_ff|ALT_INV_internal_d\(7) <= NOT \mapping|IR_ff|internal_d\(7);
\mapping|IR_ff|ALT_INV_internal_d\(6) <= NOT \mapping|IR_ff|internal_d\(6);
\mapping|state_machine|ALT_INV_state.T2~q\ <= NOT \mapping|state_machine|state.T2~q\;
\mapping|IR_ff|ALT_INV_internal_d\(0) <= NOT \mapping|IR_ff|internal_d\(0);
\mapping|IR_ff|ALT_INV_internal_d\(2) <= NOT \mapping|IR_ff|internal_d\(2);
\mapping|IR_ff|ALT_INV_internal_d\(1) <= NOT \mapping|IR_ff|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector0~6_combout\ <= NOT \mapping|MUX_sel|Selector0~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector0~5_combout\ <= NOT \mapping|MUX_sel|Selector0~5_combout\;
\mapping|R5|ALT_INV_internal_d\(7) <= NOT \mapping|R5|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector0~4_combout\ <= NOT \mapping|MUX_sel|Selector0~4_combout\;
\mapping|R4|ALT_INV_internal_d\(7) <= NOT \mapping|R4|internal_d\(7);
\mapping|R3|ALT_INV_internal_d\(7) <= NOT \mapping|R3|internal_d\(7);
\mapping|G|ALT_INV_internal_d\(7) <= NOT \mapping|G|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector0~3_combout\ <= NOT \mapping|MUX_sel|Selector0~3_combout\;
\mapping|R7|ALT_INV_internal_d\(7) <= NOT \mapping|R7|internal_d\(7);
\mapping|R6|ALT_INV_internal_d\(7) <= NOT \mapping|R6|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector0~2_combout\ <= NOT \mapping|MUX_sel|Selector0~2_combout\;
\mapping|R2|ALT_INV_internal_d\(7) <= NOT \mapping|R2|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector0~1_combout\ <= NOT \mapping|MUX_sel|Selector0~1_combout\;
\mapping|R1|ALT_INV_internal_d\(7) <= NOT \mapping|R1|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector0~0_combout\ <= NOT \mapping|MUX_sel|Selector0~0_combout\;
\mapping|R0|ALT_INV_internal_d\(7) <= NOT \mapping|R0|internal_d\(7);
\mapping|MUX_sel|ALT_INV_Selector1~6_combout\ <= NOT \mapping|MUX_sel|Selector1~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector1~5_combout\ <= NOT \mapping|MUX_sel|Selector1~5_combout\;
\mapping|R5|ALT_INV_internal_d\(6) <= NOT \mapping|R5|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector1~4_combout\ <= NOT \mapping|MUX_sel|Selector1~4_combout\;
\mapping|R4|ALT_INV_internal_d\(6) <= NOT \mapping|R4|internal_d\(6);
\mapping|R3|ALT_INV_internal_d\(6) <= NOT \mapping|R3|internal_d\(6);
\mapping|G|ALT_INV_internal_d\(6) <= NOT \mapping|G|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector1~3_combout\ <= NOT \mapping|MUX_sel|Selector1~3_combout\;
\mapping|R7|ALT_INV_internal_d\(6) <= NOT \mapping|R7|internal_d\(6);
\mapping|R6|ALT_INV_internal_d\(6) <= NOT \mapping|R6|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector1~2_combout\ <= NOT \mapping|MUX_sel|Selector1~2_combout\;
\mapping|R2|ALT_INV_internal_d\(6) <= NOT \mapping|R2|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector1~1_combout\ <= NOT \mapping|MUX_sel|Selector1~1_combout\;
\mapping|R1|ALT_INV_internal_d\(6) <= NOT \mapping|R1|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector1~0_combout\ <= NOT \mapping|MUX_sel|Selector1~0_combout\;
\mapping|R0|ALT_INV_internal_d\(6) <= NOT \mapping|R0|internal_d\(6);
\mapping|MUX_sel|ALT_INV_Selector2~6_combout\ <= NOT \mapping|MUX_sel|Selector2~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector2~5_combout\ <= NOT \mapping|MUX_sel|Selector2~5_combout\;
\mapping|R5|ALT_INV_internal_d\(5) <= NOT \mapping|R5|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector2~4_combout\ <= NOT \mapping|MUX_sel|Selector2~4_combout\;
\mapping|R4|ALT_INV_internal_d\(5) <= NOT \mapping|R4|internal_d\(5);
\mapping|R3|ALT_INV_internal_d\(5) <= NOT \mapping|R3|internal_d\(5);
\mapping|G|ALT_INV_internal_d\(5) <= NOT \mapping|G|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector2~3_combout\ <= NOT \mapping|MUX_sel|Selector2~3_combout\;
\mapping|R7|ALT_INV_internal_d\(5) <= NOT \mapping|R7|internal_d\(5);
\mapping|R6|ALT_INV_internal_d\(5) <= NOT \mapping|R6|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector2~2_combout\ <= NOT \mapping|MUX_sel|Selector2~2_combout\;
\mapping|R2|ALT_INV_internal_d\(5) <= NOT \mapping|R2|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector2~1_combout\ <= NOT \mapping|MUX_sel|Selector2~1_combout\;
\mapping|R1|ALT_INV_internal_d\(5) <= NOT \mapping|R1|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector2~0_combout\ <= NOT \mapping|MUX_sel|Selector2~0_combout\;
\mapping|R0|ALT_INV_internal_d\(5) <= NOT \mapping|R0|internal_d\(5);
\mapping|MUX_sel|ALT_INV_Selector3~6_combout\ <= NOT \mapping|MUX_sel|Selector3~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector3~5_combout\ <= NOT \mapping|MUX_sel|Selector3~5_combout\;
\mapping|R5|ALT_INV_internal_d\(4) <= NOT \mapping|R5|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector3~4_combout\ <= NOT \mapping|MUX_sel|Selector3~4_combout\;
\mapping|R4|ALT_INV_internal_d\(4) <= NOT \mapping|R4|internal_d\(4);
\mapping|R3|ALT_INV_internal_d\(4) <= NOT \mapping|R3|internal_d\(4);
\mapping|G|ALT_INV_internal_d\(4) <= NOT \mapping|G|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector3~3_combout\ <= NOT \mapping|MUX_sel|Selector3~3_combout\;
\mapping|R7|ALT_INV_internal_d\(4) <= NOT \mapping|R7|internal_d\(4);
\mapping|R6|ALT_INV_internal_d\(4) <= NOT \mapping|R6|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector3~2_combout\ <= NOT \mapping|MUX_sel|Selector3~2_combout\;
\mapping|R2|ALT_INV_internal_d\(4) <= NOT \mapping|R2|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector3~1_combout\ <= NOT \mapping|MUX_sel|Selector3~1_combout\;
\mapping|R1|ALT_INV_internal_d\(4) <= NOT \mapping|R1|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector3~0_combout\ <= NOT \mapping|MUX_sel|Selector3~0_combout\;
\mapping|R0|ALT_INV_internal_d\(4) <= NOT \mapping|R0|internal_d\(4);
\mapping|MUX_sel|ALT_INV_Selector4~6_combout\ <= NOT \mapping|MUX_sel|Selector4~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector4~5_combout\ <= NOT \mapping|MUX_sel|Selector4~5_combout\;
\mapping|R5|ALT_INV_internal_d\(3) <= NOT \mapping|R5|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector4~4_combout\ <= NOT \mapping|MUX_sel|Selector4~4_combout\;
\mapping|R4|ALT_INV_internal_d\(3) <= NOT \mapping|R4|internal_d\(3);
\mapping|R3|ALT_INV_internal_d\(3) <= NOT \mapping|R3|internal_d\(3);
\mapping|G|ALT_INV_internal_d\(3) <= NOT \mapping|G|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector4~3_combout\ <= NOT \mapping|MUX_sel|Selector4~3_combout\;
\mapping|R7|ALT_INV_internal_d\(3) <= NOT \mapping|R7|internal_d\(3);
\mapping|R6|ALT_INV_internal_d\(3) <= NOT \mapping|R6|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector4~2_combout\ <= NOT \mapping|MUX_sel|Selector4~2_combout\;
\mapping|R2|ALT_INV_internal_d\(3) <= NOT \mapping|R2|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector4~1_combout\ <= NOT \mapping|MUX_sel|Selector4~1_combout\;
\mapping|R1|ALT_INV_internal_d\(3) <= NOT \mapping|R1|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector4~0_combout\ <= NOT \mapping|MUX_sel|Selector4~0_combout\;
\mapping|R0|ALT_INV_internal_d\(3) <= NOT \mapping|R0|internal_d\(3);
\mapping|MUX_sel|ALT_INV_Selector5~6_combout\ <= NOT \mapping|MUX_sel|Selector5~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector5~5_combout\ <= NOT \mapping|MUX_sel|Selector5~5_combout\;
\mapping|R5|ALT_INV_internal_d\(2) <= NOT \mapping|R5|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector5~4_combout\ <= NOT \mapping|MUX_sel|Selector5~4_combout\;
\mapping|R4|ALT_INV_internal_d\(2) <= NOT \mapping|R4|internal_d\(2);
\mapping|R3|ALT_INV_internal_d\(2) <= NOT \mapping|R3|internal_d\(2);
\mapping|G|ALT_INV_internal_d\(2) <= NOT \mapping|G|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector5~3_combout\ <= NOT \mapping|MUX_sel|Selector5~3_combout\;
\mapping|R7|ALT_INV_internal_d\(2) <= NOT \mapping|R7|internal_d\(2);
\mapping|R6|ALT_INV_internal_d\(2) <= NOT \mapping|R6|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector5~2_combout\ <= NOT \mapping|MUX_sel|Selector5~2_combout\;
\mapping|R2|ALT_INV_internal_d\(2) <= NOT \mapping|R2|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector5~1_combout\ <= NOT \mapping|MUX_sel|Selector5~1_combout\;
\mapping|R1|ALT_INV_internal_d\(2) <= NOT \mapping|R1|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector5~0_combout\ <= NOT \mapping|MUX_sel|Selector5~0_combout\;
\mapping|R0|ALT_INV_internal_d\(2) <= NOT \mapping|R0|internal_d\(2);
\mapping|MUX_sel|ALT_INV_Selector6~6_combout\ <= NOT \mapping|MUX_sel|Selector6~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector6~5_combout\ <= NOT \mapping|MUX_sel|Selector6~5_combout\;
\mapping|R5|ALT_INV_internal_d\(1) <= NOT \mapping|R5|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector6~4_combout\ <= NOT \mapping|MUX_sel|Selector6~4_combout\;
\mapping|R4|ALT_INV_internal_d\(1) <= NOT \mapping|R4|internal_d\(1);
\mapping|R3|ALT_INV_internal_d\(1) <= NOT \mapping|R3|internal_d\(1);
\mapping|G|ALT_INV_internal_d\(1) <= NOT \mapping|G|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector6~3_combout\ <= NOT \mapping|MUX_sel|Selector6~3_combout\;
\mapping|R7|ALT_INV_internal_d\(1) <= NOT \mapping|R7|internal_d\(1);
\mapping|R6|ALT_INV_internal_d\(1) <= NOT \mapping|R6|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector6~2_combout\ <= NOT \mapping|MUX_sel|Selector6~2_combout\;
\mapping|R2|ALT_INV_internal_d\(1) <= NOT \mapping|R2|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector6~1_combout\ <= NOT \mapping|MUX_sel|Selector6~1_combout\;
\mapping|R1|ALT_INV_internal_d\(1) <= NOT \mapping|R1|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector6~0_combout\ <= NOT \mapping|MUX_sel|Selector6~0_combout\;
\mapping|R0|ALT_INV_internal_d\(1) <= NOT \mapping|R0|internal_d\(1);
\mapping|MUX_sel|ALT_INV_Selector7~6_combout\ <= NOT \mapping|MUX_sel|Selector7~6_combout\;
\mapping|MUX_sel|ALT_INV_Selector7~5_combout\ <= NOT \mapping|MUX_sel|Selector7~5_combout\;
\mapping|R5|ALT_INV_internal_d\(0) <= NOT \mapping|R5|internal_d\(0);
\mapping|MUX_sel|ALT_INV_WideNor0~1_combout\ <= NOT \mapping|MUX_sel|WideNor0~1_combout\;
\mapping|MUX_sel|ALT_INV_WideNor0~0_combout\ <= NOT \mapping|MUX_sel|WideNor0~0_combout\;
\mapping|MUX_sel|ALT_INV_Equal2~0_combout\ <= NOT \mapping|MUX_sel|Equal2~0_combout\;
\mapping|MUX_sel|ALT_INV_Equal8~0_combout\ <= NOT \mapping|MUX_sel|Equal8~0_combout\;
\mapping|MUX_sel|ALT_INV_Selector7~4_combout\ <= NOT \mapping|MUX_sel|Selector7~4_combout\;
\mapping|R4|ALT_INV_internal_d\(0) <= NOT \mapping|R4|internal_d\(0);
\mapping|R3|ALT_INV_internal_d\(0) <= NOT \mapping|R3|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Equal4~1_combout\ <= NOT \mapping|MUX_sel|Equal4~1_combout\;
\mapping|MUX_sel|ALT_INV_Equal3~1_combout\ <= NOT \mapping|MUX_sel|Equal3~1_combout\;
\mapping|MUX_sel|ALT_INV_Equal4~0_combout\ <= NOT \mapping|MUX_sel|Equal4~0_combout\;
\mapping|MUX_sel|ALT_INV_Equal9~0_combout\ <= NOT \mapping|MUX_sel|Equal9~0_combout\;
\mapping|G|ALT_INV_internal_d\(0) <= NOT \mapping|G|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Selector7~3_combout\ <= NOT \mapping|MUX_sel|Selector7~3_combout\;
\mapping|R7|ALT_INV_internal_d\(0) <= NOT \mapping|R7|internal_d\(0);
\mapping|R6|ALT_INV_internal_d\(0) <= NOT \mapping|R6|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Equal1~0_combout\ <= NOT \mapping|MUX_sel|Equal1~0_combout\;
\mapping|MUX_sel|ALT_INV_Equal0~1_combout\ <= NOT \mapping|MUX_sel|Equal0~1_combout\;
\mapping|MUX_sel|ALT_INV_Selector7~2_combout\ <= NOT \mapping|MUX_sel|Selector7~2_combout\;
\mapping|R2|ALT_INV_internal_d\(0) <= NOT \mapping|R2|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Selector7~1_combout\ <= NOT \mapping|MUX_sel|Selector7~1_combout\;
\mapping|R1|ALT_INV_internal_d\(0) <= NOT \mapping|R1|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Equal6~0_combout\ <= NOT \mapping|MUX_sel|Equal6~0_combout\;
\mapping|MUX_sel|ALT_INV_Selector7~0_combout\ <= NOT \mapping|MUX_sel|Selector7~0_combout\;
\mapping|R0|ALT_INV_internal_d\(0) <= NOT \mapping|R0|internal_d\(0);
\mapping|MUX_sel|ALT_INV_Equal3~0_combout\ <= NOT \mapping|MUX_sel|Equal3~0_combout\;
\mapping|MUX_sel|ALT_INV_Equal0~0_combout\ <= NOT \mapping|MUX_sel|Equal0~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector7~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector6~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector5~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector4~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector3~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector2~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector1~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|MUX_sel|Selector0~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mapping|state_machine|DONE_signal~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X45_Y3_N8
\mapping|state_machine|state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|state_machine|state.T2~q\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|state_machine|state.T3~q\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X46_Y3_N39
\mapping|state_machine|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector17~0_combout\ = ( \mapping|state_machine|state.T1~q\ ) # ( !\mapping|state_machine|state.T1~q\ & ( !\mapping|state_machine|state.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_state.T0~q\,
	dataf => \mapping|state_machine|ALT_INV_state.T1~q\,
	combout => \mapping|state_machine|Selector17~0_combout\);

-- Location: LABCELL_X45_Y3_N9
\mapping|state_machine|in_sig_signal[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(11) = ( \mapping|state_machine|in_sig_signal\(11) & ( \mapping|state_machine|state.T1~q\ & ( !\mapping|state_machine|Selector17~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(11) & ( 
-- !\mapping|state_machine|state.T1~q\ ) ) # ( !\mapping|state_machine|in_sig_signal\(11) & ( !\mapping|state_machine|state.T1~q\ & ( \mapping|state_machine|Selector17~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \mapping|state_machine|ALT_INV_Selector17~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(11),
	dataf => \mapping|state_machine|ALT_INV_state.T1~q\,
	combout => \mapping|state_machine|in_sig_signal\(11));

-- Location: FF_X46_Y3_N41
\mapping|IR_ff|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(7));

-- Location: LABCELL_X45_Y3_N30
\mapping|state_machine|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector5~0_combout\ = ( \mapping|state_machine|state.T1~q\ & ( (!\mapping|state_machine|state.T3~q\ & \mapping|IR_ff|internal_d\(7)) ) ) # ( !\mapping|state_machine|state.T1~q\ & ( !\mapping|state_machine|state.T3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_state.T3~q\,
	datac => \mapping|IR_ff|ALT_INV_internal_d\(7),
	dataf => \mapping|state_machine|ALT_INV_state.T1~q\,
	combout => \mapping|state_machine|Selector5~0_combout\);

-- Location: LABCELL_X45_Y3_N21
\mapping|state_machine|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector1~0_combout\ = ( \mapping|state_machine|Selector5~0_combout\ & ( (\mapping|state_machine|state.T0~q\) # (\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \mapping|state_machine|ALT_INV_state.T0~q\,
	dataf => \mapping|state_machine|ALT_INV_Selector5~0_combout\,
	combout => \mapping|state_machine|Selector1~0_combout\);

-- Location: FF_X45_Y3_N44
\mapping|state_machine|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|state_machine|Selector1~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|state_machine|state.T0~q\);

-- Location: LABCELL_X43_Y3_N54
\mapping|state_machine|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector2~0_combout\ = ( !\mapping|state_machine|state.T0~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector2~0_combout\);

-- Location: FF_X46_Y3_N14
\mapping|state_machine|state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|state_machine|Selector2~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|state_machine|state.T1~q\);

-- Location: LABCELL_X46_Y3_N24
\mapping|state_machine|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector3~0_combout\ = ( \mapping|IR_ff|internal_d\(7) & ( \mapping|state_machine|state.T1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_state.T1~q\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(7),
	combout => \mapping|state_machine|Selector3~0_combout\);

-- Location: FF_X46_Y3_N5
\mapping|state_machine|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|state_machine|Selector3~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|state_machine|state.T2~q\);

-- Location: LABCELL_X46_Y2_N51
\mapping|state_machine|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector13~0_combout\ = ( \mapping|state_machine|state.T3~q\ & ( !\mapping|IR_ff|internal_d\(7) ) ) # ( !\mapping|state_machine|state.T3~q\ & ( !\mapping|IR_ff|internal_d\(7) & ( \mapping|state_machine|state.T2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_state.T2~q\,
	datae => \mapping|state_machine|ALT_INV_state.T3~q\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(7),
	combout => \mapping|state_machine|Selector13~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X46_Y3_N23
\mapping|IR_ff|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(2));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X46_Y3_N8
\mapping|IR_ff|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(1));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X45_Y3_N59
\mapping|IR_ff|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(3));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X45_Y3_N50
\mapping|IR_ff|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(4));

-- Location: LABCELL_X45_Y3_N51
\mapping|state_machine|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector20~0_combout\ = (!\mapping|IR_ff|internal_d\(3) & \mapping|IR_ff|internal_d\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(4),
	combout => \mapping|state_machine|Selector20~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X46_Y3_N38
\mapping|IR_ff|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(0));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X46_Y3_N26
\mapping|IR_ff|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(6));

-- Location: LABCELL_X46_Y3_N57
\mapping|state_machine|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector0~1_combout\ = ( \mapping|IR_ff|internal_d\(6) & ( (!\mapping|IR_ff|internal_d\(0) & \mapping|state_machine|state.T2~q\) ) ) # ( !\mapping|IR_ff|internal_d\(6) & ( (!\mapping|IR_ff|internal_d\(0) & 
-- (((!\mapping|IR_ff|internal_d\(7) & \mapping|state_machine|state.T1~q\)) # (\mapping|state_machine|state.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000010001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(0),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|state_machine|ALT_INV_state.T1~q\,
	datad => \mapping|state_machine|ALT_INV_state.T2~q\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(6),
	combout => \mapping|state_machine|Selector0~1_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X46_Y3_N53
\mapping|IR_ff|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|IR_ff|internal_d\(5));

-- Location: LABCELL_X46_Y3_N51
\mapping|state_machine|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector9~0_combout\ = ( \mapping|IR_ff|internal_d\(7) & ( (\mapping|state_machine|state.T1~q\ & \mapping|IR_ff|internal_d\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_state.T1~q\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(7),
	combout => \mapping|state_machine|Selector9~0_combout\);

-- Location: LABCELL_X46_Y3_N30
\mapping|state_machine|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector11~0_combout\ = ( \mapping|state_machine|Selector9~0_combout\ & ( ((\mapping|IR_ff|internal_d\(2) & (\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector0~1_combout\))) # 
-- (\mapping|state_machine|Selector20~0_combout\) ) ) # ( !\mapping|state_machine|Selector9~0_combout\ & ( (\mapping|IR_ff|internal_d\(2) & (\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(2),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datac => \mapping|state_machine|ALT_INV_Selector20~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector0~1_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector9~0_combout\,
	combout => \mapping|state_machine|Selector11~0_combout\);

-- Location: LABCELL_X46_Y3_N54
\mapping|state_machine|out_sig_signal[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(6) = ( \mapping|state_machine|Selector11~0_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(6)) ) ) # ( !\mapping|state_machine|Selector11~0_combout\ & ( 
-- (\mapping|state_machine|Selector13~0_combout\ & \mapping|state_machine|out_sig_signal\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	dataf => \mapping|state_machine|ALT_INV_Selector11~0_combout\,
	combout => \mapping|state_machine|out_sig_signal\(6));

-- Location: LABCELL_X45_Y3_N39
\mapping|state_machine|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector15~0_combout\ = ( !\mapping|state_machine|state.T2~q\ & ( (!\mapping|state_machine|state.T3~q\) # (\mapping|IR_ff|internal_d\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|state_machine|ALT_INV_state.T3~q\,
	dataf => \mapping|state_machine|ALT_INV_state.T2~q\,
	combout => \mapping|state_machine|Selector15~0_combout\);

-- Location: LABCELL_X46_Y3_N9
\mapping|state_machine|out_sig_signal[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(8) = ( \mapping|state_machine|out_sig_signal\(8) & ( (!\mapping|state_machine|Selector15~0_combout\) # (\mapping|state_machine|state.T3~q\) ) ) # ( !\mapping|state_machine|out_sig_signal\(8) & ( 
-- (\mapping|state_machine|state.T3~q\ & \mapping|state_machine|Selector15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_state.T3~q\,
	datad => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	combout => \mapping|state_machine|out_sig_signal\(8));

-- Location: MLABCELL_X47_Y3_N6
\mapping|state_machine|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector16~0_combout\ = ( \mapping|state_machine|state.T1~q\ & ( (!\mapping|IR_ff|internal_d\(7) & \mapping|IR_ff|internal_d\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(6),
	dataf => \mapping|state_machine|ALT_INV_state.T1~q\,
	combout => \mapping|state_machine|Selector16~0_combout\);

-- Location: MLABCELL_X47_Y3_N45
\mapping|state_machine|out_sig_signal[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(9) = ( \mapping|state_machine|Selector16~0_combout\ & ( (\mapping|state_machine|out_sig_signal\(9)) # (\mapping|state_machine|Selector17~0_combout\) ) ) # ( !\mapping|state_machine|Selector16~0_combout\ & ( 
-- (!\mapping|state_machine|Selector17~0_combout\ & \mapping|state_machine|out_sig_signal\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_Selector17~0_combout\,
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(9),
	dataf => \mapping|state_machine|ALT_INV_Selector16~0_combout\,
	combout => \mapping|state_machine|out_sig_signal\(9));

-- Location: LABCELL_X46_Y3_N36
\mapping|state_machine|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector21~0_combout\ = ( \mapping|IR_ff|internal_d\(3) & ( \mapping|IR_ff|internal_d\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|IR_ff|ALT_INV_internal_d\(4),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(3),
	combout => \mapping|state_machine|Selector21~0_combout\);

-- Location: LABCELL_X46_Y3_N27
\mapping|state_machine|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector6~0_combout\ = ( \mapping|IR_ff|internal_d\(6) & ( (\mapping|IR_ff|internal_d\(0) & \mapping|state_machine|state.T2~q\) ) ) # ( !\mapping|IR_ff|internal_d\(6) & ( (\mapping|IR_ff|internal_d\(0) & 
-- (((\mapping|state_machine|state.T1~q\ & !\mapping|IR_ff|internal_d\(7))) # (\mapping|state_machine|state.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010101000100000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(0),
	datab => \mapping|state_machine|ALT_INV_state.T1~q\,
	datac => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datad => \mapping|state_machine|ALT_INV_state.T2~q\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(6),
	combout => \mapping|state_machine|Selector6~0_combout\);

-- Location: LABCELL_X46_Y3_N45
\mapping|state_machine|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector12~0_combout\ = ( \mapping|state_machine|Selector9~0_combout\ & ( ((\mapping|IR_ff|internal_d\(2) & (\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector6~0_combout\))) # 
-- (\mapping|state_machine|Selector21~0_combout\) ) ) # ( !\mapping|state_machine|Selector9~0_combout\ & ( (\mapping|IR_ff|internal_d\(2) & (\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(2),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datac => \mapping|state_machine|ALT_INV_Selector21~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector6~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector9~0_combout\,
	combout => \mapping|state_machine|Selector12~0_combout\);

-- Location: MLABCELL_X47_Y3_N21
\mapping|state_machine|out_sig_signal[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(7) = (!\mapping|state_machine|Selector13~0_combout\ & (\mapping|state_machine|Selector12~0_combout\)) # (\mapping|state_machine|Selector13~0_combout\ & ((\mapping|state_machine|out_sig_signal\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	datab => \mapping|state_machine|ALT_INV_Selector12~0_combout\,
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	combout => \mapping|state_machine|out_sig_signal\(7));

-- Location: LABCELL_X45_Y3_N36
\mapping|state_machine|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector19~0_combout\ = ( !\mapping|IR_ff|internal_d\(4) & ( \mapping|IR_ff|internal_d\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \mapping|IR_ff|ALT_INV_internal_d\(3),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(4),
	combout => \mapping|state_machine|Selector19~0_combout\);

-- Location: LABCELL_X45_Y3_N48
\mapping|state_machine|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector10~0_combout\ = ( \mapping|IR_ff|internal_d\(2) & ( (!\mapping|IR_ff|internal_d\(1) & (((\mapping|state_machine|Selector9~0_combout\ & \mapping|state_machine|Selector19~0_combout\)) # 
-- (\mapping|state_machine|Selector6~0_combout\))) # (\mapping|IR_ff|internal_d\(1) & (\mapping|state_machine|Selector9~0_combout\ & ((\mapping|state_machine|Selector19~0_combout\)))) ) ) # ( !\mapping|IR_ff|internal_d\(2) & ( 
-- (\mapping|state_machine|Selector9~0_combout\ & \mapping|state_machine|Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datab => \mapping|state_machine|ALT_INV_Selector9~0_combout\,
	datac => \mapping|state_machine|ALT_INV_Selector6~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector19~0_combout\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(2),
	combout => \mapping|state_machine|Selector10~0_combout\);

-- Location: LABCELL_X46_Y3_N18
\mapping|state_machine|out_sig_signal[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(5) = ( \mapping|state_machine|Selector10~0_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(5)) ) ) # ( !\mapping|state_machine|Selector10~0_combout\ & ( 
-- (\mapping|state_machine|out_sig_signal\(5) & \mapping|state_machine|Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	datad => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector10~0_combout\,
	combout => \mapping|state_machine|out_sig_signal\(5));

-- Location: MLABCELL_X47_Y3_N9
\mapping|MUX_sel|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal3~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(5) & ( (!\mapping|state_machine|out_sig_signal\(6) & (!\mapping|state_machine|out_sig_signal\(8) & (!\mapping|state_machine|out_sig_signal\(9) & 
-- !\mapping|state_machine|out_sig_signal\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(9),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	combout => \mapping|MUX_sel|Equal3~0_combout\);

-- Location: LABCELL_X45_Y3_N15
\mapping|state_machine|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector18~0_combout\ = ( !\mapping|IR_ff|internal_d\(4) & ( !\mapping|IR_ff|internal_d\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \mapping|IR_ff|ALT_INV_internal_d\(3),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(4),
	combout => \mapping|state_machine|Selector18~0_combout\);

-- Location: LABCELL_X46_Y3_N12
\mapping|state_machine|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector9~1_combout\ = ( \mapping|IR_ff|internal_d\(1) & ( (\mapping|state_machine|Selector9~0_combout\ & \mapping|state_machine|Selector18~0_combout\) ) ) # ( !\mapping|IR_ff|internal_d\(1) & ( 
-- (!\mapping|state_machine|Selector9~0_combout\ & (((\mapping|state_machine|Selector0~1_combout\ & \mapping|IR_ff|internal_d\(2))))) # (\mapping|state_machine|Selector9~0_combout\ & (((\mapping|state_machine|Selector0~1_combout\ & 
-- \mapping|IR_ff|internal_d\(2))) # (\mapping|state_machine|Selector18~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_Selector9~0_combout\,
	datab => \mapping|state_machine|ALT_INV_Selector18~0_combout\,
	datac => \mapping|state_machine|ALT_INV_Selector0~1_combout\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(2),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(1),
	combout => \mapping|state_machine|Selector9~1_combout\);

-- Location: MLABCELL_X47_Y3_N57
\mapping|state_machine|out_sig_signal[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(4) = ( \mapping|state_machine|Selector9~1_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(4)) ) ) # ( !\mapping|state_machine|Selector9~1_combout\ & ( 
-- (\mapping|state_machine|out_sig_signal\(4) & \mapping|state_machine|Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	datad => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector9~1_combout\,
	combout => \mapping|state_machine|out_sig_signal\(4));

-- Location: LABCELL_X46_Y3_N33
\mapping|state_machine|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector0~0_combout\ = ( \mapping|IR_ff|internal_d\(7) & ( (\mapping|state_machine|state.T1~q\ & !\mapping|IR_ff|internal_d\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_state.T1~q\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(7),
	combout => \mapping|state_machine|Selector0~0_combout\);

-- Location: LABCELL_X46_Y3_N42
\mapping|state_machine|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector0~2_combout\ = ( \mapping|state_machine|Selector0~0_combout\ & ( ((!\mapping|IR_ff|internal_d\(2) & (!\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector0~1_combout\))) # 
-- (\mapping|state_machine|Selector18~0_combout\) ) ) # ( !\mapping|state_machine|Selector0~0_combout\ & ( (!\mapping|IR_ff|internal_d\(2) & (!\mapping|IR_ff|internal_d\(1) & \mapping|state_machine|Selector0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(2),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datac => \mapping|state_machine|ALT_INV_Selector18~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector0~1_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector0~0_combout\,
	combout => \mapping|state_machine|Selector0~2_combout\);

-- Location: MLABCELL_X47_Y3_N18
\mapping|state_machine|out_sig_signal[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(0) = ( \mapping|state_machine|out_sig_signal\(0) & ( (\mapping|state_machine|Selector0~2_combout\) # (\mapping|state_machine|Selector13~0_combout\) ) ) # ( !\mapping|state_machine|out_sig_signal\(0) & ( 
-- (!\mapping|state_machine|Selector13~0_combout\ & \mapping|state_machine|Selector0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector0~2_combout\,
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	combout => \mapping|state_machine|out_sig_signal\(0));

-- Location: LABCELL_X46_Y3_N21
\mapping|state_machine|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector7~0_combout\ = ( \mapping|state_machine|Selector0~1_combout\ & ( (!\mapping|state_machine|Selector0~0_combout\ & (((\mapping|IR_ff|internal_d\(1) & !\mapping|IR_ff|internal_d\(2))))) # 
-- (\mapping|state_machine|Selector0~0_combout\ & (((\mapping|IR_ff|internal_d\(1) & !\mapping|IR_ff|internal_d\(2))) # (\mapping|state_machine|Selector20~0_combout\))) ) ) # ( !\mapping|state_machine|Selector0~1_combout\ & ( 
-- (\mapping|state_machine|Selector0~0_combout\ & \mapping|state_machine|Selector20~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_Selector0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_Selector20~0_combout\,
	datac => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(2),
	dataf => \mapping|state_machine|ALT_INV_Selector0~1_combout\,
	combout => \mapping|state_machine|Selector7~0_combout\);

-- Location: MLABCELL_X47_Y3_N12
\mapping|state_machine|out_sig_signal[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(2) = ( \mapping|state_machine|Selector7~0_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(2)) ) ) # ( !\mapping|state_machine|Selector7~0_combout\ & ( 
-- (\mapping|state_machine|out_sig_signal\(2) & \mapping|state_machine|Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datad => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector7~0_combout\,
	combout => \mapping|state_machine|out_sig_signal\(2));

-- Location: LABCELL_X46_Y3_N6
\mapping|state_machine|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector6~1_combout\ = ( \mapping|state_machine|Selector6~0_combout\ & ( (!\mapping|IR_ff|internal_d\(2) & ((!\mapping|IR_ff|internal_d\(1)) # ((\mapping|state_machine|Selector0~0_combout\ & 
-- \mapping|state_machine|Selector19~0_combout\)))) # (\mapping|IR_ff|internal_d\(2) & (\mapping|state_machine|Selector0~0_combout\ & (\mapping|state_machine|Selector19~0_combout\))) ) ) # ( !\mapping|state_machine|Selector6~0_combout\ & ( 
-- (\mapping|state_machine|Selector0~0_combout\ & \mapping|state_machine|Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110101011000000111010101100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(2),
	datab => \mapping|state_machine|ALT_INV_Selector0~0_combout\,
	datac => \mapping|state_machine|ALT_INV_Selector19~0_combout\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(1),
	dataf => \mapping|state_machine|ALT_INV_Selector6~0_combout\,
	combout => \mapping|state_machine|Selector6~1_combout\);

-- Location: LABCELL_X48_Y3_N18
\mapping|state_machine|out_sig_signal[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(1) = ( \mapping|state_machine|Selector6~1_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(1)) ) ) # ( !\mapping|state_machine|Selector6~1_combout\ & ( 
-- (\mapping|state_machine|out_sig_signal\(1) & \mapping|state_machine|Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datad => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector6~1_combout\,
	combout => \mapping|state_machine|out_sig_signal\(1));

-- Location: LABCELL_X46_Y3_N48
\mapping|state_machine|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector8~0_combout\ = ( \mapping|state_machine|Selector6~0_combout\ & ( (!\mapping|IR_ff|internal_d\(2) & (((\mapping|state_machine|Selector0~0_combout\ & \mapping|state_machine|Selector21~0_combout\)) # 
-- (\mapping|IR_ff|internal_d\(1)))) # (\mapping|IR_ff|internal_d\(2) & (((\mapping|state_machine|Selector0~0_combout\ & \mapping|state_machine|Selector21~0_combout\)))) ) ) # ( !\mapping|state_machine|Selector6~0_combout\ & ( 
-- (\mapping|state_machine|Selector0~0_combout\ & \mapping|state_machine|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(2),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(1),
	datac => \mapping|state_machine|ALT_INV_Selector0~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector21~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector6~0_combout\,
	combout => \mapping|state_machine|Selector8~0_combout\);

-- Location: MLABCELL_X47_Y3_N39
\mapping|state_machine|out_sig_signal[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|out_sig_signal\(3) = ( \mapping|state_machine|Selector8~0_combout\ & ( (!\mapping|state_machine|Selector13~0_combout\) # (\mapping|state_machine|out_sig_signal\(3)) ) ) # ( !\mapping|state_machine|Selector8~0_combout\ & ( 
-- (\mapping|state_machine|out_sig_signal\(3) & \mapping|state_machine|Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	datad => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector8~0_combout\,
	combout => \mapping|state_machine|out_sig_signal\(3));

-- Location: MLABCELL_X47_Y3_N30
\mapping|MUX_sel|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|WideNor0~1_combout\ = ( !\mapping|state_machine|out_sig_signal\(1) & ( \mapping|state_machine|out_sig_signal\(3) & ( (\mapping|MUX_sel|Equal3~0_combout\ & (!\mapping|state_machine|out_sig_signal\(4) & 
-- (!\mapping|state_machine|out_sig_signal\(0) & !\mapping|state_machine|out_sig_signal\(2)))) ) ) ) # ( \mapping|state_machine|out_sig_signal\(1) & ( !\mapping|state_machine|out_sig_signal\(3) & ( (\mapping|MUX_sel|Equal3~0_combout\ & 
-- (!\mapping|state_machine|out_sig_signal\(4) & (!\mapping|state_machine|out_sig_signal\(0) & !\mapping|state_machine|out_sig_signal\(2)))) ) ) ) # ( !\mapping|state_machine|out_sig_signal\(1) & ( !\mapping|state_machine|out_sig_signal\(3) & ( 
-- (\mapping|MUX_sel|Equal3~0_combout\ & ((!\mapping|state_machine|out_sig_signal\(4) & (!\mapping|state_machine|out_sig_signal\(0) $ (!\mapping|state_machine|out_sig_signal\(2)))) # (\mapping|state_machine|out_sig_signal\(4) & 
-- (!\mapping|state_machine|out_sig_signal\(0) & !\mapping|state_machine|out_sig_signal\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000000010000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	combout => \mapping|MUX_sel|WideNor0~1_combout\);

-- Location: MLABCELL_X47_Y3_N0
\mapping|MUX_sel|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal0~1_combout\ = ( !\mapping|state_machine|out_sig_signal\(1) & ( !\mapping|state_machine|out_sig_signal\(2) & ( (!\mapping|state_machine|out_sig_signal\(4) & (!\mapping|state_machine|out_sig_signal\(3) & 
-- (!\mapping|state_machine|out_sig_signal\(0) & !\mapping|state_machine|out_sig_signal\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(9),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	combout => \mapping|MUX_sel|Equal0~1_combout\);

-- Location: MLABCELL_X47_Y3_N42
\mapping|MUX_sel|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal2~0_combout\ = ( \mapping|state_machine|out_sig_signal\(5) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (!\mapping|state_machine|out_sig_signal\(8) & (!\mapping|state_machine|out_sig_signal\(6) & 
-- !\mapping|state_machine|out_sig_signal\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	combout => \mapping|MUX_sel|Equal2~0_combout\);

-- Location: LABCELL_X46_Y3_N15
\mapping|MUX_sel|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal1~0_combout\ = (!\mapping|state_machine|out_sig_signal\(8) & !\mapping|state_machine|out_sig_signal\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	combout => \mapping|MUX_sel|Equal1~0_combout\);

-- Location: MLABCELL_X47_Y4_N15
\mapping|MUX_sel|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal4~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(2) & ( (!\mapping|state_machine|out_sig_signal\(1) & !\mapping|state_machine|out_sig_signal\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	combout => \mapping|MUX_sel|Equal4~0_combout\);

-- Location: MLABCELL_X47_Y3_N36
\mapping|MUX_sel|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal0~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(4) & ( !\mapping|state_machine|out_sig_signal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	combout => \mapping|MUX_sel|Equal0~0_combout\);

-- Location: LABCELL_X46_Y3_N0
\mapping|MUX_sel|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal8~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(7) & ( \mapping|state_machine|out_sig_signal\(9) & ( (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|MUX_sel|Equal4~0_combout\ & (!\mapping|state_machine|out_sig_signal\(6) & 
-- \mapping|MUX_sel|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal4~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datad => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(9),
	combout => \mapping|MUX_sel|Equal8~0_combout\);

-- Location: MLABCELL_X47_Y3_N54
\mapping|MUX_sel|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|WideNor0~0_combout\ = ( \mapping|state_machine|out_sig_signal\(5) & ( (!\mapping|state_machine|out_sig_signal\(6) & (!\mapping|state_machine|out_sig_signal\(8) & (!\mapping|state_machine|out_sig_signal\(7) & 
-- \mapping|MUX_sel|Equal0~1_combout\))) ) ) # ( !\mapping|state_machine|out_sig_signal\(5) & ( (\mapping|MUX_sel|Equal0~1_combout\ & ((!\mapping|state_machine|out_sig_signal\(6) & (!\mapping|state_machine|out_sig_signal\(8) $ 
-- (!\mapping|state_machine|out_sig_signal\(7)))) # (\mapping|state_machine|out_sig_signal\(6) & (!\mapping|state_machine|out_sig_signal\(8) & !\mapping|state_machine|out_sig_signal\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101000000000000110100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	datad => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	combout => \mapping|MUX_sel|WideNor0~0_combout\);

-- Location: LABCELL_X45_Y2_N6
\mapping|state_machine|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector23~0_combout\ = ( \mapping|IR_ff|internal_d\(5) & ( \mapping|state_machine|state.T0~q\ & ( (\mapping|IR_ff|internal_d\(3) & (!\mapping|IR_ff|internal_d\(4) & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_state.T1~q\,
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector23~0_combout\);

-- Location: LABCELL_X45_Y2_N21
\mapping|state_machine|in_sig_signal[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(5) = ( \mapping|state_machine|in_sig_signal\(5) & ( \mapping|state_machine|Selector23~0_combout\ ) ) # ( !\mapping|state_machine|in_sig_signal\(5) & ( \mapping|state_machine|Selector23~0_combout\ & ( 
-- \mapping|state_machine|Selector15~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(5) & ( !\mapping|state_machine|Selector23~0_combout\ & ( !\mapping|state_machine|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(5),
	dataf => \mapping|state_machine|ALT_INV_Selector23~0_combout\,
	combout => \mapping|state_machine|in_sig_signal\(5));

-- Location: FF_X47_Y3_N53
\mapping|R5|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(0));

-- Location: MLABCELL_X47_Y3_N51
\mapping|MUX_sel|Selector7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~5_combout\ = ( \mapping|R5|internal_d\(0) & ( \SW[0]~input_o\ & ( (((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\)) # (\mapping|MUX_sel|Equal2~0_combout\) 
-- ) ) ) # ( !\mapping|R5|internal_d\(0) & ( \SW[0]~input_o\ & ( ((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\) ) ) ) # ( \mapping|R5|internal_d\(0) & ( !\SW[0]~input_o\ & ( 
-- \mapping|MUX_sel|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001110101111000011111011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(0),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \mapping|MUX_sel|Selector7~5_combout\);

-- Location: LABCELL_X45_Y3_N54
\mapping|state_machine|Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector20~1_combout\ = ( !\mapping|IR_ff|internal_d\(5) & ( \mapping|state_machine|state.T0~q\ & ( (\mapping|IR_ff|internal_d\(4) & (!\mapping|IR_ff|internal_d\(3) & ((!\mapping|IR_ff|internal_d\(7)) # 
-- (!\mapping|state_machine|state.T1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|state_machine|ALT_INV_state.T1~q\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector20~1_combout\);

-- Location: LABCELL_X45_Y3_N45
\mapping|state_machine|in_sig_signal[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(2) = ( \mapping|state_machine|in_sig_signal\(2) & ( \mapping|state_machine|Selector20~1_combout\ ) ) # ( !\mapping|state_machine|in_sig_signal\(2) & ( \mapping|state_machine|Selector20~1_combout\ & ( 
-- \mapping|state_machine|Selector15~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(2) & ( !\mapping|state_machine|Selector20~1_combout\ & ( !\mapping|state_machine|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(2),
	dataf => \mapping|state_machine|ALT_INV_Selector20~1_combout\,
	combout => \mapping|state_machine|in_sig_signal\(2));

-- Location: FF_X48_Y3_N47
\mapping|R2|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(0));

-- Location: LABCELL_X48_Y3_N45
\mapping|MUX_sel|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~2_combout\ = ( \mapping|R2|internal_d\(0) & ( \mapping|MUX_sel|Equal0~0_combout\ & ( (!\mapping|state_machine|out_sig_signal\(1) & (\mapping|MUX_sel|Equal3~0_combout\ & (!\mapping|state_machine|out_sig_signal\(0) & 
-- \mapping|state_machine|out_sig_signal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|R2|ALT_INV_internal_d\(0),
	dataf => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	combout => \mapping|MUX_sel|Selector7~2_combout\);

-- Location: LABCELL_X45_Y3_N24
\mapping|state_machine|Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector21~1_combout\ = ( \mapping|IR_ff|internal_d\(3) & ( !\mapping|IR_ff|internal_d\(5) & ( (\mapping|IR_ff|internal_d\(4) & (\mapping|state_machine|state.T0~q\ & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datab => \mapping|state_machine|ALT_INV_state.T1~q\,
	datac => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datad => \mapping|state_machine|ALT_INV_state.T0~q\,
	datae => \mapping|IR_ff|ALT_INV_internal_d\(3),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(5),
	combout => \mapping|state_machine|Selector21~1_combout\);

-- Location: LABCELL_X45_Y3_N18
\mapping|state_machine|in_sig_signal[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(3) = ( \mapping|state_machine|Selector21~1_combout\ & ( (\mapping|state_machine|in_sig_signal\(3)) # (\mapping|state_machine|Selector15~0_combout\) ) ) # ( !\mapping|state_machine|Selector21~1_combout\ & ( 
-- (!\mapping|state_machine|Selector15~0_combout\ & \mapping|state_machine|in_sig_signal\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datac => \mapping|state_machine|ALT_INV_in_sig_signal\(3),
	dataf => \mapping|state_machine|ALT_INV_Selector21~1_combout\,
	combout => \mapping|state_machine|in_sig_signal\(3));

-- Location: FF_X50_Y2_N1
\mapping|R3|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(0));

-- Location: MLABCELL_X47_Y4_N42
\mapping|MUX_sel|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal3~1_combout\ = ( !\mapping|state_machine|out_sig_signal\(3) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|state_machine|out_sig_signal\(4) & \mapping|MUX_sel|Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	datad => \mapping|MUX_sel|ALT_INV_Equal4~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Equal3~1_combout\);

-- Location: LABCELL_X45_Y2_N15
\mapping|state_machine|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector22~0_combout\ = ( \mapping|IR_ff|internal_d\(5) & ( \mapping|state_machine|state.T0~q\ & ( (!\mapping|IR_ff|internal_d\(4) & (!\mapping|IR_ff|internal_d\(3) & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_state.T1~q\,
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector22~0_combout\);

-- Location: LABCELL_X45_Y2_N39
\mapping|state_machine|in_sig_signal[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(4) = ( \mapping|state_machine|in_sig_signal\(4) & ( \mapping|state_machine|Selector22~0_combout\ ) ) # ( !\mapping|state_machine|in_sig_signal\(4) & ( \mapping|state_machine|Selector22~0_combout\ & ( 
-- \mapping|state_machine|Selector15~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(4) & ( !\mapping|state_machine|Selector22~0_combout\ & ( !\mapping|state_machine|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(4),
	dataf => \mapping|state_machine|ALT_INV_Selector22~0_combout\,
	combout => \mapping|state_machine|in_sig_signal\(4));

-- Location: FF_X48_Y2_N32
\mapping|R4|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(0));

-- Location: LABCELL_X46_Y2_N30
\mapping|state_machine|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector28~0_combout\ = ( \mapping|IR_ff|internal_d\(7) & ( (\mapping|IR_ff|internal_d\(6) & \mapping|state_machine|state.T2~q\) ) ) # ( !\mapping|IR_ff|internal_d\(7) & ( \mapping|state_machine|state.T2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|IR_ff|ALT_INV_internal_d\(6),
	datad => \mapping|state_machine|ALT_INV_state.T2~q\,
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(7),
	combout => \mapping|state_machine|Selector28~0_combout\);

-- Location: LABCELL_X46_Y2_N42
\mapping|state_machine|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector29~0_combout\ = ( !\mapping|state_machine|state.T3~q\ & ( \mapping|state_machine|state.T2~q\ & ( \mapping|IR_ff|internal_d\(7) ) ) ) # ( !\mapping|state_machine|state.T3~q\ & ( !\mapping|state_machine|state.T2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datae => \mapping|state_machine|ALT_INV_state.T3~q\,
	dataf => \mapping|state_machine|ALT_INV_state.T2~q\,
	combout => \mapping|state_machine|Selector29~0_combout\);

-- Location: LABCELL_X46_Y2_N57
\mapping|state_machine|in_sig_signal[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(10) = ( \mapping|state_machine|in_sig_signal\(10) & ( \mapping|state_machine|Selector29~0_combout\ & ( \mapping|state_machine|Selector28~0_combout\ ) ) ) # ( !\mapping|state_machine|in_sig_signal\(10) & ( 
-- \mapping|state_machine|Selector29~0_combout\ & ( \mapping|state_machine|Selector28~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(10) & ( !\mapping|state_machine|Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector28~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	dataf => \mapping|state_machine|ALT_INV_Selector29~0_combout\,
	combout => \mapping|state_machine|in_sig_signal\(10));

-- Location: LABCELL_X46_Y2_N33
\mapping|state_machine|in_sig_signal[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(9) = ( \mapping|state_machine|in_sig_signal\(9) & ( (!\mapping|state_machine|Selector29~0_combout\) # (\mapping|state_machine|Selector3~0_combout\) ) ) # ( !\mapping|state_machine|in_sig_signal\(9) & ( 
-- (\mapping|state_machine|Selector29~0_combout\ & \mapping|state_machine|Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|state_machine|ALT_INV_Selector29~0_combout\,
	datad => \mapping|state_machine|ALT_INV_Selector3~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_in_sig_signal\(9),
	combout => \mapping|state_machine|in_sig_signal\(9));

-- Location: FF_X48_Y2_N50
\mapping|RA|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector7~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(0));

-- Location: LABCELL_X48_Y2_N0
\mapping|Add_sub|Ai|s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(0) = SUM(( !\mapping|RA|internal_d\(0) $ (!\mapping|MUX_sel|Selector7~6_combout\) ) + ( !VCC ) + ( !VCC ))
-- \mapping|Add_sub|Ai|_~1\ = CARRY(( !\mapping|RA|internal_d\(0) $ (!\mapping|MUX_sel|Selector7~6_combout\) ) + ( !VCC ) + ( !VCC ))
-- \mapping|Add_sub|Ai|_~2\ = SHARE((!\mapping|MUX_sel|Selector7~6_combout\ & (\mapping|state_machine|in_sig_signal\(10))) # (\mapping|MUX_sel|Selector7~6_combout\ & ((\mapping|RA|internal_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(0),
	datad => \mapping|MUX_sel|ALT_INV_Selector7~6_combout\,
	cin => GND,
	sharein => GND,
	sumout => \mapping|Add_sub|Ai|s\(0),
	cout => \mapping|Add_sub|Ai|_~1\,
	shareout => \mapping|Add_sub|Ai|_~2\);

-- Location: LABCELL_X46_Y2_N18
\mapping|state_machine|in_sig_signal[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(8) = ( \mapping|state_machine|state.T2~q\ & ( \mapping|state_machine|in_sig_signal\(8) ) ) # ( !\mapping|state_machine|state.T2~q\ & ( \mapping|state_machine|in_sig_signal\(8) & ( 
-- \mapping|state_machine|Selector13~0_combout\ ) ) ) # ( \mapping|state_machine|state.T2~q\ & ( !\mapping|state_machine|in_sig_signal\(8) & ( !\mapping|state_machine|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	datae => \mapping|state_machine|ALT_INV_state.T2~q\,
	dataf => \mapping|state_machine|ALT_INV_in_sig_signal\(8),
	combout => \mapping|state_machine|in_sig_signal\(8));

-- Location: FF_X48_Y2_N2
\mapping|G|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(0),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(0));

-- Location: MLABCELL_X47_Y4_N12
\mapping|MUX_sel|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal4~1_combout\ = ( \mapping|MUX_sel|Equal4~0_combout\ & ( (\mapping|MUX_sel|Equal3~0_combout\ & (!\mapping|state_machine|out_sig_signal\(4) & \mapping|state_machine|out_sig_signal\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(4),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(3),
	dataf => \mapping|MUX_sel|ALT_INV_Equal4~0_combout\,
	combout => \mapping|MUX_sel|Equal4~1_combout\);

-- Location: MLABCELL_X47_Y3_N15
\mapping|MUX_sel|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal9~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (!\mapping|state_machine|out_sig_signal\(5) & (\mapping|state_machine|out_sig_signal\(8) & 
-- !\mapping|state_machine|out_sig_signal\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(5),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(8),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	combout => \mapping|MUX_sel|Equal9~0_combout\);

-- Location: LABCELL_X48_Y2_N33
\mapping|MUX_sel|Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~4_combout\ = ( \mapping|MUX_sel|Equal4~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|R3|internal_d\(0) & (!\mapping|G|internal_d\(0) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(0))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal4~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|G|internal_d\(0) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(0)))) ) ) ) # ( \mapping|MUX_sel|Equal4~1_combout\ & ( 
-- !\mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|R3|internal_d\(0) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(0)))) ) ) ) # ( !\mapping|MUX_sel|Equal4~1_combout\ & ( !\mapping|MUX_sel|Equal9~0_combout\ & ( 
-- (!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R3|ALT_INV_internal_d\(0),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	datac => \mapping|R4|ALT_INV_internal_d\(0),
	datad => \mapping|G|ALT_INV_internal_d\(0),
	datae => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	combout => \mapping|MUX_sel|Selector7~4_combout\);

-- Location: LABCELL_X48_Y3_N54
\mapping|MUX_sel|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Equal6~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(0) & ( (\mapping|state_machine|out_sig_signal\(1) & !\mapping|state_machine|out_sig_signal\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	combout => \mapping|MUX_sel|Equal6~0_combout\);

-- Location: LABCELL_X45_Y2_N48
\mapping|state_machine|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector19~1_combout\ = ( !\mapping|IR_ff|internal_d\(5) & ( \mapping|state_machine|state.T0~q\ & ( (\mapping|IR_ff|internal_d\(3) & (!\mapping|IR_ff|internal_d\(4) & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_state.T1~q\,
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector19~1_combout\);

-- Location: LABCELL_X45_Y2_N27
\mapping|state_machine|in_sig_signal[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(1) = ( \mapping|state_machine|in_sig_signal\(1) & ( \mapping|state_machine|Selector19~1_combout\ ) ) # ( !\mapping|state_machine|in_sig_signal\(1) & ( \mapping|state_machine|Selector19~1_combout\ & ( 
-- \mapping|state_machine|Selector15~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(1) & ( !\mapping|state_machine|Selector19~1_combout\ & ( !\mapping|state_machine|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(1),
	dataf => \mapping|state_machine|ALT_INV_Selector19~1_combout\,
	combout => \mapping|state_machine|in_sig_signal\(1));

-- Location: FF_X48_Y3_N53
\mapping|R1|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(0));

-- Location: LABCELL_X48_Y3_N24
\mapping|MUX_sel|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~1_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal6~0_combout\ & (\mapping|MUX_sel|Equal0~0_combout\ & \mapping|R1|internal_d\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|R1|ALT_INV_internal_d\(0),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector7~1_combout\);

-- Location: LABCELL_X45_Y3_N3
\mapping|state_machine|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector18~1_combout\ = ( !\mapping|IR_ff|internal_d\(3) & ( \mapping|state_machine|state.T0~q\ & ( (!\mapping|IR_ff|internal_d\(4) & (!\mapping|IR_ff|internal_d\(5) & ((!\mapping|IR_ff|internal_d\(7)) # 
-- (!\mapping|state_machine|state.T1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|state_machine|ALT_INV_state.T1~q\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(5),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(3),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector18~1_combout\);

-- Location: LABCELL_X45_Y3_N12
\mapping|state_machine|in_sig_signal[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(0) = ( \mapping|state_machine|Selector18~1_combout\ & ( (\mapping|state_machine|in_sig_signal\(0)) # (\mapping|state_machine|Selector15~0_combout\) ) ) # ( !\mapping|state_machine|Selector18~1_combout\ & ( 
-- (!\mapping|state_machine|Selector15~0_combout\ & \mapping|state_machine|in_sig_signal\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datad => \mapping|state_machine|ALT_INV_in_sig_signal\(0),
	dataf => \mapping|state_machine|ALT_INV_Selector18~1_combout\,
	combout => \mapping|state_machine|in_sig_signal\(0));

-- Location: FF_X48_Y3_N11
\mapping|R0|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(0));

-- Location: LABCELL_X48_Y3_N36
\mapping|MUX_sel|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~0_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( \mapping|R0|internal_d\(0) & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|state_machine|out_sig_signal\(0) & (!\mapping|state_machine|out_sig_signal\(1) & 
-- !\mapping|state_machine|out_sig_signal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	dataf => \mapping|R0|ALT_INV_internal_d\(0),
	combout => \mapping|MUX_sel|Selector7~0_combout\);

-- Location: LABCELL_X45_Y2_N42
\mapping|state_machine|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector25~0_combout\ = ( \mapping|IR_ff|internal_d\(4) & ( \mapping|state_machine|state.T0~q\ & ( (\mapping|IR_ff|internal_d\(3) & (\mapping|IR_ff|internal_d\(5) & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_state.T1~q\,
	datab => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datac => \mapping|IR_ff|ALT_INV_internal_d\(3),
	datad => \mapping|IR_ff|ALT_INV_internal_d\(5),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(4),
	dataf => \mapping|state_machine|ALT_INV_state.T0~q\,
	combout => \mapping|state_machine|Selector25~0_combout\);

-- Location: LABCELL_X45_Y2_N54
\mapping|state_machine|in_sig_signal[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(7) = ( \mapping|state_machine|in_sig_signal\(7) & ( \mapping|state_machine|Selector25~0_combout\ ) ) # ( !\mapping|state_machine|in_sig_signal\(7) & ( \mapping|state_machine|Selector25~0_combout\ & ( 
-- \mapping|state_machine|Selector15~0_combout\ ) ) ) # ( \mapping|state_machine|in_sig_signal\(7) & ( !\mapping|state_machine|Selector25~0_combout\ & ( !\mapping|state_machine|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datae => \mapping|state_machine|ALT_INV_in_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_Selector25~0_combout\,
	combout => \mapping|state_machine|in_sig_signal\(7));

-- Location: FF_X47_Y2_N8
\mapping|R7|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(0));

-- Location: LABCELL_X45_Y3_N27
\mapping|state_machine|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|Selector24~0_combout\ = ( \mapping|IR_ff|internal_d\(5) & ( !\mapping|IR_ff|internal_d\(3) & ( (\mapping|IR_ff|internal_d\(4) & (\mapping|state_machine|state.T0~q\ & ((!\mapping|state_machine|state.T1~q\) # 
-- (!\mapping|IR_ff|internal_d\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|IR_ff|ALT_INV_internal_d\(4),
	datab => \mapping|state_machine|ALT_INV_state.T1~q\,
	datac => \mapping|state_machine|ALT_INV_state.T0~q\,
	datad => \mapping|IR_ff|ALT_INV_internal_d\(7),
	datae => \mapping|IR_ff|ALT_INV_internal_d\(5),
	dataf => \mapping|IR_ff|ALT_INV_internal_d\(3),
	combout => \mapping|state_machine|Selector24~0_combout\);

-- Location: LABCELL_X45_Y3_N33
\mapping|state_machine|in_sig_signal[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|in_sig_signal\(6) = ( \mapping|state_machine|in_sig_signal\(6) & ( (!\mapping|state_machine|Selector15~0_combout\) # (\mapping|state_machine|Selector24~0_combout\) ) ) # ( !\mapping|state_machine|in_sig_signal\(6) & ( 
-- (\mapping|state_machine|Selector15~0_combout\ & \mapping|state_machine|Selector24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_Selector15~0_combout\,
	datac => \mapping|state_machine|ALT_INV_Selector24~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_in_sig_signal\(6),
	combout => \mapping|state_machine|in_sig_signal\(6));

-- Location: FF_X47_Y2_N50
\mapping|R6|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector7~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(0));

-- Location: MLABCELL_X47_Y2_N9
\mapping|MUX_sel|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~3_combout\ = ( \mapping|state_machine|out_sig_signal\(7) & ( \mapping|R6|internal_d\(0) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|R7|internal_d\(0) & 
-- !\mapping|state_machine|out_sig_signal\(6)))) ) ) ) # ( !\mapping|state_machine|out_sig_signal\(7) & ( \mapping|R6|internal_d\(0) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|state_machine|out_sig_signal\(6))) ) 
-- ) ) # ( \mapping|state_machine|out_sig_signal\(7) & ( !\mapping|R6|internal_d\(0) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|R7|internal_d\(0) & !\mapping|state_machine|out_sig_signal\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datac => \mapping|R7|ALT_INV_internal_d\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|R6|ALT_INV_internal_d\(0),
	combout => \mapping|MUX_sel|Selector7~3_combout\);

-- Location: LABCELL_X48_Y2_N48
\mapping|MUX_sel|Selector7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector7~6_combout\ = ( \mapping|MUX_sel|Selector7~0_combout\ & ( \mapping|MUX_sel|Selector7~3_combout\ ) ) # ( !\mapping|MUX_sel|Selector7~0_combout\ & ( \mapping|MUX_sel|Selector7~3_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector7~0_combout\ & ( !\mapping|MUX_sel|Selector7~3_combout\ ) ) # ( !\mapping|MUX_sel|Selector7~0_combout\ & ( !\mapping|MUX_sel|Selector7~3_combout\ & ( (((!\mapping|MUX_sel|Selector7~4_combout\) # 
-- (\mapping|MUX_sel|Selector7~1_combout\)) # (\mapping|MUX_sel|Selector7~2_combout\)) # (\mapping|MUX_sel|Selector7~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector7~5_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector7~2_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector7~4_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector7~1_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector7~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector7~3_combout\,
	combout => \mapping|MUX_sel|Selector7~6_combout\);

-- Location: FF_X48_Y2_N43
\mapping|RA|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector6~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(1));

-- Location: LABCELL_X48_Y2_N3
\mapping|Add_sub|Ai|s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(1) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector6~6_combout\ $ (\mapping|RA|internal_d\(1))) ) + ( \mapping|Add_sub|Ai|_~2\ ) + ( \mapping|Add_sub|Ai|_~1\ ))
-- \mapping|Add_sub|Ai|_~4\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector6~6_combout\ $ (\mapping|RA|internal_d\(1))) ) + ( \mapping|Add_sub|Ai|_~2\ ) + ( \mapping|Add_sub|Ai|_~1\ ))
-- \mapping|Add_sub|Ai|_~5\ = SHARE((\mapping|RA|internal_d\(1) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|MUX_sel|ALT_INV_Selector6~6_combout\,
	datad => \mapping|RA|ALT_INV_internal_d\(1),
	cin => \mapping|Add_sub|Ai|_~1\,
	sharein => \mapping|Add_sub|Ai|_~2\,
	sumout => \mapping|Add_sub|Ai|s\(1),
	cout => \mapping|Add_sub|Ai|_~4\,
	shareout => \mapping|Add_sub|Ai|_~5\);

-- Location: FF_X48_Y2_N5
\mapping|G|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(1),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(1));

-- Location: LABCELL_X50_Y2_N21
\mapping|R3|internal_d[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|R3|internal_d[1]~feeder_combout\ = ( \mapping|MUX_sel|Selector6~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mapping|MUX_sel|ALT_INV_Selector6~6_combout\,
	combout => \mapping|R3|internal_d[1]~feeder_combout\);

-- Location: FF_X50_Y2_N23
\mapping|R3|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|R3|internal_d[1]~feeder_combout\,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(1));

-- Location: FF_X48_Y2_N26
\mapping|R4|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(1));

-- Location: LABCELL_X48_Y2_N27
\mapping|MUX_sel|Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~4_combout\ = ( \mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|G|internal_d\(1) & (!\mapping|R4|internal_d\(1) & ((!\mapping|R3|internal_d\(1)) # (!\mapping|MUX_sel|Equal4~1_combout\)))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|G|internal_d\(1) & ((!\mapping|R3|internal_d\(1)) # (!\mapping|MUX_sel|Equal4~1_combout\))) ) ) ) # ( \mapping|MUX_sel|Equal3~1_combout\ & ( 
-- !\mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|R4|internal_d\(1) & ((!\mapping|R3|internal_d\(1)) # (!\mapping|MUX_sel|Equal4~1_combout\))) ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( !\mapping|MUX_sel|Equal9~0_combout\ & ( 
-- (!\mapping|R3|internal_d\(1)) # (!\mapping|MUX_sel|Equal4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111000000000010101000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|G|ALT_INV_internal_d\(1),
	datab => \mapping|R3|ALT_INV_internal_d\(1),
	datac => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	datad => \mapping|R4|ALT_INV_internal_d\(1),
	datae => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	combout => \mapping|MUX_sel|Selector6~4_combout\);

-- Location: FF_X47_Y3_N5
\mapping|R5|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(1));

-- Location: MLABCELL_X47_Y3_N24
\mapping|MUX_sel|Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~5_combout\ = ( \mapping|R5|internal_d\(1) & ( \SW[1]~input_o\ & ( (((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\)) # (\mapping|MUX_sel|Equal2~0_combout\) 
-- ) ) ) # ( !\mapping|R5|internal_d\(1) & ( \SW[1]~input_o\ & ( ((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\) ) ) ) # ( \mapping|R5|internal_d\(1) & ( !\SW[1]~input_o\ & ( 
-- \mapping|MUX_sel|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111000000111111111101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datac => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(1),
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \mapping|MUX_sel|Selector6~5_combout\);

-- Location: FF_X48_Y3_N23
\mapping|R1|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(1));

-- Location: LABCELL_X48_Y3_N27
\mapping|MUX_sel|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~1_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal6~0_combout\ & (\mapping|MUX_sel|Equal0~0_combout\ & \mapping|R1|internal_d\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|R1|ALT_INV_internal_d\(1),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector6~1_combout\);

-- Location: FF_X48_Y3_N2
\mapping|R0|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(1));

-- Location: LABCELL_X48_Y3_N0
\mapping|MUX_sel|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~0_combout\ = ( \mapping|R0|internal_d\(1) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (!\mapping|state_machine|out_sig_signal\(1) & (\mapping|MUX_sel|Equal0~0_combout\ & (!\mapping|state_machine|out_sig_signal\(2) & 
-- \mapping|state_machine|out_sig_signal\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datae => \mapping|R0|ALT_INV_internal_d\(1),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector6~0_combout\);

-- Location: FF_X48_Y3_N35
\mapping|R2|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(1));

-- Location: LABCELL_X48_Y3_N33
\mapping|MUX_sel|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~2_combout\ = ( \mapping|R2|internal_d\(1) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (!\mapping|state_machine|out_sig_signal\(0) & (\mapping|state_machine|out_sig_signal\(2) & 
-- !\mapping|state_machine|out_sig_signal\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datae => \mapping|R2|ALT_INV_internal_d\(1),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector6~2_combout\);

-- Location: FF_X47_Y2_N41
\mapping|R7|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(1));

-- Location: FF_X47_Y2_N28
\mapping|R6|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector6~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(1));

-- Location: MLABCELL_X47_Y2_N39
\mapping|MUX_sel|Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~3_combout\ = ( \mapping|R7|internal_d\(1) & ( \mapping|R6|internal_d\(1) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & (!\mapping|state_machine|out_sig_signal\(7) $ 
-- (!\mapping|state_machine|out_sig_signal\(6))))) ) ) ) # ( !\mapping|R7|internal_d\(1) & ( \mapping|R6|internal_d\(1) & ( (!\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & 
-- \mapping|state_machine|out_sig_signal\(6)))) ) ) ) # ( \mapping|R7|internal_d\(1) & ( !\mapping|R6|internal_d\(1) & ( (\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & 
-- !\mapping|state_machine|out_sig_signal\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000100000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	datab => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datae => \mapping|R7|ALT_INV_internal_d\(1),
	dataf => \mapping|R6|ALT_INV_internal_d\(1),
	combout => \mapping|MUX_sel|Selector6~3_combout\);

-- Location: LABCELL_X48_Y2_N42
\mapping|MUX_sel|Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector6~6_combout\ = ( \mapping|MUX_sel|Selector6~2_combout\ & ( \mapping|MUX_sel|Selector6~3_combout\ ) ) # ( !\mapping|MUX_sel|Selector6~2_combout\ & ( \mapping|MUX_sel|Selector6~3_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector6~2_combout\ & ( !\mapping|MUX_sel|Selector6~3_combout\ ) ) # ( !\mapping|MUX_sel|Selector6~2_combout\ & ( !\mapping|MUX_sel|Selector6~3_combout\ & ( (!\mapping|MUX_sel|Selector6~4_combout\) # 
-- (((\mapping|MUX_sel|Selector6~0_combout\) # (\mapping|MUX_sel|Selector6~1_combout\)) # (\mapping|MUX_sel|Selector6~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector6~4_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector6~5_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector6~1_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector6~0_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector6~2_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector6~3_combout\,
	combout => \mapping|MUX_sel|Selector6~6_combout\);

-- Location: FF_X47_Y2_N2
\mapping|R7|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(2));

-- Location: FF_X47_Y2_N59
\mapping|R6|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(2));

-- Location: MLABCELL_X47_Y2_N54
\mapping|MUX_sel|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~3_combout\ = ( !\mapping|state_machine|out_sig_signal\(7) & ( \mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|R6|internal_d\(2))) ) ) ) # ( 
-- \mapping|state_machine|out_sig_signal\(7) & ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|R7|internal_d\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datac => \mapping|R7|ALT_INV_internal_d\(2),
	datad => \mapping|R6|ALT_INV_internal_d\(2),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	combout => \mapping|MUX_sel|Selector5~3_combout\);

-- Location: FF_X48_Y3_N43
\mapping|R2|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(2));

-- Location: LABCELL_X48_Y3_N30
\mapping|MUX_sel|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~2_combout\ = ( \mapping|R2|internal_d\(2) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (!\mapping|state_machine|out_sig_signal\(0) & (!\mapping|state_machine|out_sig_signal\(1) & 
-- \mapping|state_machine|out_sig_signal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|R2|ALT_INV_internal_d\(2),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector5~2_combout\);

-- Location: FF_X48_Y3_N5
\mapping|R0|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(2));

-- Location: LABCELL_X48_Y3_N3
\mapping|MUX_sel|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~0_combout\ = ( \mapping|R0|internal_d\(2) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (!\mapping|state_machine|out_sig_signal\(1) & (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|state_machine|out_sig_signal\(0) & 
-- !\mapping|state_machine|out_sig_signal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|R0|ALT_INV_internal_d\(2),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector5~0_combout\);

-- Location: FF_X48_Y3_N17
\mapping|R1|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(2));

-- Location: LABCELL_X48_Y3_N12
\mapping|MUX_sel|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~1_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|R1|internal_d\(2) & \mapping|MUX_sel|Equal6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|R1|ALT_INV_internal_d\(2),
	datad => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector5~1_combout\);

-- Location: FF_X47_Y3_N29
\mapping|R5|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(2));

-- Location: MLABCELL_X47_Y3_N27
\mapping|MUX_sel|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~5_combout\ = ( \mapping|R5|internal_d\(2) & ( \SW[2]~input_o\ & ( (((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\)) # (\mapping|MUX_sel|Equal2~0_combout\) 
-- ) ) ) # ( !\mapping|R5|internal_d\(2) & ( \SW[2]~input_o\ & ( ((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\) ) ) ) # ( \mapping|R5|internal_d\(2) & ( !\SW[2]~input_o\ & ( 
-- \mapping|MUX_sel|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111001111000011111101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(2),
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \mapping|MUX_sel|Selector5~5_combout\);

-- Location: FF_X47_Y2_N13
\mapping|RA|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector5~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(2));

-- Location: LABCELL_X48_Y2_N6
\mapping|Add_sub|Ai|s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(2) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector5~6_combout\ $ (\mapping|RA|internal_d\(2))) ) + ( \mapping|Add_sub|Ai|_~5\ ) + ( \mapping|Add_sub|Ai|_~4\ ))
-- \mapping|Add_sub|Ai|_~7\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector5~6_combout\ $ (\mapping|RA|internal_d\(2))) ) + ( \mapping|Add_sub|Ai|_~5\ ) + ( \mapping|Add_sub|Ai|_~4\ ))
-- \mapping|Add_sub|Ai|_~8\ = SHARE((\mapping|RA|internal_d\(2) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|MUX_sel|ALT_INV_Selector5~6_combout\,
	datad => \mapping|RA|ALT_INV_internal_d\(2),
	cin => \mapping|Add_sub|Ai|_~4\,
	sharein => \mapping|Add_sub|Ai|_~5\,
	sumout => \mapping|Add_sub|Ai|s\(2),
	cout => \mapping|Add_sub|Ai|_~7\,
	shareout => \mapping|Add_sub|Ai|_~8\);

-- Location: FF_X48_Y2_N8
\mapping|G|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(2),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(2));

-- Location: FF_X46_Y2_N4
\mapping|R4|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(2));

-- Location: FF_X46_Y2_N46
\mapping|R3|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector5~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(2));

-- Location: MLABCELL_X47_Y2_N51
\mapping|MUX_sel|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~4_combout\ = ( \mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal3~1_combout\ & ( (!\mapping|G|internal_d\(2) & (!\mapping|R4|internal_d\(2) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(2))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal3~1_combout\ & ( (!\mapping|R4|internal_d\(2) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(2)))) ) ) ) # ( \mapping|MUX_sel|Equal9~0_combout\ & ( 
-- !\mapping|MUX_sel|Equal3~1_combout\ & ( (!\mapping|G|internal_d\(2) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(2)))) ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( !\mapping|MUX_sel|Equal3~1_combout\ & ( 
-- (!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|G|ALT_INV_internal_d\(2),
	datab => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	datac => \mapping|R4|ALT_INV_internal_d\(2),
	datad => \mapping|R3|ALT_INV_internal_d\(2),
	datae => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	combout => \mapping|MUX_sel|Selector5~4_combout\);

-- Location: MLABCELL_X47_Y2_N12
\mapping|MUX_sel|Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector5~6_combout\ = ( \mapping|MUX_sel|Selector5~5_combout\ & ( \mapping|MUX_sel|Selector5~4_combout\ ) ) # ( !\mapping|MUX_sel|Selector5~5_combout\ & ( \mapping|MUX_sel|Selector5~4_combout\ & ( 
-- (((\mapping|MUX_sel|Selector5~1_combout\) # (\mapping|MUX_sel|Selector5~0_combout\)) # (\mapping|MUX_sel|Selector5~2_combout\)) # (\mapping|MUX_sel|Selector5~3_combout\) ) ) ) # ( \mapping|MUX_sel|Selector5~5_combout\ & ( 
-- !\mapping|MUX_sel|Selector5~4_combout\ ) ) # ( !\mapping|MUX_sel|Selector5~5_combout\ & ( !\mapping|MUX_sel|Selector5~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector5~3_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector5~2_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector5~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector5~1_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector5~5_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector5~4_combout\,
	combout => \mapping|MUX_sel|Selector5~6_combout\);

-- Location: LABCELL_X48_Y1_N27
\mapping|R2|internal_d[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|R2|internal_d[3]~feeder_combout\ = \mapping|MUX_sel|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector4~6_combout\,
	combout => \mapping|R2|internal_d[3]~feeder_combout\);

-- Location: FF_X48_Y1_N29
\mapping|R2|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|R2|internal_d[3]~feeder_combout\,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(3));

-- Location: LABCELL_X48_Y1_N57
\mapping|MUX_sel|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~2_combout\ = ( \mapping|MUX_sel|Equal0~0_combout\ & ( !\mapping|state_machine|out_sig_signal\(1) & ( (\mapping|state_machine|out_sig_signal\(2) & (\mapping|MUX_sel|Equal3~0_combout\ & (!\mapping|state_machine|out_sig_signal\(0) 
-- & \mapping|R2|internal_d\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|R2|ALT_INV_internal_d\(3),
	datae => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	combout => \mapping|MUX_sel|Selector4~2_combout\);

-- Location: FF_X48_Y3_N28
\mapping|R1|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(3));

-- Location: LABCELL_X48_Y3_N51
\mapping|MUX_sel|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~1_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|MUX_sel|Equal6~0_combout\ & \mapping|R1|internal_d\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datac => \mapping|R1|ALT_INV_internal_d\(3),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector4~1_combout\);

-- Location: FF_X47_Y3_N34
\mapping|R5|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(3));

-- Location: MLABCELL_X47_Y3_N48
\mapping|MUX_sel|Selector4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~5_combout\ = ( \mapping|R5|internal_d\(3) & ( \SW[3]~input_o\ & ( (((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\)) # (\mapping|MUX_sel|Equal2~0_combout\) 
-- ) ) ) # ( !\mapping|R5|internal_d\(3) & ( \SW[3]~input_o\ & ( ((!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) # (\mapping|MUX_sel|Equal8~0_combout\) ) ) ) # ( \mapping|R5|internal_d\(3) & ( !\SW[3]~input_o\ & ( 
-- \mapping|MUX_sel|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001110100000111111111011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(3),
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \mapping|MUX_sel|Selector4~5_combout\);

-- Location: FF_X48_Y3_N41
\mapping|R0|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(3));

-- Location: LABCELL_X48_Y3_N39
\mapping|MUX_sel|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~0_combout\ = ( \mapping|R0|internal_d\(3) & ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|state_machine|out_sig_signal\(0) & (!\mapping|state_machine|out_sig_signal\(2) & 
-- !\mapping|state_machine|out_sig_signal\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datae => \mapping|R0|ALT_INV_internal_d\(3),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector4~0_combout\);

-- Location: FF_X48_Y2_N56
\mapping|R4|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(3));

-- Location: FF_X48_Y2_N38
\mapping|RA|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector4~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(3));

-- Location: LABCELL_X48_Y2_N9
\mapping|Add_sub|Ai|s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(3) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(3) $ (\mapping|MUX_sel|Selector4~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~8\ ) + ( \mapping|Add_sub|Ai|_~7\ ))
-- \mapping|Add_sub|Ai|_~10\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(3) $ (\mapping|MUX_sel|Selector4~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~8\ ) + ( \mapping|Add_sub|Ai|_~7\ ))
-- \mapping|Add_sub|Ai|_~11\ = SHARE((\mapping|RA|internal_d\(3) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(3),
	datad => \mapping|MUX_sel|ALT_INV_Selector4~6_combout\,
	cin => \mapping|Add_sub|Ai|_~7\,
	sharein => \mapping|Add_sub|Ai|_~8\,
	sumout => \mapping|Add_sub|Ai|s\(3),
	cout => \mapping|Add_sub|Ai|_~10\,
	shareout => \mapping|Add_sub|Ai|_~11\);

-- Location: FF_X48_Y2_N11
\mapping|G|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(3),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(3));

-- Location: LABCELL_X50_Y2_N36
\mapping|R3|internal_d[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|R3|internal_d[3]~feeder_combout\ = \mapping|MUX_sel|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mapping|MUX_sel|ALT_INV_Selector4~6_combout\,
	combout => \mapping|R3|internal_d[3]~feeder_combout\);

-- Location: FF_X50_Y2_N37
\mapping|R3|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|R3|internal_d[3]~feeder_combout\,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(3));

-- Location: LABCELL_X48_Y2_N57
\mapping|MUX_sel|Selector4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~4_combout\ = ( \mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|R4|internal_d\(3) & (!\mapping|G|internal_d\(3) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(3))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|G|internal_d\(3) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(3)))) ) ) ) # ( \mapping|MUX_sel|Equal3~1_combout\ & ( 
-- !\mapping|MUX_sel|Equal9~0_combout\ & ( (!\mapping|R4|internal_d\(3) & ((!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(3)))) ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( !\mapping|MUX_sel|Equal9~0_combout\ & ( 
-- (!\mapping|MUX_sel|Equal4~1_combout\) # (!\mapping|R3|internal_d\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100101010101000100011110000110000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R4|ALT_INV_internal_d\(3),
	datab => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	datac => \mapping|G|ALT_INV_internal_d\(3),
	datad => \mapping|R3|ALT_INV_internal_d\(3),
	datae => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	combout => \mapping|MUX_sel|Selector4~4_combout\);

-- Location: FF_X47_Y2_N35
\mapping|R7|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(3));

-- Location: FF_X47_Y2_N53
\mapping|R6|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector4~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(3));

-- Location: MLABCELL_X47_Y2_N18
\mapping|MUX_sel|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~3_combout\ = ( !\mapping|state_machine|out_sig_signal\(7) & ( \mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|R6|internal_d\(3) & \mapping|MUX_sel|Equal1~0_combout\)) ) ) ) # ( 
-- \mapping|state_machine|out_sig_signal\(7) & ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|R7|internal_d\(3) & \mapping|MUX_sel|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|R7|ALT_INV_internal_d\(3),
	datac => \mapping|R6|ALT_INV_internal_d\(3),
	datad => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	combout => \mapping|MUX_sel|Selector4~3_combout\);

-- Location: LABCELL_X48_Y2_N36
\mapping|MUX_sel|Selector4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector4~6_combout\ = ( \mapping|MUX_sel|Selector4~4_combout\ & ( \mapping|MUX_sel|Selector4~3_combout\ ) ) # ( !\mapping|MUX_sel|Selector4~4_combout\ & ( \mapping|MUX_sel|Selector4~3_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector4~4_combout\ & ( !\mapping|MUX_sel|Selector4~3_combout\ & ( (((\mapping|MUX_sel|Selector4~0_combout\) # (\mapping|MUX_sel|Selector4~5_combout\)) # (\mapping|MUX_sel|Selector4~1_combout\)) # (\mapping|MUX_sel|Selector4~2_combout\) 
-- ) ) ) # ( !\mapping|MUX_sel|Selector4~4_combout\ & ( !\mapping|MUX_sel|Selector4~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector4~2_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector4~1_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector4~5_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector4~0_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector4~4_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector4~3_combout\,
	combout => \mapping|MUX_sel|Selector4~6_combout\);

-- Location: FF_X47_Y2_N38
\mapping|R7|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(4));

-- Location: FF_X47_Y2_N20
\mapping|R6|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(4));

-- Location: MLABCELL_X47_Y2_N36
\mapping|MUX_sel|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~3_combout\ = ( \mapping|R7|internal_d\(4) & ( \mapping|R6|internal_d\(4) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & (!\mapping|state_machine|out_sig_signal\(7) $ 
-- (!\mapping|state_machine|out_sig_signal\(6))))) ) ) ) # ( !\mapping|R7|internal_d\(4) & ( \mapping|R6|internal_d\(4) & ( (!\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|state_machine|out_sig_signal\(6) & 
-- \mapping|MUX_sel|Equal1~0_combout\))) ) ) ) # ( \mapping|R7|internal_d\(4) & ( !\mapping|R6|internal_d\(4) & ( (\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal0~1_combout\ & (!\mapping|state_machine|out_sig_signal\(6) & 
-- \mapping|MUX_sel|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000100000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	datab => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	datad => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datae => \mapping|R7|ALT_INV_internal_d\(4),
	dataf => \mapping|R6|ALT_INV_internal_d\(4),
	combout => \mapping|MUX_sel|Selector3~3_combout\);

-- Location: FF_X46_Y2_N38
\mapping|R5|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(4));

-- Location: LABCELL_X46_Y2_N39
\mapping|MUX_sel|Selector3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~5_combout\ = ( \mapping|MUX_sel|WideNor0~0_combout\ & ( \mapping|MUX_sel|Equal8~0_combout\ & ( ((\mapping|MUX_sel|Equal2~0_combout\ & \mapping|R5|internal_d\(4))) # (\SW[4]~input_o\) ) ) ) # ( 
-- !\mapping|MUX_sel|WideNor0~0_combout\ & ( \mapping|MUX_sel|Equal8~0_combout\ & ( ((\mapping|MUX_sel|Equal2~0_combout\ & \mapping|R5|internal_d\(4))) # (\SW[4]~input_o\) ) ) ) # ( \mapping|MUX_sel|WideNor0~0_combout\ & ( !\mapping|MUX_sel|Equal8~0_combout\ 
-- & ( (\mapping|MUX_sel|Equal2~0_combout\ & \mapping|R5|internal_d\(4)) ) ) ) # ( !\mapping|MUX_sel|WideNor0~0_combout\ & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( (!\mapping|MUX_sel|Equal2~0_combout\ & (!\mapping|MUX_sel|WideNor0~1_combout\ & 
-- (\SW[4]~input_o\))) # (\mapping|MUX_sel|Equal2~0_combout\ & (((!\mapping|MUX_sel|WideNor0~1_combout\ & \SW[4]~input_o\)) # (\mapping|R5|internal_d\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001011101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \mapping|R5|ALT_INV_internal_d\(4),
	datae => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	combout => \mapping|MUX_sel|Selector3~5_combout\);

-- Location: FF_X47_Y4_N31
\mapping|R4|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(4));

-- Location: FF_X46_Y2_N10
\mapping|R3|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(4));

-- Location: FF_X47_Y2_N44
\mapping|RA|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector3~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(4));

-- Location: LABCELL_X48_Y2_N12
\mapping|Add_sub|Ai|s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(4) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(4) $ (\mapping|MUX_sel|Selector3~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~11\ ) + ( \mapping|Add_sub|Ai|_~10\ ))
-- \mapping|Add_sub|Ai|_~13\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(4) $ (\mapping|MUX_sel|Selector3~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~11\ ) + ( \mapping|Add_sub|Ai|_~10\ ))
-- \mapping|Add_sub|Ai|_~14\ = SHARE((\mapping|RA|internal_d\(4) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(4),
	datad => \mapping|MUX_sel|ALT_INV_Selector3~6_combout\,
	cin => \mapping|Add_sub|Ai|_~10\,
	sharein => \mapping|Add_sub|Ai|_~11\,
	sumout => \mapping|Add_sub|Ai|s\(4),
	cout => \mapping|Add_sub|Ai|_~13\,
	shareout => \mapping|Add_sub|Ai|_~14\);

-- Location: FF_X48_Y2_N13
\mapping|G|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(4),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(4));

-- Location: MLABCELL_X47_Y4_N33
\mapping|MUX_sel|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~4_combout\ = ( \mapping|G|internal_d\(4) & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|MUX_sel|Equal9~0_combout\ & (!\mapping|R3|internal_d\(4) & ((!\mapping|R4|internal_d\(4)) # (!\mapping|MUX_sel|Equal3~1_combout\)))) 
-- ) ) ) # ( !\mapping|G|internal_d\(4) & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(4) & ((!\mapping|R4|internal_d\(4)) # (!\mapping|MUX_sel|Equal3~1_combout\))) ) ) ) # ( \mapping|G|internal_d\(4) & ( 
-- !\mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|MUX_sel|Equal9~0_combout\ & ((!\mapping|R4|internal_d\(4)) # (!\mapping|MUX_sel|Equal3~1_combout\))) ) ) ) # ( !\mapping|G|internal_d\(4) & ( !\mapping|MUX_sel|Equal4~1_combout\ & ( 
-- (!\mapping|R4|internal_d\(4)) # (!\mapping|MUX_sel|Equal3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R4|ALT_INV_internal_d\(4),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	datad => \mapping|R3|ALT_INV_internal_d\(4),
	datae => \mapping|G|ALT_INV_internal_d\(4),
	dataf => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	combout => \mapping|MUX_sel|Selector3~4_combout\);

-- Location: FF_X47_Y1_N41
\mapping|R2|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(4));

-- Location: MLABCELL_X47_Y1_N57
\mapping|MUX_sel|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~2_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( !\mapping|state_machine|out_sig_signal\(0) & ( (\mapping|state_machine|out_sig_signal\(2) & (\mapping|R2|internal_d\(4) & (!\mapping|state_machine|out_sig_signal\(1) & 
-- \mapping|MUX_sel|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datab => \mapping|R2|ALT_INV_internal_d\(4),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datad => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	combout => \mapping|MUX_sel|Selector3~2_combout\);

-- Location: FF_X48_Y3_N50
\mapping|R1|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(4));

-- Location: LABCELL_X48_Y3_N21
\mapping|MUX_sel|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~1_combout\ = ( \mapping|R1|internal_d\(4) & ( (\mapping|MUX_sel|Equal6~0_combout\ & (\mapping|MUX_sel|Equal0~0_combout\ & \mapping|MUX_sel|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	dataf => \mapping|R1|ALT_INV_internal_d\(4),
	combout => \mapping|MUX_sel|Selector3~1_combout\);

-- Location: FF_X48_Y1_N38
\mapping|R0|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector3~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(4));

-- Location: LABCELL_X48_Y1_N6
\mapping|MUX_sel|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~0_combout\ = ( \mapping|R0|internal_d\(4) & ( !\mapping|state_machine|out_sig_signal\(1) & ( (!\mapping|state_machine|out_sig_signal\(2) & (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|MUX_sel|Equal3~0_combout\ & 
-- \mapping|state_machine|out_sig_signal\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datae => \mapping|R0|ALT_INV_internal_d\(4),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	combout => \mapping|MUX_sel|Selector3~0_combout\);

-- Location: MLABCELL_X47_Y2_N42
\mapping|MUX_sel|Selector3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector3~6_combout\ = ( \mapping|MUX_sel|Selector3~1_combout\ & ( \mapping|MUX_sel|Selector3~0_combout\ ) ) # ( !\mapping|MUX_sel|Selector3~1_combout\ & ( \mapping|MUX_sel|Selector3~0_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector3~1_combout\ & ( !\mapping|MUX_sel|Selector3~0_combout\ ) ) # ( !\mapping|MUX_sel|Selector3~1_combout\ & ( !\mapping|MUX_sel|Selector3~0_combout\ & ( (((!\mapping|MUX_sel|Selector3~4_combout\) # 
-- (\mapping|MUX_sel|Selector3~2_combout\)) # (\mapping|MUX_sel|Selector3~5_combout\)) # (\mapping|MUX_sel|Selector3~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector3~3_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector3~5_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector3~4_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector3~2_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector3~1_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector3~0_combout\,
	combout => \mapping|MUX_sel|Selector3~6_combout\);

-- Location: FF_X47_Y4_N53
\mapping|R5|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(5));

-- Location: MLABCELL_X47_Y4_N48
\mapping|MUX_sel|Selector2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~5_combout\ = ( \mapping|MUX_sel|Equal2~0_combout\ & ( \mapping|MUX_sel|Equal8~0_combout\ & ( (\SW[5]~input_o\) # (\mapping|R5|internal_d\(5)) ) ) ) # ( !\mapping|MUX_sel|Equal2~0_combout\ & ( \mapping|MUX_sel|Equal8~0_combout\ & 
-- ( \SW[5]~input_o\ ) ) ) # ( \mapping|MUX_sel|Equal2~0_combout\ & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( ((\SW[5]~input_o\ & (!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\))) # (\mapping|R5|internal_d\(5)) ) ) ) # ( 
-- !\mapping|MUX_sel|Equal2~0_combout\ & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( (\SW[5]~input_o\ & (!\mapping|MUX_sel|WideNor0~1_combout\ & !\mapping|MUX_sel|WideNor0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000011101010101010100110011001100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R5|ALT_INV_internal_d\(5),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datad => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	combout => \mapping|MUX_sel|Selector2~5_combout\);

-- Location: FF_X48_Y4_N49
\mapping|R3|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(5));

-- Location: FF_X47_Y4_N2
\mapping|RA|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector2~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(5));

-- Location: LABCELL_X48_Y2_N15
\mapping|Add_sub|Ai|s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(5) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(5) $ (\mapping|MUX_sel|Selector2~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~14\ ) + ( \mapping|Add_sub|Ai|_~13\ ))
-- \mapping|Add_sub|Ai|_~16\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(5) $ (\mapping|MUX_sel|Selector2~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~14\ ) + ( \mapping|Add_sub|Ai|_~13\ ))
-- \mapping|Add_sub|Ai|_~17\ = SHARE((\mapping|RA|internal_d\(5) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(5),
	datad => \mapping|MUX_sel|ALT_INV_Selector2~6_combout\,
	cin => \mapping|Add_sub|Ai|_~13\,
	sharein => \mapping|Add_sub|Ai|_~14\,
	sumout => \mapping|Add_sub|Ai|s\(5),
	cout => \mapping|Add_sub|Ai|_~16\,
	shareout => \mapping|Add_sub|Ai|_~17\);

-- Location: FF_X48_Y2_N17
\mapping|G|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(5),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(5));

-- Location: FF_X47_Y4_N56
\mapping|R4|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(5));

-- Location: MLABCELL_X47_Y4_N57
\mapping|MUX_sel|Selector2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~4_combout\ = ( \mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(5) & (!\mapping|G|internal_d\(5) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(5))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(5) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(5)))) ) ) ) # ( \mapping|MUX_sel|Equal9~0_combout\ & ( 
-- !\mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|G|internal_d\(5) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(5)))) ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( !\mapping|MUX_sel|Equal4~1_combout\ & ( 
-- (!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R3|ALT_INV_internal_d\(5),
	datab => \mapping|G|ALT_INV_internal_d\(5),
	datac => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	datad => \mapping|R4|ALT_INV_internal_d\(5),
	datae => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	combout => \mapping|MUX_sel|Selector2~4_combout\);

-- Location: FF_X47_Y2_N32
\mapping|R7|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(5));

-- Location: FF_X47_Y2_N23
\mapping|R6|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(5));

-- Location: MLABCELL_X47_Y2_N24
\mapping|MUX_sel|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~3_combout\ = ( \mapping|R6|internal_d\(5) & ( \mapping|state_machine|out_sig_signal\(6) & ( (!\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|MUX_sel|Equal0~1_combout\)) ) ) ) # ( 
-- \mapping|R6|internal_d\(5) & ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|MUX_sel|Equal0~1_combout\ & \mapping|R7|internal_d\(5)))) ) ) ) # ( 
-- !\mapping|R6|internal_d\(5) & ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|state_machine|out_sig_signal\(7) & (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|MUX_sel|Equal0~1_combout\ & \mapping|R7|internal_d\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	datab => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datad => \mapping|R7|ALT_INV_internal_d\(5),
	datae => \mapping|R6|ALT_INV_internal_d\(5),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	combout => \mapping|MUX_sel|Selector2~3_combout\);

-- Location: FF_X48_Y3_N7
\mapping|R0|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(5));

-- Location: LABCELL_X48_Y3_N9
\mapping|MUX_sel|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(2) & ( \mapping|MUX_sel|Equal0~0_combout\ & ( (\mapping|R0|internal_d\(5) & (\mapping|MUX_sel|Equal3~0_combout\ & (\mapping|state_machine|out_sig_signal\(0) & 
-- !\mapping|state_machine|out_sig_signal\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R0|ALT_INV_internal_d\(5),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	dataf => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	combout => \mapping|MUX_sel|Selector2~0_combout\);

-- Location: FF_X48_Y4_N5
\mapping|R2|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(5));

-- Location: LABCELL_X48_Y4_N42
\mapping|MUX_sel|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~2_combout\ = ( !\mapping|state_machine|out_sig_signal\(1) & ( \mapping|state_machine|out_sig_signal\(2) & ( (!\mapping|state_machine|out_sig_signal\(0) & (\mapping|MUX_sel|Equal3~0_combout\ & (\mapping|R2|internal_d\(5) & 
-- \mapping|MUX_sel|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datab => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datac => \mapping|R2|ALT_INV_internal_d\(5),
	datad => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	combout => \mapping|MUX_sel|Selector2~2_combout\);

-- Location: FF_X48_Y3_N59
\mapping|R1|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector2~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(5));

-- Location: LABCELL_X48_Y3_N57
\mapping|MUX_sel|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~1_combout\ = ( \mapping|MUX_sel|Equal0~0_combout\ & ( (\mapping|MUX_sel|Equal6~0_combout\ & (\mapping|MUX_sel|Equal3~0_combout\ & \mapping|R1|internal_d\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datad => \mapping|R1|ALT_INV_internal_d\(5),
	dataf => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	combout => \mapping|MUX_sel|Selector2~1_combout\);

-- Location: MLABCELL_X47_Y4_N0
\mapping|MUX_sel|Selector2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector2~6_combout\ = ( \mapping|MUX_sel|Selector2~2_combout\ & ( \mapping|MUX_sel|Selector2~1_combout\ ) ) # ( !\mapping|MUX_sel|Selector2~2_combout\ & ( \mapping|MUX_sel|Selector2~1_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector2~2_combout\ & ( !\mapping|MUX_sel|Selector2~1_combout\ ) ) # ( !\mapping|MUX_sel|Selector2~2_combout\ & ( !\mapping|MUX_sel|Selector2~1_combout\ & ( ((!\mapping|MUX_sel|Selector2~4_combout\) # 
-- ((\mapping|MUX_sel|Selector2~0_combout\) # (\mapping|MUX_sel|Selector2~3_combout\))) # (\mapping|MUX_sel|Selector2~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector2~5_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector2~4_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector2~3_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector2~0_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector2~2_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector2~1_combout\,
	combout => \mapping|MUX_sel|Selector2~6_combout\);

-- Location: FF_X48_Y3_N56
\mapping|R1|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(6));

-- Location: LABCELL_X48_Y3_N48
\mapping|MUX_sel|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~1_combout\ = ( \mapping|MUX_sel|Equal3~0_combout\ & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|MUX_sel|Equal6~0_combout\ & \mapping|R1|internal_d\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datac => \mapping|R1|ALT_INV_internal_d\(6),
	dataf => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	combout => \mapping|MUX_sel|Selector1~1_combout\);

-- Location: FF_X46_Y4_N19
\mapping|R7|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(6));

-- Location: FF_X46_Y4_N40
\mapping|R6|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(6));

-- Location: MLABCELL_X47_Y4_N6
\mapping|MUX_sel|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~3_combout\ = ( !\mapping|state_machine|out_sig_signal\(6) & ( \mapping|state_machine|out_sig_signal\(7) & ( (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|R7|internal_d\(6) & \mapping|MUX_sel|Equal0~1_combout\)) ) ) ) # ( 
-- \mapping|state_machine|out_sig_signal\(6) & ( !\mapping|state_machine|out_sig_signal\(7) & ( (\mapping|MUX_sel|Equal1~0_combout\ & (\mapping|R6|internal_d\(6) & \mapping|MUX_sel|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datab => \mapping|R7|ALT_INV_internal_d\(6),
	datac => \mapping|R6|ALT_INV_internal_d\(6),
	datad => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	combout => \mapping|MUX_sel|Selector1~3_combout\);

-- Location: FF_X48_Y4_N19
\mapping|R3|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(6));

-- Location: FF_X47_Y4_N26
\mapping|RA|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|MUX_sel|Selector1~6_combout\,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(6));

-- Location: LABCELL_X48_Y2_N18
\mapping|Add_sub|Ai|s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(6) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(6) $ (\mapping|MUX_sel|Selector1~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~17\ ) + ( \mapping|Add_sub|Ai|_~16\ ))
-- \mapping|Add_sub|Ai|_~19\ = CARRY(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(6) $ (\mapping|MUX_sel|Selector1~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~17\ ) + ( \mapping|Add_sub|Ai|_~16\ ))
-- \mapping|Add_sub|Ai|_~20\ = SHARE((\mapping|RA|internal_d\(6) & (!\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|MUX_sel|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000101000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(6),
	datad => \mapping|MUX_sel|ALT_INV_Selector1~6_combout\,
	cin => \mapping|Add_sub|Ai|_~16\,
	sharein => \mapping|Add_sub|Ai|_~17\,
	sumout => \mapping|Add_sub|Ai|s\(6),
	cout => \mapping|Add_sub|Ai|_~19\,
	shareout => \mapping|Add_sub|Ai|_~20\);

-- Location: FF_X48_Y2_N19
\mapping|G|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(6),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(6));

-- Location: FF_X47_Y4_N20
\mapping|R4|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(6));

-- Location: MLABCELL_X47_Y4_N21
\mapping|MUX_sel|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~4_combout\ = ( \mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(6) & (!\mapping|G|internal_d\(6) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(6))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(6) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(6)))) ) ) ) # ( \mapping|MUX_sel|Equal9~0_combout\ & ( 
-- !\mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|G|internal_d\(6) & ((!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(6)))) ) ) ) # ( !\mapping|MUX_sel|Equal9~0_combout\ & ( !\mapping|MUX_sel|Equal4~1_combout\ & ( 
-- (!\mapping|MUX_sel|Equal3~1_combout\) # (!\mapping|R4|internal_d\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R3|ALT_INV_internal_d\(6),
	datab => \mapping|G|ALT_INV_internal_d\(6),
	datac => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	datad => \mapping|R4|ALT_INV_internal_d\(6),
	datae => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	combout => \mapping|MUX_sel|Selector1~4_combout\);

-- Location: FF_X47_Y4_N38
\mapping|R5|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(6));

-- Location: MLABCELL_X47_Y4_N39
\mapping|MUX_sel|Selector1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~5_combout\ = ( \mapping|R5|internal_d\(6) & ( \mapping|MUX_sel|Equal8~0_combout\ & ( (\SW[6]~input_o\) # (\mapping|MUX_sel|Equal2~0_combout\) ) ) ) # ( !\mapping|R5|internal_d\(6) & ( \mapping|MUX_sel|Equal8~0_combout\ & ( 
-- \SW[6]~input_o\ ) ) ) # ( \mapping|R5|internal_d\(6) & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( ((\SW[6]~input_o\ & (!\mapping|MUX_sel|WideNor0~0_combout\ & !\mapping|MUX_sel|WideNor0~1_combout\))) # (\mapping|MUX_sel|Equal2~0_combout\) ) ) ) # ( 
-- !\mapping|R5|internal_d\(6) & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( (\SW[6]~input_o\ & (!\mapping|MUX_sel|WideNor0~0_combout\ & !\mapping|MUX_sel|WideNor0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000011101010101010100110011001100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(6),
	dataf => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	combout => \mapping|MUX_sel|Selector1~5_combout\);

-- Location: FF_X48_Y4_N56
\mapping|R2|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(6));

-- Location: LABCELL_X48_Y4_N36
\mapping|MUX_sel|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~2_combout\ = ( !\mapping|state_machine|out_sig_signal\(1) & ( \mapping|state_machine|out_sig_signal\(2) & ( (\mapping|R2|internal_d\(6) & (!\mapping|state_machine|out_sig_signal\(0) & (\mapping|MUX_sel|Equal3~0_combout\ & 
-- \mapping|MUX_sel|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|R2|ALT_INV_internal_d\(6),
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datac => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	combout => \mapping|MUX_sel|Selector1~2_combout\);

-- Location: FF_X48_Y4_N35
\mapping|R0|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector1~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(6));

-- Location: LABCELL_X48_Y4_N27
\mapping|MUX_sel|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(1) & ( \mapping|R0|internal_d\(6) & ( (\mapping|MUX_sel|Equal3~0_combout\ & (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|state_machine|out_sig_signal\(0) & 
-- !\mapping|state_machine|out_sig_signal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	dataf => \mapping|R0|ALT_INV_internal_d\(6),
	combout => \mapping|MUX_sel|Selector1~0_combout\);

-- Location: MLABCELL_X47_Y4_N24
\mapping|MUX_sel|Selector1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector1~6_combout\ = ( \mapping|MUX_sel|Selector1~2_combout\ & ( \mapping|MUX_sel|Selector1~0_combout\ ) ) # ( !\mapping|MUX_sel|Selector1~2_combout\ & ( \mapping|MUX_sel|Selector1~0_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector1~2_combout\ & ( !\mapping|MUX_sel|Selector1~0_combout\ ) ) # ( !\mapping|MUX_sel|Selector1~2_combout\ & ( !\mapping|MUX_sel|Selector1~0_combout\ & ( (((!\mapping|MUX_sel|Selector1~4_combout\) # 
-- (\mapping|MUX_sel|Selector1~5_combout\)) # (\mapping|MUX_sel|Selector1~3_combout\)) # (\mapping|MUX_sel|Selector1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector1~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector1~3_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector1~4_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector1~5_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector1~2_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector1~0_combout\,
	combout => \mapping|MUX_sel|Selector1~6_combout\);

-- Location: FF_X47_Y2_N16
\mapping|RA|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|RA|internal_d\(7));

-- Location: LABCELL_X48_Y2_N21
\mapping|Add_sub|Ai|s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|Add_sub|Ai|s\(7) = SUM(( !\mapping|state_machine|in_sig_signal\(10) $ (!\mapping|RA|internal_d\(7) $ (\mapping|MUX_sel|Selector0~6_combout\)) ) + ( \mapping|Add_sub|Ai|_~20\ ) + ( \mapping|Add_sub|Ai|_~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|state_machine|ALT_INV_in_sig_signal\(10),
	datac => \mapping|RA|ALT_INV_internal_d\(7),
	datad => \mapping|MUX_sel|ALT_INV_Selector0~6_combout\,
	cin => \mapping|Add_sub|Ai|_~19\,
	sharein => \mapping|Add_sub|Ai|_~20\,
	sumout => \mapping|Add_sub|Ai|s\(7));

-- Location: FF_X48_Y2_N23
\mapping|G|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|Add_sub|Ai|s\(7),
	ena => \mapping|state_machine|in_sig_signal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|G|internal_d\(7));

-- Location: FF_X46_Y2_N14
\mapping|R4|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R4|internal_d\(7));

-- Location: FF_X46_Y2_N50
\mapping|R3|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R3|internal_d\(7));

-- Location: LABCELL_X46_Y2_N15
\mapping|MUX_sel|Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~4_combout\ = ( \mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R4|internal_d\(7) & (!\mapping|R3|internal_d\(7) & ((!\mapping|MUX_sel|Equal9~0_combout\) # (!\mapping|G|internal_d\(7))))) 
-- ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( \mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R3|internal_d\(7) & ((!\mapping|MUX_sel|Equal9~0_combout\) # (!\mapping|G|internal_d\(7)))) ) ) ) # ( \mapping|MUX_sel|Equal3~1_combout\ & ( 
-- !\mapping|MUX_sel|Equal4~1_combout\ & ( (!\mapping|R4|internal_d\(7) & ((!\mapping|MUX_sel|Equal9~0_combout\) # (!\mapping|G|internal_d\(7)))) ) ) ) # ( !\mapping|MUX_sel|Equal3~1_combout\ & ( !\mapping|MUX_sel|Equal4~1_combout\ & ( 
-- (!\mapping|MUX_sel|Equal9~0_combout\) # (!\mapping|G|internal_d\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal9~0_combout\,
	datab => \mapping|G|ALT_INV_internal_d\(7),
	datac => \mapping|R4|ALT_INV_internal_d\(7),
	datad => \mapping|R3|ALT_INV_internal_d\(7),
	datae => \mapping|MUX_sel|ALT_INV_Equal3~1_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Equal4~1_combout\,
	combout => \mapping|MUX_sel|Selector0~4_combout\);

-- Location: FF_X46_Y2_N26
\mapping|R5|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R5|internal_d\(7));

-- Location: LABCELL_X46_Y2_N24
\mapping|MUX_sel|Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~5_combout\ = ( \mapping|R5|internal_d\(7) & ( \mapping|MUX_sel|Equal8~0_combout\ & ( (\SW[7]~input_o\) # (\mapping|MUX_sel|Equal2~0_combout\) ) ) ) # ( !\mapping|R5|internal_d\(7) & ( \mapping|MUX_sel|Equal8~0_combout\ & ( 
-- \SW[7]~input_o\ ) ) ) # ( \mapping|R5|internal_d\(7) & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( ((!\mapping|MUX_sel|WideNor0~1_combout\ & (\SW[7]~input_o\ & !\mapping|MUX_sel|WideNor0~0_combout\))) # (\mapping|MUX_sel|Equal2~0_combout\) ) ) ) # ( 
-- !\mapping|R5|internal_d\(7) & ( !\mapping|MUX_sel|Equal8~0_combout\ & ( (!\mapping|MUX_sel|WideNor0~1_combout\ & (\SW[7]~input_o\ & !\mapping|MUX_sel|WideNor0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000010111010101010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal2~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \mapping|MUX_sel|ALT_INV_WideNor0~0_combout\,
	datae => \mapping|R5|ALT_INV_internal_d\(7),
	dataf => \mapping|MUX_sel|ALT_INV_Equal8~0_combout\,
	combout => \mapping|MUX_sel|Selector0~5_combout\);

-- Location: FF_X48_Y3_N26
\mapping|R1|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R1|internal_d\(7));

-- Location: LABCELL_X48_Y3_N15
\mapping|MUX_sel|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~1_combout\ = ( \mapping|R1|internal_d\(7) & ( (\mapping|MUX_sel|Equal0~0_combout\ & (\mapping|MUX_sel|Equal6~0_combout\ & \mapping|MUX_sel|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal6~0_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	dataf => \mapping|R1|ALT_INV_internal_d\(7),
	combout => \mapping|MUX_sel|Selector0~1_combout\);

-- Location: FF_X47_Y2_N11
\mapping|R7|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R7|internal_d\(7));

-- Location: FF_X47_Y2_N56
\mapping|R6|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \mapping|MUX_sel|Selector0~6_combout\,
	sload => VCC,
	ena => \mapping|state_machine|in_sig_signal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R6|internal_d\(7));

-- Location: MLABCELL_X47_Y2_N33
\mapping|MUX_sel|Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~3_combout\ = ( !\mapping|state_machine|out_sig_signal\(7) & ( \mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|R6|internal_d\(7))) ) ) ) # ( 
-- \mapping|state_machine|out_sig_signal\(7) & ( !\mapping|state_machine|out_sig_signal\(6) & ( (\mapping|MUX_sel|Equal0~1_combout\ & (\mapping|MUX_sel|Equal1~0_combout\ & \mapping|R7|internal_d\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~1_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Equal1~0_combout\,
	datac => \mapping|R7|ALT_INV_internal_d\(7),
	datad => \mapping|R6|ALT_INV_internal_d\(7),
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(7),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(6),
	combout => \mapping|MUX_sel|Selector0~3_combout\);

-- Location: MLABCELL_X47_Y1_N3
\mapping|R0|internal_d[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|R0|internal_d[7]~feeder_combout\ = ( \mapping|MUX_sel|Selector0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mapping|MUX_sel|ALT_INV_Selector0~6_combout\,
	combout => \mapping|R0|internal_d[7]~feeder_combout\);

-- Location: FF_X47_Y1_N5
\mapping|R0|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|R0|internal_d[7]~feeder_combout\,
	ena => \mapping|state_machine|in_sig_signal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R0|internal_d\(7));

-- Location: MLABCELL_X47_Y1_N18
\mapping|MUX_sel|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~0_combout\ = ( !\mapping|state_machine|out_sig_signal\(2) & ( \mapping|state_machine|out_sig_signal\(0) & ( (\mapping|MUX_sel|Equal0~0_combout\ & (!\mapping|state_machine|out_sig_signal\(1) & (\mapping|R0|internal_d\(7) & 
-- \mapping|MUX_sel|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datac => \mapping|R0|ALT_INV_internal_d\(7),
	datad => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	dataf => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	combout => \mapping|MUX_sel|Selector0~0_combout\);

-- Location: MLABCELL_X47_Y1_N51
\mapping|R2|internal_d[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|R2|internal_d[7]~feeder_combout\ = ( \mapping|MUX_sel|Selector0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mapping|MUX_sel|ALT_INV_Selector0~6_combout\,
	combout => \mapping|R2|internal_d[7]~feeder_combout\);

-- Location: FF_X47_Y1_N53
\mapping|R2|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mapping|R2|internal_d[7]~feeder_combout\,
	ena => \mapping|state_machine|in_sig_signal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mapping|R2|internal_d\(7));

-- Location: MLABCELL_X47_Y1_N24
\mapping|MUX_sel|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~2_combout\ = ( \mapping|state_machine|out_sig_signal\(2) & ( \mapping|R2|internal_d\(7) & ( (\mapping|MUX_sel|Equal0~0_combout\ & (!\mapping|state_machine|out_sig_signal\(1) & (!\mapping|state_machine|out_sig_signal\(0) & 
-- \mapping|MUX_sel|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Equal0~0_combout\,
	datab => \mapping|state_machine|ALT_INV_out_sig_signal\(1),
	datac => \mapping|state_machine|ALT_INV_out_sig_signal\(0),
	datad => \mapping|MUX_sel|ALT_INV_Equal3~0_combout\,
	datae => \mapping|state_machine|ALT_INV_out_sig_signal\(2),
	dataf => \mapping|R2|ALT_INV_internal_d\(7),
	combout => \mapping|MUX_sel|Selector0~2_combout\);

-- Location: MLABCELL_X47_Y2_N3
\mapping|MUX_sel|Selector0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|MUX_sel|Selector0~6_combout\ = ( \mapping|MUX_sel|Selector0~0_combout\ & ( \mapping|MUX_sel|Selector0~2_combout\ ) ) # ( !\mapping|MUX_sel|Selector0~0_combout\ & ( \mapping|MUX_sel|Selector0~2_combout\ ) ) # ( 
-- \mapping|MUX_sel|Selector0~0_combout\ & ( !\mapping|MUX_sel|Selector0~2_combout\ ) ) # ( !\mapping|MUX_sel|Selector0~0_combout\ & ( !\mapping|MUX_sel|Selector0~2_combout\ & ( (!\mapping|MUX_sel|Selector0~4_combout\) # 
-- (((\mapping|MUX_sel|Selector0~3_combout\) # (\mapping|MUX_sel|Selector0~1_combout\)) # (\mapping|MUX_sel|Selector0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mapping|MUX_sel|ALT_INV_Selector0~4_combout\,
	datab => \mapping|MUX_sel|ALT_INV_Selector0~5_combout\,
	datac => \mapping|MUX_sel|ALT_INV_Selector0~1_combout\,
	datad => \mapping|MUX_sel|ALT_INV_Selector0~3_combout\,
	datae => \mapping|MUX_sel|ALT_INV_Selector0~0_combout\,
	dataf => \mapping|MUX_sel|ALT_INV_Selector0~2_combout\,
	combout => \mapping|MUX_sel|Selector0~6_combout\);

-- Location: LABCELL_X46_Y2_N0
\mapping|state_machine|DONE_signal\ : cyclonev_lcell_comb
-- Equation(s):
-- \mapping|state_machine|DONE_signal~combout\ = ( \mapping|state_machine|DONE_signal~combout\ & ( \mapping|state_machine|Selector13~0_combout\ ) ) # ( \mapping|state_machine|DONE_signal~combout\ & ( !\mapping|state_machine|Selector13~0_combout\ & ( 
-- !\mapping|state_machine|Selector5~0_combout\ ) ) ) # ( !\mapping|state_machine|DONE_signal~combout\ & ( !\mapping|state_machine|Selector13~0_combout\ & ( !\mapping|state_machine|Selector5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \mapping|state_machine|ALT_INV_Selector5~0_combout\,
	datae => \mapping|state_machine|ALT_INV_DONE_signal~combout\,
	dataf => \mapping|state_machine|ALT_INV_Selector13~0_combout\,
	combout => \mapping|state_machine|DONE_signal~combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X30_Y75_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


