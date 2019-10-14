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

-- DATE "10/14/2019 17:37:19"

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

ENTITY 	lab2_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END lab2_board;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_board IS
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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \mmmap|Selector0~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \mmmap|state.gnd~q\ : std_logic;
SIGNAL \mmmap|Selector4~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth2~q\ : std_logic;
SIGNAL \mmmap|Selector5~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth3~q\ : std_logic;
SIGNAL \mmmap|Selector6~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth4~q\ : std_logic;
SIGNAL \mmmap|Selector7~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth5~q\ : std_logic;
SIGNAL \mmmap|Selector1~0_combout\ : std_logic;
SIGNAL \mmmap|Selector1~1_combout\ : std_logic;
SIGNAL \mmmap|state.alt10k~q\ : std_logic;
SIGNAL \mmmap|Selector2~0_combout\ : std_logic;
SIGNAL \mmmap|state.alt25k~q\ : std_logic;
SIGNAL \mmmap|Selector3~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth1~q\ : std_logic;
SIGNAL \mmmap|WideOr4~combout\ : std_logic;
SIGNAL \mmmap|WideOr2~0_combout\ : std_logic;
SIGNAL \mmmap|WideOr2~combout\ : std_logic;
SIGNAL \mmmap|WideOr1~combout\ : std_logic;
SIGNAL \mmmap|WideOr0~combout\ : std_logic;
SIGNAL \mmmap|WideOr5~combout\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \mmmap|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth3~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.gnd~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth2~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.alt25k~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth5~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth4~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth1~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.alt10k~q\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\mmmap|ALT_INV_Selector1~0_combout\ <= NOT \mmmap|Selector1~0_combout\;
\mmmap|ALT_INV_state.smooth3~q\ <= NOT \mmmap|state.smooth3~q\;
\mmmap|ALT_INV_WideOr5~combout\ <= NOT \mmmap|WideOr5~combout\;
\mmmap|ALT_INV_WideOr1~combout\ <= NOT \mmmap|WideOr1~combout\;
\mmmap|ALT_INV_WideOr2~combout\ <= NOT \mmmap|WideOr2~combout\;
\mmmap|ALT_INV_state.gnd~q\ <= NOT \mmmap|state.gnd~q\;
\mmmap|ALT_INV_WideOr2~0_combout\ <= NOT \mmmap|WideOr2~0_combout\;
\mmmap|ALT_INV_state.smooth2~q\ <= NOT \mmmap|state.smooth2~q\;
\mmmap|ALT_INV_state.alt25k~q\ <= NOT \mmmap|state.alt25k~q\;
\mmmap|ALT_INV_state.smooth5~q\ <= NOT \mmmap|state.smooth5~q\;
\mmmap|ALT_INV_state.smooth4~q\ <= NOT \mmmap|state.smooth4~q\;
\mmmap|ALT_INV_state.smooth1~q\ <= NOT \mmmap|state.smooth1~q\;
\mmmap|ALT_INV_state.alt10k~q\ <= NOT \mmmap|state.alt10k~q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|state.smooth5~q\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \mmmap|ALT_INV_state.gnd~q\,
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
	i => \mmmap|ALT_INV_state.smooth5~q\,
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

-- Location: LABCELL_X88_Y4_N9
\mmmap|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector0~0_combout\ = ( \mmmap|state.alt10k~q\ & ( (\mmmap|state.gnd~q\ & (((!\SW[2]~input_o\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\))) ) ) # ( !\mmmap|state.alt10k~q\ & ( ((!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\))) # 
-- (\mmmap|state.gnd~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111111000010001111111100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \mmmap|ALT_INV_state.gnd~q\,
	dataf => \mmmap|ALT_INV_state.alt10k~q\,
	combout => \mmmap|Selector0~0_combout\);

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

-- Location: FF_X88_Y4_N11
\mmmap|state.gnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector0~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.gnd~q\);

-- Location: LABCELL_X88_Y4_N6
\mmmap|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector4~0_combout\ = ( \mmmap|state.smooth1~q\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\mmmap|state.smooth2~q\)))) # (\SW[2]~input_o\ & (((\mmmap|state.smooth2~q\)))) ) ) # ( !\mmmap|state.smooth1~q\ & ( 
-- (\mmmap|state.smooth2~q\ & (((\SW[1]~input_o\ & \SW[0]~input_o\)) # (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \mmmap|ALT_INV_state.smooth2~q\,
	dataf => \mmmap|ALT_INV_state.smooth1~q\,
	combout => \mmmap|Selector4~0_combout\);

-- Location: FF_X88_Y4_N8
\mmmap|state.smooth2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector4~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth2~q\);

