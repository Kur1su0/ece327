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

-- DATE "11/14/2019 18:39:53"

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

ENTITY 	board_lab4 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END board_lab4;

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
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF board_lab4 IS
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
SIGNAL \map_lab4|map_regD|Add0~81_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|count_val~2_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|count_val[0]~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~82\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~5_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|count_val~1_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~6\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~37_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~38\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~121_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~122\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~33_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~34\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~77_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~78\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~93_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~94\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~97_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~98\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~101_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~102\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~105_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~106\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~109_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~110\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~113_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~114\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~117_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~118\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~89_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~90\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~125_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~126\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~57_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~58\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~61_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~62\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~65_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~66\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~69_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~70\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~73_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~74\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~41_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~42\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~45_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~46\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~49_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~50\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~53_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~54\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~9_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~10\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~13_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~14\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~17_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~18\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~21_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~22\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~25_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~26\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~29_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~30\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~1_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~2\ : std_logic;
SIGNAL \map_lab4|map_regD|Add0~85_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|count_val~3_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~4_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~2_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~1_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~5_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~3_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|Equal0~6_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|is_finished~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|is_finished~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.add_regs~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.shift_regs~feeder_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.shift_regs~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.res~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \map_lab4|map_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.notBusy~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|state~9_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|state.load_regs~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \map_lab4|map_fsm|sel_out~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \map_lab4|map_regA|Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[2]~5_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \map_lab4|map_regC|output_regB[1]~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[4]~13_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[4]~15_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[4]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[4]~14_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[2]~7_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[2]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[2]~6_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|Mux3~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \map_lab4|map_regA|Add0~2_combout\ : std_logic;
SIGNAL \map_lab4|map_regA|Add0~1_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|Mux1~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regA|neg1[4]~0_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|Mux0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|Mux2~0_combout\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~16\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~17\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~1\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~2\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~7\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~8\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~4\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~5\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~4_combout\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~10\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|_~11\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|cout~sumout\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~3_combout\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~1_combout\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~2_combout\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~0_combout\ : std_logic;
SIGNAL \map_lab4|map_2_1_mux|output[0]~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regC|sig_output_adder~5_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[3]~9_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[3]~11_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[3]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[3]~10_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[1]~3_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[1]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|internal_buffer[1]~2_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|done~combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|sel_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \map_lab4|map_regB|internal_buffer\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regA|pos1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regD|count_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \map_lab4|map_regC|output_regB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \map_lab4|map_regA|neg1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_adder|Ai|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regC|sig_output_adder\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regD|ALT_INV_count_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \map_lab4|map_adder|Ai|ALT_INV_s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regC|ALT_INV_output_regB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \map_lab4|map_regD|ALT_INV_is_finished~q\ : std_logic;
SIGNAL \map_lab4|map_adder|Ai|ALT_INV_cout~sumout\ : std_logic;
SIGNAL \map_lab4|map_regC|ALT_INV_sig_output_adder\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_sel_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[4]~13_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[3]~9_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_done~combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[2]~5_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[1]~1_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \map_lab4|map_fsm|ALT_INV_sel_out~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regA|ALT_INV_neg1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \map_lab4|map_regA|ALT_INV_pos1\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \map_lab4|map_mux|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_state.res~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_state.add_regs~q\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[4]~14_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[4]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[3]~10_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[3]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_state.notBusy~q\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[2]~6_combout\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[2]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[1]~2_combout\ : std_logic;
SIGNAL \map_lab4|map_fsm|ALT_INV_state.load_regs~q\ : std_logic;
SIGNAL \map_lab4|map_regB|ALT_INV_internal_buffer[1]~_emulated_q\ : std_logic;
SIGNAL \map_lab4|map_mux|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \map_lab4|map_mux|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \map_lab4|map_regD|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\map_lab4|map_regD|ALT_INV_count_val\(22) <= NOT \map_lab4|map_regD|count_val\(22);
\map_lab4|map_regD|ALT_INV_count_val\(21) <= NOT \map_lab4|map_regD|count_val\(21);
\map_lab4|map_regD|ALT_INV_count_val\(20) <= NOT \map_lab4|map_regD|count_val\(20);
\map_lab4|map_regD|ALT_INV_count_val\(2) <= NOT \map_lab4|map_regD|count_val\(2);
\map_lab4|map_regD|ALT_INV_count_val\(4) <= NOT \map_lab4|map_regD|count_val\(4);
\map_lab4|map_regD|ALT_INV_count_val\(29) <= NOT \map_lab4|map_regD|count_val\(29);
\map_lab4|map_regD|ALT_INV_count_val\(28) <= NOT \map_lab4|map_regD|count_val\(28);
\map_lab4|map_regD|ALT_INV_count_val\(27) <= NOT \map_lab4|map_regD|count_val\(27);
\map_lab4|map_regD|ALT_INV_count_val\(26) <= NOT \map_lab4|map_regD|count_val\(26);
\map_lab4|map_regD|ALT_INV_count_val\(25) <= NOT \map_lab4|map_regD|count_val\(25);
\map_lab4|map_regD|ALT_INV_count_val\(24) <= NOT \map_lab4|map_regD|count_val\(24);
\map_lab4|map_regD|ALT_INV_count_val\(1) <= NOT \map_lab4|map_regD|count_val\(1);
\map_lab4|map_regD|ALT_INV_count_val\(30) <= NOT \map_lab4|map_regD|count_val\(30);
\map_lab4|map_adder|Ai|ALT_INV_s\(0) <= NOT \map_lab4|map_adder|Ai|s\(0);
\map_lab4|map_regC|ALT_INV_output_regB\(0) <= NOT \map_lab4|map_regC|output_regB\(0);
\map_lab4|map_regD|ALT_INV_is_finished~q\ <= NOT \map_lab4|map_regD|is_finished~q\;
\map_lab4|map_adder|Ai|ALT_INV_cout~sumout\ <= NOT \map_lab4|map_adder|Ai|cout~sumout\;
\map_lab4|map_adder|Ai|ALT_INV_s\(4) <= NOT \map_lab4|map_adder|Ai|s\(4);
\map_lab4|map_adder|Ai|ALT_INV_s\(2) <= NOT \map_lab4|map_adder|Ai|s\(2);
\map_lab4|map_adder|Ai|ALT_INV_s\(3) <= NOT \map_lab4|map_adder|Ai|s\(3);
\map_lab4|map_adder|Ai|ALT_INV_s\(1) <= NOT \map_lab4|map_adder|Ai|s\(1);
\map_lab4|map_regC|ALT_INV_sig_output_adder\(4) <= NOT \map_lab4|map_regC|sig_output_adder\(4);
\map_lab4|map_regC|ALT_INV_sig_output_adder\(3) <= NOT \map_lab4|map_regC|sig_output_adder\(3);
\map_lab4|map_regC|ALT_INV_sig_output_adder\(2) <= NOT \map_lab4|map_regC|sig_output_adder\(2);
\map_lab4|map_regC|ALT_INV_sig_output_adder\(1) <= NOT \map_lab4|map_regC|sig_output_adder\(1);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\map_lab4|map_fsm|ALT_INV_sel_out\(0) <= NOT \map_lab4|map_fsm|sel_out\(0);
\map_lab4|map_fsm|ALT_INV_sel_out\(2) <= NOT \map_lab4|map_fsm|sel_out\(2);
\map_lab4|map_fsm|ALT_INV_sel_out\(1) <= NOT \map_lab4|map_fsm|sel_out\(1);
\map_lab4|map_regB|ALT_INV_internal_buffer[4]~13_combout\ <= NOT \map_lab4|map_regB|internal_buffer[4]~13_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[3]~9_combout\ <= NOT \map_lab4|map_regB|internal_buffer[3]~9_combout\;
\map_lab4|map_fsm|ALT_INV_done~combout\ <= NOT \map_lab4|map_fsm|done~combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[2]~5_combout\ <= NOT \map_lab4|map_regB|internal_buffer[2]~5_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[1]~1_combout\ <= NOT \map_lab4|map_regB|internal_buffer[1]~1_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer\(0) <= NOT \map_lab4|map_regB|internal_buffer\(0);
\map_lab4|map_fsm|ALT_INV_sel_out~0_combout\ <= NOT \map_lab4|map_fsm|sel_out~0_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~6_combout\ <= NOT \map_lab4|map_regD|Equal0~6_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~5_combout\ <= NOT \map_lab4|map_regD|Equal0~5_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~4_combout\ <= NOT \map_lab4|map_regD|Equal0~4_combout\;
\map_lab4|map_regD|ALT_INV_count_val\(31) <= NOT \map_lab4|map_regD|count_val\(31);
\map_lab4|map_regD|ALT_INV_count_val\(0) <= NOT \map_lab4|map_regD|count_val\(0);
\map_lab4|map_regD|ALT_INV_Equal0~3_combout\ <= NOT \map_lab4|map_regD|Equal0~3_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~2_combout\ <= NOT \map_lab4|map_regD|Equal0~2_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~1_combout\ <= NOT \map_lab4|map_regD|Equal0~1_combout\;
\map_lab4|map_regD|ALT_INV_Equal0~0_combout\ <= NOT \map_lab4|map_regD|Equal0~0_combout\;
\map_lab4|map_mux|ALT_INV_Mux0~0_combout\ <= NOT \map_lab4|map_mux|Mux0~0_combout\;
\map_lab4|map_regA|ALT_INV_neg1\(4) <= NOT \map_lab4|map_regA|neg1\(4);
\map_lab4|map_regA|ALT_INV_neg1\(3) <= NOT \map_lab4|map_regA|neg1\(3);
\map_lab4|map_regA|ALT_INV_neg1\(2) <= NOT \map_lab4|map_regA|neg1\(2);
\map_lab4|map_regA|ALT_INV_pos1\(3) <= NOT \map_lab4|map_regA|pos1\(3);
\map_lab4|map_regA|ALT_INV_pos1\(2) <= NOT \map_lab4|map_regA|pos1\(2);
\map_lab4|map_mux|ALT_INV_Mux3~0_combout\ <= NOT \map_lab4|map_mux|Mux3~0_combout\;
\map_lab4|map_regA|ALT_INV_pos1\(1) <= NOT \map_lab4|map_regA|pos1\(1);
\map_lab4|map_regA|ALT_INV_neg1\(0) <= NOT \map_lab4|map_regA|neg1\(0);
\map_lab4|map_regA|ALT_INV_neg1\(1) <= NOT \map_lab4|map_regA|neg1\(1);
\map_lab4|map_regC|ALT_INV_output_regB\(1) <= NOT \map_lab4|map_regC|output_regB\(1);
\map_lab4|map_fsm|ALT_INV_Selector0~0_combout\ <= NOT \map_lab4|map_fsm|Selector0~0_combout\;
\map_lab4|map_fsm|ALT_INV_state.res~q\ <= NOT \map_lab4|map_fsm|state.res~q\;
\map_lab4|map_fsm|ALT_INV_state.add_regs~q\ <= NOT \map_lab4|map_fsm|state.add_regs~q\;
\map_lab4|map_regB|ALT_INV_internal_buffer[4]~14_combout\ <= NOT \map_lab4|map_regB|internal_buffer[4]~14_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[4]~_emulated_q\ <= NOT \map_lab4|map_regB|internal_buffer[4]~_emulated_q\;
\map_lab4|map_regB|ALT_INV_internal_buffer[3]~10_combout\ <= NOT \map_lab4|map_regB|internal_buffer[3]~10_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[3]~_emulated_q\ <= NOT \map_lab4|map_regB|internal_buffer[3]~_emulated_q\;
\map_lab4|map_fsm|ALT_INV_state.shift_regs~q\ <= NOT \map_lab4|map_fsm|state.shift_regs~q\;
\map_lab4|map_fsm|ALT_INV_state.notBusy~q\ <= NOT \map_lab4|map_fsm|state.notBusy~q\;
\map_lab4|map_regB|ALT_INV_internal_buffer[2]~6_combout\ <= NOT \map_lab4|map_regB|internal_buffer[2]~6_combout\;
\map_lab4|map_regB|ALT_INV_internal_buffer[2]~_emulated_q\ <= NOT \map_lab4|map_regB|internal_buffer[2]~_emulated_q\;
\map_lab4|map_regB|ALT_INV_internal_buffer[1]~2_combout\ <= NOT \map_lab4|map_regB|internal_buffer[1]~2_combout\;
\map_lab4|map_fsm|ALT_INV_state.load_regs~q\ <= NOT \map_lab4|map_fsm|state.load_regs~q\;
\map_lab4|map_regB|ALT_INV_internal_buffer[1]~_emulated_q\ <= NOT \map_lab4|map_regB|internal_buffer[1]~_emulated_q\;
\map_lab4|map_mux|ALT_INV_Mux1~0_combout\ <= NOT \map_lab4|map_mux|Mux1~0_combout\;
\map_lab4|map_mux|ALT_INV_Mux2~0_combout\ <= NOT \map_lab4|map_mux|Mux2~0_combout\;
\map_lab4|map_regD|ALT_INV_Add0~85_sumout\ <= NOT \map_lab4|map_regD|Add0~85_sumout\;
\map_lab4|map_regD|ALT_INV_Add0~81_sumout\ <= NOT \map_lab4|map_regD|Add0~81_sumout\;
\map_lab4|map_regD|ALT_INV_Add0~5_sumout\ <= NOT \map_lab4|map_regD|Add0~5_sumout\;
\map_lab4|map_regD|ALT_INV_count_val\(14) <= NOT \map_lab4|map_regD|count_val\(14);
\map_lab4|map_regD|ALT_INV_count_val\(3) <= NOT \map_lab4|map_regD|count_val\(3);
\map_lab4|map_regD|ALT_INV_count_val\(12) <= NOT \map_lab4|map_regD|count_val\(12);
\map_lab4|map_regD|ALT_INV_count_val\(11) <= NOT \map_lab4|map_regD|count_val\(11);
\map_lab4|map_regD|ALT_INV_count_val\(10) <= NOT \map_lab4|map_regD|count_val\(10);
\map_lab4|map_regD|ALT_INV_count_val\(9) <= NOT \map_lab4|map_regD|count_val\(9);
\map_lab4|map_regD|ALT_INV_count_val\(8) <= NOT \map_lab4|map_regD|count_val\(8);
\map_lab4|map_regD|ALT_INV_count_val\(7) <= NOT \map_lab4|map_regD|count_val\(7);
\map_lab4|map_regD|ALT_INV_count_val\(6) <= NOT \map_lab4|map_regD|count_val\(6);
\map_lab4|map_regD|ALT_INV_count_val\(13) <= NOT \map_lab4|map_regD|count_val\(13);
\map_lab4|map_regD|ALT_INV_count_val\(5) <= NOT \map_lab4|map_regD|count_val\(5);
\map_lab4|map_regD|ALT_INV_count_val\(19) <= NOT \map_lab4|map_regD|count_val\(19);
\map_lab4|map_regD|ALT_INV_count_val\(18) <= NOT \map_lab4|map_regD|count_val\(18);
\map_lab4|map_regD|ALT_INV_count_val\(17) <= NOT \map_lab4|map_regD|count_val\(17);
\map_lab4|map_regD|ALT_INV_count_val\(16) <= NOT \map_lab4|map_regD|count_val\(16);
\map_lab4|map_regD|ALT_INV_count_val\(15) <= NOT \map_lab4|map_regD|count_val\(15);
\map_lab4|map_regD|ALT_INV_count_val\(23) <= NOT \map_lab4|map_regD|count_val\(23);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_lab4|map_regB|internal_buffer[1]~2_combout\,
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
	i => \map_lab4|map_regB|internal_buffer[2]~6_combout\,
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
	i => \map_lab4|map_regB|internal_buffer[3]~10_combout\,
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
	i => \map_lab4|map_regB|internal_buffer[4]~14_combout\,
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
	i => \map_lab4|map_regC|sig_output_adder\(1),
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
	i => \map_lab4|map_regC|sig_output_adder\(2),
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
	i => \map_lab4|map_regC|sig_output_adder\(3),
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
	i => \map_lab4|map_regC|sig_output_adder\(4),
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
	i => \map_lab4|map_fsm|done~combout\,
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
	i => \map_lab4|map_fsm|state.notBusy~q\,
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

