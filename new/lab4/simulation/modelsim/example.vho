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

-- DATE "11/15/2019 20:37:24"

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

ENTITY 	lab4 IS
    PORT (
	start : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	multiplicand : IN std_logic_vector(7 DOWNTO 0);
	multiplier : IN std_logic_vector(7 DOWNTO 0);
	busy : BUFFER std_logic;
	done : BUFFER std_logic;
	result : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- busy	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[1]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[3]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[4]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[6]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[7]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[6]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_multiplicand : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_multiplier : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \map_regD|Add0~81_sumout\ : std_logic;
SIGNAL \map_fsm|state~10_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \map_fsm|state.load_regs~q\ : std_logic;
SIGNAL \map_regD|count_val~2_combout\ : std_logic;
SIGNAL \map_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \map_fsm|state.add_regs~q\ : std_logic;
SIGNAL \map_fsm|state.shift_regs~q\ : std_logic;
SIGNAL \map_regD|count_val[31]~0_combout\ : std_logic;
SIGNAL \map_regD|Add0~82\ : std_logic;
SIGNAL \map_regD|Add0~9_sumout\ : std_logic;
SIGNAL \map_regD|Add0~10\ : std_logic;
SIGNAL \map_regD|Add0~5_sumout\ : std_logic;
SIGNAL \map_regD|count_val~1_combout\ : std_logic;
SIGNAL \map_regD|Add0~6\ : std_logic;
SIGNAL \map_regD|Add0~13_sumout\ : std_logic;
SIGNAL \map_regD|Add0~14\ : std_logic;
SIGNAL \map_regD|Add0~125_sumout\ : std_logic;
SIGNAL \map_regD|Add0~126\ : std_logic;
SIGNAL \map_regD|Add0~93_sumout\ : std_logic;
SIGNAL \map_regD|Add0~94\ : std_logic;
SIGNAL \map_regD|Add0~97_sumout\ : std_logic;
SIGNAL \map_regD|Add0~98\ : std_logic;
SIGNAL \map_regD|Add0~101_sumout\ : std_logic;
SIGNAL \map_regD|Add0~102\ : std_logic;
SIGNAL \map_regD|Add0~105_sumout\ : std_logic;
SIGNAL \map_regD|Add0~106\ : std_logic;
SIGNAL \map_regD|Add0~109_sumout\ : std_logic;
SIGNAL \map_regD|Add0~110\ : std_logic;
SIGNAL \map_regD|Add0~113_sumout\ : std_logic;
SIGNAL \map_regD|Add0~114\ : std_logic;
SIGNAL \map_regD|Add0~117_sumout\ : std_logic;
SIGNAL \map_regD|Add0~118\ : std_logic;
SIGNAL \map_regD|Add0~121_sumout\ : std_logic;
SIGNAL \map_regD|Add0~122\ : std_logic;
SIGNAL \map_regD|Add0~57_sumout\ : std_logic;
SIGNAL \map_regD|Add0~58\ : std_logic;
SIGNAL \map_regD|Add0~61_sumout\ : std_logic;
SIGNAL \map_regD|Add0~62\ : std_logic;
SIGNAL \map_regD|Add0~65_sumout\ : std_logic;
SIGNAL \map_regD|Add0~66\ : std_logic;
SIGNAL \map_regD|Add0~69_sumout\ : std_logic;
SIGNAL \map_regD|Add0~70\ : std_logic;
SIGNAL \map_regD|Add0~89_sumout\ : std_logic;
SIGNAL \map_regD|Add0~90\ : std_logic;
SIGNAL \map_regD|Add0~77_sumout\ : std_logic;
SIGNAL \map_regD|Add0~78\ : std_logic;
SIGNAL \map_regD|Add0~33_sumout\ : std_logic;
SIGNAL \map_regD|Add0~34\ : std_logic;
SIGNAL \map_regD|Add0~37_sumout\ : std_logic;
SIGNAL \map_regD|Add0~38\ : std_logic;
SIGNAL \map_regD|Add0~41_sumout\ : std_logic;
SIGNAL \map_regD|Add0~42\ : std_logic;
SIGNAL \map_regD|Add0~45_sumout\ : std_logic;
SIGNAL \map_regD|Add0~46\ : std_logic;
SIGNAL \map_regD|Add0~49_sumout\ : std_logic;
SIGNAL \map_regD|Add0~50\ : std_logic;
SIGNAL \map_regD|Add0~53_sumout\ : std_logic;
SIGNAL \map_regD|Add0~54\ : std_logic;
SIGNAL \map_regD|Add0~17_sumout\ : std_logic;
SIGNAL \map_regD|Add0~18\ : std_logic;
SIGNAL \map_regD|Add0~73_sumout\ : std_logic;
SIGNAL \map_regD|Add0~74\ : std_logic;
SIGNAL \map_regD|Add0~25_sumout\ : std_logic;
SIGNAL \map_regD|Add0~26\ : std_logic;
SIGNAL \map_regD|Add0~29_sumout\ : std_logic;
SIGNAL \map_regD|Add0~30\ : std_logic;
SIGNAL \map_regD|Add0~1_sumout\ : std_logic;
SIGNAL \map_regD|Add0~2\ : std_logic;
SIGNAL \map_regD|Add0~21_sumout\ : std_logic;
SIGNAL \map_regD|Add0~22\ : std_logic;
SIGNAL \map_regD|Add0~85_sumout\ : std_logic;
SIGNAL \map_regD|count_val~3_combout\ : std_logic;
SIGNAL \map_regD|Equal0~4_combout\ : std_logic;
SIGNAL \map_regD|Equal0~2_combout\ : std_logic;
SIGNAL \map_regD|Equal0~3_combout\ : std_logic;
SIGNAL \map_regD|Equal0~0_combout\ : std_logic;
SIGNAL \map_regD|Equal0~5_combout\ : std_logic;
SIGNAL \map_regD|Equal0~1_combout\ : std_logic;
SIGNAL \map_regD|Equal0~6_combout\ : std_logic;
SIGNAL \map_regD|is_finished~0_combout\ : std_logic;
SIGNAL \map_regD|is_finished~q\ : std_logic;
SIGNAL \map_fsm|state~9_combout\ : std_logic;
SIGNAL \map_fsm|state.fin~q\ : std_logic;
SIGNAL \map_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \map_fsm|state.notBusy~q\ : std_logic;
SIGNAL \map_fsm|done~combout\ : std_logic;
SIGNAL \multiplier[0]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \multiplier[2]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \multiplier[4]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \multiplier[6]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \map_fsm|sel_out~0_combout\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \map_regA|Add0~1_sumout\ : std_logic;
SIGNAL \map_regA|Add0~2\ : std_logic;
SIGNAL \map_regA|Add0~5_sumout\ : std_logic;
SIGNAL \multiplier[1]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \multiplier[3]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \multiplier[5]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \multiplier[7]~input_o\ : std_logic;
SIGNAL \map_regB|internal_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \map_regB|internal_buffer~1_combout\ : std_logic;
SIGNAL \map_mux|Mux7~0_combout\ : std_logic;
SIGNAL \multiplicand[7]~input_o\ : std_logic;
SIGNAL \multiplicand[6]~input_o\ : std_logic;
SIGNAL \multiplicand[5]~input_o\ : std_logic;
SIGNAL \multiplicand[4]~input_o\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \map_regA|Add0~6\ : std_logic;
SIGNAL \map_regA|Add0~10\ : std_logic;
SIGNAL \map_regA|Add0~14\ : std_logic;
SIGNAL \map_regA|Add0~18\ : std_logic;
SIGNAL \map_regA|Add0~22\ : std_logic;
SIGNAL \map_regA|Add0~25_sumout\ : std_logic;
SIGNAL \map_mux|Mux0~0_combout\ : std_logic;
SIGNAL \map_regA|Add0~21_sumout\ : std_logic;
SIGNAL \map_mux|Mux1~0_combout\ : std_logic;
SIGNAL \map_regA|Add0~17_sumout\ : std_logic;
SIGNAL \map_mux|Mux2~0_combout\ : std_logic;
SIGNAL \map_regA|Add0~13_sumout\ : std_logic;
SIGNAL \map_mux|Mux3~0_combout\ : std_logic;
SIGNAL \map_regA|Add0~9_sumout\ : std_logic;
SIGNAL \map_mux|Mux4~0_combout\ : std_logic;
SIGNAL \map_mux|Mux5~0_combout\ : std_logic;
SIGNAL \map_adder|Ai|_~1\ : std_logic;
SIGNAL \map_adder|Ai|_~2\ : std_logic;
SIGNAL \map_adder|Ai|_~4\ : std_logic;
SIGNAL \map_adder|Ai|_~5\ : std_logic;
SIGNAL \map_adder|Ai|_~7\ : std_logic;
SIGNAL \map_adder|Ai|_~8\ : std_logic;
SIGNAL \map_adder|Ai|_~10\ : std_logic;
SIGNAL \map_adder|Ai|_~11\ : std_logic;
SIGNAL \map_regC|sig_output_adder~5_combout\ : std_logic;
SIGNAL \map_regB|internal_buffer[1]~0_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder[0]~1_combout\ : std_logic;
SIGNAL \map_adder|Ai|_~13\ : std_logic;
SIGNAL \map_adder|Ai|_~14\ : std_logic;
SIGNAL \map_adder|Ai|_~16\ : std_logic;
SIGNAL \map_adder|Ai|_~17\ : std_logic;
SIGNAL \map_regC|sig_output_adder~7_combout\ : std_logic;
SIGNAL \map_adder|Ai|_~19\ : std_logic;
SIGNAL \map_adder|Ai|_~20\ : std_logic;
SIGNAL \map_adder|Ai|_~22\ : std_logic;
SIGNAL \map_adder|Ai|_~23\ : std_logic;
SIGNAL \map_regC|sig_output_adder~9_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~8_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~6_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~4_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~2_combout\ : std_logic;
SIGNAL \map_2_1_mux|output[1]~1_combout\ : std_logic;
SIGNAL \map_mux|Mux6~0_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~3_combout\ : std_logic;
SIGNAL \map_regC|sig_output_adder~0_combout\ : std_logic;
SIGNAL \map_2_1_mux|output[0]~0_combout\ : std_logic;
SIGNAL \map_fsm|sel_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \map_regA|pos1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \map_regA|neg1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \map_regD|count_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \map_regC|sig_out_B\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \map_adder|Ai|s\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \map_regC|sig_output_adder\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \map_regB|internal_buffer\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_multiplicand[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \map_fsm|ALT_INV_sel_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \map_fsm|ALT_INV_done~combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \map_fsm|ALT_INV_sel_out~0_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_count_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \map_regD|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \map_regA|ALT_INV_pos1\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \map_regA|ALT_INV_neg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \map_mux|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \map_fsm|ALT_INV_state.add_regs~q\ : std_logic;
SIGNAL \map_regB|ALT_INV_internal_buffer[1]~0_combout\ : std_logic;
SIGNAL \map_fsm|ALT_INV_state.load_regs~q\ : std_logic;
SIGNAL \map_fsm|ALT_INV_state.shift_regs~q\ : std_logic;
SIGNAL \map_fsm|ALT_INV_state.fin~q\ : std_logic;
SIGNAL \map_fsm|ALT_INV_state.notBusy~q\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \map_mux|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \map_regD|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \map_regB|ALT_INV_internal_buffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \map_adder|Ai|ALT_INV_s\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \map_regD|ALT_INV_is_finished~q\ : std_logic;
SIGNAL \map_regC|ALT_INV_sig_output_adder\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_start <= start;
ww_rst <= rst;
ww_clk <= clk;
ww_multiplicand <= multiplicand;
ww_multiplier <= multiplier;
busy <= ww_busy;
done <= ww_done;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_multiplicand[7]~input_o\ <= NOT \multiplicand[7]~input_o\;
\ALT_INV_multiplicand[6]~input_o\ <= NOT \multiplicand[6]~input_o\;
\ALT_INV_multiplicand[5]~input_o\ <= NOT \multiplicand[5]~input_o\;
\ALT_INV_multiplicand[4]~input_o\ <= NOT \multiplicand[4]~input_o\;
\ALT_INV_multiplicand[3]~input_o\ <= NOT \multiplicand[3]~input_o\;
\ALT_INV_multiplicand[2]~input_o\ <= NOT \multiplicand[2]~input_o\;
\ALT_INV_multiplicand[1]~input_o\ <= NOT \multiplicand[1]~input_o\;
\ALT_INV_multiplicand[0]~input_o\ <= NOT \multiplicand[0]~input_o\;
\ALT_INV_multiplier[7]~input_o\ <= NOT \multiplier[7]~input_o\;
\ALT_INV_multiplier[6]~input_o\ <= NOT \multiplier[6]~input_o\;
\ALT_INV_multiplier[5]~input_o\ <= NOT \multiplier[5]~input_o\;
\ALT_INV_multiplier[4]~input_o\ <= NOT \multiplier[4]~input_o\;
\ALT_INV_multiplier[3]~input_o\ <= NOT \multiplier[3]~input_o\;
\ALT_INV_multiplier[2]~input_o\ <= NOT \multiplier[2]~input_o\;
\ALT_INV_multiplier[1]~input_o\ <= NOT \multiplier[1]~input_o\;
\ALT_INV_multiplier[0]~input_o\ <= NOT \multiplier[0]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\map_fsm|ALT_INV_sel_out\(2) <= NOT \map_fsm|sel_out\(2);
\map_fsm|ALT_INV_sel_out\(0) <= NOT \map_fsm|sel_out\(0);
\map_fsm|ALT_INV_sel_out\(1) <= NOT \map_fsm|sel_out\(1);
\map_fsm|ALT_INV_done~combout\ <= NOT \map_fsm|done~combout\;
\map_mux|ALT_INV_Mux0~0_combout\ <= NOT \map_mux|Mux0~0_combout\;
\map_fsm|ALT_INV_sel_out~0_combout\ <= NOT \map_fsm|sel_out~0_combout\;
\map_regD|ALT_INV_Equal0~6_combout\ <= NOT \map_regD|Equal0~6_combout\;
\map_regD|ALT_INV_Equal0~5_combout\ <= NOT \map_regD|Equal0~5_combout\;
\map_regD|ALT_INV_Equal0~4_combout\ <= NOT \map_regD|Equal0~4_combout\;
\map_regD|ALT_INV_count_val\(31) <= NOT \map_regD|count_val\(31);
\map_regD|ALT_INV_count_val\(0) <= NOT \map_regD|count_val\(0);
\map_regD|ALT_INV_Equal0~3_combout\ <= NOT \map_regD|Equal0~3_combout\;
\map_regD|ALT_INV_Equal0~2_combout\ <= NOT \map_regD|Equal0~2_combout\;
\map_regD|ALT_INV_Equal0~1_combout\ <= NOT \map_regD|Equal0~1_combout\;
\map_regD|ALT_INV_Equal0~0_combout\ <= NOT \map_regD|Equal0~0_combout\;
\map_regA|ALT_INV_pos1\(7) <= NOT \map_regA|pos1\(7);
\map_regA|ALT_INV_neg1\(7) <= NOT \map_regA|neg1\(7);
\map_regA|ALT_INV_pos1\(6) <= NOT \map_regA|pos1\(6);
\map_regA|ALT_INV_neg1\(6) <= NOT \map_regA|neg1\(6);
\map_regA|ALT_INV_pos1\(5) <= NOT \map_regA|pos1\(5);
\map_regA|ALT_INV_neg1\(5) <= NOT \map_regA|neg1\(5);
\map_regA|ALT_INV_pos1\(4) <= NOT \map_regA|pos1\(4);
\map_regA|ALT_INV_neg1\(4) <= NOT \map_regA|neg1\(4);
\map_regA|ALT_INV_pos1\(3) <= NOT \map_regA|pos1\(3);
\map_regA|ALT_INV_neg1\(3) <= NOT \map_regA|neg1\(3);
\map_regA|ALT_INV_pos1\(2) <= NOT \map_regA|pos1\(2);
\map_regA|ALT_INV_neg1\(2) <= NOT \map_regA|neg1\(2);
\map_mux|ALT_INV_Mux7~0_combout\ <= NOT \map_mux|Mux7~0_combout\;
\map_regA|ALT_INV_pos1\(1) <= NOT \map_regA|pos1\(1);
\map_regA|ALT_INV_neg1\(1) <= NOT \map_regA|neg1\(1);
\map_regA|ALT_INV_neg1\(0) <= NOT \map_regA|neg1\(0);
\map_fsm|ALT_INV_state.add_regs~q\ <= NOT \map_fsm|state.add_regs~q\;
\map_regB|ALT_INV_internal_buffer[1]~0_combout\ <= NOT \map_regB|internal_buffer[1]~0_combout\;
\map_fsm|ALT_INV_state.load_regs~q\ <= NOT \map_fsm|state.load_regs~q\;
\map_fsm|ALT_INV_state.shift_regs~q\ <= NOT \map_fsm|state.shift_regs~q\;
\map_fsm|ALT_INV_state.fin~q\ <= NOT \map_fsm|state.fin~q\;
\map_fsm|ALT_INV_state.notBusy~q\ <= NOT \map_fsm|state.notBusy~q\;
\map_mux|ALT_INV_Mux6~0_combout\ <= NOT \map_mux|Mux6~0_combout\;
\map_mux|ALT_INV_Mux5~0_combout\ <= NOT \map_mux|Mux5~0_combout\;
\map_mux|ALT_INV_Mux4~0_combout\ <= NOT \map_mux|Mux4~0_combout\;
\map_mux|ALT_INV_Mux3~0_combout\ <= NOT \map_mux|Mux3~0_combout\;
\map_mux|ALT_INV_Mux2~0_combout\ <= NOT \map_mux|Mux2~0_combout\;
\map_mux|ALT_INV_Mux1~0_combout\ <= NOT \map_mux|Mux1~0_combout\;
\map_regD|ALT_INV_Add0~85_sumout\ <= NOT \map_regD|Add0~85_sumout\;
\map_regD|ALT_INV_Add0~81_sumout\ <= NOT \map_regD|Add0~81_sumout\;
\map_regD|ALT_INV_Add0~5_sumout\ <= NOT \map_regD|Add0~5_sumout\;
\map_regB|ALT_INV_internal_buffer\(0) <= NOT \map_regB|internal_buffer\(0);
\map_regD|ALT_INV_count_val\(4) <= NOT \map_regD|count_val\(4);
\map_regD|ALT_INV_count_val\(12) <= NOT \map_regD|count_val\(12);
\map_regD|ALT_INV_count_val\(11) <= NOT \map_regD|count_val\(11);
\map_regD|ALT_INV_count_val\(10) <= NOT \map_regD|count_val\(10);
\map_regD|ALT_INV_count_val\(9) <= NOT \map_regD|count_val\(9);
\map_regD|ALT_INV_count_val\(8) <= NOT \map_regD|count_val\(8);
\map_regD|ALT_INV_count_val\(7) <= NOT \map_regD|count_val\(7);
\map_regD|ALT_INV_count_val\(6) <= NOT \map_regD|count_val\(6);
\map_regD|ALT_INV_count_val\(5) <= NOT \map_regD|count_val\(5);
\map_regD|ALT_INV_count_val\(17) <= NOT \map_regD|count_val\(17);
\map_regD|ALT_INV_count_val\(18) <= NOT \map_regD|count_val\(18);
\map_regD|ALT_INV_count_val\(26) <= NOT \map_regD|count_val\(26);
\map_regD|ALT_INV_count_val\(16) <= NOT \map_regD|count_val\(16);
\map_regD|ALT_INV_count_val\(15) <= NOT \map_regD|count_val\(15);
\map_regD|ALT_INV_count_val\(14) <= NOT \map_regD|count_val\(14);
\map_regD|ALT_INV_count_val\(13) <= NOT \map_regD|count_val\(13);
\map_regD|ALT_INV_count_val\(24) <= NOT \map_regD|count_val\(24);
\map_regD|ALT_INV_count_val\(23) <= NOT \map_regD|count_val\(23);
\map_regD|ALT_INV_count_val\(22) <= NOT \map_regD|count_val\(22);
\map_regD|ALT_INV_count_val\(21) <= NOT \map_regD|count_val\(21);
\map_regD|ALT_INV_count_val\(20) <= NOT \map_regD|count_val\(20);
\map_regD|ALT_INV_count_val\(19) <= NOT \map_regD|count_val\(19);
\map_regD|ALT_INV_count_val\(28) <= NOT \map_regD|count_val\(28);
\map_regD|ALT_INV_count_val\(27) <= NOT \map_regD|count_val\(27);
\map_regD|ALT_INV_count_val\(30) <= NOT \map_regD|count_val\(30);
\map_regD|ALT_INV_count_val\(25) <= NOT \map_regD|count_val\(25);
\map_regD|ALT_INV_count_val\(3) <= NOT \map_regD|count_val\(3);
\map_regD|ALT_INV_count_val\(1) <= NOT \map_regD|count_val\(1);
\map_regD|ALT_INV_count_val\(2) <= NOT \map_regD|count_val\(2);
\map_regD|ALT_INV_count_val\(29) <= NOT \map_regD|count_val\(29);
\map_adder|Ai|ALT_INV_s\(8) <= NOT \map_adder|Ai|s\(8);
\map_regD|ALT_INV_is_finished~q\ <= NOT \map_regD|is_finished~q\;
\map_adder|Ai|ALT_INV_s\(7) <= NOT \map_adder|Ai|s\(7);
\map_regC|ALT_INV_sig_output_adder\(8) <= NOT \map_regC|sig_output_adder\(8);
\map_adder|Ai|ALT_INV_s\(6) <= NOT \map_adder|Ai|s\(6);
\map_adder|Ai|ALT_INV_s\(5) <= NOT \map_adder|Ai|s\(5);
\map_adder|Ai|ALT_INV_s\(4) <= NOT \map_adder|Ai|s\(4);
\map_adder|Ai|ALT_INV_s\(3) <= NOT \map_adder|Ai|s\(3);
\map_adder|Ai|ALT_INV_s\(2) <= NOT \map_adder|Ai|s\(2);
\map_adder|Ai|ALT_INV_s\(1) <= NOT \map_adder|Ai|s\(1);
\map_adder|Ai|ALT_INV_s\(0) <= NOT \map_adder|Ai|s\(0);
\map_regC|ALT_INV_sig_output_adder\(7) <= NOT \map_regC|sig_output_adder\(7);
\map_regC|ALT_INV_sig_output_adder\(6) <= NOT \map_regC|sig_output_adder\(6);
\map_regC|ALT_INV_sig_output_adder\(5) <= NOT \map_regC|sig_output_adder\(5);
\map_regC|ALT_INV_sig_output_adder\(4) <= NOT \map_regC|sig_output_adder\(4);
\map_regC|ALT_INV_sig_output_adder\(3) <= NOT \map_regC|sig_output_adder\(3);
\map_regC|ALT_INV_sig_output_adder\(2) <= NOT \map_regC|sig_output_adder\(2);
\map_regC|ALT_INV_sig_output_adder\(1) <= NOT \map_regC|sig_output_adder\(1);
\map_regC|ALT_INV_sig_output_adder\(0) <= NOT \map_regC|sig_output_adder\(0);
\map_regB|ALT_INV_internal_buffer\(2) <= NOT \map_regB|internal_buffer\(2);
\map_regB|ALT_INV_internal_buffer\(1) <= NOT \map_regB|internal_buffer\(1);

-- Location: IOOBUF_X76_Y0_N2
\busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_fsm|state.notBusy~q\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X74_Y0_N76
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_fsm|done~combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X78_Y0_N53
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(1),
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X78_Y0_N2
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(2),
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X74_Y0_N42
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(3),
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X78_Y0_N19
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(4),
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOOBUF_X70_Y0_N36
\result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(5),
	devoe => ww_devoe,
	o => ww_result(4));

-- Location: IOOBUF_X70_Y0_N19
\result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(6),
	devoe => ww_devoe,
	o => ww_result(5));

