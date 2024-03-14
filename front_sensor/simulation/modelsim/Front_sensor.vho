-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/13/2024 00:06:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Front_sensor IS
    PORT (
	CLK : IN std_logic;
	DETECTOR_VEHICULO : OUT std_logic
	);
END Front_sensor;

-- Design Ports Information
-- DETECTOR_VEHICULO	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Front_sensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DETECTOR_VEHICULO : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DETECTOR_VEHICULO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CONTADOR_TIEMPO[1]~2_combout\ : std_logic;
SIGNAL \CONTADOR_TIEMPO[2]~0_combout\ : std_logic;
SIGNAL \CONTADOR_TIEMPO[0]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \DETECTOR_VEHICULO~reg0_q\ : std_logic;
SIGNAL CONTADOR_TIEMPO : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
DETECTOR_VEHICULO <= ww_DETECTOR_VEHICULO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y26_N2
\DETECTOR_VEHICULO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DETECTOR_VEHICULO~reg0_q\,
	devoe => ww_devoe,
	o => \DETECTOR_VEHICULO~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N10
\CONTADOR_TIEMPO[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR_TIEMPO[1]~2_combout\ = (CONTADOR_TIEMPO(0) & (CONTADOR_TIEMPO(1))) # (!CONTADOR_TIEMPO(0) & (!CONTADOR_TIEMPO(1) & CONTADOR_TIEMPO(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTADOR_TIEMPO(0),
	datac => CONTADOR_TIEMPO(1),
	datad => CONTADOR_TIEMPO(2),
	combout => \CONTADOR_TIEMPO[1]~2_combout\);

-- Location: FF_X1_Y26_N11
\CONTADOR_TIEMPO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTADOR_TIEMPO[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTADOR_TIEMPO(1));

-- Location: LCCOMB_X1_Y26_N2
\CONTADOR_TIEMPO[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR_TIEMPO[2]~0_combout\ = (CONTADOR_TIEMPO(2) & ((CONTADOR_TIEMPO(0)) # (CONTADOR_TIEMPO(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTADOR_TIEMPO(0),
	datac => CONTADOR_TIEMPO(2),
	datad => CONTADOR_TIEMPO(1),
	combout => \CONTADOR_TIEMPO[2]~0_combout\);

-- Location: FF_X1_Y26_N3
\CONTADOR_TIEMPO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTADOR_TIEMPO[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTADOR_TIEMPO(2));

-- Location: LCCOMB_X1_Y26_N4
\CONTADOR_TIEMPO[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CONTADOR_TIEMPO[0]~1_combout\ = (!CONTADOR_TIEMPO(0) & ((CONTADOR_TIEMPO(2)) # (CONTADOR_TIEMPO(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTADOR_TIEMPO(2),
	datac => CONTADOR_TIEMPO(0),
	datad => CONTADOR_TIEMPO(1),
	combout => \CONTADOR_TIEMPO[0]~1_combout\);

-- Location: FF_X1_Y26_N5
\CONTADOR_TIEMPO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTADOR_TIEMPO[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTADOR_TIEMPO(0));

-- Location: LCCOMB_X1_Y26_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!CONTADOR_TIEMPO(0) & (!CONTADOR_TIEMPO(2) & !CONTADOR_TIEMPO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTADOR_TIEMPO(0),
	datac => CONTADOR_TIEMPO(2),
	datad => CONTADOR_TIEMPO(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X1_Y26_N17
\DETECTOR_VEHICULO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DETECTOR_VEHICULO~reg0_q\);

ww_DETECTOR_VEHICULO <= \DETECTOR_VEHICULO~output_o\;
END structure;


