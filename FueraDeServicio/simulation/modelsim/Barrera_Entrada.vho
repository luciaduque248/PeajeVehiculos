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

-- DATE "03/12/2024 17:27:26"

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

ENTITY 	Barrera_Entrada IS
    PORT (
	cerrar_barrera : IN std_logic;
	barrera_abierta : OUT std_logic
	);
END Barrera_Entrada;

-- Design Ports Information
-- barrera_abierta	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_barrera	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Barrera_Entrada IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cerrar_barrera : std_logic;
SIGNAL ww_barrera_abierta : std_logic;
SIGNAL \barrera_abierta~output_o\ : std_logic;
SIGNAL \cerrar_barrera~input_o\ : std_logic;
SIGNAL \ALT_INV_cerrar_barrera~input_o\ : std_logic;

BEGIN

ww_cerrar_barrera <= cerrar_barrera;
barrera_abierta <= ww_barrera_abierta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cerrar_barrera~input_o\ <= NOT \cerrar_barrera~input_o\;

-- Location: IOOBUF_X11_Y29_N2
\barrera_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cerrar_barrera~input_o\,
	devoe => ww_devoe,
	o => \barrera_abierta~output_o\);

-- Location: IOIBUF_X14_Y29_N22
\cerrar_barrera~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_barrera,
	o => \cerrar_barrera~input_o\);

ww_barrera_abierta <= \barrera_abierta~output_o\;
END structure;