-- Location: LABCELL_X11_Y5_N0
\map_lab4|map_regD|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~81_sumout\ = SUM(( !\map_lab4|map_regD|count_val\(0) ) + ( VCC ) + ( !VCC ))
-- \map_lab4|map_regD|Add0~82\ = CARRY(( !\map_lab4|map_regD|count_val\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(0),
	cin => GND,
	sumout => \map_lab4|map_regD|Add0~81_sumout\,
	cout => \map_lab4|map_regD|Add0~82\);

-- Location: LABCELL_X10_Y5_N21
\map_lab4|map_regD|count_val~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|count_val~2_combout\ = ( \map_lab4|map_fsm|state.load_regs~q\ ) # ( !\map_lab4|map_fsm|state.load_regs~q\ & ( !\map_lab4|map_regD|Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_Add0~81_sumout\,
	dataf => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	combout => \map_lab4|map_regD|count_val~2_combout\);

-- Location: LABCELL_X11_Y4_N39
\map_lab4|map_regD|count_val[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|count_val[0]~0_combout\ = ( \map_lab4|map_regD|Equal0~6_combout\ & ( \map_lab4|map_fsm|state.load_regs~q\ ) ) # ( !\map_lab4|map_regD|Equal0~6_combout\ & ( !\map_lab4|map_fsm|state.load_regs~q\ $ (!\map_lab4|map_fsm|state.shift_regs~q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datac => \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\,
	dataf => \map_lab4|map_regD|ALT_INV_Equal0~6_combout\,
	combout => \map_lab4|map_regD|count_val[0]~0_combout\);

-- Location: FF_X11_Y4_N56
\map_lab4|map_regD|count_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \map_lab4|map_regD|count_val~2_combout\,
	sload => VCC,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(0));

-- Location: LABCELL_X11_Y5_N3
\map_lab4|map_regD|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~5_sumout\ = SUM(( \map_lab4|map_regD|count_val\(1) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~82\ ))
-- \map_lab4|map_regD|Add0~6\ = CARRY(( \map_lab4|map_regD|count_val\(1) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(1),
	cin => \map_lab4|map_regD|Add0~82\,
	sumout => \map_lab4|map_regD|Add0~5_sumout\,
	cout => \map_lab4|map_regD|Add0~6\);

-- Location: LABCELL_X10_Y4_N0
\map_lab4|map_regD|count_val~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|count_val~1_combout\ = ( \map_lab4|map_regD|count_val\(1) & ( \map_lab4|map_fsm|state.shift_regs~q\ & ( (!\map_lab4|map_regD|Equal0~6_combout\ & \map_lab4|map_regD|Add0~5_sumout\) ) ) ) # ( !\map_lab4|map_regD|count_val\(1) & ( 
-- \map_lab4|map_fsm|state.shift_regs~q\ & ( (!\map_lab4|map_regD|Equal0~6_combout\ & \map_lab4|map_regD|Add0~5_sumout\) ) ) ) # ( \map_lab4|map_regD|count_val\(1) & ( !\map_lab4|map_fsm|state.shift_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_Equal0~6_combout\,
	datac => \map_lab4|map_regD|ALT_INV_Add0~5_sumout\,
	datae => \map_lab4|map_regD|ALT_INV_count_val\(1),
	dataf => \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_lab4|map_regD|count_val~1_combout\);

-- Location: FF_X10_Y4_N2
\map_lab4|map_regD|count_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|count_val~1_combout\,
	asdata => VCC,
	sload => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(1));

-- Location: LABCELL_X11_Y5_N6
\map_lab4|map_regD|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~37_sumout\ = SUM(( \map_lab4|map_regD|count_val\(2) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~6\ ))
-- \map_lab4|map_regD|Add0~38\ = CARRY(( \map_lab4|map_regD|count_val\(2) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(2),
	cin => \map_lab4|map_regD|Add0~6\,
	sumout => \map_lab4|map_regD|Add0~37_sumout\,
	cout => \map_lab4|map_regD|Add0~38\);

-- Location: FF_X11_Y5_N8
\map_lab4|map_regD|count_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~37_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(2));

-- Location: LABCELL_X11_Y5_N9
\map_lab4|map_regD|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~121_sumout\ = SUM(( \map_lab4|map_regD|count_val\(3) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~38\ ))
-- \map_lab4|map_regD|Add0~122\ = CARRY(( \map_lab4|map_regD|count_val\(3) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(3),
	cin => \map_lab4|map_regD|Add0~38\,
	sumout => \map_lab4|map_regD|Add0~121_sumout\,
	cout => \map_lab4|map_regD|Add0~122\);

-- Location: FF_X11_Y5_N11
\map_lab4|map_regD|count_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~121_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(3));

-- Location: LABCELL_X11_Y5_N12
\map_lab4|map_regD|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~33_sumout\ = SUM(( \map_lab4|map_regD|count_val\(4) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~122\ ))
-- \map_lab4|map_regD|Add0~34\ = CARRY(( \map_lab4|map_regD|count_val\(4) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(4),
	cin => \map_lab4|map_regD|Add0~122\,
	sumout => \map_lab4|map_regD|Add0~33_sumout\,
	cout => \map_lab4|map_regD|Add0~34\);

-- Location: FF_X11_Y5_N14
\map_lab4|map_regD|count_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~33_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(4));

