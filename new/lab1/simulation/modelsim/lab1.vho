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

-- DATE "09/22/2019 17:36:37"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1_board_extra IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END lab1_board_extra;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1_board_extra IS
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
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \dut|segment_out|Mux6~0_combout\ : std_logic;
SIGNAL \dut|select_fib|Selector4~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|Mux2~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|Mux3~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|Mux1~0_combout\ : std_logic;
SIGNAL \dut|select_fib|Selector0~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux5~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux4~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux2~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux1~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux0~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux12~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux11~0_combout\ : std_logic;
SIGNAL \dut|segment_out|Mux10~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \dut|select_fib|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \dut|select_fib|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \dut|segment_out|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dut|segment_out|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \dut|segment_out|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dut|increase_bit|ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\dut|select_fib|ALT_INV_Selector0~0_combout\ <= NOT \dut|select_fib|Selector0~0_combout\;
\dut|select_fib|ALT_INV_Selector4~0_combout\ <= NOT \dut|select_fib|Selector4~0_combout\;
\dut|segment_out|ALT_INV_Mux0~0_combout\ <= NOT \dut|segment_out|Mux0~0_combout\;
\dut|segment_out|ALT_INV_Mux10~0_combout\ <= NOT \dut|segment_out|Mux10~0_combout\;
\dut|segment_out|ALT_INV_Mux12~0_combout\ <= NOT \dut|segment_out|Mux12~0_combout\;
\dut|increase_bit|ALT_INV_Mux1~0_combout\ <= NOT \dut|increase_bit|Mux1~0_combout\;
\dut|increase_bit|ALT_INV_Mux0~0_combout\ <= NOT \dut|increase_bit|Mux0~0_combout\;
\dut|increase_bit|ALT_INV_Mux2~0_combout\ <= NOT \dut|increase_bit|Mux2~0_combout\;
\dut|increase_bit|ALT_INV_Mux3~0_combout\ <= NOT \dut|increase_bit|Mux3~0_combout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|segment_out|Mux6~0_combout\,
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
	i => \dut|segment_out|Mux5~0_combout\,
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
	i => \dut|segment_out|Mux4~0_combout\,
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
	i => \dut|segment_out|Mux6~0_combout\,
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
	i => \dut|segment_out|Mux2~0_combout\,
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
	i => \dut|segment_out|Mux1~0_combout\,
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
	i => \dut|segment_out|ALT_INV_Mux0~0_combout\,
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
	i => \dut|segment_out|ALT_INV_Mux12~0_combout\,
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
	i => \dut|segment_out|Mux11~0_combout\,
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
	i => \dut|segment_out|ALT_INV_Mux10~0_combout\,
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
	i => \dut|segment_out|ALT_INV_Mux12~0_combout\,
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
	i => \dut|segment_out|ALT_INV_Mux12~0_combout\,
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
	i => VCC,
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
	i => \dut|segment_out|ALT_INV_Mux12~0_combout\,
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
	i => \dut|increase_bit|ALT_INV_Mux0~0_combout\,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: LABCELL_X88_Y8_N24
