-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/15/2022 03:14:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	Ai : IN std_logic_vector(3 DOWNTO 0);
	Bi : IN std_logic_vector(3 DOWNTO 0);
	Bentrada : IN std_logic;
	Display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	Display3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- Display1[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[2]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[4]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[5]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[6]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bentrada	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bentrada : std_logic;
SIGNAL ww_Display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \Bentrada~input_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \rest4|rest1|Bout~0_combout\ : std_logic;
SIGNAL \compA2|Add0~2_combout\ : std_logic;
SIGNAL \Ai[3]~input_o\ : std_logic;
SIGNAL \Bi[3]~input_o\ : std_logic;
SIGNAL \compA2|Add0~3_combout\ : std_logic;
SIGNAL \compA2|Add0~0_combout\ : std_logic;
SIGNAL \compA2|Add0~1_combout\ : std_logic;
SIGNAL \rest4|rest3|Bout~0_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[0]~0_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[1]~1_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[2]~2_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[3]~3_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[4]~4_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[5]~5_combout\ : std_logic;
SIGNAL \BCD7seg1|salida[6]~6_combout\ : std_logic;
SIGNAL \decoBCDD|salidaBCD[4]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Bi[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bentrada~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[3]~input_o\ : std_logic;
SIGNAL \BCD7seg1|ALT_INV_salida[5]~5_combout\ : std_logic;
SIGNAL \compA2|ALT_INV_Add0~3_combout\ : std_logic;
SIGNAL \compA2|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \compA2|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \compA2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \rest4|rest3|ALT_INV_Bout~0_combout\ : std_logic;
SIGNAL \rest4|rest1|ALT_INV_Bout~0_combout\ : std_logic;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_Bentrada <= Bentrada;
Display1 <= ww_Display1;
Display2 <= ww_Display2;
Display3 <= ww_Display3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Bi[0]~input_o\ <= NOT \Bi[0]~input_o\;
\ALT_INV_Bentrada~input_o\ <= NOT \Bentrada~input_o\;
\ALT_INV_Ai[0]~input_o\ <= NOT \Ai[0]~input_o\;
\ALT_INV_Bi[1]~input_o\ <= NOT \Bi[1]~input_o\;
\ALT_INV_Ai[1]~input_o\ <= NOT \Ai[1]~input_o\;
\ALT_INV_Bi[2]~input_o\ <= NOT \Bi[2]~input_o\;
\ALT_INV_Ai[2]~input_o\ <= NOT \Ai[2]~input_o\;
\ALT_INV_Bi[3]~input_o\ <= NOT \Bi[3]~input_o\;
\ALT_INV_Ai[3]~input_o\ <= NOT \Ai[3]~input_o\;
\BCD7seg1|ALT_INV_salida[5]~5_combout\ <= NOT \BCD7seg1|salida[5]~5_combout\;
\compA2|ALT_INV_Add0~3_combout\ <= NOT \compA2|Add0~3_combout\;
\compA2|ALT_INV_Add0~2_combout\ <= NOT \compA2|Add0~2_combout\;
\compA2|ALT_INV_Add0~1_combout\ <= NOT \compA2|Add0~1_combout\;
\compA2|ALT_INV_Add0~0_combout\ <= NOT \compA2|Add0~0_combout\;
\rest4|rest3|ALT_INV_Bout~0_combout\ <= NOT \rest4|rest3|Bout~0_combout\;
\rest4|rest1|ALT_INV_Bout~0_combout\ <= NOT \rest4|rest1|Bout~0_combout\;

-- Location: IOOBUF_X89_Y4_N96
\Display1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Display1(0));

-- Location: IOOBUF_X89_Y13_N39
\Display1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Display1(1));

-- Location: IOOBUF_X89_Y13_N56
\Display1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Display1(2));

-- Location: IOOBUF_X89_Y4_N79
\Display1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Display1(3));

-- Location: IOOBUF_X89_Y11_N96
\Display1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Display1(4));

-- Location: IOOBUF_X89_Y11_N79
\Display1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|ALT_INV_salida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Display1(5));

-- Location: IOOBUF_X89_Y8_N39
\Display1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7seg1|salida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Display1(6));