-- Location: LABCELL_X11_Y5_N15
\map_lab4|map_regD|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~77_sumout\ = SUM(( \map_lab4|map_regD|count_val\(5) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~34\ ))
-- \map_lab4|map_regD|Add0~78\ = CARRY(( \map_lab4|map_regD|count_val\(5) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(5),
	cin => \map_lab4|map_regD|Add0~34\,
	sumout => \map_lab4|map_regD|Add0~77_sumout\,
	cout => \map_lab4|map_regD|Add0~78\);

-- Location: FF_X11_Y5_N17
\map_lab4|map_regD|count_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~77_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(5));

-- Location: LABCELL_X11_Y5_N18
\map_lab4|map_regD|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~93_sumout\ = SUM(( \map_lab4|map_regD|count_val\(6) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~78\ ))
-- \map_lab4|map_regD|Add0~94\ = CARRY(( \map_lab4|map_regD|count_val\(6) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(6),
	cin => \map_lab4|map_regD|Add0~78\,
	sumout => \map_lab4|map_regD|Add0~93_sumout\,
	cout => \map_lab4|map_regD|Add0~94\);

-- Location: FF_X11_Y5_N20
\map_lab4|map_regD|count_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~93_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(6));

-- Location: LABCELL_X11_Y5_N21
\map_lab4|map_regD|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~97_sumout\ = SUM(( \map_lab4|map_regD|count_val\(7) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~94\ ))
-- \map_lab4|map_regD|Add0~98\ = CARRY(( \map_lab4|map_regD|count_val\(7) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(7),
	cin => \map_lab4|map_regD|Add0~94\,
	sumout => \map_lab4|map_regD|Add0~97_sumout\,
	cout => \map_lab4|map_regD|Add0~98\);

-- Location: FF_X11_Y5_N23
\map_lab4|map_regD|count_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~97_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(7));

-- Location: LABCELL_X11_Y5_N24
\map_lab4|map_regD|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~101_sumout\ = SUM(( \map_lab4|map_regD|count_val\(8) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~98\ ))
-- \map_lab4|map_regD|Add0~102\ = CARRY(( \map_lab4|map_regD|count_val\(8) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(8),
	cin => \map_lab4|map_regD|Add0~98\,
	sumout => \map_lab4|map_regD|Add0~101_sumout\,
	cout => \map_lab4|map_regD|Add0~102\);

-- Location: FF_X11_Y5_N26
\map_lab4|map_regD|count_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~101_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(8));

