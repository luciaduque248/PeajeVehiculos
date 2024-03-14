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

-- DATE "03/13/2024 00:03:39"

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

ENTITY 	Id_vehiculo IS
    PORT (
	CLK : IN std_logic;
	REINICIO : IN std_logic;
	ID : IN std_logic_vector(4 DOWNTO 0);
	IDVALIDA : IN std_logic;
	ABRIR_TALANQUERA : OUT std_logic;
	LED_AUTORIZADO_VERDE : OUT std_logic;
	LED_DENEGADO_ROJO : OUT std_logic
	);
END Id_vehiculo;

-- Design Ports Information
-- ID[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABRIR_TALANQUERA	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_AUTORIZADO_VERDE	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_DENEGADO_ROJO	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[4]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REINICIO	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDVALIDA	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Id_vehiculo IS
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
SIGNAL ww_REINICIO : std_logic;
SIGNAL ww_ID : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_IDVALIDA : std_logic;
SIGNAL ww_ABRIR_TALANQUERA : std_logic;
SIGNAL ww_LED_AUTORIZADO_VERDE : std_logic;
SIGNAL ww_LED_DENEGADO_ROJO : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REINICIO~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID[0]~input_o\ : std_logic;
SIGNAL \ID[1]~input_o\ : std_logic;
SIGNAL \ID[2]~input_o\ : std_logic;
SIGNAL \ABRIR_TALANQUERA~output_o\ : std_logic;
SIGNAL \LED_AUTORIZADO_VERDE~output_o\ : std_logic;
SIGNAL \LED_DENEGADO_ROJO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ID[3]~input_o\ : std_logic;
SIGNAL \ID[4]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \REINICIO~input_o\ : std_logic;
SIGNAL \REINICIO~inputclkctrl_outclk\ : std_logic;
SIGNAL \IDVALIDA~input_o\ : std_logic;
SIGNAL \ESTADO~0_combout\ : std_logic;
SIGNAL \ESTADO~q\ : std_logic;
SIGNAL \ABRIR_TALANQUERA~reg0_q\ : std_logic;
SIGNAL \LED_AUTORIZADO_VERDE~reg0feeder_combout\ : std_logic;
SIGNAL \LED_AUTORIZADO_VERDE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_REINICIO~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_REINICIO <= REINICIO;
ww_ID <= ID;
ww_IDVALIDA <= IDVALIDA;
ABRIR_TALANQUERA <= ww_ABRIR_TALANQUERA;
LED_AUTORIZADO_VERDE <= ww_LED_AUTORIZADO_VERDE;
LED_DENEGADO_ROJO <= ww_LED_DENEGADO_ROJO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\REINICIO~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REINICIO~input_o\);
\ALT_INV_REINICIO~inputclkctrl_outclk\ <= NOT \REINICIO~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N16
\ABRIR_TALANQUERA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ABRIR_TALANQUERA~reg0_q\,
	devoe => ww_devoe,
	o => \ABRIR_TALANQUERA~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\LED_AUTORIZADO_VERDE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_AUTORIZADO_VERDE~reg0_q\,
	devoe => ww_devoe,
	o => \LED_AUTORIZADO_VERDE~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\LED_DENEGADO_ROJO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_DENEGADO_ROJO~output_o\);

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

-- Location: IOIBUF_X0_Y2_N1
\ID[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID(3),
	o => \ID[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\ID[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID(4),
	o => \ID[4]~input_o\);

-- Location: LCCOMB_X1_Y2_N16
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ID[3]~input_o\) # (\ID[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID[3]~input_o\,
	datad => \ID[4]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\REINICIO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REINICIO,
	o => \REINICIO~input_o\);

-- Location: CLKCTRL_G2
\REINICIO~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REINICIO~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REINICIO~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N22
\IDVALIDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDVALIDA,
	o => \IDVALIDA~input_o\);

-- Location: LCCOMB_X1_Y2_N0
\ESTADO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO~0_combout\ = (!\ESTADO~q\ & \IDVALIDA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ESTADO~q\,
	datad => \IDVALIDA~input_o\,
	combout => \ESTADO~0_combout\);

-- Location: FF_X1_Y2_N1
ESTADO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ESTADO~0_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO~q\);

-- Location: FF_X1_Y2_N17
\ABRIR_TALANQUERA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \ESTADO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABRIR_TALANQUERA~reg0_q\);

-- Location: LCCOMB_X1_Y2_N14
\LED_AUTORIZADO_VERDE~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_AUTORIZADO_VERDE~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LED_AUTORIZADO_VERDE~reg0feeder_combout\);

-- Location: FF_X1_Y2_N15
\LED_AUTORIZADO_VERDE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_AUTORIZADO_VERDE~reg0feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \ESTADO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_AUTORIZADO_VERDE~reg0_q\);

-- Location: IOIBUF_X7_Y29_N22
\ID[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID(0),
	o => \ID[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\ID[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID(1),
	o => \ID[1]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\ID[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID(2),
	o => \ID[2]~input_o\);

ww_ABRIR_TALANQUERA <= \ABRIR_TALANQUERA~output_o\;

ww_LED_AUTORIZADO_VERDE <= \LED_AUTORIZADO_VERDE~output_o\;

ww_LED_DENEGADO_ROJO <= \LED_DENEGADO_ROJO~output_o\;
END structure;


