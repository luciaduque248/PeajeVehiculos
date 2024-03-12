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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/12/2024 17:33:03"

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

ENTITY 	CalcularTarifa IS
    PORT (
	categoria_vehiculo : IN std_logic_vector(2 DOWNTO 0);
	tarifa : OUT std_logic_vector(2 DOWNTO 0)
	);
END CalcularTarifa;

-- Design Ports Information
-- tarifa[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CalcularTarifa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_categoria_vehiculo : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tarifa : std_logic_vector(2 DOWNTO 0);
SIGNAL \tarifa[0]~output_o\ : std_logic;
SIGNAL \tarifa[1]~output_o\ : std_logic;
SIGNAL \tarifa[2]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[2]~input_o\ : std_logic;
SIGNAL \categoria_vehiculo[0]~input_o\ : std_logic;
SIGNAL \categoria_vehiculo[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_categoria_vehiculo <= categoria_vehiculo;
tarifa <= ww_tarifa;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y2_N9
\tarifa[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \tarifa[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\tarifa[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \tarifa[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\tarifa[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \tarifa[2]~output_o\);

-- Location: IOIBUF_X0_Y2_N1
\categoria_vehiculo[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(2),
	o => \categoria_vehiculo[2]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\categoria_vehiculo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(0),
	o => \categoria_vehiculo[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\categoria_vehiculo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_categoria_vehiculo(1),
	o => \categoria_vehiculo[1]~input_o\);

-- Location: LCCOMB_X2_Y2_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\categoria_vehiculo[2]~input_o\ & (!\categoria_vehiculo[0]~input_o\ & !\categoria_vehiculo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \categoria_vehiculo[2]~input_o\,
	datac => \categoria_vehiculo[0]~input_o\,
	datad => \categoria_vehiculo[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y2_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\categoria_vehiculo[2]~input_o\ & (\categoria_vehiculo[0]~input_o\ & !\categoria_vehiculo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \categoria_vehiculo[2]~input_o\,
	datac => \categoria_vehiculo[0]~input_o\,
	datad => \categoria_vehiculo[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X2_Y2_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\categoria_vehiculo[2]~input_o\ & (!\categoria_vehiculo[0]~input_o\ & \categoria_vehiculo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \categoria_vehiculo[2]~input_o\,
	datac => \categoria_vehiculo[0]~input_o\,
	datad => \categoria_vehiculo[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_tarifa(0) <= \tarifa[0]~output_o\;

ww_tarifa(1) <= \tarifa[1]~output_o\;

ww_tarifa(2) <= \tarifa[2]~output_o\;
END structure;