-- Location: IOOBUF_X74_Y0_N93
\result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(7),
	devoe => ww_devoe,
	o => ww_result(6));

-- Location: IOOBUF_X76_Y0_N19
\result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regB|internal_buffer\(8),
	devoe => ww_devoe,
	o => ww_result(7));

-- Location: IOOBUF_X84_Y0_N19
\result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(0),
	devoe => ww_devoe,
	o => ww_result(8));

-- Location: IOOBUF_X84_Y0_N2
\result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(1),
	devoe => ww_devoe,
	o => ww_result(9));

-- Location: IOOBUF_X86_Y0_N19
\result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(2),
	devoe => ww_devoe,
	o => ww_result(10));

-- Location: IOOBUF_X84_Y0_N36
\result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(3),
	devoe => ww_devoe,
	o => ww_result(11));

-- Location: IOOBUF_X82_Y0_N42
\result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(4),
	devoe => ww_devoe,
	o => ww_result(12));

-- Location: IOOBUF_X82_Y0_N93
\result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(5),
	devoe => ww_devoe,
	o => ww_result(13));

-- Location: IOOBUF_X86_Y0_N36
\result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(6),
	devoe => ww_devoe,
	o => ww_result(14));

-- Location: IOOBUF_X84_Y0_N53
\result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \map_regC|sig_output_adder\(7),
	devoe => ww_devoe,
	o => ww_result(15));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X82_Y0_N75
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: MLABCELL_X82_Y2_N0
\map_regD|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~81_sumout\ = SUM(( !\map_regD|count_val\(0) ) + ( VCC ) + ( !VCC ))
-- \map_regD|Add0~82\ = CARRY(( !\map_regD|count_val\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(0),
	cin => GND,
	sumout => \map_regD|Add0~81_sumout\,
	cout => \map_regD|Add0~82\);

-- Location: LABCELL_X79_Y1_N36
\map_fsm|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|state~10_combout\ = ( !\map_fsm|state.notBusy~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	dataf => \map_fsm|ALT_INV_state.notBusy~q\,
	combout => \map_fsm|state~10_combout\);

-- Location: IOIBUF_X82_Y0_N58
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X79_Y1_N44
\map_fsm|state.load_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_fsm|state~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_fsm|state.load_regs~q\);

