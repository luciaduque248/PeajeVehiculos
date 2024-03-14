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

-- DATE "03/12/2024 17:55:13"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Semaforo_salida IS
    PORT (
	Sistema_habilitador : IN std_logic;
	PasoVehicular : IN std_logic;
	Semaforoverde : OUT std_logic;
	SemaforoRojo : OUT std_logic
	);
END Semaforo_salida;

-- Design Ports Information
-- Semaforoverde	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SemaforoRojo	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PasoVehicular	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sistema_habilitador	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semaforo_salida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sistema_habilitador : std_logic;
SIGNAL ww_PasoVehicular : std_logic;
SIGNAL ww_Semaforoverde : std_logic;
SIGNAL ww_SemaforoRojo : std_logic;
SIGNAL \Semaforoverde~output_o\ : std_logic;
SIGNAL \SemaforoRojo~output_o\ : std_logic;
SIGNAL \PasoVehicular~input_o\ : std_logic;
SIGNAL \Sistema_habilitador~input_o\ : std_logic;
SIGNAL \Estado~combout\ : std_logic;
SIGNAL \ALT_INV_Estado~combout\ : std_logic;

BEGIN

ww_Sistema_habilitador <= Sistema_habilitador;
ww_PasoVehicular <= PasoVehicular;
Semaforoverde <= ww_Semaforoverde;
SemaforoRojo <= ww_SemaforoRojo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Estado~combout\ <= NOT \Estado~combout\;

-- Location: IOOBUF_X32_Y0_N9
\Semaforoverde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Estado~combout\,
	devoe => ww_devoe,
	o => \Semaforoverde~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\SemaforoRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Estado~combout\,
	devoe => ww_devoe,
	o => \SemaforoRojo~output_o\);

-- Location: IOIBUF_X0_Y26_N15
\PasoVehicular~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PasoVehicular,
	o => \PasoVehicular~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\Sistema_habilitador~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sistema_habilitador,
	o => \Sistema_habilitador~input_o\);

-- Location: LCCOMB_X30_Y18_N16
Estado : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~combout\ = (\Sistema_habilitador~input_o\ & (\PasoVehicular~input_o\)) # (!\Sistema_habilitador~input_o\ & ((\Estado~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PasoVehicular~input_o\,
	datac => \Sistema_habilitador~input_o\,
	datad => \Estado~combout\,
	combout => \Estado~combout\);

ww_Semaforoverde <= \Semaforoverde~output_o\;

ww_SemaforoRojo <= \SemaforoRojo~output_o\;
END structure;


