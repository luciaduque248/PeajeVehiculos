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

-- DATE "03/12/2024 16:58:01"

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

ENTITY 	SemaforoTalanquera IS
    PORT (
	Sistema_habilitador : IN std_logic;
	EstadoTalanquera : IN std_logic;
	SemaforoRojo : OUT std_logic;
	Semaforoverde : OUT std_logic;
	talanquera : OUT std_logic
	);
END SemaforoTalanquera;

-- Design Ports Information
-- SemaforoRojo	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Semaforoverde	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sistema_habilitador	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstadoTalanquera	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SemaforoTalanquera IS
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
SIGNAL ww_EstadoTalanquera : std_logic;
SIGNAL ww_SemaforoRojo : std_logic;
SIGNAL ww_Semaforoverde : std_logic;
SIGNAL ww_talanquera : std_logic;
SIGNAL \Sistema_habilitador~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SemaforoRojo~output_o\ : std_logic;
SIGNAL \Semaforoverde~output_o\ : std_logic;
SIGNAL \talanquera~output_o\ : std_logic;
SIGNAL \EstadoTalanquera~input_o\ : std_logic;
SIGNAL \Sistema_habilitador~input_o\ : std_logic;
SIGNAL \Estado~0_combout\ : std_logic;
SIGNAL \Sistema_habilitador~inputclkctrl_outclk\ : std_logic;
SIGNAL \SemaforoRojo$latch~combout\ : std_logic;
SIGNAL \Semaforoverde$latch~combout\ : std_logic;

BEGIN

ww_Sistema_habilitador <= Sistema_habilitador;
ww_EstadoTalanquera <= EstadoTalanquera;
SemaforoRojo <= ww_SemaforoRojo;
Semaforoverde <= ww_Semaforoverde;
talanquera <= ww_talanquera;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Sistema_habilitador~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Sistema_habilitador~input_o\);

-- Location: IOOBUF_X0_Y11_N2
\SemaforoRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SemaforoRojo$latch~combout\,
	devoe => ww_devoe,
	o => \SemaforoRojo~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Semaforoverde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforoverde$latch~combout\,
	devoe => ww_devoe,
	o => \Semaforoverde~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\talanquera~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SemaforoRojo$latch~combout\,
	devoe => ww_devoe,
	o => \talanquera~output_o\);

-- Location: IOIBUF_X0_Y13_N8
\EstadoTalanquera~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EstadoTalanquera,
	o => \EstadoTalanquera~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\Sistema_habilitador~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sistema_habilitador,
	o => \Sistema_habilitador~input_o\);

-- Location: LCCOMB_X1_Y14_N0
\Estado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~0_combout\ = (\Sistema_habilitador~input_o\ & (!\EstadoTalanquera~input_o\)) # (!\Sistema_habilitador~input_o\ & ((\Estado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstadoTalanquera~input_o\,
	datab => \Estado~0_combout\,
	datad => \Sistema_habilitador~input_o\,
	combout => \Estado~0_combout\);

-- Location: CLKCTRL_G4
\Sistema_habilitador~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Sistema_habilitador~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Sistema_habilitador~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N2
\SemaforoRojo$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SemaforoRojo$latch~combout\ = (GLOBAL(\Sistema_habilitador~inputclkctrl_outclk\) & (!\Estado~0_combout\)) # (!GLOBAL(\Sistema_habilitador~inputclkctrl_outclk\) & ((\SemaforoRojo$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado~0_combout\,
	datac => \Sistema_habilitador~inputclkctrl_outclk\,
	datad => \SemaforoRojo$latch~combout\,
	combout => \SemaforoRojo$latch~combout\);

-- Location: LCCOMB_X1_Y14_N12
\Semaforoverde$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforoverde$latch~combout\ = (GLOBAL(\Sistema_habilitador~inputclkctrl_outclk\) & (\Estado~0_combout\)) # (!GLOBAL(\Sistema_habilitador~inputclkctrl_outclk\) & ((\Semaforoverde$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado~0_combout\,
	datac => \Sistema_habilitador~inputclkctrl_outclk\,
	datad => \Semaforoverde$latch~combout\,
	combout => \Semaforoverde$latch~combout\);

ww_SemaforoRojo <= \SemaforoRojo~output_o\;

ww_Semaforoverde <= \Semaforoverde~output_o\;

ww_talanquera <= \talanquera~output_o\;
END structure;