-- Location: LABCELL_X88_Y4_N33
\mmmap|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector5~0_combout\ = ( \mmmap|state.smooth2~q\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\mmmap|state.smooth3~q\)))) # (\SW[2]~input_o\ & (((\mmmap|state.smooth3~q\)))) ) ) # ( !\mmmap|state.smooth2~q\ & ( 
-- (\mmmap|state.smooth3~q\ & (((\SW[1]~input_o\ & \SW[0]~input_o\)) # (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \mmmap|ALT_INV_state.smooth3~q\,
	dataf => \mmmap|ALT_INV_state.smooth2~q\,
	combout => \mmmap|Selector5~0_combout\);

-- Location: FF_X88_Y4_N35
\mmmap|state.smooth3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector5~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth3~q\);

-- Location: LABCELL_X88_Y4_N21
\mmmap|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector6~0_combout\ = ( \mmmap|state.smooth4~q\ & ( \mmmap|state.smooth3~q\ & ( (\SW[0]~input_o\) # (\SW[2]~input_o\) ) ) ) # ( !\mmmap|state.smooth4~q\ & ( \mmmap|state.smooth3~q\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & !\SW[1]~input_o\)) ) ) 
-- ) # ( \mmmap|state.smooth4~q\ & ( !\mmmap|state.smooth3~q\ & ( ((\SW[0]~input_o\ & \SW[1]~input_o\)) # (\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101111100001010000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \mmmap|ALT_INV_state.smooth4~q\,
	dataf => \mmmap|ALT_INV_state.smooth3~q\,
	combout => \mmmap|Selector6~0_combout\);

-- Location: FF_X88_Y4_N23
\mmmap|state.smooth4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector6~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth4~q\);

