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

-- DATE "03/14/2024 16:42:22"

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

ENTITY 	Divisor_Frecuencia IS
    PORT (
	CLK_IN : IN std_logic;
	CLK_OUT : BUFFER std_logic
	);
END Divisor_Frecuencia;

-- Design Ports Information
-- CLK_IN	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_OUT	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divisor_Frecuencia IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_IN : std_logic;
SIGNAL ww_CLK_OUT : std_logic;
SIGNAL \CLK_IN~input_o\ : std_logic;
SIGNAL \CLK_OUT~output_o\ : std_logic;

BEGIN

ww_CLK_IN <= CLK_IN;
CLK_OUT <= ww_CLK_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N2
\CLK_OUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CLK_OUT~output_o\);

-- Location: IOIBUF_X41_Y13_N22
\CLK_IN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN,
	o => \CLK_IN~input_o\);

ww_CLK_OUT <= \CLK_OUT~output_o\;
END structure;