-- Location: LABCELL_X81_Y2_N54
\map_regD|count_val~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|count_val~2_combout\ = ( \map_regD|Add0~81_sumout\ & ( \map_fsm|state.load_regs~q\ ) ) # ( !\map_regD|Add0~81_sumout\ & ( \map_fsm|state.load_regs~q\ ) ) # ( !\map_regD|Add0~81_sumout\ & ( !\map_fsm|state.load_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_regD|ALT_INV_Add0~81_sumout\,
	dataf => \map_fsm|ALT_INV_state.load_regs~q\,
	combout => \map_regD|count_val~2_combout\);

-- Location: LABCELL_X81_Y1_N39
\map_fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|Selector3~0_combout\ = ( \map_regD|is_finished~q\ & ( \map_fsm|state.shift_regs~q\ & ( \map_fsm|state.load_regs~q\ ) ) ) # ( !\map_regD|is_finished~q\ & ( \map_fsm|state.shift_regs~q\ ) ) # ( \map_regD|is_finished~q\ & ( 
-- !\map_fsm|state.shift_regs~q\ & ( \map_fsm|state.load_regs~q\ ) ) ) # ( !\map_regD|is_finished~q\ & ( !\map_fsm|state.shift_regs~q\ & ( \map_fsm|state.load_regs~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_state.load_regs~q\,
	datae => \map_regD|ALT_INV_is_finished~q\,
	dataf => \map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_fsm|Selector3~0_combout\);

-- Location: FF_X81_Y1_N41
\map_fsm|state.add_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_fsm|Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_fsm|state.add_regs~q\);

-- Location: FF_X78_Y1_N26
\map_fsm|state.shift_regs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_fsm|state.add_regs~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_fsm|state.shift_regs~q\);

-- Location: MLABCELL_X82_Y1_N48
\map_regD|count_val[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|count_val[31]~0_combout\ = ( \map_regD|Equal0~6_combout\ & ( \map_fsm|state.load_regs~q\ ) ) # ( !\map_regD|Equal0~6_combout\ & ( (\map_fsm|state.shift_regs~q\) # (\map_fsm|state.load_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_state.load_regs~q\,
	datab => \map_fsm|ALT_INV_state.shift_regs~q\,
	dataf => \map_regD|ALT_INV_Equal0~6_combout\,
	combout => \map_regD|count_val[31]~0_combout\);

-- Location: FF_X81_Y2_N56
\map_regD|count_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|count_val~2_combout\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(0));

-- Location: MLABCELL_X82_Y2_N3
\map_regD|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~9_sumout\ = SUM(( \map_regD|count_val\(1) ) + ( VCC ) + ( \map_regD|Add0~82\ ))
-- \map_regD|Add0~10\ = CARRY(( \map_regD|count_val\(1) ) + ( VCC ) + ( \map_regD|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(1),
	cin => \map_regD|Add0~82\,
	sumout => \map_regD|Add0~9_sumout\,
	cout => \map_regD|Add0~10\);

-- Location: FF_X82_Y2_N5
\map_regD|count_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~9_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(1));