-- Location: LABCELL_X88_Y4_N36
\mmmap|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector7~0_combout\ = ( \SW[1]~input_o\ & ( (\mmmap|state.smooth5~q\ & ((\SW[0]~input_o\) # (\SW[2]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & ((\mmmap|state.smooth5~q\) # (\mmmap|state.smooth4~q\)))) # 
-- (\SW[2]~input_o\ & (((\mmmap|state.smooth5~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001110111000000100111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \mmmap|ALT_INV_state.smooth4~q\,
	datad => \mmmap|ALT_INV_state.smooth5~q\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \mmmap|Selector7~0_combout\);

-- Location: FF_X88_Y4_N38
\mmmap|state.smooth5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector7~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth5~q\);

-- Location: LABCELL_X88_Y4_N27
\mmmap|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~0_combout\ = ( \mmmap|state.smooth5~q\ & ( \mmmap|state.smooth3~q\ ) ) # ( !\mmmap|state.smooth5~q\ & ( \mmmap|state.smooth3~q\ ) ) # ( \mmmap|state.smooth5~q\ & ( !\mmmap|state.smooth3~q\ ) ) # ( !\mmmap|state.smooth5~q\ & ( 
-- !\mmmap|state.smooth3~q\ & ( (\mmmap|state.smooth4~q\) # (\mmmap|state.smooth2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mmmap|ALT_INV_state.smooth2~q\,
	datad => \mmmap|ALT_INV_state.smooth4~q\,
	datae => \mmmap|ALT_INV_state.smooth5~q\,
	dataf => \mmmap|ALT_INV_state.smooth3~q\,
	combout => \mmmap|Selector1~0_combout\);

-- Location: LABCELL_X88_Y4_N48
\mmmap|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~1_combout\ = ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (\mmmap|state.alt10k~q\)) # (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & (((\mmmap|Selector1~0_combout\) # (\mmmap|state.alt25k~q\)))) # (\SW[0]~input_o\ & (\mmmap|state.alt10k~q\)))) ) ) 
-- # ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & ((!\SW[0]~input_o\ & ((!\mmmap|state.gnd~q\) # ((\mmmap|state.alt10k~q\ & \mmmap|Selector1~0_combout\)))) # (\SW[0]~input_o\ & (\mmmap|state.alt10k~q\)))) # (\SW[1]~input_o\ & (\mmmap|state.alt10k~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101010101110100010101010101110111010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|ALT_INV_state.alt10k~q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \mmmap|ALT_INV_state.gnd~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \mmmap|ALT_INV_Selector1~0_combout\,
	datag => \mmmap|ALT_INV_state.alt25k~q\,
	combout => \mmmap|Selector1~1_combout\);

-- Location: FF_X88_Y4_N50
\mmmap|state.alt10k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector1~1_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.alt10k~q\);

-- Location: LABCELL_X88_Y4_N54
\mmmap|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector2~0_combout\ = ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & (((\mmmap|state.smooth1~q\) # (\mmmap|Selector1~0_combout\)) # (\mmmap|state.alt25k~q\)))) # (\SW[2]~input_o\ & (\mmmap|state.alt25k~q\)) ) ) # ( \SW[1]~input_o\ 
-- & ( (!\SW[0]~input_o\ & ((!\SW[2]~input_o\ & (((\mmmap|state.smooth1~q\) # (\mmmap|state.alt10k~q\)))) # (\SW[2]~input_o\ & (\mmmap|state.alt25k~q\)))) # (\SW[0]~input_o\ & (\mmmap|state.alt25k~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100110001010101000111010101010111001100010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|ALT_INV_state.alt25k~q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \mmmap|ALT_INV_state.alt10k~q\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \mmmap|ALT_INV_state.smooth1~q\,
	datag => \mmmap|ALT_INV_Selector1~0_combout\,
	combout => \mmmap|Selector2~0_combout\);

-- Location: FF_X88_Y4_N56
\mmmap|state.alt25k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector2~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.alt25k~q\);

-- Location: LABCELL_X88_Y4_N30
\mmmap|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|Selector3~0_combout\ = ( \mmmap|state.alt25k~q\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\mmmap|state.smooth1~q\)))) # (\SW[2]~input_o\ & (((\mmmap|state.smooth1~q\)))) ) ) # ( !\mmmap|state.alt25k~q\ & ( 
-- (\mmmap|state.smooth1~q\ & (((\SW[1]~input_o\ & \SW[0]~input_o\)) # (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \mmmap|ALT_INV_state.smooth1~q\,
	dataf => \mmmap|ALT_INV_state.alt25k~q\,
	combout => \mmmap|Selector3~0_combout\);

-- Location: FF_X88_Y4_N32
\mmmap|state.smooth1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \mmmap|Selector3~0_combout\,
	clrn => \SW[7]~input_o\,
	ena => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth1~q\);

-- Location: LABCELL_X88_Y4_N39
\mmmap|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr4~combout\ = ( \mmmap|state.alt10k~q\ ) # ( !\mmmap|state.alt10k~q\ & ( (\mmmap|state.smooth4~q\) # (\mmmap|state.smooth1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mmmap|ALT_INV_state.smooth1~q\,
	datad => \mmmap|ALT_INV_state.smooth4~q\,
	dataf => \mmmap|ALT_INV_state.alt10k~q\,
	combout => \mmmap|WideOr4~combout\);

-- Location: LABCELL_X88_Y4_N42
\mmmap|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr2~0_combout\ = ( !\mmmap|state.alt25k~q\ & ( !\mmmap|state.smooth2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|ALT_INV_state.smooth2~q\,
	dataf => \mmmap|ALT_INV_state.alt25k~q\,
	combout => \mmmap|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y4_N12
\mmmap|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr2~combout\ = ( \mmmap|state.smooth2~q\ ) # ( !\mmmap|state.smooth2~q\ & ( (!\mmmap|state.gnd~q\) # (\mmmap|state.alt25k~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|ALT_INV_state.gnd~q\,
	datac => \mmmap|ALT_INV_state.alt25k~q\,
	dataf => \mmmap|ALT_INV_state.smooth2~q\,
	combout => \mmmap|WideOr2~combout\);

-- Location: LABCELL_X88_Y4_N15
\mmmap|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr1~combout\ = (!\mmmap|state.gnd~q\) # ((\mmmap|state.smooth4~q\) # (\mmmap|state.smooth5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|ALT_INV_state.gnd~q\,
	datac => \mmmap|ALT_INV_state.smooth5~q\,
	datad => \mmmap|ALT_INV_state.smooth4~q\,
	combout => \mmmap|WideOr1~combout\);

-- Location: LABCELL_X88_Y4_N0
\mmmap|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr0~combout\ = ( \mmmap|state.smooth1~q\ ) # ( !\mmmap|state.smooth1~q\ & ( (!\mmmap|state.gnd~q\) # (\mmmap|state.alt10k~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|ALT_INV_state.gnd~q\,
	datac => \mmmap|ALT_INV_state.alt10k~q\,
	dataf => \mmmap|ALT_INV_state.smooth1~q\,
	combout => \mmmap|WideOr0~combout\);

-- Location: LABCELL_X88_Y4_N3
\mmmap|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mmmap|WideOr5~combout\ = ( \mmmap|state.alt25k~q\ ) # ( !\mmmap|state.alt25k~q\ & ( (!\mmmap|state.gnd~q\) # (\mmmap|state.alt10k~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|ALT_INV_state.alt10k~q\,
	datab => \mmmap|ALT_INV_state.gnd~q\,
	dataf => \mmmap|ALT_INV_state.alt25k~q\,
	combout => \mmmap|WideOr5~combout\);

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

-- Location: LABCELL_X31_Y32_N3
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