-- Location: LABCELL_X11_Y5_N27
\map_lab4|map_regD|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~105_sumout\ = SUM(( \map_lab4|map_regD|count_val\(9) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~102\ ))
-- \map_lab4|map_regD|Add0~106\ = CARRY(( \map_lab4|map_regD|count_val\(9) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(9),
	cin => \map_lab4|map_regD|Add0~102\,
	sumout => \map_lab4|map_regD|Add0~105_sumout\,
	cout => \map_lab4|map_regD|Add0~106\);

-- Location: FF_X11_Y5_N29
\map_lab4|map_regD|count_val[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~105_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(9));

-- Location: LABCELL_X11_Y5_N30
\map_lab4|map_regD|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~109_sumout\ = SUM(( \map_lab4|map_regD|count_val\(10) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~106\ ))
-- \map_lab4|map_regD|Add0~110\ = CARRY(( \map_lab4|map_regD|count_val\(10) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(10),
	cin => \map_lab4|map_regD|Add0~106\,
	sumout => \map_lab4|map_regD|Add0~109_sumout\,
	cout => \map_lab4|map_regD|Add0~110\);

-- Location: FF_X11_Y5_N32
\map_lab4|map_regD|count_val[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~109_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(10));

-- Location: LABCELL_X11_Y5_N33
\map_lab4|map_regD|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~113_sumout\ = SUM(( \map_lab4|map_regD|count_val\(11) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~110\ ))
-- \map_lab4|map_regD|Add0~114\ = CARRY(( \map_lab4|map_regD|count_val\(11) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(11),
	cin => \map_lab4|map_regD|Add0~110\,
	sumout => \map_lab4|map_regD|Add0~113_sumout\,
	cout => \map_lab4|map_regD|Add0~114\);

-- Location: FF_X11_Y5_N35
\map_lab4|map_regD|count_val[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~113_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(11));

-- Location: LABCELL_X11_Y5_N36
\map_lab4|map_regD|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~117_sumout\ = SUM(( \map_lab4|map_regD|count_val\(12) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~114\ ))
-- \map_lab4|map_regD|Add0~118\ = CARRY(( \map_lab4|map_regD|count_val\(12) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(12),
	cin => \map_lab4|map_regD|Add0~114\,
	sumout => \map_lab4|map_regD|Add0~117_sumout\,
	cout => \map_lab4|map_regD|Add0~118\);

-- Location: FF_X11_Y5_N38
\map_lab4|map_regD|count_val[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~117_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(12));

-- Location: LABCELL_X11_Y5_N39
\map_lab4|map_regD|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~89_sumout\ = SUM(( \map_lab4|map_regD|count_val\(13) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~118\ ))
-- \map_lab4|map_regD|Add0~90\ = CARRY(( \map_lab4|map_regD|count_val\(13) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(13),
	cin => \map_lab4|map_regD|Add0~118\,
	sumout => \map_lab4|map_regD|Add0~89_sumout\,
	cout => \map_lab4|map_regD|Add0~90\);

-- Location: FF_X11_Y5_N41
\map_lab4|map_regD|count_val[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~89_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(13));

-- Location: LABCELL_X11_Y5_N42
\map_lab4|map_regD|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~125_sumout\ = SUM(( \map_lab4|map_regD|count_val\(14) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~90\ ))
-- \map_lab4|map_regD|Add0~126\ = CARRY(( \map_lab4|map_regD|count_val\(14) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(14),
	cin => \map_lab4|map_regD|Add0~90\,
	sumout => \map_lab4|map_regD|Add0~125_sumout\,
	cout => \map_lab4|map_regD|Add0~126\);

-- Location: FF_X11_Y5_N44
\map_lab4|map_regD|count_val[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~125_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(14));

-- Location: LABCELL_X11_Y5_N45
\map_lab4|map_regD|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~57_sumout\ = SUM(( \map_lab4|map_regD|count_val\(15) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~126\ ))
-- \map_lab4|map_regD|Add0~58\ = CARRY(( \map_lab4|map_regD|count_val\(15) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(15),
	cin => \map_lab4|map_regD|Add0~126\,
	sumout => \map_lab4|map_regD|Add0~57_sumout\,
	cout => \map_lab4|map_regD|Add0~58\);

-- Location: FF_X11_Y5_N47
\map_lab4|map_regD|count_val[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~57_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(15));

-- Location: LABCELL_X11_Y5_N48
\map_lab4|map_regD|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~61_sumout\ = SUM(( \map_lab4|map_regD|count_val\(16) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~58\ ))
-- \map_lab4|map_regD|Add0~62\ = CARRY(( \map_lab4|map_regD|count_val\(16) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(16),
	cin => \map_lab4|map_regD|Add0~58\,
	sumout => \map_lab4|map_regD|Add0~61_sumout\,
	cout => \map_lab4|map_regD|Add0~62\);

-- Location: FF_X11_Y5_N50
\map_lab4|map_regD|count_val[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~61_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(16));

-- Location: LABCELL_X11_Y5_N51
\map_lab4|map_regD|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~65_sumout\ = SUM(( \map_lab4|map_regD|count_val\(17) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~62\ ))
-- \map_lab4|map_regD|Add0~66\ = CARRY(( \map_lab4|map_regD|count_val\(17) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(17),
	cin => \map_lab4|map_regD|Add0~62\,
	sumout => \map_lab4|map_regD|Add0~65_sumout\,
	cout => \map_lab4|map_regD|Add0~66\);

-- Location: FF_X11_Y5_N53
\map_lab4|map_regD|count_val[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~65_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(17));

-- Location: LABCELL_X11_Y5_N54
\map_lab4|map_regD|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~69_sumout\ = SUM(( \map_lab4|map_regD|count_val\(18) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~66\ ))
-- \map_lab4|map_regD|Add0~70\ = CARRY(( \map_lab4|map_regD|count_val\(18) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(18),
	cin => \map_lab4|map_regD|Add0~66\,
	sumout => \map_lab4|map_regD|Add0~69_sumout\,
	cout => \map_lab4|map_regD|Add0~70\);

-- Location: FF_X11_Y5_N56
\map_lab4|map_regD|count_val[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~69_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(18));

-- Location: LABCELL_X11_Y5_N57
\map_lab4|map_regD|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~73_sumout\ = SUM(( \map_lab4|map_regD|count_val\(19) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~70\ ))
-- \map_lab4|map_regD|Add0~74\ = CARRY(( \map_lab4|map_regD|count_val\(19) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(19),
	cin => \map_lab4|map_regD|Add0~70\,
	sumout => \map_lab4|map_regD|Add0~73_sumout\,
	cout => \map_lab4|map_regD|Add0~74\);

-- Location: FF_X11_Y5_N59
\map_lab4|map_regD|count_val[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~73_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(19));

-- Location: LABCELL_X11_Y4_N0
\map_lab4|map_regD|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~41_sumout\ = SUM(( \map_lab4|map_regD|count_val\(20) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~74\ ))
-- \map_lab4|map_regD|Add0~42\ = CARRY(( \map_lab4|map_regD|count_val\(20) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(20),
	cin => \map_lab4|map_regD|Add0~74\,
	sumout => \map_lab4|map_regD|Add0~41_sumout\,
	cout => \map_lab4|map_regD|Add0~42\);

-- Location: FF_X11_Y4_N2
\map_lab4|map_regD|count_val[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~41_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(20));

-- Location: LABCELL_X11_Y4_N3
\map_lab4|map_regD|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~45_sumout\ = SUM(( \map_lab4|map_regD|count_val\(21) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~42\ ))
-- \map_lab4|map_regD|Add0~46\ = CARRY(( \map_lab4|map_regD|count_val\(21) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(21),
	cin => \map_lab4|map_regD|Add0~42\,
	sumout => \map_lab4|map_regD|Add0~45_sumout\,
	cout => \map_lab4|map_regD|Add0~46\);

-- Location: FF_X11_Y4_N5
\map_lab4|map_regD|count_val[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~45_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(21));

-- Location: LABCELL_X11_Y4_N6
\map_lab4|map_regD|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~49_sumout\ = SUM(( \map_lab4|map_regD|count_val\(22) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~46\ ))
-- \map_lab4|map_regD|Add0~50\ = CARRY(( \map_lab4|map_regD|count_val\(22) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(22),
	cin => \map_lab4|map_regD|Add0~46\,
	sumout => \map_lab4|map_regD|Add0~49_sumout\,
	cout => \map_lab4|map_regD|Add0~50\);

-- Location: FF_X11_Y4_N8
\map_lab4|map_regD|count_val[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~49_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(22));

-- Location: LABCELL_X11_Y4_N9
\map_lab4|map_regD|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~53_sumout\ = SUM(( \map_lab4|map_regD|count_val\(23) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~50\ ))
-- \map_lab4|map_regD|Add0~54\ = CARRY(( \map_lab4|map_regD|count_val\(23) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(23),
	cin => \map_lab4|map_regD|Add0~50\,
	sumout => \map_lab4|map_regD|Add0~53_sumout\,
	cout => \map_lab4|map_regD|Add0~54\);

-- Location: FF_X11_Y4_N11
\map_lab4|map_regD|count_val[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~53_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(23));

-- Location: LABCELL_X11_Y4_N12
\map_lab4|map_regD|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~9_sumout\ = SUM(( \map_lab4|map_regD|count_val\(24) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~54\ ))
-- \map_lab4|map_regD|Add0~10\ = CARRY(( \map_lab4|map_regD|count_val\(24) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(24),
	cin => \map_lab4|map_regD|Add0~54\,
	sumout => \map_lab4|map_regD|Add0~9_sumout\,
	cout => \map_lab4|map_regD|Add0~10\);

-- Location: FF_X11_Y4_N14
\map_lab4|map_regD|count_val[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~9_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(24));

-- Location: LABCELL_X11_Y4_N15
\map_lab4|map_regD|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~13_sumout\ = SUM(( \map_lab4|map_regD|count_val\(25) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~10\ ))
-- \map_lab4|map_regD|Add0~14\ = CARRY(( \map_lab4|map_regD|count_val\(25) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(25),
	cin => \map_lab4|map_regD|Add0~10\,
	sumout => \map_lab4|map_regD|Add0~13_sumout\,
	cout => \map_lab4|map_regD|Add0~14\);

-- Location: FF_X11_Y4_N17
\map_lab4|map_regD|count_val[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~13_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(25));

-- Location: LABCELL_X11_Y4_N18
\map_lab4|map_regD|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~17_sumout\ = SUM(( \map_lab4|map_regD|count_val\(26) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~14\ ))
-- \map_lab4|map_regD|Add0~18\ = CARRY(( \map_lab4|map_regD|count_val\(26) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(26),
	cin => \map_lab4|map_regD|Add0~14\,
	sumout => \map_lab4|map_regD|Add0~17_sumout\,
	cout => \map_lab4|map_regD|Add0~18\);

-- Location: FF_X11_Y4_N20
\map_lab4|map_regD|count_val[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~17_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(26));

-- Location: LABCELL_X11_Y4_N21
\map_lab4|map_regD|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~21_sumout\ = SUM(( \map_lab4|map_regD|count_val\(27) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~18\ ))
-- \map_lab4|map_regD|Add0~22\ = CARRY(( \map_lab4|map_regD|count_val\(27) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(27),
	cin => \map_lab4|map_regD|Add0~18\,
	sumout => \map_lab4|map_regD|Add0~21_sumout\,
	cout => \map_lab4|map_regD|Add0~22\);

-- Location: FF_X11_Y4_N23
\map_lab4|map_regD|count_val[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~21_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(27));

-- Location: LABCELL_X11_Y4_N24
\map_lab4|map_regD|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~25_sumout\ = SUM(( \map_lab4|map_regD|count_val\(28) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~22\ ))
-- \map_lab4|map_regD|Add0~26\ = CARRY(( \map_lab4|map_regD|count_val\(28) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_count_val\(28),
	cin => \map_lab4|map_regD|Add0~22\,
	sumout => \map_lab4|map_regD|Add0~25_sumout\,
	cout => \map_lab4|map_regD|Add0~26\);

-- Location: FF_X11_Y4_N26
\map_lab4|map_regD|count_val[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~25_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(28));

-- Location: LABCELL_X11_Y4_N27
\map_lab4|map_regD|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~29_sumout\ = SUM(( \map_lab4|map_regD|count_val\(29) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~26\ ))
-- \map_lab4|map_regD|Add0~30\ = CARRY(( \map_lab4|map_regD|count_val\(29) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(29),
	cin => \map_lab4|map_regD|Add0~26\,
	sumout => \map_lab4|map_regD|Add0~29_sumout\,
	cout => \map_lab4|map_regD|Add0~30\);

-- Location: FF_X11_Y4_N29
\map_lab4|map_regD|count_val[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~29_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(29));

-- Location: LABCELL_X11_Y4_N30
\map_lab4|map_regD|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~1_sumout\ = SUM(( \map_lab4|map_regD|count_val\(30) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~30\ ))
-- \map_lab4|map_regD|Add0~2\ = CARRY(( \map_lab4|map_regD|count_val\(30) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regD|ALT_INV_count_val\(30),
	cin => \map_lab4|map_regD|Add0~30\,
	sumout => \map_lab4|map_regD|Add0~1_sumout\,
	cout => \map_lab4|map_regD|Add0~2\);

-- Location: FF_X11_Y4_N32
\map_lab4|map_regD|count_val[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|Add0~1_sumout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(30));

-- Location: LABCELL_X11_Y4_N33
\map_lab4|map_regD|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Add0~85_sumout\ = SUM(( !\map_lab4|map_regD|count_val\(31) ) + ( VCC ) + ( \map_lab4|map_regD|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_regD|ALT_INV_count_val\(31),
	cin => \map_lab4|map_regD|Add0~2\,
	sumout => \map_lab4|map_regD|Add0~85_sumout\);

-- Location: LABCELL_X11_Y4_N36
\map_lab4|map_regD|count_val~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|count_val~3_combout\ = ( \map_lab4|map_regD|Add0~85_sumout\ & ( \map_lab4|map_fsm|state.load_regs~q\ ) ) # ( !\map_lab4|map_regD|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_regD|ALT_INV_Add0~85_sumout\,
	combout => \map_lab4|map_regD|count_val~3_combout\);

-- Location: FF_X11_Y4_N38
\map_lab4|map_regD|count_val[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|count_val~3_combout\,
	ena => \map_lab4|map_regD|count_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|count_val\(31));

-- Location: LABCELL_X11_Y4_N48
\map_lab4|map_regD|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~4_combout\ = ( !\map_lab4|map_regD|count_val\(8) & ( !\map_lab4|map_regD|count_val\(7) & ( (\map_lab4|map_regD|count_val\(31) & (!\map_lab4|map_regD|count_val\(6) & (!\map_lab4|map_regD|count_val\(0) & 
-- !\map_lab4|map_regD|count_val\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(31),
	datab => \map_lab4|map_regD|ALT_INV_count_val\(6),
	datac => \map_lab4|map_regD|ALT_INV_count_val\(0),
	datad => \map_lab4|map_regD|ALT_INV_count_val\(13),
	datae => \map_lab4|map_regD|ALT_INV_count_val\(8),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(7),
	combout => \map_lab4|map_regD|Equal0~4_combout\);

-- Location: LABCELL_X10_Y4_N9
\map_lab4|map_regD|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~0_combout\ = ( !\map_lab4|map_regD|count_val\(1) & ( !\map_lab4|map_regD|count_val\(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_lab4|map_regD|ALT_INV_count_val\(1),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(30),
	combout => \map_lab4|map_regD|Equal0~0_combout\);

-- Location: LABCELL_X12_Y4_N3
\map_lab4|map_regD|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~2_combout\ = ( !\map_lab4|map_regD|count_val\(2) & ( !\map_lab4|map_regD|count_val\(4) & ( (!\map_lab4|map_regD|count_val\(20) & (!\map_lab4|map_regD|count_val\(21) & (!\map_lab4|map_regD|count_val\(22) & 
-- !\map_lab4|map_regD|count_val\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(20),
	datab => \map_lab4|map_regD|ALT_INV_count_val\(21),
	datac => \map_lab4|map_regD|ALT_INV_count_val\(22),
	datad => \map_lab4|map_regD|ALT_INV_count_val\(23),
	datae => \map_lab4|map_regD|ALT_INV_count_val\(2),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(4),
	combout => \map_lab4|map_regD|Equal0~2_combout\);

-- Location: LABCELL_X11_Y4_N57
\map_lab4|map_regD|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~1_combout\ = ( !\map_lab4|map_regD|count_val\(27) & ( !\map_lab4|map_regD|count_val\(26) & ( (!\map_lab4|map_regD|count_val\(28) & (!\map_lab4|map_regD|count_val\(24) & (!\map_lab4|map_regD|count_val\(25) & 
-- !\map_lab4|map_regD|count_val\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(28),
	datab => \map_lab4|map_regD|ALT_INV_count_val\(24),
	datac => \map_lab4|map_regD|ALT_INV_count_val\(25),
	datad => \map_lab4|map_regD|ALT_INV_count_val\(29),
	datae => \map_lab4|map_regD|ALT_INV_count_val\(27),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(26),
	combout => \map_lab4|map_regD|Equal0~1_combout\);

-- Location: LABCELL_X12_Y5_N18
\map_lab4|map_regD|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~5_combout\ = ( !\map_lab4|map_regD|count_val\(12) & ( !\map_lab4|map_regD|count_val\(10) & ( (!\map_lab4|map_regD|count_val\(14) & (!\map_lab4|map_regD|count_val\(9) & (!\map_lab4|map_regD|count_val\(11) & 
-- !\map_lab4|map_regD|count_val\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(14),
	datab => \map_lab4|map_regD|ALT_INV_count_val\(9),
	datac => \map_lab4|map_regD|ALT_INV_count_val\(11),
	datad => \map_lab4|map_regD|ALT_INV_count_val\(3),
	datae => \map_lab4|map_regD|ALT_INV_count_val\(12),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(10),
	combout => \map_lab4|map_regD|Equal0~5_combout\);

-- Location: LABCELL_X12_Y5_N15
\map_lab4|map_regD|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~3_combout\ = ( !\map_lab4|map_regD|count_val\(16) & ( !\map_lab4|map_regD|count_val\(5) & ( (!\map_lab4|map_regD|count_val\(17) & (!\map_lab4|map_regD|count_val\(15) & (!\map_lab4|map_regD|count_val\(19) & 
-- !\map_lab4|map_regD|count_val\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_count_val\(17),
	datab => \map_lab4|map_regD|ALT_INV_count_val\(15),
	datac => \map_lab4|map_regD|ALT_INV_count_val\(19),
	datad => \map_lab4|map_regD|ALT_INV_count_val\(18),
	datae => \map_lab4|map_regD|ALT_INV_count_val\(16),
	dataf => \map_lab4|map_regD|ALT_INV_count_val\(5),
	combout => \map_lab4|map_regD|Equal0~3_combout\);

-- Location: LABCELL_X11_Y4_N42
\map_lab4|map_regD|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|Equal0~6_combout\ = ( \map_lab4|map_regD|Equal0~5_combout\ & ( \map_lab4|map_regD|Equal0~3_combout\ & ( (\map_lab4|map_regD|Equal0~4_combout\ & (\map_lab4|map_regD|Equal0~0_combout\ & (\map_lab4|map_regD|Equal0~2_combout\ & 
-- \map_lab4|map_regD|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_Equal0~4_combout\,
	datab => \map_lab4|map_regD|ALT_INV_Equal0~0_combout\,
	datac => \map_lab4|map_regD|ALT_INV_Equal0~2_combout\,
	datad => \map_lab4|map_regD|ALT_INV_Equal0~1_combout\,
	datae => \map_lab4|map_regD|ALT_INV_Equal0~5_combout\,
	dataf => \map_lab4|map_regD|ALT_INV_Equal0~3_combout\,
	combout => \map_lab4|map_regD|Equal0~6_combout\);

-- Location: LABCELL_X9_Y4_N57
\map_lab4|map_regD|is_finished~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regD|is_finished~0_combout\ = ( \map_lab4|map_regD|is_finished~q\ & ( \map_lab4|map_regD|Equal0~6_combout\ ) ) # ( !\map_lab4|map_regD|is_finished~q\ & ( \map_lab4|map_regD|Equal0~6_combout\ ) ) # ( \map_lab4|map_regD|is_finished~q\ & ( 
-- !\map_lab4|map_regD|Equal0~6_combout\ & ( !\map_lab4|map_fsm|state.shift_regs~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\,
	datae => \map_lab4|map_regD|ALT_INV_is_finished~q\,
	dataf => \map_lab4|map_regD|ALT_INV_Equal0~6_combout\,
	combout => \map_lab4|map_regD|is_finished~0_combout\);

-- Location: FF_X9_Y4_N59
\map_lab4|map_regD|is_finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regD|is_finished~0_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regD|is_finished~q\);

-- Location: LABCELL_X9_Y5_N51
\map_lab4|map_fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|Selector3~0_combout\ = ( \map_lab4|map_fsm|state.res~q\ & ( (!\map_lab4|map_regD|is_finished~q\) # (\map_lab4|map_fsm|state.load_regs~q\) ) ) # ( !\map_lab4|map_fsm|state.res~q\ & ( \map_lab4|map_fsm|state.load_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regD|ALT_INV_is_finished~q\,
	datab => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	combout => \map_lab4|map_fsm|Selector3~0_combout\);

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

-- Location: FF_X9_Y5_N53
\map_lab4|map_fsm|state.add_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_fsm|Selector3~0_combout\,
	clrn => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_fsm|state.add_regs~q\);

-- Location: LABCELL_X10_Y4_N48
\map_lab4|map_fsm|state.shift_regs~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|state.shift_regs~feeder_combout\ = \map_lab4|map_fsm|state.add_regs~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	combout => \map_lab4|map_fsm|state.shift_regs~feeder_combout\);

-- Location: FF_X10_Y4_N50
\map_lab4|map_fsm|state.shift_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_fsm|state.shift_regs~feeder_combout\,
	clrn => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_fsm|state.shift_regs~q\);

-- Location: FF_X10_Y4_N29
\map_lab4|map_fsm|state.res\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \map_lab4|map_fsm|state.shift_regs~q\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_fsm|state.res~q\);

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

-- Location: LABCELL_X10_Y4_N30
\map_lab4|map_fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|Selector2~0_combout\ = (!\map_lab4|map_fsm|state.res~q\ & (((\map_lab4|map_fsm|state.notBusy~q\) # (\SW[9]~input_o\)))) # (\map_lab4|map_fsm|state.res~q\ & (!\map_lab4|map_regD|is_finished~q\ & ((\map_lab4|map_fsm|state.notBusy~q\) # 
-- (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011101110000011101110111000001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	datab => \map_lab4|map_regD|ALT_INV_is_finished~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \map_lab4|map_fsm|ALT_INV_state.notBusy~q\,
	combout => \map_lab4|map_fsm|Selector2~0_combout\);

-- Location: FF_X10_Y4_N32
\map_lab4|map_fsm|state.notBusy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_fsm|Selector2~0_combout\,
	clrn => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_fsm|state.notBusy~q\);

-- Location: LABCELL_X9_Y5_N48
\map_lab4|map_fsm|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|state~9_combout\ = ( \SW[9]~input_o\ & ( !\map_lab4|map_fsm|state.notBusy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_fsm|ALT_INV_state.notBusy~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \map_lab4|map_fsm|state~9_combout\);

-- Location: FF_X9_Y5_N50
\map_lab4|map_fsm|state.load_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_fsm|state~9_combout\,
	clrn => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_fsm|state.load_regs~q\);

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

-- Location: LABCELL_X10_Y5_N54
\map_lab4|map_regB|internal_buffer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[1]~1_combout\ = ( \map_lab4|map_regB|internal_buffer[1]~1_combout\ & ( \SW[0]~input_o\ ) ) # ( !\map_lab4|map_regB|internal_buffer[1]~1_combout\ & ( \SW[0]~input_o\ & ( \map_lab4|map_fsm|state.load_regs~q\ ) ) ) # ( 
-- \map_lab4|map_regB|internal_buffer[1]~1_combout\ & ( !\SW[0]~input_o\ & ( !\map_lab4|map_fsm|state.load_regs~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datae => \map_lab4|map_regB|ALT_INV_internal_buffer[1]~1_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \map_lab4|map_regB|internal_buffer[1]~1_combout\);

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

-- Location: LABCELL_X10_Y5_N0
\map_lab4|map_fsm|sel_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|sel_out~0_combout\ = ( \map_lab4|map_fsm|state.add_regs~q\ & ( \map_lab4|map_fsm|state.res~q\ ) ) # ( !\map_lab4|map_fsm|state.add_regs~q\ & ( \map_lab4|map_fsm|state.res~q\ ) ) # ( \map_lab4|map_fsm|state.add_regs~q\ & ( 
-- !\map_lab4|map_fsm|state.res~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	combout => \map_lab4|map_fsm|sel_out~0_combout\);

-- Location: LABCELL_X10_Y5_N36
\map_lab4|map_fsm|sel_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|sel_out\(1) = ( \map_lab4|map_regB|internal_buffer[1]~2_combout\ & ( (\map_lab4|map_fsm|sel_out\(1)) # (\map_lab4|map_fsm|sel_out~0_combout\) ) ) # ( !\map_lab4|map_regB|internal_buffer[1]~2_combout\ & ( 
-- (!\map_lab4|map_fsm|sel_out~0_combout\ & \map_lab4|map_fsm|sel_out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_fsm|ALT_INV_sel_out~0_combout\,
	datad => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[1]~2_combout\,
	combout => \map_lab4|map_fsm|sel_out\(1));

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

-- Location: FF_X9_Y5_N38
\map_lab4|map_regA|neg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|neg1\(0));

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

-- Location: FF_X9_Y5_N5
\map_lab4|map_regA|pos1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|pos1\(1));

-- Location: LABCELL_X9_Y5_N33
\map_lab4|map_regA|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regA|Add0~0_combout\ = ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ ) ) # ( !\SW[4]~input_o\ & ( \SW[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \map_lab4|map_regA|Add0~0_combout\);

-- Location: FF_X9_Y5_N59
\map_lab4|map_regA|neg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \map_lab4|map_regA|Add0~0_combout\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|neg1\(1));

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

-- Location: LABCELL_X10_Y5_N6
\map_lab4|map_regB|internal_buffer[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[2]~5_combout\ = ( \map_lab4|map_regB|internal_buffer[2]~5_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\) # (\SW[1]~input_o\) ) ) # ( !\map_lab4|map_regB|internal_buffer[2]~5_combout\ & ( (\SW[1]~input_o\ & 
-- \map_lab4|map_fsm|state.load_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[2]~5_combout\,
	combout => \map_lab4|map_regB|internal_buffer[2]~5_combout\);

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

-- Location: MLABCELL_X8_Y5_N12
\map_lab4|map_regC|output_regB[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|output_regB[1]~0_combout\ = ( \map_lab4|map_regC|output_regB\(1) & ( \map_lab4|map_fsm|state.add_regs~q\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & \map_lab4|map_adder|Ai|s\(1)) ) ) ) # ( !\map_lab4|map_regC|output_regB\(1) & ( 
-- \map_lab4|map_fsm|state.add_regs~q\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & \map_lab4|map_adder|Ai|s\(1)) ) ) ) # ( \map_lab4|map_regC|output_regB\(1) & ( !\map_lab4|map_fsm|state.add_regs~q\ & ( !\map_lab4|map_fsm|state.load_regs~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datab => \map_lab4|map_adder|Ai|ALT_INV_s\(1),
	datae => \map_lab4|map_regC|ALT_INV_output_regB\(1),
	dataf => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	combout => \map_lab4|map_regC|output_regB[1]~0_combout\);

-- Location: FF_X8_Y5_N13
\map_lab4|map_regC|output_regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regC|output_regB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|output_regB\(1));

-- Location: LABCELL_X10_Y4_N45
\map_lab4|map_regB|internal_buffer[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[4]~13_combout\ = ( \map_lab4|map_fsm|state.load_regs~q\ & ( \map_lab4|map_regB|internal_buffer[4]~13_combout\ & ( \SW[3]~input_o\ ) ) ) # ( !\map_lab4|map_fsm|state.load_regs~q\ & ( 
-- \map_lab4|map_regB|internal_buffer[4]~13_combout\ ) ) # ( \map_lab4|map_fsm|state.load_regs~q\ & ( !\map_lab4|map_regB|internal_buffer[4]~13_combout\ & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[4]~13_combout\,
	combout => \map_lab4|map_regB|internal_buffer[4]~13_combout\);

-- Location: LABCELL_X9_Y4_N42
\map_lab4|map_regB|internal_buffer[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[4]~15_combout\ = ( !\map_lab4|map_regC|output_regB\(1) & ( \map_lab4|map_regB|internal_buffer[4]~13_combout\ ) ) # ( \map_lab4|map_regC|output_regB\(1) & ( !\map_lab4|map_regB|internal_buffer[4]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_lab4|map_regC|ALT_INV_output_regB\(1),
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[4]~13_combout\,
	combout => \map_lab4|map_regB|internal_buffer[4]~15_combout\);

-- Location: FF_X9_Y4_N43
\map_lab4|map_regB|internal_buffer[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regB|internal_buffer[4]~15_combout\,
	clrn => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_lab4|map_fsm|state.shift_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regB|internal_buffer[4]~_emulated_q\);

-- Location: LABCELL_X10_Y4_N21
\map_lab4|map_regB|internal_buffer[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[4]~14_combout\ = ( \map_lab4|map_regB|internal_buffer[4]~13_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((!\map_lab4|map_regB|internal_buffer[4]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & 
-- (\SW[3]~input_o\)) ) ) # ( !\map_lab4|map_regB|internal_buffer[4]~13_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((\map_lab4|map_regB|internal_buffer[4]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & (\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \map_lab4|map_regB|ALT_INV_internal_buffer[4]~_emulated_q\,
	datad => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[4]~13_combout\,
	combout => \map_lab4|map_regB|internal_buffer[4]~14_combout\);

-- Location: LABCELL_X10_Y5_N51
\map_lab4|map_regB|internal_buffer[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[2]~7_combout\ = !\map_lab4|map_regB|internal_buffer[2]~5_combout\ $ (!\map_lab4|map_regB|internal_buffer[4]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regB|ALT_INV_internal_buffer[2]~5_combout\,
	datac => \map_lab4|map_regB|ALT_INV_internal_buffer[4]~14_combout\,
	combout => \map_lab4|map_regB|internal_buffer[2]~7_combout\);

-- Location: FF_X10_Y5_N52
\map_lab4|map_regB|internal_buffer[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regB|internal_buffer[2]~7_combout\,
	clrn => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_lab4|map_fsm|state.shift_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regB|internal_buffer[2]~_emulated_q\);

-- Location: LABCELL_X10_Y5_N33
\map_lab4|map_regB|internal_buffer[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[2]~6_combout\ = ( \map_lab4|map_regB|internal_buffer[2]~5_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((!\map_lab4|map_regB|internal_buffer[2]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & 
-- (\SW[1]~input_o\)) ) ) # ( !\map_lab4|map_regB|internal_buffer[2]~5_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((\map_lab4|map_regB|internal_buffer[2]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & (\SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \map_lab4|map_regB|ALT_INV_internal_buffer[2]~_emulated_q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[2]~5_combout\,
	combout => \map_lab4|map_regB|internal_buffer[2]~6_combout\);

-- Location: FF_X10_Y5_N17
\map_lab4|map_regB|internal_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \map_lab4|map_regB|internal_buffer[2]~6_combout\,
	clrn => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.shift_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regB|internal_buffer\(0));

-- Location: LABCELL_X10_Y5_N18
\map_lab4|map_fsm|sel_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|sel_out\(0) = ( \map_lab4|map_regB|internal_buffer\(0) & ( (\map_lab4|map_fsm|sel_out~0_combout\) # (\map_lab4|map_fsm|sel_out\(0)) ) ) # ( !\map_lab4|map_regB|internal_buffer\(0) & ( (\map_lab4|map_fsm|sel_out\(0) & 
-- !\map_lab4|map_fsm|sel_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	datad => \map_lab4|map_fsm|ALT_INV_sel_out~0_combout\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer\(0),
	combout => \map_lab4|map_fsm|sel_out\(0));

-- Location: LABCELL_X10_Y5_N24
\map_lab4|map_fsm|sel_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|sel_out\(2) = ( \map_lab4|map_regB|internal_buffer[2]~6_combout\ & ( (\map_lab4|map_fsm|sel_out~0_combout\) # (\map_lab4|map_fsm|sel_out\(2)) ) ) # ( !\map_lab4|map_regB|internal_buffer[2]~6_combout\ & ( (\map_lab4|map_fsm|sel_out\(2) & 
-- !\map_lab4|map_fsm|sel_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_fsm|ALT_INV_sel_out\(2),
	datad => \map_lab4|map_fsm|ALT_INV_sel_out~0_combout\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[2]~6_combout\,
	combout => \map_lab4|map_fsm|sel_out\(2));

-- Location: LABCELL_X9_Y5_N54
\map_lab4|map_mux|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_mux|Mux3~0_combout\ = ( \map_lab4|map_fsm|sel_out\(0) & ( \map_lab4|map_fsm|sel_out\(2) & ( (!\map_lab4|map_fsm|sel_out\(1) & \map_lab4|map_regA|neg1\(1)) ) ) ) # ( !\map_lab4|map_fsm|sel_out\(0) & ( \map_lab4|map_fsm|sel_out\(2) & ( 
-- (!\map_lab4|map_fsm|sel_out\(1) & (\map_lab4|map_regA|neg1\(0))) # (\map_lab4|map_fsm|sel_out\(1) & ((\map_lab4|map_regA|neg1\(1)))) ) ) ) # ( \map_lab4|map_fsm|sel_out\(0) & ( !\map_lab4|map_fsm|sel_out\(2) & ( (!\map_lab4|map_fsm|sel_out\(1) & 
-- ((\map_lab4|map_regA|pos1\(1)))) # (\map_lab4|map_fsm|sel_out\(1) & (\map_lab4|map_regA|neg1\(0))) ) ) ) # ( !\map_lab4|map_fsm|sel_out\(0) & ( !\map_lab4|map_fsm|sel_out\(2) & ( (\map_lab4|map_fsm|sel_out\(1) & \map_lab4|map_regA|pos1\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000111010001110101000100011101110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regA|ALT_INV_neg1\(0),
	datab => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	datac => \map_lab4|map_regA|ALT_INV_pos1\(1),
	datad => \map_lab4|map_regA|ALT_INV_neg1\(1),
	datae => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	dataf => \map_lab4|map_fsm|ALT_INV_sel_out\(2),
	combout => \map_lab4|map_mux|Mux3~0_combout\);

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

-- Location: FF_X10_Y5_N59
\map_lab4|map_regA|pos1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|pos1\(3));

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

-- Location: LABCELL_X10_Y5_N30
\map_lab4|map_regA|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regA|Add0~2_combout\ = ( \SW[7]~input_o\ & ( (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)) ) ) # ( !\SW[7]~input_o\ & ( ((\SW[4]~input_o\) # (\SW[6]~input_o\)) # (\SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \map_lab4|map_regA|Add0~2_combout\);

-- Location: FF_X10_Y5_N32
\map_lab4|map_regA|neg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regA|Add0~2_combout\,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|neg1\(3));

-- Location: FF_X9_Y5_N26
\map_lab4|map_regA|pos1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|pos1\(2));

-- Location: LABCELL_X10_Y5_N9
\map_lab4|map_regA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regA|Add0~1_combout\ = ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ ) ) # ( !\SW[5]~input_o\ & ( !\SW[4]~input_o\ $ (!\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \map_lab4|map_regA|Add0~1_combout\);

-- Location: FF_X9_Y5_N56
\map_lab4|map_regA|neg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \map_lab4|map_regA|Add0~1_combout\,
	sload => VCC,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|neg1\(2));

-- Location: LABCELL_X9_Y5_N36
\map_lab4|map_mux|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_mux|Mux1~0_combout\ = ( !\map_lab4|map_fsm|sel_out\(0) & ( (!\map_lab4|map_fsm|sel_out\(1) & ((((\map_lab4|map_regA|neg1\(2) & \map_lab4|map_fsm|sel_out\(2)))))) # (\map_lab4|map_fsm|sel_out\(1) & (((!\map_lab4|map_fsm|sel_out\(2) & 
-- (\map_lab4|map_regA|pos1\(3))) # (\map_lab4|map_fsm|sel_out\(2) & ((\map_lab4|map_regA|neg1\(3))))))) ) ) # ( \map_lab4|map_fsm|sel_out\(0) & ( (!\map_lab4|map_fsm|sel_out\(1) & (((!\map_lab4|map_fsm|sel_out\(2) & (\map_lab4|map_regA|pos1\(3))) # 
-- (\map_lab4|map_fsm|sel_out\(2) & ((\map_lab4|map_regA|neg1\(3))))))) # (\map_lab4|map_fsm|sel_out\(1) & ((((\map_lab4|map_regA|pos1\(2) & !\map_lab4|map_fsm|sel_out\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101010101010000111100001111001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regA|ALT_INV_pos1\(3),
	datab => \map_lab4|map_regA|ALT_INV_neg1\(3),
	datac => \map_lab4|map_regA|ALT_INV_pos1\(2),
	datad => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	datae => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	dataf => \map_lab4|map_fsm|ALT_INV_sel_out\(2),
	datag => \map_lab4|map_regA|ALT_INV_neg1\(2),
	combout => \map_lab4|map_mux|Mux1~0_combout\);

-- Location: LABCELL_X10_Y5_N27
\map_lab4|map_regA|neg1[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regA|neg1[4]~0_combout\ = ( !\SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \map_lab4|map_regA|neg1[4]~0_combout\);

-- Location: FF_X10_Y5_N29
\map_lab4|map_regA|neg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regA|neg1[4]~0_combout\,
	ena => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regA|neg1\(4));

-- Location: LABCELL_X10_Y5_N12
\map_lab4|map_mux|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_mux|Mux0~0_combout\ = ( \map_lab4|map_fsm|sel_out\(0) & ( \map_lab4|map_fsm|sel_out\(2) & ( (\map_lab4|map_regA|neg1\(4) & !\map_lab4|map_fsm|sel_out\(1)) ) ) ) # ( !\map_lab4|map_fsm|sel_out\(0) & ( \map_lab4|map_fsm|sel_out\(2) & ( 
-- (!\map_lab4|map_fsm|sel_out\(1) & ((\map_lab4|map_regA|neg1\(3)))) # (\map_lab4|map_fsm|sel_out\(1) & (\map_lab4|map_regA|neg1\(4))) ) ) ) # ( \map_lab4|map_fsm|sel_out\(0) & ( !\map_lab4|map_fsm|sel_out\(2) & ( \map_lab4|map_regA|pos1\(3) ) ) ) # ( 
-- !\map_lab4|map_fsm|sel_out\(0) & ( !\map_lab4|map_fsm|sel_out\(2) & ( (\map_lab4|map_fsm|sel_out\(1) & \map_lab4|map_regA|pos1\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001111111100011101000111010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regA|ALT_INV_neg1\(4),
	datab => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	datac => \map_lab4|map_regA|ALT_INV_neg1\(3),
	datad => \map_lab4|map_regA|ALT_INV_pos1\(3),
	datae => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	dataf => \map_lab4|map_fsm|ALT_INV_sel_out\(2),
	combout => \map_lab4|map_mux|Mux0~0_combout\);

-- Location: LABCELL_X9_Y5_N24
\map_lab4|map_mux|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_mux|Mux2~0_combout\ = ( !\map_lab4|map_fsm|sel_out\(0) & ( (!\map_lab4|map_fsm|sel_out\(1) & (((\map_lab4|map_regA|neg1\(1) & ((\map_lab4|map_fsm|sel_out\(2))))))) # (\map_lab4|map_fsm|sel_out\(1) & (((!\map_lab4|map_fsm|sel_out\(2) & 
-- (\map_lab4|map_regA|pos1\(2))) # (\map_lab4|map_fsm|sel_out\(2) & ((\map_lab4|map_regA|neg1\(2))))))) ) ) # ( \map_lab4|map_fsm|sel_out\(0) & ( (!\map_lab4|map_fsm|sel_out\(1) & (((!\map_lab4|map_fsm|sel_out\(2) & (\map_lab4|map_regA|pos1\(2))) # 
-- (\map_lab4|map_fsm|sel_out\(2) & ((\map_lab4|map_regA|neg1\(2))))))) # (\map_lab4|map_fsm|sel_out\(1) & (((\map_lab4|map_regA|pos1\(1) & ((!\map_lab4|map_fsm|sel_out\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001010001110100011100001100001111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_regA|ALT_INV_pos1\(2),
	datab => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	datac => \map_lab4|map_regA|ALT_INV_pos1\(1),
	datad => \map_lab4|map_regA|ALT_INV_neg1\(2),
	datae => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	dataf => \map_lab4|map_fsm|ALT_INV_sel_out\(2),
	datag => \map_lab4|map_regA|ALT_INV_neg1\(1),
	combout => \map_lab4|map_mux|Mux2~0_combout\);

-- Location: LABCELL_X9_Y5_N0
\map_lab4|map_adder|Ai|s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|s\(0) = SUM(( !\map_lab4|map_regC|sig_output_adder\(1) $ (((!\map_lab4|map_regA|neg1\(0)) # (!\map_lab4|map_fsm|sel_out\(1) $ (\map_lab4|map_fsm|sel_out\(0))))) ) + ( !VCC ) + ( !VCC ))
-- \map_lab4|map_adder|Ai|_~16\ = CARRY(( !\map_lab4|map_regC|sig_output_adder\(1) $ (((!\map_lab4|map_regA|neg1\(0)) # (!\map_lab4|map_fsm|sel_out\(1) $ (\map_lab4|map_fsm|sel_out\(0))))) ) + ( !VCC ) + ( !VCC ))
-- \map_lab4|map_adder|Ai|_~17\ = SHARE((\map_lab4|map_regC|sig_output_adder\(1) & (\map_lab4|map_regA|neg1\(0) & (!\map_lab4|map_fsm|sel_out\(1) $ (!\map_lab4|map_fsm|sel_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000011011000111001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_sel_out\(1),
	datab => \map_lab4|map_regC|ALT_INV_sig_output_adder\(1),
	datac => \map_lab4|map_regA|ALT_INV_neg1\(0),
	datad => \map_lab4|map_fsm|ALT_INV_sel_out\(0),
	cin => GND,
	sharein => GND,
	sumout => \map_lab4|map_adder|Ai|s\(0),
	cout => \map_lab4|map_adder|Ai|_~16\,
	shareout => \map_lab4|map_adder|Ai|_~17\);

-- Location: LABCELL_X9_Y5_N3
\map_lab4|map_adder|Ai|s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|s\(1) = SUM(( !\map_lab4|map_mux|Mux3~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(2)) ) + ( \map_lab4|map_adder|Ai|_~17\ ) + ( \map_lab4|map_adder|Ai|_~16\ ))
-- \map_lab4|map_adder|Ai|_~1\ = CARRY(( !\map_lab4|map_mux|Mux3~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(2)) ) + ( \map_lab4|map_adder|Ai|_~17\ ) + ( \map_lab4|map_adder|Ai|_~16\ ))
-- \map_lab4|map_adder|Ai|_~2\ = SHARE((\map_lab4|map_mux|Mux3~0_combout\ & \map_lab4|map_regC|sig_output_adder\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_mux|ALT_INV_Mux3~0_combout\,
	datad => \map_lab4|map_regC|ALT_INV_sig_output_adder\(2),
	cin => \map_lab4|map_adder|Ai|_~16\,
	sharein => \map_lab4|map_adder|Ai|_~17\,
	sumout => \map_lab4|map_adder|Ai|s\(1),
	cout => \map_lab4|map_adder|Ai|_~1\,
	shareout => \map_lab4|map_adder|Ai|_~2\);

-- Location: LABCELL_X9_Y5_N6
\map_lab4|map_adder|Ai|s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|s\(2) = SUM(( !\map_lab4|map_regC|sig_output_adder\(3) $ (!\map_lab4|map_mux|Mux2~0_combout\) ) + ( \map_lab4|map_adder|Ai|_~2\ ) + ( \map_lab4|map_adder|Ai|_~1\ ))
-- \map_lab4|map_adder|Ai|_~7\ = CARRY(( !\map_lab4|map_regC|sig_output_adder\(3) $ (!\map_lab4|map_mux|Mux2~0_combout\) ) + ( \map_lab4|map_adder|Ai|_~2\ ) + ( \map_lab4|map_adder|Ai|_~1\ ))
-- \map_lab4|map_adder|Ai|_~8\ = SHARE((\map_lab4|map_regC|sig_output_adder\(3) & \map_lab4|map_mux|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regC|ALT_INV_sig_output_adder\(3),
	datad => \map_lab4|map_mux|ALT_INV_Mux2~0_combout\,
	cin => \map_lab4|map_adder|Ai|_~1\,
	sharein => \map_lab4|map_adder|Ai|_~2\,
	sumout => \map_lab4|map_adder|Ai|s\(2),
	cout => \map_lab4|map_adder|Ai|_~7\,
	shareout => \map_lab4|map_adder|Ai|_~8\);

-- Location: LABCELL_X9_Y5_N9
\map_lab4|map_adder|Ai|s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|s\(3) = SUM(( !\map_lab4|map_mux|Mux1~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(4)) ) + ( \map_lab4|map_adder|Ai|_~8\ ) + ( \map_lab4|map_adder|Ai|_~7\ ))
-- \map_lab4|map_adder|Ai|_~4\ = CARRY(( !\map_lab4|map_mux|Mux1~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(4)) ) + ( \map_lab4|map_adder|Ai|_~8\ ) + ( \map_lab4|map_adder|Ai|_~7\ ))
-- \map_lab4|map_adder|Ai|_~5\ = SHARE((\map_lab4|map_mux|Mux1~0_combout\ & \map_lab4|map_regC|sig_output_adder\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_mux|ALT_INV_Mux1~0_combout\,
	datac => \map_lab4|map_regC|ALT_INV_sig_output_adder\(4),
	cin => \map_lab4|map_adder|Ai|_~7\,
	sharein => \map_lab4|map_adder|Ai|_~8\,
	sumout => \map_lab4|map_adder|Ai|s\(3),
	cout => \map_lab4|map_adder|Ai|_~4\,
	shareout => \map_lab4|map_adder|Ai|_~5\);

-- Location: LABCELL_X9_Y5_N12
\map_lab4|map_adder|Ai|s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|s\(4) = SUM(( !\map_lab4|map_mux|Mux0~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(4)) ) + ( \map_lab4|map_adder|Ai|_~5\ ) + ( \map_lab4|map_adder|Ai|_~4\ ))
-- \map_lab4|map_adder|Ai|_~10\ = CARRY(( !\map_lab4|map_mux|Mux0~0_combout\ $ (!\map_lab4|map_regC|sig_output_adder\(4)) ) + ( \map_lab4|map_adder|Ai|_~5\ ) + ( \map_lab4|map_adder|Ai|_~4\ ))
-- \map_lab4|map_adder|Ai|_~11\ = SHARE((\map_lab4|map_mux|Mux0~0_combout\ & \map_lab4|map_regC|sig_output_adder\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_mux|ALT_INV_Mux0~0_combout\,
	datab => \map_lab4|map_regC|ALT_INV_sig_output_adder\(4),
	cin => \map_lab4|map_adder|Ai|_~4\,
	sharein => \map_lab4|map_adder|Ai|_~5\,
	sumout => \map_lab4|map_adder|Ai|s\(4),
	cout => \map_lab4|map_adder|Ai|_~10\,
	shareout => \map_lab4|map_adder|Ai|_~11\);

-- Location: LABCELL_X9_Y5_N30
\map_lab4|map_regC|sig_output_adder~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~4_combout\ = ( \map_lab4|map_adder|Ai|s\(4) & ( (!\map_lab4|map_fsm|state.add_regs~q\ & ((!\map_lab4|map_fsm|state.shift_regs~q\ & ((\map_lab4|map_regC|sig_output_adder\(4)))) # (\map_lab4|map_fsm|state.shift_regs~q\ & 
-- (!\map_lab4|map_fsm|state.load_regs~q\)))) # (\map_lab4|map_fsm|state.add_regs~q\ & (!\map_lab4|map_fsm|state.load_regs~q\)) ) ) # ( !\map_lab4|map_adder|Ai|s\(4) & ( (!\map_lab4|map_fsm|state.add_regs~q\ & (!\map_lab4|map_fsm|state.shift_regs~q\ & 
-- \map_lab4|map_regC|sig_output_adder\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001001100111011000100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	datab => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datac => \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\,
	datad => \map_lab4|map_regC|ALT_INV_sig_output_adder\(4),
	dataf => \map_lab4|map_adder|Ai|ALT_INV_s\(4),
	combout => \map_lab4|map_regC|sig_output_adder~4_combout\);

-- Location: FF_X9_Y5_N32
\map_lab4|map_regC|sig_output_adder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regC|sig_output_adder~4_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|sig_output_adder\(4));

-- Location: LABCELL_X9_Y5_N15
\map_lab4|map_adder|Ai|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_adder|Ai|cout~sumout\ = SUM(( GND ) + ( \map_lab4|map_adder|Ai|_~11\ ) + ( \map_lab4|map_adder|Ai|_~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \map_lab4|map_adder|Ai|_~10\,
	sharein => \map_lab4|map_adder|Ai|_~11\,
	sumout => \map_lab4|map_adder|Ai|cout~sumout\);

-- Location: LABCELL_X9_Y5_N18
\map_lab4|map_regC|sig_output_adder~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~3_combout\ = ( \map_lab4|map_adder|Ai|s\(4) & ( (!\map_lab4|map_fsm|state.add_regs~q\ & (((!\map_lab4|map_fsm|state.load_regs~q\) # (\map_lab4|map_adder|Ai|cout~sumout\)))) # (\map_lab4|map_fsm|state.add_regs~q\ & 
-- (\map_lab4|map_adder|Ai|s\(3) & ((!\map_lab4|map_fsm|state.load_regs~q\)))) ) ) # ( !\map_lab4|map_adder|Ai|s\(4) & ( (!\map_lab4|map_fsm|state.add_regs~q\ & (((\map_lab4|map_adder|Ai|cout~sumout\)))) # (\map_lab4|map_fsm|state.add_regs~q\ & 
-- (\map_lab4|map_adder|Ai|s\(3) & ((!\map_lab4|map_fsm|state.load_regs~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110000001101010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_adder|Ai|ALT_INV_s\(3),
	datab => \map_lab4|map_adder|Ai|ALT_INV_cout~sumout\,
	datac => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	datad => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_adder|Ai|ALT_INV_s\(4),
	combout => \map_lab4|map_regC|sig_output_adder~3_combout\);

-- Location: LABCELL_X9_Y5_N21
\map_lab4|map_regC|sig_output_adder~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~1_combout\ = ( !\map_lab4|map_fsm|state.res~q\ & ( \map_lab4|map_fsm|state.notBusy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_lab4|map_fsm|ALT_INV_state.notBusy~q\,
	dataf => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	combout => \map_lab4|map_regC|sig_output_adder~1_combout\);

-- Location: FF_X9_Y5_N20
\map_lab4|map_regC|sig_output_adder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regC|sig_output_adder~3_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regC|sig_output_adder~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|sig_output_adder\(3));

-- Location: LABCELL_X9_Y5_N45
\map_lab4|map_regC|sig_output_adder~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~2_combout\ = ( \map_lab4|map_adder|Ai|s\(4) & ( (!\map_lab4|map_fsm|state.add_regs~q\ & ((!\map_lab4|map_fsm|state.load_regs~q\))) # (\map_lab4|map_fsm|state.add_regs~q\ & (\map_lab4|map_adder|Ai|s\(2))) ) ) # ( 
-- !\map_lab4|map_adder|Ai|s\(4) & ( (\map_lab4|map_adder|Ai|s\(2) & \map_lab4|map_fsm|state.add_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_adder|Ai|ALT_INV_s\(2),
	datac => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	datad => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_adder|Ai|ALT_INV_s\(4),
	combout => \map_lab4|map_regC|sig_output_adder~2_combout\);

-- Location: FF_X9_Y5_N47
\map_lab4|map_regC|sig_output_adder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regC|sig_output_adder~2_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regC|sig_output_adder~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|sig_output_adder\(2));

-- Location: LABCELL_X9_Y5_N42
\map_lab4|map_regC|sig_output_adder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~0_combout\ = ( \map_lab4|map_adder|Ai|s\(3) & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((!\map_lab4|map_fsm|state.add_regs~q\) # (\map_lab4|map_adder|Ai|s\(1)))) ) ) # ( !\map_lab4|map_adder|Ai|s\(3) & ( 
-- (!\map_lab4|map_fsm|state.load_regs~q\ & (\map_lab4|map_adder|Ai|s\(1) & \map_lab4|map_fsm|state.add_regs~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datac => \map_lab4|map_adder|Ai|ALT_INV_s\(1),
	datad => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_lab4|map_adder|Ai|ALT_INV_s\(3),
	combout => \map_lab4|map_regC|sig_output_adder~0_combout\);

-- Location: FF_X9_Y5_N44
\map_lab4|map_regC|sig_output_adder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regC|sig_output_adder~0_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regC|sig_output_adder~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|sig_output_adder\(1));

-- Location: LABCELL_X9_Y4_N39
\map_lab4|map_2_1_mux|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_2_1_mux|output[0]~0_combout\ = (!\map_lab4|map_fsm|state.load_regs~q\ & \map_lab4|map_adder|Ai|s\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datad => \map_lab4|map_adder|Ai|ALT_INV_s\(0),
	combout => \map_lab4|map_2_1_mux|output[0]~0_combout\);

-- Location: LABCELL_X9_Y4_N36
\map_lab4|map_regC|sig_output_adder~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regC|sig_output_adder~5_combout\ = (\map_lab4|map_fsm|state.load_regs~q\) # (\map_lab4|map_fsm|state.add_regs~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_fsm|ALT_INV_state.add_regs~q\,
	datac => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	combout => \map_lab4|map_regC|sig_output_adder~5_combout\);

-- Location: FF_X9_Y4_N40
\map_lab4|map_regC|output_regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_2_1_mux|output[0]~0_combout\,
	sclr => \map_lab4|map_fsm|state.load_regs~q\,
	ena => \map_lab4|map_regC|sig_output_adder~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regC|output_regB\(0));

-- Location: LABCELL_X10_Y4_N54
\map_lab4|map_regB|internal_buffer[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[3]~9_combout\ = ( \map_lab4|map_fsm|state.load_regs~q\ & ( \map_lab4|map_regB|internal_buffer[3]~9_combout\ & ( \SW[2]~input_o\ ) ) ) # ( !\map_lab4|map_fsm|state.load_regs~q\ & ( 
-- \map_lab4|map_regB|internal_buffer[3]~9_combout\ ) ) # ( \map_lab4|map_fsm|state.load_regs~q\ & ( !\map_lab4|map_regB|internal_buffer[3]~9_combout\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[3]~9_combout\,
	combout => \map_lab4|map_regB|internal_buffer[3]~9_combout\);

-- Location: LABCELL_X9_Y4_N48
\map_lab4|map_regB|internal_buffer[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[3]~11_combout\ = ( !\map_lab4|map_regC|output_regB\(0) & ( \map_lab4|map_regB|internal_buffer[3]~9_combout\ ) ) # ( \map_lab4|map_regC|output_regB\(0) & ( !\map_lab4|map_regB|internal_buffer[3]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_lab4|map_regC|ALT_INV_output_regB\(0),
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[3]~9_combout\,
	combout => \map_lab4|map_regB|internal_buffer[3]~11_combout\);

-- Location: FF_X9_Y4_N49
\map_lab4|map_regB|internal_buffer[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regB|internal_buffer[3]~11_combout\,
	clrn => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_lab4|map_fsm|state.shift_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regB|internal_buffer[3]~_emulated_q\);

-- Location: LABCELL_X10_Y4_N15
\map_lab4|map_regB|internal_buffer[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[3]~10_combout\ = ( \map_lab4|map_regB|internal_buffer[3]~9_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((!\map_lab4|map_regB|internal_buffer[3]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & 
-- (\SW[2]~input_o\)) ) ) # ( !\map_lab4|map_regB|internal_buffer[3]~9_combout\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & ((\map_lab4|map_regB|internal_buffer[3]~_emulated_q\))) # (\map_lab4|map_fsm|state.load_regs~q\ & (\SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datac => \map_lab4|map_regB|ALT_INV_internal_buffer[3]~_emulated_q\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[3]~9_combout\,
	combout => \map_lab4|map_regB|internal_buffer[3]~10_combout\);

-- Location: LABCELL_X10_Y5_N42
\map_lab4|map_regB|internal_buffer[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[1]~3_combout\ = ( \map_lab4|map_regB|internal_buffer[3]~10_combout\ & ( !\map_lab4|map_regB|internal_buffer[1]~1_combout\ ) ) # ( !\map_lab4|map_regB|internal_buffer[3]~10_combout\ & ( 
-- \map_lab4|map_regB|internal_buffer[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_lab4|map_regB|ALT_INV_internal_buffer[1]~1_combout\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[3]~10_combout\,
	combout => \map_lab4|map_regB|internal_buffer[1]~3_combout\);

-- Location: FF_X10_Y5_N44
\map_lab4|map_regB|internal_buffer[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \map_lab4|map_regB|internal_buffer[1]~3_combout\,
	clrn => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_lab4|map_fsm|state.shift_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_lab4|map_regB|internal_buffer[1]~_emulated_q\);

-- Location: LABCELL_X10_Y5_N39
\map_lab4|map_regB|internal_buffer[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_regB|internal_buffer[1]~2_combout\ = ( \map_lab4|map_regB|internal_buffer[1]~_emulated_q\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & (!\map_lab4|map_regB|internal_buffer[1]~1_combout\)) # (\map_lab4|map_fsm|state.load_regs~q\ & 
-- ((\SW[0]~input_o\))) ) ) # ( !\map_lab4|map_regB|internal_buffer[1]~_emulated_q\ & ( (!\map_lab4|map_fsm|state.load_regs~q\ & (\map_lab4|map_regB|internal_buffer[1]~1_combout\)) # (\map_lab4|map_fsm|state.load_regs~q\ & ((\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.load_regs~q\,
	datab => \map_lab4|map_regB|ALT_INV_internal_buffer[1]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \map_lab4|map_regB|ALT_INV_internal_buffer[1]~_emulated_q\,
	combout => \map_lab4|map_regB|internal_buffer[1]~2_combout\);

-- Location: LABCELL_X10_Y4_N33
\map_lab4|map_fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|Selector0~0_combout\ = ( \map_lab4|map_fsm|state.shift_regs~q\ & ( (\map_lab4|map_regD|is_finished~q\ & \map_lab4|map_fsm|state.res~q\) ) ) # ( !\map_lab4|map_fsm|state.shift_regs~q\ & ( (!\map_lab4|map_fsm|state.res~q\) # 
-- (\map_lab4|map_regD|is_finished~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_lab4|map_regD|ALT_INV_is_finished~q\,
	datad => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	dataf => \map_lab4|map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_lab4|map_fsm|Selector0~0_combout\);

-- Location: LABCELL_X10_Y4_N18
\map_lab4|map_fsm|done\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_lab4|map_fsm|done~combout\ = ( \map_lab4|map_fsm|Selector0~0_combout\ & ( \map_lab4|map_fsm|state.res~q\ ) ) # ( !\map_lab4|map_fsm|Selector0~0_combout\ & ( \map_lab4|map_fsm|done~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_lab4|map_fsm|ALT_INV_state.res~q\,
	datac => \map_lab4|map_fsm|ALT_INV_done~combout\,
	dataf => \map_lab4|map_fsm|ALT_INV_Selector0~0_combout\,
	combout => \map_lab4|map_fsm|done~combout\);

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

-- Location: LABCELL_X45_Y21_N0
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