-- Location: MLABCELL_X82_Y2_N6
\map_regD|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~5_sumout\ = SUM(( \map_regD|count_val\(2) ) + ( VCC ) + ( \map_regD|Add0~10\ ))
-- \map_regD|Add0~6\ = CARRY(( \map_regD|count_val\(2) ) + ( VCC ) + ( \map_regD|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(2),
	cin => \map_regD|Add0~10\,
	sumout => \map_regD|Add0~5_sumout\,
	cout => \map_regD|Add0~6\);

-- Location: LABCELL_X81_Y2_N6
\map_regD|count_val~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|count_val~1_combout\ = ( \map_regD|count_val\(2) & ( (!\map_fsm|state.shift_regs~q\) # ((!\map_regD|Equal0~6_combout\ & \map_regD|Add0~5_sumout\)) ) ) # ( !\map_regD|count_val\(2) & ( (\map_fsm|state.shift_regs~q\ & (!\map_regD|Equal0~6_combout\ 
-- & \map_regD|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100101011101010111000000100000001001010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_state.shift_regs~q\,
	datab => \map_regD|ALT_INV_Equal0~6_combout\,
	datac => \map_regD|ALT_INV_Add0~5_sumout\,
	datae => \map_regD|ALT_INV_count_val\(2),
	combout => \map_regD|count_val~1_combout\);

-- Location: FF_X81_Y2_N8
\map_regD|count_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|count_val~1_combout\,
	asdata => VCC,
	sload => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(2));

-- Location: MLABCELL_X82_Y2_N9
\map_regD|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~13_sumout\ = SUM(( \map_regD|count_val\(3) ) + ( VCC ) + ( \map_regD|Add0~6\ ))
-- \map_regD|Add0~14\ = CARRY(( \map_regD|count_val\(3) ) + ( VCC ) + ( \map_regD|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(3),
	cin => \map_regD|Add0~6\,
	sumout => \map_regD|Add0~13_sumout\,
	cout => \map_regD|Add0~14\);

-- Location: FF_X82_Y2_N11
\map_regD|count_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~13_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(3));

-- Location: MLABCELL_X82_Y2_N12
\map_regD|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~125_sumout\ = SUM(( \map_regD|count_val\(4) ) + ( VCC ) + ( \map_regD|Add0~14\ ))
-- \map_regD|Add0~126\ = CARRY(( \map_regD|count_val\(4) ) + ( VCC ) + ( \map_regD|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(4),
	cin => \map_regD|Add0~14\,
	sumout => \map_regD|Add0~125_sumout\,
	cout => \map_regD|Add0~126\);

-- Location: FF_X82_Y2_N14
\map_regD|count_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~125_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(4));

-- Location: MLABCELL_X82_Y2_N15
\map_regD|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~93_sumout\ = SUM(( \map_regD|count_val\(5) ) + ( VCC ) + ( \map_regD|Add0~126\ ))
-- \map_regD|Add0~94\ = CARRY(( \map_regD|count_val\(5) ) + ( VCC ) + ( \map_regD|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(5),
	cin => \map_regD|Add0~126\,
	sumout => \map_regD|Add0~93_sumout\,
	cout => \map_regD|Add0~94\);

-- Location: FF_X82_Y2_N17
\map_regD|count_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~93_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(5));

-- Location: MLABCELL_X82_Y2_N18
\map_regD|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~97_sumout\ = SUM(( \map_regD|count_val\(6) ) + ( VCC ) + ( \map_regD|Add0~94\ ))
-- \map_regD|Add0~98\ = CARRY(( \map_regD|count_val\(6) ) + ( VCC ) + ( \map_regD|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(6),
	cin => \map_regD|Add0~94\,
	sumout => \map_regD|Add0~97_sumout\,
	cout => \map_regD|Add0~98\);

-- Location: FF_X82_Y2_N20
\map_regD|count_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~97_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(6));

-- Location: MLABCELL_X82_Y2_N21
\map_regD|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~101_sumout\ = SUM(( \map_regD|count_val\(7) ) + ( VCC ) + ( \map_regD|Add0~98\ ))
-- \map_regD|Add0~102\ = CARRY(( \map_regD|count_val\(7) ) + ( VCC ) + ( \map_regD|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(7),
	cin => \map_regD|Add0~98\,
	sumout => \map_regD|Add0~101_sumout\,
	cout => \map_regD|Add0~102\);

-- Location: FF_X82_Y2_N23
\map_regD|count_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~101_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(7));

-- Location: MLABCELL_X82_Y2_N24
\map_regD|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~105_sumout\ = SUM(( \map_regD|count_val\(8) ) + ( VCC ) + ( \map_regD|Add0~102\ ))
-- \map_regD|Add0~106\ = CARRY(( \map_regD|count_val\(8) ) + ( VCC ) + ( \map_regD|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(8),
	cin => \map_regD|Add0~102\,
	sumout => \map_regD|Add0~105_sumout\,
	cout => \map_regD|Add0~106\);

-- Location: FF_X82_Y2_N26
\map_regD|count_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~105_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(8));

-- Location: MLABCELL_X82_Y2_N27
\map_regD|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~109_sumout\ = SUM(( \map_regD|count_val\(9) ) + ( VCC ) + ( \map_regD|Add0~106\ ))
-- \map_regD|Add0~110\ = CARRY(( \map_regD|count_val\(9) ) + ( VCC ) + ( \map_regD|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(9),
	cin => \map_regD|Add0~106\,
	sumout => \map_regD|Add0~109_sumout\,
	cout => \map_regD|Add0~110\);

-- Location: FF_X82_Y2_N29
\map_regD|count_val[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~109_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(9));

-- Location: MLABCELL_X82_Y2_N30
\map_regD|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~113_sumout\ = SUM(( \map_regD|count_val\(10) ) + ( VCC ) + ( \map_regD|Add0~110\ ))
-- \map_regD|Add0~114\ = CARRY(( \map_regD|count_val\(10) ) + ( VCC ) + ( \map_regD|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(10),
	cin => \map_regD|Add0~110\,
	sumout => \map_regD|Add0~113_sumout\,
	cout => \map_regD|Add0~114\);

-- Location: FF_X82_Y2_N32
\map_regD|count_val[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~113_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(10));

-- Location: MLABCELL_X82_Y2_N33
\map_regD|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~117_sumout\ = SUM(( \map_regD|count_val\(11) ) + ( VCC ) + ( \map_regD|Add0~114\ ))
-- \map_regD|Add0~118\ = CARRY(( \map_regD|count_val\(11) ) + ( VCC ) + ( \map_regD|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(11),
	cin => \map_regD|Add0~114\,
	sumout => \map_regD|Add0~117_sumout\,
	cout => \map_regD|Add0~118\);

-- Location: FF_X82_Y2_N35
\map_regD|count_val[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~117_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(11));

-- Location: MLABCELL_X82_Y2_N36
\map_regD|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~121_sumout\ = SUM(( \map_regD|count_val\(12) ) + ( VCC ) + ( \map_regD|Add0~118\ ))
-- \map_regD|Add0~122\ = CARRY(( \map_regD|count_val\(12) ) + ( VCC ) + ( \map_regD|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(12),
	cin => \map_regD|Add0~118\,
	sumout => \map_regD|Add0~121_sumout\,
	cout => \map_regD|Add0~122\);

-- Location: FF_X82_Y2_N38
\map_regD|count_val[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~121_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(12));

-- Location: MLABCELL_X82_Y2_N39
\map_regD|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~57_sumout\ = SUM(( \map_regD|count_val\(13) ) + ( VCC ) + ( \map_regD|Add0~122\ ))
-- \map_regD|Add0~58\ = CARRY(( \map_regD|count_val\(13) ) + ( VCC ) + ( \map_regD|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(13),
	cin => \map_regD|Add0~122\,
	sumout => \map_regD|Add0~57_sumout\,
	cout => \map_regD|Add0~58\);

-- Location: FF_X82_Y2_N41
\map_regD|count_val[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~57_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(13));

-- Location: MLABCELL_X82_Y2_N42
\map_regD|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~61_sumout\ = SUM(( \map_regD|count_val\(14) ) + ( VCC ) + ( \map_regD|Add0~58\ ))
-- \map_regD|Add0~62\ = CARRY(( \map_regD|count_val\(14) ) + ( VCC ) + ( \map_regD|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(14),
	cin => \map_regD|Add0~58\,
	sumout => \map_regD|Add0~61_sumout\,
	cout => \map_regD|Add0~62\);

-- Location: FF_X82_Y2_N44
\map_regD|count_val[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~61_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(14));

-- Location: MLABCELL_X82_Y2_N45
\map_regD|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~65_sumout\ = SUM(( \map_regD|count_val\(15) ) + ( VCC ) + ( \map_regD|Add0~62\ ))
-- \map_regD|Add0~66\ = CARRY(( \map_regD|count_val\(15) ) + ( VCC ) + ( \map_regD|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(15),
	cin => \map_regD|Add0~62\,
	sumout => \map_regD|Add0~65_sumout\,
	cout => \map_regD|Add0~66\);

-- Location: FF_X82_Y2_N47
\map_regD|count_val[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~65_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(15));

-- Location: MLABCELL_X82_Y2_N48
\map_regD|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~69_sumout\ = SUM(( \map_regD|count_val\(16) ) + ( VCC ) + ( \map_regD|Add0~66\ ))
-- \map_regD|Add0~70\ = CARRY(( \map_regD|count_val\(16) ) + ( VCC ) + ( \map_regD|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(16),
	cin => \map_regD|Add0~66\,
	sumout => \map_regD|Add0~69_sumout\,
	cout => \map_regD|Add0~70\);

-- Location: FF_X82_Y2_N50
\map_regD|count_val[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~69_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(16));

-- Location: MLABCELL_X82_Y2_N51
\map_regD|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~89_sumout\ = SUM(( \map_regD|count_val\(17) ) + ( VCC ) + ( \map_regD|Add0~70\ ))
-- \map_regD|Add0~90\ = CARRY(( \map_regD|count_val\(17) ) + ( VCC ) + ( \map_regD|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(17),
	cin => \map_regD|Add0~70\,
	sumout => \map_regD|Add0~89_sumout\,
	cout => \map_regD|Add0~90\);

-- Location: FF_X82_Y2_N53
\map_regD|count_val[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~89_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(17));

-- Location: MLABCELL_X82_Y2_N54
\map_regD|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~77_sumout\ = SUM(( \map_regD|count_val\(18) ) + ( VCC ) + ( \map_regD|Add0~90\ ))
-- \map_regD|Add0~78\ = CARRY(( \map_regD|count_val\(18) ) + ( VCC ) + ( \map_regD|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(18),
	cin => \map_regD|Add0~90\,
	sumout => \map_regD|Add0~77_sumout\,
	cout => \map_regD|Add0~78\);

-- Location: FF_X82_Y2_N56
\map_regD|count_val[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~77_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(18));

-- Location: MLABCELL_X82_Y2_N57
\map_regD|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~33_sumout\ = SUM(( \map_regD|count_val\(19) ) + ( VCC ) + ( \map_regD|Add0~78\ ))
-- \map_regD|Add0~34\ = CARRY(( \map_regD|count_val\(19) ) + ( VCC ) + ( \map_regD|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(19),
	cin => \map_regD|Add0~78\,
	sumout => \map_regD|Add0~33_sumout\,
	cout => \map_regD|Add0~34\);

-- Location: FF_X82_Y2_N59
\map_regD|count_val[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~33_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(19));

-- Location: MLABCELL_X82_Y1_N0
\map_regD|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~37_sumout\ = SUM(( \map_regD|count_val\(20) ) + ( VCC ) + ( \map_regD|Add0~34\ ))
-- \map_regD|Add0~38\ = CARRY(( \map_regD|count_val\(20) ) + ( VCC ) + ( \map_regD|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(20),
	cin => \map_regD|Add0~34\,
	sumout => \map_regD|Add0~37_sumout\,
	cout => \map_regD|Add0~38\);

-- Location: FF_X82_Y1_N2
\map_regD|count_val[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~37_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(20));

-- Location: MLABCELL_X82_Y1_N3
\map_regD|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~41_sumout\ = SUM(( \map_regD|count_val\(21) ) + ( VCC ) + ( \map_regD|Add0~38\ ))
-- \map_regD|Add0~42\ = CARRY(( \map_regD|count_val\(21) ) + ( VCC ) + ( \map_regD|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(21),
	cin => \map_regD|Add0~38\,
	sumout => \map_regD|Add0~41_sumout\,
	cout => \map_regD|Add0~42\);

-- Location: FF_X82_Y1_N5
\map_regD|count_val[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~41_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(21));

-- Location: MLABCELL_X82_Y1_N6
\map_regD|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~45_sumout\ = SUM(( \map_regD|count_val\(22) ) + ( VCC ) + ( \map_regD|Add0~42\ ))
-- \map_regD|Add0~46\ = CARRY(( \map_regD|count_val\(22) ) + ( VCC ) + ( \map_regD|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(22),
	cin => \map_regD|Add0~42\,
	sumout => \map_regD|Add0~45_sumout\,
	cout => \map_regD|Add0~46\);

-- Location: FF_X82_Y1_N8
\map_regD|count_val[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~45_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(22));

-- Location: MLABCELL_X82_Y1_N9
\map_regD|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~49_sumout\ = SUM(( \map_regD|count_val\(23) ) + ( VCC ) + ( \map_regD|Add0~46\ ))
-- \map_regD|Add0~50\ = CARRY(( \map_regD|count_val\(23) ) + ( VCC ) + ( \map_regD|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(23),
	cin => \map_regD|Add0~46\,
	sumout => \map_regD|Add0~49_sumout\,
	cout => \map_regD|Add0~50\);

-- Location: FF_X82_Y1_N11
\map_regD|count_val[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~49_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(23));

-- Location: MLABCELL_X82_Y1_N12
\map_regD|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~53_sumout\ = SUM(( \map_regD|count_val\(24) ) + ( VCC ) + ( \map_regD|Add0~50\ ))
-- \map_regD|Add0~54\ = CARRY(( \map_regD|count_val\(24) ) + ( VCC ) + ( \map_regD|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(24),
	cin => \map_regD|Add0~50\,
	sumout => \map_regD|Add0~53_sumout\,
	cout => \map_regD|Add0~54\);

-- Location: FF_X82_Y1_N14
\map_regD|count_val[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~53_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(24));

-- Location: MLABCELL_X82_Y1_N15
\map_regD|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~17_sumout\ = SUM(( \map_regD|count_val\(25) ) + ( VCC ) + ( \map_regD|Add0~54\ ))
-- \map_regD|Add0~18\ = CARRY(( \map_regD|count_val\(25) ) + ( VCC ) + ( \map_regD|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(25),
	cin => \map_regD|Add0~54\,
	sumout => \map_regD|Add0~17_sumout\,
	cout => \map_regD|Add0~18\);

-- Location: FF_X82_Y1_N17
\map_regD|count_val[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~17_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(25));

-- Location: MLABCELL_X82_Y1_N18
\map_regD|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~73_sumout\ = SUM(( \map_regD|count_val\(26) ) + ( VCC ) + ( \map_regD|Add0~18\ ))
-- \map_regD|Add0~74\ = CARRY(( \map_regD|count_val\(26) ) + ( VCC ) + ( \map_regD|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(26),
	cin => \map_regD|Add0~18\,
	sumout => \map_regD|Add0~73_sumout\,
	cout => \map_regD|Add0~74\);

-- Location: FF_X82_Y1_N20
\map_regD|count_val[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~73_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(26));

-- Location: MLABCELL_X82_Y1_N21
\map_regD|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~25_sumout\ = SUM(( \map_regD|count_val\(27) ) + ( VCC ) + ( \map_regD|Add0~74\ ))
-- \map_regD|Add0~26\ = CARRY(( \map_regD|count_val\(27) ) + ( VCC ) + ( \map_regD|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(27),
	cin => \map_regD|Add0~74\,
	sumout => \map_regD|Add0~25_sumout\,
	cout => \map_regD|Add0~26\);

-- Location: FF_X82_Y1_N23
\map_regD|count_val[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~25_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(27));

-- Location: MLABCELL_X82_Y1_N24
\map_regD|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~29_sumout\ = SUM(( \map_regD|count_val\(28) ) + ( VCC ) + ( \map_regD|Add0~26\ ))
-- \map_regD|Add0~30\ = CARRY(( \map_regD|count_val\(28) ) + ( VCC ) + ( \map_regD|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_count_val\(28),
	cin => \map_regD|Add0~26\,
	sumout => \map_regD|Add0~29_sumout\,
	cout => \map_regD|Add0~30\);

-- Location: FF_X82_Y1_N26
\map_regD|count_val[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~29_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(28));

-- Location: MLABCELL_X82_Y1_N27
\map_regD|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~1_sumout\ = SUM(( \map_regD|count_val\(29) ) + ( VCC ) + ( \map_regD|Add0~30\ ))
-- \map_regD|Add0~2\ = CARRY(( \map_regD|count_val\(29) ) + ( VCC ) + ( \map_regD|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(29),
	cin => \map_regD|Add0~30\,
	sumout => \map_regD|Add0~1_sumout\,
	cout => \map_regD|Add0~2\);

-- Location: FF_X82_Y1_N29
\map_regD|count_val[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~1_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(29));

-- Location: MLABCELL_X82_Y1_N30
\map_regD|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~21_sumout\ = SUM(( \map_regD|count_val\(30) ) + ( VCC ) + ( \map_regD|Add0~2\ ))
-- \map_regD|Add0~22\ = CARRY(( \map_regD|count_val\(30) ) + ( VCC ) + ( \map_regD|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regD|ALT_INV_count_val\(30),
	cin => \map_regD|Add0~2\,
	sumout => \map_regD|Add0~21_sumout\,
	cout => \map_regD|Add0~22\);

-- Location: FF_X82_Y1_N32
\map_regD|count_val[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|Add0~21_sumout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(30));

-- Location: MLABCELL_X82_Y1_N33
\map_regD|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Add0~85_sumout\ = SUM(( !\map_regD|count_val\(31) ) + ( VCC ) + ( \map_regD|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(31),
	cin => \map_regD|Add0~22\,
	sumout => \map_regD|Add0~85_sumout\);

-- Location: LABCELL_X81_Y2_N33
\map_regD|count_val~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|count_val~3_combout\ = ( \map_regD|Add0~85_sumout\ & ( \map_fsm|state.load_regs~q\ ) ) # ( !\map_regD|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_regD|ALT_INV_Add0~85_sumout\,
	combout => \map_regD|count_val~3_combout\);

-- Location: FF_X81_Y2_N35
\map_regD|count_val[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|count_val~3_combout\,
	ena => \map_regD|count_val[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|count_val\(31));

-- Location: LABCELL_X81_Y2_N12
\map_regD|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~4_combout\ = ( !\map_regD|count_val\(7) & ( !\map_regD|count_val\(17) & ( (!\map_regD|count_val\(0) & (!\map_regD|count_val\(6) & (\map_regD|count_val\(31) & !\map_regD|count_val\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(0),
	datab => \map_regD|ALT_INV_count_val\(6),
	datac => \map_regD|ALT_INV_count_val\(31),
	datad => \map_regD|ALT_INV_count_val\(5),
	datae => \map_regD|ALT_INV_count_val\(7),
	dataf => \map_regD|ALT_INV_count_val\(17),
	combout => \map_regD|Equal0~4_combout\);

-- Location: MLABCELL_X82_Y1_N54
\map_regD|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~2_combout\ = ( !\map_regD|count_val\(19) & ( !\map_regD|count_val\(24) & ( (!\map_regD|count_val\(20) & (!\map_regD|count_val\(22) & (!\map_regD|count_val\(21) & !\map_regD|count_val\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(20),
	datab => \map_regD|ALT_INV_count_val\(22),
	datac => \map_regD|ALT_INV_count_val\(21),
	datad => \map_regD|ALT_INV_count_val\(23),
	datae => \map_regD|ALT_INV_count_val\(19),
	dataf => \map_regD|ALT_INV_count_val\(24),
	combout => \map_regD|Equal0~2_combout\);

-- Location: MLABCELL_X82_Y1_N36
\map_regD|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~3_combout\ = ( !\map_regD|count_val\(14) & ( !\map_regD|count_val\(13) & ( (!\map_regD|count_val\(15) & (!\map_regD|count_val\(16) & (!\map_regD|count_val\(26) & !\map_regD|count_val\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(15),
	datab => \map_regD|ALT_INV_count_val\(16),
	datac => \map_regD|ALT_INV_count_val\(26),
	datad => \map_regD|ALT_INV_count_val\(18),
	datae => \map_regD|ALT_INV_count_val\(14),
	dataf => \map_regD|ALT_INV_count_val\(13),
	combout => \map_regD|Equal0~3_combout\);

-- Location: MLABCELL_X82_Y1_N51
\map_regD|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~0_combout\ = ( !\map_regD|count_val\(2) & ( !\map_regD|count_val\(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \map_regD|ALT_INV_count_val\(29),
	dataf => \map_regD|ALT_INV_count_val\(2),
	combout => \map_regD|Equal0~0_combout\);

-- Location: LABCELL_X81_Y2_N24
\map_regD|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~5_combout\ = ( !\map_regD|count_val\(12) & ( !\map_regD|count_val\(11) & ( (!\map_regD|count_val\(9) & (!\map_regD|count_val\(4) & (!\map_regD|count_val\(10) & !\map_regD|count_val\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(9),
	datab => \map_regD|ALT_INV_count_val\(4),
	datac => \map_regD|ALT_INV_count_val\(10),
	datad => \map_regD|ALT_INV_count_val\(8),
	datae => \map_regD|ALT_INV_count_val\(12),
	dataf => \map_regD|ALT_INV_count_val\(11),
	combout => \map_regD|Equal0~5_combout\);

-- Location: LABCELL_X81_Y1_N18
\map_regD|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~1_combout\ = ( !\map_regD|count_val\(1) & ( !\map_regD|count_val\(3) & ( (!\map_regD|count_val\(25) & (!\map_regD|count_val\(30) & (!\map_regD|count_val\(28) & !\map_regD|count_val\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_count_val\(25),
	datab => \map_regD|ALT_INV_count_val\(30),
	datac => \map_regD|ALT_INV_count_val\(28),
	datad => \map_regD|ALT_INV_count_val\(27),
	datae => \map_regD|ALT_INV_count_val\(1),
	dataf => \map_regD|ALT_INV_count_val\(3),
	combout => \map_regD|Equal0~1_combout\);

-- Location: MLABCELL_X82_Y1_N42
\map_regD|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|Equal0~6_combout\ = ( \map_regD|Equal0~5_combout\ & ( \map_regD|Equal0~1_combout\ & ( (\map_regD|Equal0~4_combout\ & (\map_regD|Equal0~2_combout\ & (\map_regD|Equal0~3_combout\ & \map_regD|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regD|ALT_INV_Equal0~4_combout\,
	datab => \map_regD|ALT_INV_Equal0~2_combout\,
	datac => \map_regD|ALT_INV_Equal0~3_combout\,
	datad => \map_regD|ALT_INV_Equal0~0_combout\,
	datae => \map_regD|ALT_INV_Equal0~5_combout\,
	dataf => \map_regD|ALT_INV_Equal0~1_combout\,
	combout => \map_regD|Equal0~6_combout\);

-- Location: LABCELL_X81_Y1_N45
\map_regD|is_finished~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regD|is_finished~0_combout\ = ( \map_fsm|state.shift_regs~q\ & ( \map_regD|Equal0~6_combout\ ) ) # ( !\map_fsm|state.shift_regs~q\ & ( (\map_regD|is_finished~q\) # (\map_regD|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regD|ALT_INV_Equal0~6_combout\,
	datad => \map_regD|ALT_INV_is_finished~q\,
	dataf => \map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_regD|is_finished~0_combout\);

-- Location: FF_X81_Y1_N47
\map_regD|is_finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regD|is_finished~0_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regD|is_finished~q\);

-- Location: MLABCELL_X78_Y1_N3
\map_fsm|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|state~9_combout\ = ( \map_regD|is_finished~q\ & ( \map_fsm|state.shift_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \map_regD|ALT_INV_is_finished~q\,
	dataf => \map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_fsm|state~9_combout\);

-- Location: FF_X78_Y1_N5
\map_fsm|state.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_fsm|state~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_fsm|state.fin~q\);

-- Location: LABCELL_X79_Y1_N18
\map_fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|Selector2~0_combout\ = ( !\map_fsm|state.fin~q\ & ( (\map_fsm|state.notBusy~q\) # (\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datad => \map_fsm|ALT_INV_state.notBusy~q\,
	dataf => \map_fsm|ALT_INV_state.fin~q\,
	combout => \map_fsm|Selector2~0_combout\);

-- Location: FF_X79_Y1_N20
\map_fsm|state.notBusy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_fsm|Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_fsm|state.notBusy~q\);

-- Location: MLABCELL_X78_Y1_N42
\map_fsm|done\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|done~combout\ = ( \map_fsm|state.fin~q\ & ( (!\map_fsm|state.shift_regs~q\) # (\map_fsm|done~combout\) ) ) # ( !\map_fsm|state.fin~q\ & ( (\map_fsm|done~combout\ & \map_fsm|state.shift_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_done~combout\,
	datac => \map_fsm|ALT_INV_state.shift_regs~q\,
	dataf => \map_fsm|ALT_INV_state.fin~q\,
	combout => \map_fsm|done~combout\);

-- Location: IOIBUF_X74_Y0_N58
\multiplier[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(0),
	o => \multiplier[0]~input_o\);

-- Location: MLABCELL_X78_Y1_N9
\map_regB|internal_buffer[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[1]~feeder_combout\ = ( \multiplier[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multiplier[0]~input_o\,
	combout => \map_regB|internal_buffer[1]~feeder_combout\);

-- Location: IOIBUF_X68_Y0_N1
\multiplier[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(2),
	o => \multiplier[2]~input_o\);

-- Location: MLABCELL_X78_Y1_N30
\map_regB|internal_buffer[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[3]~feeder_combout\ = \multiplier[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplier[2]~input_o\,
	combout => \map_regB|internal_buffer[3]~feeder_combout\);

-- Location: IOIBUF_X70_Y0_N52
\multiplier[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(4),
	o => \multiplier[4]~input_o\);

-- Location: MLABCELL_X78_Y1_N12
\map_regB|internal_buffer[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[5]~feeder_combout\ = ( \multiplier[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multiplier[4]~input_o\,
	combout => \map_regB|internal_buffer[5]~feeder_combout\);

-- Location: IOIBUF_X72_Y0_N35
\multiplier[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(6),
	o => \multiplier[6]~input_o\);

-- Location: MLABCELL_X78_Y1_N15
\map_regB|internal_buffer[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[7]~feeder_combout\ = \multiplier[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[6]~input_o\,
	combout => \map_regB|internal_buffer[7]~feeder_combout\);

-- Location: LABCELL_X79_Y1_N27
\map_fsm|sel_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|sel_out~0_combout\ = ( \map_fsm|state.notBusy~q\ & ( \map_fsm|state.fin~q\ ) ) # ( !\map_fsm|state.notBusy~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_state.fin~q\,
	dataf => \map_fsm|ALT_INV_state.notBusy~q\,
	combout => \map_fsm|sel_out~0_combout\);

-- Location: LABCELL_X79_Y1_N24
\map_fsm|sel_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|sel_out\(1) = ( \map_regB|internal_buffer\(1) & ( (!\map_fsm|sel_out~0_combout\) # (\map_fsm|sel_out\(1)) ) ) # ( !\map_regB|internal_buffer\(1) & ( (\map_fsm|sel_out\(1) & \map_fsm|sel_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_sel_out\(1),
	datad => \map_fsm|ALT_INV_sel_out~0_combout\,
	dataf => \map_regB|ALT_INV_internal_buffer\(1),
	combout => \map_fsm|sel_out\(1));

-- Location: IOIBUF_X86_Y0_N1
\multiplicand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: FF_X80_Y1_N32
\map_regA|neg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[0]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(0));

-- Location: IOIBUF_X80_Y0_N52
\multiplicand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: FF_X79_Y1_N38
\map_regA|pos1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[2]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(2));

-- Location: IOIBUF_X80_Y0_N35
\multiplicand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: LABCELL_X80_Y1_N30
\map_regA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~1_sumout\ = SUM(( !\multiplicand[1]~input_o\ ) + ( !\multiplicand[0]~input_o\ ) + ( !VCC ))
-- \map_regA|Add0~2\ = CARRY(( !\multiplicand[1]~input_o\ ) + ( !\multiplicand[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[1]~input_o\,
	dataf => \ALT_INV_multiplicand[0]~input_o\,
	cin => GND,
	sumout => \map_regA|Add0~1_sumout\,
	cout => \map_regA|Add0~2\);

-- Location: FF_X80_Y1_N56
\map_regA|neg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_regA|Add0~1_sumout\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(1));

-- Location: LABCELL_X80_Y1_N33
\map_regA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~5_sumout\ = SUM(( !\multiplicand[2]~input_o\ ) + ( GND ) + ( \map_regA|Add0~2\ ))
-- \map_regA|Add0~6\ = CARRY(( !\multiplicand[2]~input_o\ ) + ( GND ) + ( \map_regA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[2]~input_o\,
	cin => \map_regA|Add0~2\,
	sumout => \map_regA|Add0~5_sumout\,
	cout => \map_regA|Add0~6\);

-- Location: FF_X79_Y1_N50
\map_regA|neg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_regA|Add0~5_sumout\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(2));

-- Location: IOIBUF_X72_Y0_N1
\multiplier[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(1),
	o => \multiplier[1]~input_o\);

-- Location: MLABCELL_X78_Y1_N48
\map_regB|internal_buffer[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[2]~feeder_combout\ = ( \multiplier[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multiplier[1]~input_o\,
	combout => \map_regB|internal_buffer[2]~feeder_combout\);

-- Location: IOIBUF_X72_Y0_N52
\multiplier[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(3),
	o => \multiplier[3]~input_o\);

-- Location: MLABCELL_X78_Y1_N45
\map_regB|internal_buffer[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[4]~feeder_combout\ = ( \multiplier[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multiplier[3]~input_o\,
	combout => \map_regB|internal_buffer[4]~feeder_combout\);

-- Location: IOIBUF_X72_Y0_N18
\multiplier[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(5),
	o => \multiplier[5]~input_o\);

-- Location: MLABCELL_X78_Y1_N36
\map_regB|internal_buffer[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[6]~feeder_combout\ = \multiplier[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplier[5]~input_o\,
	combout => \map_regB|internal_buffer[6]~feeder_combout\);

-- Location: IOIBUF_X76_Y0_N52
\multiplier[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(7),
	o => \multiplier[7]~input_o\);

-- Location: MLABCELL_X78_Y1_N39
\map_regB|internal_buffer[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[8]~feeder_combout\ = \multiplier[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplier[7]~input_o\,
	combout => \map_regB|internal_buffer[8]~feeder_combout\);

-- Location: FF_X80_Y1_N38
\map_regA|pos1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[1]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(1));

-- Location: LABCELL_X79_Y1_N15
\map_regB|internal_buffer~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer~1_combout\ = ( \map_fsm|state.shift_regs~q\ & ( \map_regB|internal_buffer\(2) ) ) # ( !\map_fsm|state.shift_regs~q\ & ( \map_regB|internal_buffer\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regB|ALT_INV_internal_buffer\(2),
	datad => \map_regB|ALT_INV_internal_buffer\(0),
	dataf => \map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_regB|internal_buffer~1_combout\);

-- Location: FF_X79_Y1_N17
\map_regB|internal_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer~1_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(0));

-- Location: LABCELL_X79_Y1_N21
\map_fsm|sel_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|sel_out\(0) = ( \map_regB|internal_buffer\(0) & ( (!\map_fsm|sel_out~0_combout\) # (\map_fsm|sel_out\(0)) ) ) # ( !\map_regB|internal_buffer\(0) & ( (\map_fsm|sel_out\(0) & \map_fsm|sel_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_sel_out\(0),
	datad => \map_fsm|ALT_INV_sel_out~0_combout\,
	dataf => \map_regB|ALT_INV_internal_buffer\(0),
	combout => \map_fsm|sel_out\(0));

-- Location: LABCELL_X80_Y1_N57
\map_mux|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux7~0_combout\ = ( \map_regA|pos1\(1) & ( \map_fsm|sel_out\(0) & ( (!\map_fsm|sel_out\(2) & ((!\map_fsm|sel_out\(1)) # ((\map_regA|neg1\(0))))) # (\map_fsm|sel_out\(2) & (!\map_fsm|sel_out\(1) & ((\map_regA|neg1\(1))))) ) ) ) # ( 
-- !\map_regA|pos1\(1) & ( \map_fsm|sel_out\(0) & ( (!\map_fsm|sel_out\(2) & (\map_fsm|sel_out\(1) & (\map_regA|neg1\(0)))) # (\map_fsm|sel_out\(2) & (!\map_fsm|sel_out\(1) & ((\map_regA|neg1\(1))))) ) ) ) # ( \map_regA|pos1\(1) & ( !\map_fsm|sel_out\(0) & ( 
-- (!\map_fsm|sel_out\(2) & (\map_fsm|sel_out\(1))) # (\map_fsm|sel_out\(2) & ((!\map_fsm|sel_out\(1) & (\map_regA|neg1\(0))) # (\map_fsm|sel_out\(1) & ((\map_regA|neg1\(1)))))) ) ) ) # ( !\map_regA|pos1\(1) & ( !\map_fsm|sel_out\(0) & ( 
-- (\map_fsm|sel_out\(2) & ((!\map_fsm|sel_out\(1) & (\map_regA|neg1\(0))) # (\map_fsm|sel_out\(1) & ((\map_regA|neg1\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000010010001101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_sel_out\(2),
	datab => \map_fsm|ALT_INV_sel_out\(1),
	datac => \map_regA|ALT_INV_neg1\(0),
	datad => \map_regA|ALT_INV_neg1\(1),
	datae => \map_regA|ALT_INV_pos1\(1),
	dataf => \map_fsm|ALT_INV_sel_out\(0),
	combout => \map_mux|Mux7~0_combout\);

-- Location: IOIBUF_X80_Y0_N18
\multiplicand[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(7),
	o => \multiplicand[7]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\multiplicand[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(6),
	o => \multiplicand[6]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\multiplicand[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(5),
	o => \multiplicand[5]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\multiplicand[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(4),
	o => \multiplicand[4]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\multiplicand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: LABCELL_X80_Y1_N36
\map_regA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~9_sumout\ = SUM(( !\multiplicand[3]~input_o\ ) + ( GND ) + ( \map_regA|Add0~6\ ))
-- \map_regA|Add0~10\ = CARRY(( !\multiplicand[3]~input_o\ ) + ( GND ) + ( \map_regA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[3]~input_o\,
	cin => \map_regA|Add0~6\,
	sumout => \map_regA|Add0~9_sumout\,
	cout => \map_regA|Add0~10\);

-- Location: LABCELL_X80_Y1_N39
\map_regA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~13_sumout\ = SUM(( !\multiplicand[4]~input_o\ ) + ( GND ) + ( \map_regA|Add0~10\ ))
-- \map_regA|Add0~14\ = CARRY(( !\multiplicand[4]~input_o\ ) + ( GND ) + ( \map_regA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[4]~input_o\,
	cin => \map_regA|Add0~10\,
	sumout => \map_regA|Add0~13_sumout\,
	cout => \map_regA|Add0~14\);

-- Location: LABCELL_X80_Y1_N42
\map_regA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~17_sumout\ = SUM(( !\multiplicand[5]~input_o\ ) + ( GND ) + ( \map_regA|Add0~14\ ))
-- \map_regA|Add0~18\ = CARRY(( !\multiplicand[5]~input_o\ ) + ( GND ) + ( \map_regA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[5]~input_o\,
	cin => \map_regA|Add0~14\,
	sumout => \map_regA|Add0~17_sumout\,
	cout => \map_regA|Add0~18\);

-- Location: LABCELL_X80_Y1_N45
\map_regA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~21_sumout\ = SUM(( !\multiplicand[6]~input_o\ ) + ( GND ) + ( \map_regA|Add0~18\ ))
-- \map_regA|Add0~22\ = CARRY(( !\multiplicand[6]~input_o\ ) + ( GND ) + ( \map_regA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[6]~input_o\,
	cin => \map_regA|Add0~18\,
	sumout => \map_regA|Add0~21_sumout\,
	cout => \map_regA|Add0~22\);

-- Location: LABCELL_X80_Y1_N48
\map_regA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regA|Add0~25_sumout\ = SUM(( !\multiplicand[7]~input_o\ ) + ( GND ) + ( \map_regA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[7]~input_o\,
	cin => \map_regA|Add0~22\,
	sumout => \map_regA|Add0~25_sumout\);

-- Location: FF_X80_Y1_N50
\map_regA|neg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regA|Add0~25_sumout\,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(7));

-- Location: FF_X79_Y1_N56
\map_regA|pos1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[7]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(7));

-- Location: LABCELL_X79_Y1_N12
\map_mux|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux0~0_combout\ = ( \map_fsm|sel_out\(2) & ( (\map_regA|neg1\(7) & ((!\map_fsm|sel_out\(1)) # (!\map_fsm|sel_out\(0)))) ) ) # ( !\map_fsm|sel_out\(2) & ( (\map_regA|pos1\(7) & ((\map_fsm|sel_out\(0)) # (\map_fsm|sel_out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_sel_out\(1),
	datab => \map_regA|ALT_INV_neg1\(7),
	datac => \map_fsm|ALT_INV_sel_out\(0),
	datad => \map_regA|ALT_INV_pos1\(7),
	dataf => \map_fsm|ALT_INV_sel_out\(2),
	combout => \map_mux|Mux0~0_combout\);

-- Location: FF_X80_Y1_N47
\map_regA|neg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regA|Add0~21_sumout\,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(6));

-- Location: FF_X79_Y1_N32
\map_regA|pos1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[6]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(6));

-- Location: LABCELL_X79_Y1_N54
\map_mux|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux1~0_combout\ = ( !\map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(1) & (\map_regA|pos1\(7) & (((\map_fsm|sel_out\(0)))))) # (\map_fsm|sel_out\(1) & (((!\map_fsm|sel_out\(0) & (\map_regA|pos1\(7))) # (\map_fsm|sel_out\(0) & 
-- ((\map_regA|pos1\(6))))))) ) ) # ( \map_fsm|sel_out\(2) & ( ((!\map_fsm|sel_out\(1) & ((!\map_fsm|sel_out\(0) & (\map_regA|neg1\(6))) # (\map_fsm|sel_out\(0) & ((\map_regA|neg1\(7)))))) # (\map_fsm|sel_out\(1) & (((\map_regA|neg1\(7) & 
-- !\map_fsm|sel_out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011000011111101000111010001110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regA|ALT_INV_pos1\(7),
	datab => \map_fsm|ALT_INV_sel_out\(1),
	datac => \map_regA|ALT_INV_neg1\(6),
	datad => \map_regA|ALT_INV_neg1\(7),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(0),
	datag => \map_regA|ALT_INV_pos1\(6),
	combout => \map_mux|Mux1~0_combout\);

-- Location: FF_X79_Y1_N8
\map_regA|neg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_regA|Add0~17_sumout\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(5));

-- Location: FF_X80_Y1_N59
\map_regA|pos1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[5]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(5));

-- Location: LABCELL_X79_Y1_N30
\map_mux|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux2~0_combout\ = ( !\map_fsm|sel_out\(2) & ( ((!\map_fsm|sel_out\(0) & (((\map_regA|pos1\(6) & \map_fsm|sel_out\(1))))) # (\map_fsm|sel_out\(0) & ((!\map_fsm|sel_out\(1) & ((\map_regA|pos1\(6)))) # (\map_fsm|sel_out\(1) & 
-- (\map_regA|pos1\(5)))))) ) ) # ( \map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(0) & (((!\map_fsm|sel_out\(1) & ((\map_regA|neg1\(5)))) # (\map_fsm|sel_out\(1) & (\map_regA|neg1\(6)))))) # (\map_fsm|sel_out\(0) & (\map_regA|neg1\(6) & 
-- (((!\map_fsm|sel_out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000111010001110100000011110011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regA|ALT_INV_neg1\(6),
	datab => \map_fsm|ALT_INV_sel_out\(0),
	datac => \map_regA|ALT_INV_neg1\(5),
	datad => \map_regA|ALT_INV_pos1\(6),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(1),
	datag => \map_regA|ALT_INV_pos1\(5),
	combout => \map_mux|Mux2~0_combout\);

-- Location: FF_X80_Y1_N41
\map_regA|neg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regA|Add0~13_sumout\,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(4));

-- Location: FF_X79_Y1_N2
\map_regA|pos1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[4]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(4));

-- Location: LABCELL_X79_Y1_N6
\map_mux|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux3~0_combout\ = ( !\map_fsm|sel_out\(2) & ( ((!\map_fsm|sel_out\(0) & (((\map_regA|pos1\(5) & \map_fsm|sel_out\(1))))) # (\map_fsm|sel_out\(0) & ((!\map_fsm|sel_out\(1) & ((\map_regA|pos1\(5)))) # (\map_fsm|sel_out\(1) & 
-- (\map_regA|pos1\(4)))))) ) ) # ( \map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(0) & (((!\map_fsm|sel_out\(1) & ((\map_regA|neg1\(4)))) # (\map_fsm|sel_out\(1) & (\map_regA|neg1\(5)))))) # (\map_fsm|sel_out\(0) & (\map_regA|neg1\(5) & 
-- (((!\map_fsm|sel_out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000111010001110100000011110011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regA|ALT_INV_neg1\(5),
	datab => \map_fsm|ALT_INV_sel_out\(0),
	datac => \map_regA|ALT_INV_neg1\(4),
	datad => \map_regA|ALT_INV_pos1\(5),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(1),
	datag => \map_regA|ALT_INV_pos1\(4),
	combout => \map_mux|Mux3~0_combout\);

-- Location: FF_X80_Y1_N29
\map_regA|neg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \map_regA|Add0~9_sumout\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|neg1\(3));

-- Location: FF_X79_Y1_N29
\map_regA|pos1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multiplicand[3]~input_o\,
	sload => VCC,
	ena => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regA|pos1\(3));

-- Location: LABCELL_X79_Y1_N0
\map_mux|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux4~0_combout\ = ( !\map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(0) & (\map_regA|pos1\(4) & (((\map_fsm|sel_out\(1)))))) # (\map_fsm|sel_out\(0) & (((!\map_fsm|sel_out\(1) & (\map_regA|pos1\(4))) # (\map_fsm|sel_out\(1) & 
-- ((\map_regA|pos1\(3))))))) ) ) # ( \map_fsm|sel_out\(2) & ( ((!\map_fsm|sel_out\(0) & ((!\map_fsm|sel_out\(1) & (\map_regA|neg1\(3))) # (\map_fsm|sel_out\(1) & ((\map_regA|neg1\(4)))))) # (\map_fsm|sel_out\(0) & (((\map_regA|neg1\(4) & 
-- !\map_fsm|sel_out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011000011111101000111010001110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regA|ALT_INV_pos1\(4),
	datab => \map_fsm|ALT_INV_sel_out\(0),
	datac => \map_regA|ALT_INV_neg1\(3),
	datad => \map_regA|ALT_INV_neg1\(4),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(1),
	datag => \map_regA|ALT_INV_pos1\(3),
	combout => \map_mux|Mux4~0_combout\);

-- Location: LABCELL_X79_Y1_N42
\map_mux|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux5~0_combout\ = ( !\map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(1) & ((((\map_regA|pos1\(3) & \map_fsm|sel_out\(0)))))) # (\map_fsm|sel_out\(1) & (((!\map_fsm|sel_out\(0) & ((\map_regA|pos1\(3)))) # (\map_fsm|sel_out\(0) & 
-- (\map_regA|pos1\(2)))))) ) ) # ( \map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(1) & (((!\map_fsm|sel_out\(0) & ((\map_regA|neg1\(2)))) # (\map_fsm|sel_out\(0) & (\map_regA|neg1\(3)))))) # (\map_fsm|sel_out\(1) & (\map_regA|neg1\(3) & 
-- (((!\map_fsm|sel_out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000110110001101100000101101011110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_sel_out\(1),
	datab => \map_regA|ALT_INV_neg1\(3),
	datac => \map_regA|ALT_INV_neg1\(2),
	datad => \map_regA|ALT_INV_pos1\(3),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(0),
	datag => \map_regA|ALT_INV_pos1\(2),
	combout => \map_mux|Mux5~0_combout\);

-- Location: LABCELL_X80_Y1_N0
\map_adder|Ai|s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(0) = SUM(( !\map_regC|sig_output_adder\(0) $ (((!\map_regA|neg1\(0)) # (!\map_fsm|sel_out\(1) $ (\map_fsm|sel_out\(0))))) ) + ( !VCC ) + ( !VCC ))
-- \map_adder|Ai|_~1\ = CARRY(( !\map_regC|sig_output_adder\(0) $ (((!\map_regA|neg1\(0)) # (!\map_fsm|sel_out\(1) $ (\map_fsm|sel_out\(0))))) ) + ( !VCC ) + ( !VCC ))
-- \map_adder|Ai|_~2\ = SHARE((\map_regA|neg1\(0) & (\map_regC|sig_output_adder\(0) & (!\map_fsm|sel_out\(1) $ (!\map_fsm|sel_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000001111000101101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \map_fsm|ALT_INV_sel_out\(1),
	datab => \map_regA|ALT_INV_neg1\(0),
	datac => \map_regC|ALT_INV_sig_output_adder\(0),
	datad => \map_fsm|ALT_INV_sel_out\(0),
	cin => GND,
	sharein => GND,
	sumout => \map_adder|Ai|s\(0),
	cout => \map_adder|Ai|_~1\,
	shareout => \map_adder|Ai|_~2\);

-- Location: LABCELL_X80_Y1_N3
\map_adder|Ai|s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(1) = SUM(( !\map_mux|Mux7~0_combout\ $ (!\map_regC|sig_output_adder\(1)) ) + ( \map_adder|Ai|_~2\ ) + ( \map_adder|Ai|_~1\ ))
-- \map_adder|Ai|_~4\ = CARRY(( !\map_mux|Mux7~0_combout\ $ (!\map_regC|sig_output_adder\(1)) ) + ( \map_adder|Ai|_~2\ ) + ( \map_adder|Ai|_~1\ ))
-- \map_adder|Ai|_~5\ = SHARE((\map_mux|Mux7~0_combout\ & \map_regC|sig_output_adder\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_mux|ALT_INV_Mux7~0_combout\,
	datad => \map_regC|ALT_INV_sig_output_adder\(1),
	cin => \map_adder|Ai|_~1\,
	sharein => \map_adder|Ai|_~2\,
	sumout => \map_adder|Ai|s\(1),
	cout => \map_adder|Ai|_~4\,
	shareout => \map_adder|Ai|_~5\);

-- Location: LABCELL_X80_Y1_N6
\map_adder|Ai|s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(2) = SUM(( !\map_mux|Mux6~0_combout\ $ (!\map_regC|sig_output_adder\(2)) ) + ( \map_adder|Ai|_~5\ ) + ( \map_adder|Ai|_~4\ ))
-- \map_adder|Ai|_~7\ = CARRY(( !\map_mux|Mux6~0_combout\ $ (!\map_regC|sig_output_adder\(2)) ) + ( \map_adder|Ai|_~5\ ) + ( \map_adder|Ai|_~4\ ))
-- \map_adder|Ai|_~8\ = SHARE((\map_mux|Mux6~0_combout\ & \map_regC|sig_output_adder\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_mux|ALT_INV_Mux6~0_combout\,
	datad => \map_regC|ALT_INV_sig_output_adder\(2),
	cin => \map_adder|Ai|_~4\,
	sharein => \map_adder|Ai|_~5\,
	sumout => \map_adder|Ai|s\(2),
	cout => \map_adder|Ai|_~7\,
	shareout => \map_adder|Ai|_~8\);

-- Location: LABCELL_X80_Y1_N9
\map_adder|Ai|s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(3) = SUM(( !\map_mux|Mux5~0_combout\ $ (!\map_regC|sig_output_adder\(3)) ) + ( \map_adder|Ai|_~8\ ) + ( \map_adder|Ai|_~7\ ))
-- \map_adder|Ai|_~10\ = CARRY(( !\map_mux|Mux5~0_combout\ $ (!\map_regC|sig_output_adder\(3)) ) + ( \map_adder|Ai|_~8\ ) + ( \map_adder|Ai|_~7\ ))
-- \map_adder|Ai|_~11\ = SHARE((\map_mux|Mux5~0_combout\ & \map_regC|sig_output_adder\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \map_mux|ALT_INV_Mux5~0_combout\,
	datac => \map_regC|ALT_INV_sig_output_adder\(3),
	cin => \map_adder|Ai|_~7\,
	sharein => \map_adder|Ai|_~8\,
	sumout => \map_adder|Ai|s\(3),
	cout => \map_adder|Ai|_~10\,
	shareout => \map_adder|Ai|_~11\);

-- Location: LABCELL_X80_Y1_N12
\map_adder|Ai|s[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(4) = SUM(( !\map_regC|sig_output_adder\(4) $ (!\map_mux|Mux4~0_combout\) ) + ( \map_adder|Ai|_~11\ ) + ( \map_adder|Ai|_~10\ ))
-- \map_adder|Ai|_~13\ = CARRY(( !\map_regC|sig_output_adder\(4) $ (!\map_mux|Mux4~0_combout\) ) + ( \map_adder|Ai|_~11\ ) + ( \map_adder|Ai|_~10\ ))
-- \map_adder|Ai|_~14\ = SHARE((\map_regC|sig_output_adder\(4) & \map_mux|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \map_regC|ALT_INV_sig_output_adder\(4),
	datad => \map_mux|ALT_INV_Mux4~0_combout\,
	cin => \map_adder|Ai|_~10\,
	sharein => \map_adder|Ai|_~11\,
	sumout => \map_adder|Ai|s\(4),
	cout => \map_adder|Ai|_~13\,
	shareout => \map_adder|Ai|_~14\);

-- Location: LABCELL_X81_Y1_N24
\map_regC|sig_output_adder~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~5_combout\ = ( \map_adder|Ai|s\(4) & ( (\map_regC|sig_output_adder\(6)) # (\map_fsm|state.add_regs~q\) ) ) # ( !\map_adder|Ai|s\(4) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.add_regs~q\,
	datac => \map_regC|ALT_INV_sig_output_adder\(6),
	dataf => \map_adder|Ai|ALT_INV_s\(4),
	combout => \map_regC|sig_output_adder~5_combout\);

-- Location: LABCELL_X81_Y1_N15
\map_regB|internal_buffer[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regB|internal_buffer[1]~0_combout\ = (\map_fsm|state.shift_regs~q\) # (\map_fsm|state.load_regs~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_state.load_regs~q\,
	datad => \map_fsm|ALT_INV_state.shift_regs~q\,
	combout => \map_regB|internal_buffer[1]~0_combout\);

-- Location: LABCELL_X81_Y1_N12
\map_regC|sig_output_adder[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder[0]~1_combout\ = ( \map_regB|internal_buffer[1]~0_combout\ ) # ( !\map_regB|internal_buffer[1]~0_combout\ & ( \map_fsm|state.add_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_regB|ALT_INV_internal_buffer[1]~0_combout\,
	combout => \map_regC|sig_output_adder[0]~1_combout\);

-- Location: FF_X81_Y1_N26
\map_regC|sig_output_adder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~5_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(4));

-- Location: LABCELL_X80_Y1_N15
\map_adder|Ai|s[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(5) = SUM(( !\map_regC|sig_output_adder\(5) $ (!\map_mux|Mux3~0_combout\) ) + ( \map_adder|Ai|_~14\ ) + ( \map_adder|Ai|_~13\ ))
-- \map_adder|Ai|_~16\ = CARRY(( !\map_regC|sig_output_adder\(5) $ (!\map_mux|Mux3~0_combout\) ) + ( \map_adder|Ai|_~14\ ) + ( \map_adder|Ai|_~13\ ))
-- \map_adder|Ai|_~17\ = SHARE((\map_regC|sig_output_adder\(5) & \map_mux|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_regC|ALT_INV_sig_output_adder\(5),
	datad => \map_mux|ALT_INV_Mux3~0_combout\,
	cin => \map_adder|Ai|_~13\,
	sharein => \map_adder|Ai|_~14\,
	sumout => \map_adder|Ai|s\(5),
	cout => \map_adder|Ai|_~16\,
	shareout => \map_adder|Ai|_~17\);

-- Location: LABCELL_X80_Y1_N18
\map_adder|Ai|s[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(6) = SUM(( !\map_mux|Mux2~0_combout\ $ (!\map_regC|sig_output_adder\(6)) ) + ( \map_adder|Ai|_~17\ ) + ( \map_adder|Ai|_~16\ ))
-- \map_adder|Ai|_~19\ = CARRY(( !\map_mux|Mux2~0_combout\ $ (!\map_regC|sig_output_adder\(6)) ) + ( \map_adder|Ai|_~17\ ) + ( \map_adder|Ai|_~16\ ))
-- \map_adder|Ai|_~20\ = SHARE((\map_mux|Mux2~0_combout\ & \map_regC|sig_output_adder\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \map_mux|ALT_INV_Mux2~0_combout\,
	datad => \map_regC|ALT_INV_sig_output_adder\(6),
	cin => \map_adder|Ai|_~16\,
	sharein => \map_adder|Ai|_~17\,
	sumout => \map_adder|Ai|s\(6),
	cout => \map_adder|Ai|_~19\,
	shareout => \map_adder|Ai|_~20\);

-- Location: LABCELL_X81_Y1_N48
\map_regC|sig_output_adder~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~7_combout\ = ( \map_adder|Ai|s\(6) & ( (\map_fsm|state.add_regs~q\) # (\map_regC|sig_output_adder\(8)) ) ) # ( !\map_adder|Ai|s\(6) & ( (\map_regC|sig_output_adder\(8) & !\map_fsm|state.add_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regC|ALT_INV_sig_output_adder\(8),
	datad => \map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(6),
	combout => \map_regC|sig_output_adder~7_combout\);

-- Location: FF_X81_Y1_N50
\map_regC|sig_output_adder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~7_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(6));

-- Location: LABCELL_X80_Y1_N21
\map_adder|Ai|s[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(7) = SUM(( !\map_mux|Mux1~0_combout\ $ (!\map_regC|sig_output_adder\(7)) ) + ( \map_adder|Ai|_~20\ ) + ( \map_adder|Ai|_~19\ ))
-- \map_adder|Ai|_~22\ = CARRY(( !\map_mux|Mux1~0_combout\ $ (!\map_regC|sig_output_adder\(7)) ) + ( \map_adder|Ai|_~20\ ) + ( \map_adder|Ai|_~19\ ))
-- \map_adder|Ai|_~23\ = SHARE((\map_mux|Mux1~0_combout\ & \map_regC|sig_output_adder\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \map_mux|ALT_INV_Mux1~0_combout\,
	datac => \map_regC|ALT_INV_sig_output_adder\(7),
	cin => \map_adder|Ai|_~19\,
	sharein => \map_adder|Ai|_~20\,
	sumout => \map_adder|Ai|s\(7),
	cout => \map_adder|Ai|_~22\,
	shareout => \map_adder|Ai|_~23\);

-- Location: LABCELL_X80_Y1_N24
\map_adder|Ai|s[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_adder|Ai|s\(8) = SUM(( !\map_mux|Mux0~0_combout\ $ (!\map_regC|sig_output_adder\(8)) ) + ( \map_adder|Ai|_~23\ ) + ( \map_adder|Ai|_~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \map_mux|ALT_INV_Mux0~0_combout\,
	datad => \map_regC|ALT_INV_sig_output_adder\(8),
	cin => \map_adder|Ai|_~22\,
	sharein => \map_adder|Ai|_~23\,
	sumout => \map_adder|Ai|s\(8));

-- Location: LABCELL_X81_Y1_N42
\map_regC|sig_output_adder~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~9_combout\ = ( \map_adder|Ai|s\(8) & ( (\map_regC|sig_output_adder\(8)) # (\map_fsm|state.add_regs~q\) ) ) # ( !\map_adder|Ai|s\(8) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.add_regs~q\,
	datad => \map_regC|ALT_INV_sig_output_adder\(8),
	dataf => \map_adder|Ai|ALT_INV_s\(8),
	combout => \map_regC|sig_output_adder~9_combout\);

-- Location: FF_X81_Y1_N44
\map_regC|sig_output_adder[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~9_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(8));

-- Location: LABCELL_X81_Y1_N51
\map_regC|sig_output_adder~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~8_combout\ = ( \map_adder|Ai|s\(7) & ( (\map_fsm|state.add_regs~q\) # (\map_regC|sig_output_adder\(8)) ) ) # ( !\map_adder|Ai|s\(7) & ( (\map_regC|sig_output_adder\(8) & !\map_fsm|state.add_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_regC|ALT_INV_sig_output_adder\(8),
	datac => \map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(7),
	combout => \map_regC|sig_output_adder~8_combout\);

-- Location: FF_X81_Y1_N53
\map_regC|sig_output_adder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~8_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(7));

-- Location: LABCELL_X81_Y1_N54
\map_regC|sig_output_adder~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~6_combout\ = ( \map_adder|Ai|s\(5) & ( (\map_regC|sig_output_adder\(7)) # (\map_fsm|state.add_regs~q\) ) ) # ( !\map_adder|Ai|s\(5) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.add_regs~q\,
	datac => \map_regC|ALT_INV_sig_output_adder\(7),
	dataf => \map_adder|Ai|ALT_INV_s\(5),
	combout => \map_regC|sig_output_adder~6_combout\);

-- Location: FF_X81_Y1_N56
\map_regC|sig_output_adder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~6_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(5));

-- Location: LABCELL_X81_Y1_N57
\map_regC|sig_output_adder~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~4_combout\ = ( \map_adder|Ai|s\(3) & ( (\map_regC|sig_output_adder\(5)) # (\map_fsm|state.add_regs~q\) ) ) # ( !\map_adder|Ai|s\(3) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_state.add_regs~q\,
	datad => \map_regC|ALT_INV_sig_output_adder\(5),
	dataf => \map_adder|Ai|ALT_INV_s\(3),
	combout => \map_regC|sig_output_adder~4_combout\);

-- Location: FF_X81_Y1_N59
\map_regC|sig_output_adder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~4_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(3));

-- Location: LABCELL_X81_Y1_N9
\map_regC|sig_output_adder~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~2_combout\ = ( \map_fsm|state.load_regs~q\ & ( \map_adder|Ai|s\(1) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(3)) ) ) ) # ( !\map_fsm|state.load_regs~q\ & ( \map_adder|Ai|s\(1) & ( 
-- (\map_regC|sig_output_adder\(3)) # (\map_fsm|state.add_regs~q\) ) ) ) # ( \map_fsm|state.load_regs~q\ & ( !\map_adder|Ai|s\(1) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(3)) ) ) ) # ( !\map_fsm|state.load_regs~q\ & ( 
-- !\map_adder|Ai|s\(1) & ( (!\map_fsm|state.add_regs~q\ & \map_regC|sig_output_adder\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.add_regs~q\,
	datac => \map_regC|ALT_INV_sig_output_adder\(3),
	datae => \map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(1),
	combout => \map_regC|sig_output_adder~2_combout\);

-- Location: FF_X81_Y1_N11
\map_regC|sig_output_adder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~2_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(1));

-- Location: LABCELL_X81_Y1_N30
\map_2_1_mux|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_2_1_mux|output[1]~1_combout\ = ( \map_adder|Ai|s\(1) & ( !\map_fsm|state.load_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(1),
	combout => \map_2_1_mux|output[1]~1_combout\);

-- Location: FF_X81_Y1_N31
\map_regC|sig_out_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_2_1_mux|output[1]~1_combout\,
	ena => \map_fsm|state.add_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_out_B\(1));

-- Location: FF_X78_Y1_N41
\map_regB|internal_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[8]~feeder_combout\,
	asdata => \map_regC|sig_out_B\(1),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(8));

-- Location: FF_X78_Y1_N38
\map_regB|internal_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[6]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(8),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(6));

-- Location: FF_X78_Y1_N47
\map_regB|internal_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[4]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(6),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(4));

-- Location: FF_X78_Y1_N50
\map_regB|internal_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[2]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(4),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(2));

-- Location: LABCELL_X79_Y1_N39
\map_fsm|sel_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_fsm|sel_out\(2) = ( \map_regB|internal_buffer\(2) & ( (!\map_fsm|sel_out~0_combout\) # (\map_fsm|sel_out\(2)) ) ) # ( !\map_regB|internal_buffer\(2) & ( (\map_fsm|sel_out\(2) & \map_fsm|sel_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_fsm|ALT_INV_sel_out\(2),
	datad => \map_fsm|ALT_INV_sel_out~0_combout\,
	dataf => \map_regB|ALT_INV_internal_buffer\(2),
	combout => \map_fsm|sel_out\(2));

-- Location: LABCELL_X79_Y1_N48
\map_mux|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_mux|Mux6~0_combout\ = ( !\map_fsm|sel_out\(2) & ( (!\map_fsm|sel_out\(1) & (\map_regA|pos1\(2) & (((\map_fsm|sel_out\(0)))))) # (\map_fsm|sel_out\(1) & (((!\map_fsm|sel_out\(0) & (\map_regA|pos1\(2))) # (\map_fsm|sel_out\(0) & 
-- ((\map_regA|pos1\(1))))))) ) ) # ( \map_fsm|sel_out\(2) & ( ((!\map_fsm|sel_out\(1) & ((!\map_fsm|sel_out\(0) & (\map_regA|neg1\(1))) # (\map_fsm|sel_out\(0) & ((\map_regA|neg1\(2)))))) # (\map_fsm|sel_out\(1) & (((\map_regA|neg1\(2) & 
-- !\map_fsm|sel_out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011000011111101000111010001110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_regA|ALT_INV_pos1\(2),
	datab => \map_fsm|ALT_INV_sel_out\(1),
	datac => \map_regA|ALT_INV_neg1\(1),
	datad => \map_regA|ALT_INV_neg1\(2),
	datae => \map_fsm|ALT_INV_sel_out\(2),
	dataf => \map_fsm|ALT_INV_sel_out\(0),
	datag => \map_regA|ALT_INV_pos1\(1),
	combout => \map_mux|Mux6~0_combout\);

-- Location: LABCELL_X81_Y1_N27
\map_regC|sig_output_adder~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~3_combout\ = ( \map_regC|sig_output_adder\(4) & ( (!\map_fsm|state.add_regs~q\) # (\map_adder|Ai|s\(2)) ) ) # ( !\map_regC|sig_output_adder\(4) & ( (\map_adder|Ai|s\(2) & \map_fsm|state.add_regs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \map_adder|Ai|ALT_INV_s\(2),
	datac => \map_fsm|ALT_INV_state.add_regs~q\,
	dataf => \map_regC|ALT_INV_sig_output_adder\(4),
	combout => \map_regC|sig_output_adder~3_combout\);

-- Location: FF_X81_Y1_N29
\map_regC|sig_output_adder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~3_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(2));

-- Location: LABCELL_X81_Y1_N0
\map_regC|sig_output_adder~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_regC|sig_output_adder~0_combout\ = ( \map_fsm|state.load_regs~q\ & ( \map_adder|Ai|s\(0) & ( (\map_regC|sig_output_adder\(2) & !\map_fsm|state.add_regs~q\) ) ) ) # ( !\map_fsm|state.load_regs~q\ & ( \map_adder|Ai|s\(0) & ( 
-- (\map_fsm|state.add_regs~q\) # (\map_regC|sig_output_adder\(2)) ) ) ) # ( \map_fsm|state.load_regs~q\ & ( !\map_adder|Ai|s\(0) & ( (\map_regC|sig_output_adder\(2) & !\map_fsm|state.add_regs~q\) ) ) ) # ( !\map_fsm|state.load_regs~q\ & ( 
-- !\map_adder|Ai|s\(0) & ( (\map_regC|sig_output_adder\(2) & !\map_fsm|state.add_regs~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \map_regC|ALT_INV_sig_output_adder\(2),
	datad => \map_fsm|ALT_INV_state.add_regs~q\,
	datae => \map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(0),
	combout => \map_regC|sig_output_adder~0_combout\);

-- Location: FF_X81_Y1_N2
\map_regC|sig_output_adder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regC|sig_output_adder~0_combout\,
	sclr => \map_fsm|state.load_regs~q\,
	ena => \map_regC|sig_output_adder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_output_adder\(0));

-- Location: LABCELL_X81_Y1_N33
\map_2_1_mux|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \map_2_1_mux|output[0]~0_combout\ = ( \map_adder|Ai|s\(0) & ( !\map_fsm|state.load_regs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \map_fsm|ALT_INV_state.load_regs~q\,
	dataf => \map_adder|Ai|ALT_INV_s\(0),
	combout => \map_2_1_mux|output[0]~0_combout\);

-- Location: FF_X81_Y1_N34
\map_regC|sig_out_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_2_1_mux|output[0]~0_combout\,
	ena => \map_fsm|state.add_regs~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regC|sig_out_B\(0));

-- Location: FF_X78_Y1_N17
\map_regB|internal_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[7]~feeder_combout\,
	asdata => \map_regC|sig_out_B\(0),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(7));

-- Location: FF_X78_Y1_N14
\map_regB|internal_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[5]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(7),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(5));

-- Location: FF_X78_Y1_N32
\map_regB|internal_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[3]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(5),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(3));

-- Location: FF_X78_Y1_N11
\map_regB|internal_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \map_regB|internal_buffer[1]~feeder_combout\,
	asdata => \map_regB|internal_buffer\(3),
	sload => \map_fsm|ALT_INV_state.load_regs~q\,
	ena => \map_regB|internal_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_regB|internal_buffer\(1));

-- Location: LABCELL_X17_Y36_N3
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