\dut|segment_out|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux6~0_combout\ = ( \SW[8]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[3]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|segment_out|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\dut|select_fib|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|select_fib|Selector4~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[8]~input_o\)))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & ((!\SW[0]~input_o\ & ((!\SW[8]~input_o\) # (\SW[3]~input_o\))) 
-- # (\SW[0]~input_o\ & (!\SW[3]~input_o\)))) # (\SW[1]~input_o\ & (((!\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100001111000111110000111100000100010001000000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \dut|select_fib|Selector4~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\dut|increase_bit|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|increase_bit|Mux2~0_combout\ = ( \SW[8]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[3]~input_o\)) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[3]~input_o\) ) ) ) # ( \SW[8]~input_o\ & ( 
-- !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & !\SW[3]~input_o\) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000001100000011000010100000101000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|increase_bit|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\dut|increase_bit|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|increase_bit|Mux3~0_combout\ = ( \SW[8]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)) ) ) ) # ( \SW[8]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)) # 
-- (\SW[2]~input_o\ & ((\SW[0]~input_o\))) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[0]~input_o\))) # (\SW[2]~input_o\ & ((\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011001111001100000000111100000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|increase_bit|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\dut|increase_bit|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|increase_bit|Mux1~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (!\SW[8]~input_o\ $ (\SW[3]~input_o\)))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[3]~input_o\ & (((!\SW[8]~input_o\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000000100000000000100010000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \dut|increase_bit|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\dut|select_fib|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|select_fib|Selector0~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & (!\SW[8]~input_o\ & !\SW[3]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & (!\SW[8]~input_o\))) # (\SW[0]~input_o\ & 
-- (((\SW[8]~input_o\ & !\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110000000100000111000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|select_fib|Selector0~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\dut|segment_out|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux5~0_combout\ = ( \dut|select_fib|Selector0~0_combout\ & ( (!\dut|select_fib|Selector4~0_combout\) # ((!\dut|increase_bit|Mux2~0_combout\) # ((!\dut|increase_bit|Mux3~0_combout\ & !\dut|increase_bit|Mux1~0_combout\))) ) ) # ( 
-- !\dut|select_fib|Selector0~0_combout\ & ( (!\dut|increase_bit|Mux2~0_combout\ & ((!\dut|increase_bit|Mux3~0_combout\) # (!\dut|select_fib|Selector4~0_combout\ $ (\dut|increase_bit|Mux1~0_combout\)))) # (\dut|increase_bit|Mux2~0_combout\ & 
-- ((!\dut|select_fib|Selector4~0_combout\) # ((!\dut|increase_bit|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111100110111110111110011011111110111011101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|select_fib|ALT_INV_Selector4~0_combout\,
	datab => \dut|increase_bit|ALT_INV_Mux2~0_combout\,
	datac => \dut|increase_bit|ALT_INV_Mux3~0_combout\,
	datad => \dut|increase_bit|ALT_INV_Mux1~0_combout\,
	dataf => \dut|select_fib|ALT_INV_Selector0~0_combout\,
	combout => \dut|segment_out|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N57
\dut|segment_out|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux4~0_combout\ = ( \dut|select_fib|Selector0~0_combout\ & ( (!\dut|select_fib|Selector4~0_combout\) # ((!\dut|increase_bit|Mux2~0_combout\) # (!\dut|increase_bit|Mux3~0_combout\)) ) ) # ( !\dut|select_fib|Selector0~0_combout\ & ( 
-- (!\dut|increase_bit|Mux2~0_combout\ & ((!\dut|increase_bit|Mux3~0_combout\) # ((!\dut|select_fib|Selector4~0_combout\ & !\dut|increase_bit|Mux1~0_combout\)))) # (\dut|increase_bit|Mux2~0_combout\ & ((!\dut|select_fib|Selector4~0_combout\) # 
-- ((!\dut|increase_bit|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010110010111111101011001011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|select_fib|ALT_INV_Selector4~0_combout\,
	datab => \dut|increase_bit|ALT_INV_Mux2~0_combout\,
	datac => \dut|increase_bit|ALT_INV_Mux1~0_combout\,
	datad => \dut|increase_bit|ALT_INV_Mux3~0_combout\,
	dataf => \dut|select_fib|ALT_INV_Selector0~0_combout\,
	combout => \dut|segment_out|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\dut|segment_out|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux2~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & ((!\SW[8]~input_o\) # (\SW[3]~input_o\)))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[8]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[3]~input_o\)))) # 
-- (\SW[0]~input_o\ & (!\SW[3]~input_o\ & ((!\SW[8]~input_o\) # (\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001011000001100000101100000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \dut|segment_out|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N30
\dut|segment_out|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux1~0_combout\ = ( \dut|increase_bit|Mux2~0_combout\ & ( (\dut|increase_bit|Mux1~0_combout\ & (\dut|select_fib|Selector4~0_combout\ & ((!\dut|select_fib|Selector0~0_combout\) # (!\dut|increase_bit|Mux3~0_combout\)))) ) ) # ( 
-- !\dut|increase_bit|Mux2~0_combout\ & ( (!\dut|select_fib|Selector0~0_combout\ & (\dut|increase_bit|Mux3~0_combout\ & (!\dut|increase_bit|Mux1~0_combout\ $ (!\dut|select_fib|Selector4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000101000001000000010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|increase_bit|ALT_INV_Mux1~0_combout\,
	datab => \dut|select_fib|ALT_INV_Selector0~0_combout\,
	datac => \dut|select_fib|ALT_INV_Selector4~0_combout\,
	datad => \dut|increase_bit|ALT_INV_Mux3~0_combout\,
	dataf => \dut|increase_bit|ALT_INV_Mux2~0_combout\,
	combout => \dut|segment_out|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\dut|segment_out|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( ((!\SW[0]~input_o\) # ((!\SW[2]~input_o\) # (!\SW[8]~input_o\))) # (\SW[1]~input_o\) ) ) # ( !\SW[3]~input_o\ & ( ((\SW[8]~input_o\) # (\SW[2]~input_o\)) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \dut|segment_out|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\dut|segment_out|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux12~0_combout\ = ( \dut|increase_bit|Mux3~0_combout\ & ( !\dut|select_fib|Selector0~0_combout\ & ( (!\dut|select_fib|Selector4~0_combout\ & (!\dut|increase_bit|Mux2~0_combout\ & \dut|increase_bit|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|select_fib|ALT_INV_Selector4~0_combout\,
	datab => \dut|increase_bit|ALT_INV_Mux2~0_combout\,
	datac => \dut|increase_bit|ALT_INV_Mux1~0_combout\,
	datae => \dut|increase_bit|ALT_INV_Mux3~0_combout\,
	dataf => \dut|select_fib|ALT_INV_Selector0~0_combout\,
	combout => \dut|segment_out|Mux12~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\dut|segment_out|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux11~0_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\) # ((!\SW[2]~input_o\ & ((!\SW[8]~input_o\) # (\SW[0]~input_o\))) # (\SW[2]~input_o\ & (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110110111111101111011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|segment_out|Mux11~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\dut|segment_out|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|segment_out|Mux10~0_combout\ = ( !\dut|increase_bit|Mux2~0_combout\ & ( (!\dut|increase_bit|Mux1~0_combout\ & (!\dut|select_fib|Selector0~0_combout\ & (\dut|select_fib|Selector4~0_combout\ & \dut|increase_bit|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|increase_bit|ALT_INV_Mux1~0_combout\,
	datab => \dut|select_fib|ALT_INV_Selector0~0_combout\,
	datac => \dut|select_fib|ALT_INV_Selector4~0_combout\,
	datad => \dut|increase_bit|ALT_INV_Mux3~0_combout\,
	dataf => \dut|increase_bit|ALT_INV_Mux2~0_combout\,
	combout => \dut|segment_out|Mux10~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\dut|increase_bit|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|increase_bit|Mux0~0_combout\ = ( \SW[0]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[3]~input_o\) # (\SW[2]~input_o\) ) ) ) # ( !\SW[0]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[3]~input_o\) # (\SW[2]~input_o\) ) ) ) # ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- (!\SW[2]~input_o\ & \SW[3]~input_o\) ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|increase_bit|Mux0~0_combout\);

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

-- Location: LABCELL_X18_Y47_N3
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


