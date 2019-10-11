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

-- DATE "10/11/2019 16:21:29"

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

ENTITY 	FSM IS
    PORT (
	ivalid : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	input : IN std_logic_vector(2 DOWNTO 0);
	output : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END FSM;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ivalid	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ivalid : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_input : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \ivalid~input_o\ : std_logic;
SIGNAL \state.alt10k~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state.alt10k~8_combout\ : std_logic;
SIGNAL \state.alt10k~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \state.alt10k~3_combout\ : std_logic;
SIGNAL \state.alt10k~1_combout\ : std_logic;
SIGNAL \state.alt10k~2_combout\ : std_logic;
SIGNAL \state.alt10k~5_combout\ : std_logic;
SIGNAL \state.alt10k~6_combout\ : std_logic;
SIGNAL \state.alt10k~7_combout\ : std_logic;
SIGNAL \state.alt10k~9_combout\ : std_logic;
SIGNAL \state.alt10k~q\ : std_logic;
SIGNAL \state.alt20k~0_combout\ : std_logic;
SIGNAL \state.alt20k~q\ : std_logic;
SIGNAL \state.alt10k~10_combout\ : std_logic;
SIGNAL \state.alt25k~0_combout\ : std_logic;
SIGNAL \state.alt25k~1_combout\ : std_logic;
SIGNAL \state.alt25k~2_combout\ : std_logic;
SIGNAL \state.alt25k~3_combout\ : std_logic;
SIGNAL \state.alt25k~q\ : std_logic;
SIGNAL \state.smooth1~0_combout\ : std_logic;
SIGNAL \state.smooth1~q\ : std_logic;
SIGNAL \state.smooth2~0_combout\ : std_logic;
SIGNAL \state.smooth2~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.smooth3~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.smooth4~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.smooth5~q\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \output[1]~0_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ivalid~input_o\ : std_logic;
SIGNAL \ALT_INV_state.alt25k~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt25k~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt25k~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~8_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~7_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~5_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~4_combout\ : std_logic;
SIGNAL \ALT_INV_state.smooth1~q\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~3_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt25k~q\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.smooth3~q\ : std_logic;
SIGNAL \ALT_INV_state.smooth2~q\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.alt20k~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.smooth4~q\ : std_logic;
SIGNAL \ALT_INV_state.alt10k~q\ : std_logic;
SIGNAL \ALT_INV_state.smooth5~q\ : std_logic;

BEGIN

ww_ivalid <= ivalid;
ww_clk <= clk;
ww_rst <= rst;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_ivalid~input_o\ <= NOT \ivalid~input_o\;
\ALT_INV_state.alt25k~2_combout\ <= NOT \state.alt25k~2_combout\;
\ALT_INV_state.alt25k~1_combout\ <= NOT \state.alt25k~1_combout\;
\ALT_INV_state.alt25k~0_combout\ <= NOT \state.alt25k~0_combout\;
\ALT_INV_state.alt10k~10_combout\ <= NOT \state.alt10k~10_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_state.alt10k~8_combout\ <= NOT \state.alt10k~8_combout\;
\ALT_INV_state.alt10k~7_combout\ <= NOT \state.alt10k~7_combout\;
\ALT_INV_state.alt10k~6_combout\ <= NOT \state.alt10k~6_combout\;
\ALT_INV_state.alt10k~5_combout\ <= NOT \state.alt10k~5_combout\;
\ALT_INV_state.alt10k~4_combout\ <= NOT \state.alt10k~4_combout\;
\ALT_INV_state.smooth1~q\ <= NOT \state.smooth1~q\;
\ALT_INV_state.alt10k~3_combout\ <= NOT \state.alt10k~3_combout\;
\ALT_INV_state.alt25k~q\ <= NOT \state.alt25k~q\;
\ALT_INV_state.alt10k~2_combout\ <= NOT \state.alt10k~2_combout\;
\ALT_INV_state.smooth3~q\ <= NOT \state.smooth3~q\;
\ALT_INV_state.smooth2~q\ <= NOT \state.smooth2~q\;
\ALT_INV_state.alt10k~1_combout\ <= NOT \state.alt10k~1_combout\;
\ALT_INV_state.alt10k~0_combout\ <= NOT \state.alt10k~0_combout\;
\ALT_INV_state.alt20k~q\ <= NOT \state.alt20k~q\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_state.smooth4~q\ <= NOT \state.smooth4~q\;
\ALT_INV_state.alt10k~q\ <= NOT \state.alt10k~q\;
\ALT_INV_state.smooth5~q\ <= NOT \state.smooth5~q\;

-- Location: IOOBUF_X18_Y0_N76
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X14_Y0_N19
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_output(1));

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

