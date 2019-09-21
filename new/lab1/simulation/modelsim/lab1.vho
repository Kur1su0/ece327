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

-- DATE "09/21/2019 17:30:31"

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

ENTITY 	part2 IS
    PORT (
	fib_input : IN std_logic_vector(3 DOWNTO 0);
	fib_output : OUT std_logic
	);
END part2;

-- Design Ports Information
-- fib_output	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib_input[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib_input[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib_input[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib_input[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fib_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fib_output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fib_input[3]~input_o\ : std_logic;
SIGNAL \fib_input[0]~input_o\ : std_logic;
SIGNAL \fib_input[2]~input_o\ : std_logic;
SIGNAL \fib_input[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_fib_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_fib_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_fib_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_fib_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_fib_input <= fib_input;
fib_output <= ww_fib_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_fib_input[3]~input_o\ <= NOT \fib_input[3]~input_o\;
\ALT_INV_fib_input[2]~input_o\ <= NOT \fib_input[2]~input_o\;
\ALT_INV_fib_input[1]~input_o\ <= NOT \fib_input[1]~input_o\;
\ALT_INV_fib_input[0]~input_o\ <= NOT \fib_input[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y11_N79
\fib_output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_fib_output);

-- Location: IOIBUF_X89_Y13_N21
\fib_input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fib_input(3),
	o => \fib_input[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\fib_input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fib_input(0),
	o => \fib_input[0]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\fib_input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fib_input(2),
	o => \fib_input[2]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\fib_input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fib_input(1),
	o => \fib_input[1]~input_o\);

-- Location: LABCELL_X88_Y13_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \fib_input[1]~input_o\ & ( (\fib_input[2]~input_o\) # (\fib_input[3]~input_o\) ) ) # ( !\fib_input[1]~input_o\ & ( (!\fib_input[0]~input_o\ & ((\fib_input[2]~input_o\))) # (\fib_input[0]~input_o\ & (\fib_input[3]~input_o\ & 
-- !\fib_input[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000011100010111110101111100011100000111000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fib_input[3]~input_o\,
	datab => \ALT_INV_fib_input[0]~input_o\,
	datac => \ALT_INV_fib_input[2]~input_o\,
	datae => \ALT_INV_fib_input[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X61_Y31_N0
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