-- Location: IOOBUF_X89_Y8_N56
\Display2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display2(0));

-- Location: IOOBUF_X89_Y15_N56
\Display2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoBCDD|salidaBCD[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_Display2(1));

-- Location: IOOBUF_X89_Y15_N39
\Display2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoBCDD|salidaBCD[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_Display2(2));

-- Location: IOOBUF_X89_Y16_N56
\Display2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoBCDD|salidaBCD[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_Display2(3));

-- Location: IOOBUF_X89_Y16_N39
\Display2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display2(4));

-- Location: IOOBUF_X89_Y6_N56
\Display2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display2(5));

-- Location: IOOBUF_X89_Y6_N39
\Display2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoBCDD|salidaBCD[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_Display2(6));

-- Location: IOOBUF_X89_Y25_N56
\Display3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rest4|rest3|ALT_INV_Bout~0_combout\,
	devoe => ww_devoe,
	o => ww_Display3(0));

-- Location: IOOBUF_X89_Y20_N96
\Display3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(1));

-- Location: IOOBUF_X89_Y25_N39
\Display3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(2));

-- Location: IOOBUF_X89_Y20_N79
\Display3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(3));

-- Location: IOOBUF_X89_Y23_N56
\Display3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(4));

-- Location: IOOBUF_X89_Y23_N39
\Display3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(5));

-- Location: IOOBUF_X89_Y9_N22
\Display3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Display3(6));