-- Location: IOIBUF_X16_Y0_N35
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\ivalid~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ivalid,
	o => \ivalid~input_o\);

-- Location: LABCELL_X17_Y1_N36
\state.alt10k~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~4_combout\ = ( \state.smooth1~q\ & ( (\ivalid~input_o\ & ((!\input[0]~input_o\ & ((!\input[2]~input_o\) # (!\input[1]~input_o\))) # (\input[0]~input_o\ & (!\input[2]~input_o\ & !\input[1]~input_o\)))) ) ) # ( !\state.smooth1~q\ & ( 
-- \ivalid~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000010000000111000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_ivalid~input_o\,
	datad => \ALT_INV_input[1]~input_o\,
	dataf => \ALT_INV_state.smooth1~q\,
	combout => \state.alt10k~4_combout\);

-- Location: LABCELL_X16_Y1_N39
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\input[1]~input_o\ & ( (!\input[0]~input_o\ & \input[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datae => \ALT_INV_input[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X18_Y0_N58
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X16_Y1_N12
\state.alt10k~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~8_combout\ = ( \input[1]~input_o\ & ( \state.smooth1~q\ & ( (!\input[0]~input_o\ & !\input[2]~input_o\) ) ) ) # ( !\input[1]~input_o\ & ( \state.smooth1~q\ & ( !\input[0]~input_o\ $ (!\input[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datae => \ALT_INV_input[1]~input_o\,
	dataf => \ALT_INV_state.smooth1~q\,
	combout => \state.alt10k~8_combout\);

-- Location: LABCELL_X17_Y1_N51
\state.alt10k~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~0_combout\ = ( \state.alt20k~q\ & ( ((\input[2]~input_o\) # (\input[1]~input_o\)) # (\input[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_state.alt20k~q\,
	combout => \state.alt10k~0_combout\);

-- Location: LABCELL_X16_Y1_N24
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\input[0]~input_o\ & ( !\input[2]~input_o\ & ( \input[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[0]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X17_Y1_N18
\state.alt10k~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~3_combout\ = ( \state.alt25k~q\ & ( \state.alt10k~q\ & ( (!\input[0]~input_o\ $ (\input[2]~input_o\)) # (\input[1]~input_o\) ) ) ) # ( \state.alt25k~q\ & ( !\state.alt10k~q\ & ( ((!\input[0]~input_o\ & ((!\input[2]~input_o\))) # 
-- (\input[0]~input_o\ & ((!\rst~input_o\) # (\input[2]~input_o\)))) # (\input[1]~input_o\) ) ) ) # ( !\state.alt25k~q\ & ( !\state.alt10k~q\ & ( (!\rst~input_o\ & (((!\input[2]~input_o\) # (\input[1]~input_o\)) # (\input[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011001100111001011111111100000000000000001010010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datad => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_state.alt25k~q\,
	dataf => \ALT_INV_state.alt10k~q\,
	combout => \state.alt10k~3_combout\);

-- Location: LABCELL_X17_Y1_N42
\state.alt10k~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~1_combout\ = ( \input[0]~input_o\ & ( (!\input[1]~input_o\ & !\input[2]~input_o\) ) ) # ( !\input[0]~input_o\ & ( !\input[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_input[0]~input_o\,
	combout => \state.alt10k~1_combout\);

-- Location: LABCELL_X17_Y1_N12
\state.alt10k~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~2_combout\ = ( !\state.smooth2~q\ & ( (!\state.smooth3~q\ & (!\state.smooth4~q\ & !\state.smooth5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.smooth3~q\,
	datac => \ALT_INV_state.smooth4~q\,
	datad => \ALT_INV_state.smooth5~q\,
	dataf => \ALT_INV_state.smooth2~q\,
	combout => \state.alt10k~2_combout\);

-- Location: LABCELL_X17_Y1_N0
\state.alt10k~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~5_combout\ = ( \state.alt10k~4_combout\ & ( \state.alt10k~2_combout\ & ( (!\state.alt10k~3_combout\ & ((!\state.alt10k~0_combout\) # (\Equal2~0_combout\))) ) ) ) # ( \state.alt10k~4_combout\ & ( !\state.alt10k~2_combout\ & ( 
-- (!\state.alt10k~3_combout\ & (((!\state.alt10k~0_combout\ & \state.alt10k~1_combout\)) # (\Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001011000000000000000000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.alt10k~0_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_state.alt10k~3_combout\,
	datad => \ALT_INV_state.alt10k~1_combout\,
	datae => \ALT_INV_state.alt10k~4_combout\,
	dataf => \ALT_INV_state.alt10k~2_combout\,
	combout => \state.alt10k~5_combout\);

-- Location: LABCELL_X16_Y1_N42
\state.alt10k~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~6_combout\ = ( \state.smooth4~q\ & ( \state.alt10k~q\ ) ) # ( !\state.smooth4~q\ & ( (\state.alt10k~q\ & (((\state.smooth5~q\) # (\state.smooth3~q\)) # (\state.smooth2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.smooth2~q\,
	datab => \ALT_INV_state.alt10k~q\,
	datac => \ALT_INV_state.smooth3~q\,
	datad => \ALT_INV_state.smooth5~q\,
	dataf => \ALT_INV_state.smooth4~q\,
	combout => \state.alt10k~6_combout\);

-- Location: LABCELL_X16_Y1_N6
\state.alt10k~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~7_combout\ = ( \input[0]~input_o\ & ( \state.alt10k~6_combout\ & ( !\state.smooth1~q\ ) ) ) # ( !\input[0]~input_o\ & ( \state.alt10k~6_combout\ & ( (!\state.smooth1~q\ & ((\input[2]~input_o\) # (\input[1]~input_o\))) ) ) ) # ( 
-- \input[0]~input_o\ & ( !\state.alt10k~6_combout\ & ( !\state.smooth1~q\ ) ) ) # ( !\input[0]~input_o\ & ( !\state.alt10k~6_combout\ & ( (!\state.smooth1~q\ & (((!\state.alt20k~q\) # (\input[2]~input_o\)) # (\input[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111100001111000001110000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_state.smooth1~q\,
	datad => \ALT_INV_state.alt20k~q\,
	datae => \ALT_INV_input[0]~input_o\,
	dataf => \ALT_INV_state.alt10k~6_combout\,
	combout => \state.alt10k~7_combout\);

-- Location: LABCELL_X17_Y1_N24
\state.alt10k~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~9_combout\ = ( \state.alt10k~7_combout\ & ( ((\state.alt10k~5_combout\ & ((!\rst~input_o\) # (\state.alt10k~8_combout\)))) # (\state.alt10k~q\) ) ) # ( !\state.alt10k~7_combout\ & ( (!\state.alt10k~5_combout\ & ((\state.alt10k~q\))) # 
-- (\state.alt10k~5_combout\ & (\state.alt10k~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001101111111110000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.alt10k~8_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_state.alt10k~5_combout\,
	datad => \ALT_INV_state.alt10k~q\,
	dataf => \ALT_INV_state.alt10k~7_combout\,
	combout => \state.alt10k~9_combout\);

-- Location: FF_X17_Y1_N26
\state.alt10k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.alt10k~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.alt10k~q\);

-- Location: LABCELL_X17_Y1_N30
\state.alt20k~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt20k~0_combout\ = ( \state.alt25k~q\ & ( \state.alt10k~2_combout\ & ( \Equal0~0_combout\ ) ) ) # ( !\state.alt25k~q\ & ( \state.alt10k~2_combout\ & ( (!\state.smooth1~q\ & (((!\rst~input_o\ & !\state.alt10k~q\)))) # (\state.smooth1~q\ & 
-- (\Equal0~0_combout\)) ) ) ) # ( \state.alt25k~q\ & ( !\state.alt10k~2_combout\ & ( \Equal0~0_combout\ ) ) ) # ( !\state.alt25k~q\ & ( !\state.alt10k~2_combout\ & ( (!\state.alt10k~q\ & ((!\state.smooth1~q\ & ((!\rst~input_o\))) # (\state.smooth1~q\ & 
-- (\Equal0~0_combout\)))) # (\state.alt10k~q\ & (\Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010101010101010101010101010111000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_state.alt10k~q\,
	datad => \ALT_INV_state.smooth1~q\,
	datae => \ALT_INV_state.alt25k~q\,
	dataf => \ALT_INV_state.alt10k~2_combout\,
	combout => \state.alt20k~0_combout\);

-- Location: FF_X17_Y1_N32
\state.alt20k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.alt20k~0_combout\,
	ena => \state.alt10k~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.alt20k~q\);

-- Location: LABCELL_X17_Y1_N45
\state.alt10k~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt10k~10_combout\ = ( \state.alt10k~2_combout\ & ( (\state.alt20k~q\ & ((\input[2]~input_o\) # (\input[0]~input_o\))) ) ) # ( !\state.alt10k~2_combout\ & ( (!\input[0]~input_o\ & (\input[2]~input_o\ & ((\state.alt20k~q\) # (\input[1]~input_o\)))) 
-- # (\input[0]~input_o\ & (((\state.alt20k~q\) # (\input[2]~input_o\)) # (\input[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101011111000101110101111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datad => \ALT_INV_state.alt20k~q\,
	dataf => \ALT_INV_state.alt10k~2_combout\,
	combout => \state.alt10k~10_combout\);

-- Location: LABCELL_X17_Y1_N15
\state.alt25k~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt25k~0_combout\ = ( \state.smooth1~q\ & ( (!\input[0]~input_o\ & (\input[1]~input_o\ & !\input[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datad => \ALT_INV_input[2]~input_o\,
	dataf => \ALT_INV_state.smooth1~q\,
	combout => \state.alt25k~0_combout\);

-- Location: LABCELL_X17_Y1_N27
\state.alt25k~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt25k~1_combout\ = ( \state.alt10k~q\ & ( (!\state.smooth1~q\ & !\state.alt25k~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.smooth1~q\,
	datad => \ALT_INV_state.alt25k~q\,
	dataf => \ALT_INV_state.alt10k~q\,
	combout => \state.alt25k~1_combout\);

-- Location: LABCELL_X17_Y1_N6
\state.alt25k~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt25k~2_combout\ = ( \state.alt25k~1_combout\ & ( \state.alt10k~2_combout\ & ( ((!\state.alt20k~q\) # ((\input[2]~input_o\) # (\input[0]~input_o\))) # (\input[1]~input_o\) ) ) ) # ( \state.alt25k~1_combout\ & ( !\state.alt10k~2_combout\ & ( 
-- ((\input[0]~input_o\ & \input[2]~input_o\)) # (\input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101111100000000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datab => \ALT_INV_state.alt20k~q\,
	datac => \ALT_INV_input[0]~input_o\,
	datad => \ALT_INV_input[2]~input_o\,
	datae => \ALT_INV_state.alt25k~1_combout\,
	dataf => \ALT_INV_state.alt10k~2_combout\,
	combout => \state.alt25k~2_combout\);

-- Location: LABCELL_X17_Y1_N54
\state.alt25k~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.alt25k~3_combout\ = ( \state.alt25k~q\ & ( \state.alt10k~3_combout\ ) ) # ( \state.alt25k~q\ & ( !\state.alt10k~3_combout\ & ( (!\state.alt10k~4_combout\) # (((\state.alt25k~2_combout\) # (\state.alt25k~0_combout\)) # (\state.alt10k~10_combout\)) ) 
-- ) ) # ( !\state.alt25k~q\ & ( !\state.alt10k~3_combout\ & ( (\state.alt10k~4_combout\ & (!\state.alt10k~10_combout\ & ((\state.alt25k~2_combout\) # (\state.alt25k~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100101111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.alt10k~4_combout\,
	datab => \ALT_INV_state.alt10k~10_combout\,
	datac => \ALT_INV_state.alt25k~0_combout\,
	datad => \ALT_INV_state.alt25k~2_combout\,
	datae => \ALT_INV_state.alt25k~q\,
	dataf => \ALT_INV_state.alt10k~3_combout\,
	combout => \state.alt25k~3_combout\);

-- Location: FF_X17_Y1_N56
\state.alt25k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.alt25k~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.alt25k~q\);

-- Location: LABCELL_X16_Y1_N33
\state.smooth1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.smooth1~0_combout\ = ( \state.alt25k~q\ & ( \input[1]~input_o\ ) ) # ( \state.alt25k~q\ & ( !\input[1]~input_o\ & ( (!\input[2]~input_o\) # (\input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_state.alt25k~q\,
	dataf => \ALT_INV_input[1]~input_o\,
	combout => \state.smooth1~0_combout\);

-- Location: FF_X17_Y1_N44
\state.smooth1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.smooth1~0_combout\,
	sload => VCC,
	ena => \state.alt10k~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.smooth1~q\);

-- Location: LABCELL_X16_Y1_N48
\state.smooth2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.smooth2~0_combout\ = ( !\input[1]~input_o\ & ( \state.smooth1~q\ & ( (\input[0]~input_o\ & !\input[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[0]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datae => \ALT_INV_input[1]~input_o\,
	dataf => \ALT_INV_state.smooth1~q\,
	combout => \state.smooth2~0_combout\);

-- Location: FF_X17_Y1_N11
\state.smooth2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.smooth2~0_combout\,
	sload => VCC,
	ena => \state.alt10k~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.smooth2~q\);

-- Location: LABCELL_X17_Y1_N39
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.smooth2~q\ & ( (!\input[0]~input_o\ & (\input[2]~input_o\ & (\input[1]~input_o\ & \state.smooth3~q\))) # (\input[0]~input_o\ & (((!\input[2]~input_o\ & !\input[1]~input_o\)) # (\state.smooth3~q\))) ) ) # ( 
-- !\state.smooth2~q\ & ( (\state.smooth3~q\ & ((!\input[0]~input_o\ & (\input[2]~input_o\ & \input[1]~input_o\)) # (\input[0]~input_o\ & ((\input[1]~input_o\) # (\input[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011101000000010101110100000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	datad => \ALT_INV_state.smooth3~q\,
	dataf => \ALT_INV_state.smooth2~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X17_Y1_N41
\state.smooth3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	ena => \ivalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.smooth3~q\);

-- Location: LABCELL_X17_Y1_N48
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \state.smooth3~q\ & ( (!\input[0]~input_o\ & (\input[1]~input_o\ & (\input[2]~input_o\ & \state.smooth4~q\))) # (\input[0]~input_o\ & (((!\input[1]~input_o\ & !\input[2]~input_o\)) # (\state.smooth4~q\))) ) ) # ( 
-- !\state.smooth3~q\ & ( (\state.smooth4~q\ & ((!\input[0]~input_o\ & (\input[1]~input_o\ & \input[2]~input_o\)) # (\input[0]~input_o\ & ((\input[2]~input_o\) # (\input[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011101000000010101110100000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datab => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[2]~input_o\,
	datad => \ALT_INV_state.smooth4~q\,
	dataf => \ALT_INV_state.smooth3~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X17_Y1_N50
\state.smooth4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	ena => \ivalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.smooth4~q\);

-- Location: LABCELL_X16_Y1_N57
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.smooth5~q\ & ( \input[1]~input_o\ & ( (\input[0]~input_o\) # (\input[2]~input_o\) ) ) ) # ( \state.smooth5~q\ & ( !\input[1]~input_o\ & ( \input[0]~input_o\ ) ) ) # ( !\state.smooth5~q\ & ( !\input[1]~input_o\ & ( 
-- (!\input[2]~input_o\ & (\state.smooth4~q\ & \input[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000011110000111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[2]~input_o\,
	datab => \ALT_INV_state.smooth4~q\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_state.smooth5~q\,
	dataf => \ALT_INV_input[1]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: FF_X16_Y1_N59
\state.smooth5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	ena => \ivalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.smooth5~q\);

-- Location: FF_X17_Y1_N4
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.smooth5~q\,
	sload => VCC,
	ena => \ivalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LABCELL_X16_Y1_N45
\output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[1]~0_combout\ = ( !\state.alt10k~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.alt10k~q\,
	combout => \output[1]~0_combout\);

-- Location: FF_X16_Y1_N46
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output[1]~0_combout\,
	ena => \ivalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LABCELL_X12_Y40_N0
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


