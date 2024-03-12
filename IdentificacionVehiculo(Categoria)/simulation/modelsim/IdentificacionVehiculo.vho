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

-- DATE "03/12/2024 16:49:22"

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

ENTITY 	IdentificacionVehiculo IS
    PORT (
	identification_in : IN std_logic_vector(4 DOWNTO 0);
	category_out : OUT std_logic_vector(1 DOWNTO 0)
	);
END IdentificacionVehiculo;

-- Design Ports Information
-- identification_in[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- category_out[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- category_out[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IdentificacionVehiculo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_identification_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_category_out : std_logic_vector(1 DOWNTO 0);
SIGNAL \identification_in[0]~input_o\ : std_logic;
SIGNAL \identification_in[1]~input_o\ : std_logic;
SIGNAL \identification_in[2]~input_o\ : std_logic;
SIGNAL \category_out[0]~output_o\ : std_logic;
SIGNAL \category_out[1]~output_o\ : std_logic;
SIGNAL \identification_in[3]~input_o\ : std_logic;
SIGNAL \identification_in[4]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_identification_in <= identification_in;
category_out <= ww_category_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N9
\category_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \category_out[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\category_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \identification_in[4]~input_o\,
	devoe => ww_devoe,
	o => \category_out[1]~output_o\);

-- Location: IOIBUF_X0_Y8_N1
\identification_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(3),
	o => \identification_in[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\identification_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(4),
	o => \identification_in[4]~input_o\);

-- Location: LCCOMB_X1_Y11_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\identification_in[3]~input_o\ & !\identification_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identification_in[3]~input_o\,
	datac => \identification_in[4]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X30_Y29_N29
\identification_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(0),
	o => \identification_in[0]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\identification_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(1),
	o => \identification_in[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\identification_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(2),
	o => \identification_in[2]~input_o\);

ww_category_out(0) <= \category_out[0]~output_o\;

ww_category_out(1) <= \category_out[1]~output_o\;
END structure;