-- Location: IOIBUF_X4_Y0_N35
\Bi[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\Ai[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\Ai[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\Bentrada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bentrada,
	o => \Bentrada~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\Bi[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Ai[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\Bi[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

-- Location: LABCELL_X16_Y4_N30
\rest4|rest1|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rest4|rest1|Bout~0_combout\ = ( \Ai[1]~input_o\ & ( \Bi[1]~input_o\ & ( (!\Ai[0]~input_o\ & ((\Bi[0]~input_o\) # (\Bentrada~input_o\))) # (\Ai[0]~input_o\ & (\Bentrada~input_o\ & \Bi[0]~input_o\)) ) ) ) # ( !\Ai[1]~input_o\ & ( \Bi[1]~input_o\ ) ) # ( 
-- !\Ai[1]~input_o\ & ( !\Bi[1]~input_o\ & ( (!\Ai[0]~input_o\ & ((\Bi[0]~input_o\) # (\Bentrada~input_o\))) # (\Ai[0]~input_o\ & (\Bentrada~input_o\ & \Bi[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011000000000000000011111111111111110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ai[0]~input_o\,
	datab => \ALT_INV_Bentrada~input_o\,
	datac => \ALT_INV_Bi[0]~input_o\,
	datae => \ALT_INV_Ai[1]~input_o\,
	dataf => \ALT_INV_Bi[1]~input_o\,
	combout => \rest4|rest1|Bout~0_combout\);

-- Location: LABCELL_X83_Y8_N36
\compA2|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \compA2|Add0~2_combout\ = ( \rest4|rest1|Bout~0_combout\ & ( !\Bi[2]~input_o\ $ (\Ai[2]~input_o\) ) ) # ( !\rest4|rest1|Bout~0_combout\ & ( !\Bi[2]~input_o\ $ (!\Ai[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Bi[2]~input_o\,
	datac => \ALT_INV_Ai[2]~input_o\,
	dataf => \rest4|rest1|ALT_INV_Bout~0_combout\,
	combout => \compA2|Add0~2_combout\);

-- Location: IOIBUF_X4_Y0_N52
\Ai[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(3),
	o => \Ai[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\Bi[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(3),
	o => \Bi[3]~input_o\);

-- Location: LABCELL_X83_Y8_N45
\compA2|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \compA2|Add0~3_combout\ = ( \rest4|rest1|Bout~0_combout\ & ( (!\Ai[3]~input_o\ & (\Bi[3]~input_o\ & ((!\Ai[2]~input_o\) # (\Bi[2]~input_o\)))) # (\Ai[3]~input_o\ & (!\Bi[2]~input_o\ & (!\Bi[3]~input_o\ & \Ai[2]~input_o\))) ) ) # ( 
-- !\rest4|rest1|Bout~0_combout\ & ( (!\Ai[3]~input_o\ & (\Bi[2]~input_o\ & (\Bi[3]~input_o\ & !\Ai[2]~input_o\))) # (\Ai[3]~input_o\ & (!\Bi[3]~input_o\ & ((!\Bi[2]~input_o\) # (\Ai[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001010000010000100101000000001010010000100000101001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ai[3]~input_o\,
	datab => \ALT_INV_Bi[2]~input_o\,
	datac => \ALT_INV_Bi[3]~input_o\,
	datad => \ALT_INV_Ai[2]~input_o\,
	dataf => \rest4|rest1|ALT_INV_Bout~0_combout\,
	combout => \compA2|Add0~3_combout\);

-- Location: LABCELL_X16_Y4_N6
\compA2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \compA2|Add0~0_combout\ = ( \Bentrada~input_o\ & ( \Ai[0]~input_o\ & ( \Bi[0]~input_o\ ) ) ) # ( !\Bentrada~input_o\ & ( \Ai[0]~input_o\ & ( !\Bi[0]~input_o\ ) ) ) # ( \Bentrada~input_o\ & ( !\Ai[0]~input_o\ & ( !\Bi[0]~input_o\ ) ) ) # ( 
-- !\Bentrada~input_o\ & ( !\Ai[0]~input_o\ & ( \Bi[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Bi[0]~input_o\,
	datae => \ALT_INV_Bentrada~input_o\,
	dataf => \ALT_INV_Ai[0]~input_o\,
	combout => \compA2|Add0~0_combout\);

-- Location: LABCELL_X16_Y4_N15
\compA2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \compA2|Add0~1_combout\ = ( \Ai[1]~input_o\ & ( \Bi[1]~input_o\ & ( (!\Bi[0]~input_o\ & (\Bentrada~input_o\ & !\Ai[0]~input_o\)) # (\Bi[0]~input_o\ & ((!\Ai[0]~input_o\) # (\Bentrada~input_o\))) ) ) ) # ( !\Ai[1]~input_o\ & ( \Bi[1]~input_o\ & ( 
-- (!\Bi[0]~input_o\ & ((!\Bentrada~input_o\) # (\Ai[0]~input_o\))) # (\Bi[0]~input_o\ & (!\Bentrada~input_o\ & \Ai[0]~input_o\)) ) ) ) # ( \Ai[1]~input_o\ & ( !\Bi[1]~input_o\ & ( (!\Bi[0]~input_o\ & ((!\Bentrada~input_o\) # (\Ai[0]~input_o\))) # 
-- (\Bi[0]~input_o\ & (!\Bentrada~input_o\ & \Ai[0]~input_o\)) ) ) ) # ( !\Ai[1]~input_o\ & ( !\Bi[1]~input_o\ & ( (!\Bi[0]~input_o\ & (\Bentrada~input_o\ & !\Ai[0]~input_o\)) # (\Bi[0]~input_o\ & ((!\Ai[0]~input_o\) # (\Bentrada~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101101000001111101010100000111110100101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bi[0]~input_o\,
	datac => \ALT_INV_Bentrada~input_o\,
	datad => \ALT_INV_Ai[0]~input_o\,
	datae => \ALT_INV_Ai[1]~input_o\,
	dataf => \ALT_INV_Bi[1]~input_o\,
	combout => \compA2|Add0~1_combout\);

-- Location: LABCELL_X83_Y8_N30
\rest4|rest3|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rest4|rest3|Bout~0_combout\ = ( \rest4|rest1|Bout~0_combout\ & ( (!\Bi[3]~input_o\ & (!\Ai[3]~input_o\ & ((!\Ai[2]~input_o\) # (\Bi[2]~input_o\)))) # (\Bi[3]~input_o\ & ((!\Ai[2]~input_o\) # ((!\Ai[3]~input_o\) # (\Bi[2]~input_o\)))) ) ) # ( 
-- !\rest4|rest1|Bout~0_combout\ & ( (!\Bi[3]~input_o\ & (!\Ai[2]~input_o\ & (!\Ai[3]~input_o\ & \Bi[2]~input_o\))) # (\Bi[3]~input_o\ & ((!\Ai[3]~input_o\) # ((!\Ai[2]~input_o\ & \Bi[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110010001100001011001010110010111100111011001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ai[2]~input_o\,
	datab => \ALT_INV_Bi[3]~input_o\,
	datac => \ALT_INV_Ai[3]~input_o\,
	datad => \ALT_INV_Bi[2]~input_o\,
	dataf => \rest4|rest1|ALT_INV_Bout~0_combout\,
	combout => \rest4|rest3|Bout~0_combout\);

-- Location: LABCELL_X83_Y8_N21
\BCD7seg1|salida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[0]~0_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ $ (!\compA2|Add0~0_combout\))) ) ) ) # ( !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( 
-- (!\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ $ (!\compA2|Add0~0_combout\))) # (\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\ & \compA2|Add0~0_combout\)) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( 
-- (!\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\)) # (\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ & \compA2|Add0~0_combout\)) ) ) ) # ( !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\ & 
-- !\compA2|Add0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000001001100010011000101001001010010001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \compA2|ALT_INV_Add0~2_combout\,
	datab => \compA2|ALT_INV_Add0~3_combout\,
	datac => \compA2|ALT_INV_Add0~0_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[0]~0_combout\);

-- Location: LABCELL_X83_Y8_N27
\BCD7seg1|salida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[1]~1_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\ & \compA2|Add0~0_combout\)) # (\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\)) ) ) ) # ( 
-- !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~3_combout\ & ((\compA2|Add0~0_combout\))) # (\compA2|Add0~3_combout\ & (\compA2|Add0~2_combout\)) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( 
-- (!\compA2|Add0~2_combout\ & ((!\compA2|Add0~3_combout\) # (\compA2|Add0~0_combout\))) # (\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ & \compA2|Add0~0_combout\)) ) ) ) # ( !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( 
-- (!\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ & \compA2|Add0~0_combout\)) # (\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001100011101000111000011101000111010100011001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \compA2|ALT_INV_Add0~2_combout\,
	datab => \compA2|ALT_INV_Add0~3_combout\,
	datac => \compA2|ALT_INV_Add0~0_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[1]~1_combout\);

-- Location: LABCELL_X83_Y8_N0
\BCD7seg1|salida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[2]~2_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( ((!\compA2|Add0~2_combout\ & \compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\) ) ) ) # ( !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( 
-- ((\compA2|Add0~2_combout\ & !\compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( ((\compA2|Add0~2_combout\ & \compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\) ) ) ) # ( 
-- !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( ((\compA2|Add0~2_combout\ & !\compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001100110011111100111111001100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \compA2|ALT_INV_Add0~0_combout\,
	datac => \compA2|ALT_INV_Add0~2_combout\,
	datad => \compA2|ALT_INV_Add0~3_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[2]~2_combout\);

-- Location: LABCELL_X83_Y8_N6
\BCD7seg1|salida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[3]~3_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~0_combout\ & (!\compA2|Add0~2_combout\ & \compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\ & (\compA2|Add0~2_combout\ & 
-- !\compA2|Add0~3_combout\)) ) ) ) # ( !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~0_combout\ & (\compA2|Add0~2_combout\ & !\compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\ & (!\compA2|Add0~2_combout\ $ 
-- (\compA2|Add0~3_combout\))) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~0_combout\ & (\compA2|Add0~2_combout\ & \compA2|Add0~3_combout\)) # (\compA2|Add0~0_combout\ & (!\compA2|Add0~2_combout\ $ 
-- (!\compA2|Add0~3_combout\))) ) ) ) # ( !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~3_combout\ & (!\compA2|Add0~0_combout\ $ (!\compA2|Add0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000000000110011110000111100000000110000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \compA2|ALT_INV_Add0~0_combout\,
	datac => \compA2|ALT_INV_Add0~2_combout\,
	datad => \compA2|ALT_INV_Add0~3_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[3]~3_combout\);

-- Location: LABCELL_X83_Y8_N15
\BCD7seg1|salida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[4]~4_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ & !\compA2|Add0~0_combout\)) ) ) ) # ( !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( 
-- (\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\ & !\compA2|Add0~0_combout\)) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\ & (!\compA2|Add0~3_combout\ & !\compA2|Add0~0_combout\)) ) ) ) # ( 
-- !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( (\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\ & !\compA2|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000100000001000000000010000000100000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \compA2|ALT_INV_Add0~2_combout\,
	datab => \compA2|ALT_INV_Add0~3_combout\,
	datac => \compA2|ALT_INV_Add0~0_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[4]~4_combout\);

-- Location: LABCELL_X83_Y8_N48
\BCD7seg1|salida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[5]~5_combout\ = ( \rest4|rest3|Bout~0_combout\ & ( ((!\compA2|Add0~3_combout\ & ((!\compA2|Add0~1_combout\))) # (\compA2|Add0~3_combout\ & ((!\compA2|Add0~0_combout\) # (\compA2|Add0~1_combout\)))) # (\compA2|Add0~2_combout\) ) ) # ( 
-- !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\) # ((!\compA2|Add0~3_combout\ & (!\compA2|Add0~0_combout\ $ (\compA2|Add0~1_combout\))) # (\compA2|Add0~3_combout\ & ((!\compA2|Add0~0_combout\) # (!\compA2|Add0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111110111110111011111011111101011101111111110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \compA2|ALT_INV_Add0~2_combout\,
	datab => \compA2|ALT_INV_Add0~3_combout\,
	datac => \compA2|ALT_INV_Add0~0_combout\,
	datad => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[5]~5_combout\);

-- Location: LABCELL_X83_Y8_N51
\BCD7seg1|salida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD7seg1|salida[6]~6_combout\ = ( \rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\ & (\compA2|Add0~3_combout\ & (!\compA2|Add0~0_combout\ & \compA2|Add0~1_combout\))) # (\compA2|Add0~2_combout\ & ((!\compA2|Add0~3_combout\ & 
-- (!\compA2|Add0~0_combout\ $ (\compA2|Add0~1_combout\))) # (\compA2|Add0~3_combout\ & (\compA2|Add0~0_combout\ & !\compA2|Add0~1_combout\)))) ) ) # ( !\rest4|rest3|Bout~0_combout\ & ( (!\compA2|Add0~2_combout\ & (\compA2|Add0~0_combout\ & 
-- (!\compA2|Add0~3_combout\ $ (\compA2|Add0~1_combout\)))) # (\compA2|Add0~2_combout\ & (!\compA2|Add0~0_combout\ & (!\compA2|Add0~3_combout\ $ (\compA2|Add0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000010010010010000001001001000001001001000100000100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \compA2|ALT_INV_Add0~2_combout\,
	datab => \compA2|ALT_INV_Add0~3_combout\,
	datac => \compA2|ALT_INV_Add0~0_combout\,
	datad => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \BCD7seg1|salida[6]~6_combout\);

-- Location: LABCELL_X83_Y8_N54
\decoBCDD|salidaBCD[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoBCDD|salidaBCD[4]~0_combout\ = ( \compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & ( (\compA2|Add0~3_combout\ & ((!\compA2|Add0~0_combout\) # (!\compA2|Add0~2_combout\))) ) ) ) # ( !\compA2|Add0~1_combout\ & ( \rest4|rest3|Bout~0_combout\ & 
-- ( (\compA2|Add0~3_combout\ & ((\compA2|Add0~2_combout\) # (\compA2|Add0~0_combout\))) ) ) ) # ( \compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( \compA2|Add0~3_combout\ ) ) ) # ( !\compA2|Add0~1_combout\ & ( !\rest4|rest3|Bout~0_combout\ & ( 
-- (\compA2|Add0~2_combout\ & \compA2|Add0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100000000001111110000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \compA2|ALT_INV_Add0~0_combout\,
	datac => \compA2|ALT_INV_Add0~2_combout\,
	datad => \compA2|ALT_INV_Add0~3_combout\,
	datae => \compA2|ALT_INV_Add0~1_combout\,
	dataf => \rest4|rest3|ALT_INV_Bout~0_combout\,
	combout => \decoBCDD|salidaBCD[4]~0_combout\);

-- Location: LABCELL_X50_Y46_N0
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


