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

-- DATE "03/13/2024 11:42:10"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calcular_Tarifa IS
    PORT (
	CLK : IN std_logic;
	CATEGORIA_VEHICULO : IN IEEE.NUMERIC_STD.unsigned(1 DOWNTO 0);
	TIEMPO_PASO : IN IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	TARIFA : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0)
	);
END Calcular_Tarifa;

-- Design Ports Information
-- TARIFA[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TARIFA[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[14]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[15]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[10]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[6]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPO_PASO[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CATEGORIA_VEHICULO[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CATEGORIA_VEHICULO[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calcular_Tarifa IS
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
SIGNAL ww_CATEGORIA_VEHICULO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_TIEMPO_PASO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TARIFA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TARIFA[0]~output_o\ : std_logic;
SIGNAL \TARIFA[1]~output_o\ : std_logic;
SIGNAL \TARIFA[2]~output_o\ : std_logic;
SIGNAL \TARIFA[3]~output_o\ : std_logic;
SIGNAL \TARIFA[4]~output_o\ : std_logic;
SIGNAL \TARIFA[5]~output_o\ : std_logic;
SIGNAL \TARIFA[6]~output_o\ : std_logic;
SIGNAL \TARIFA[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TIEMPO_PASO[15]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[14]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[4]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[5]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[6]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \TIEMPO_PASO[12]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[10]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[11]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[13]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \TIEMPO_PASO[2]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[3]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[0]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[1]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \TIEMPO_PASO[9]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[8]~input_o\ : std_logic;
SIGNAL \TIEMPO_PASO[7]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \CATEGORIA_VEHICULO[1]~input_o\ : std_logic;
SIGNAL \CATEGORIA_VEHICULO[0]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \TARIFA[0]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \TARIFA[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \TARIFA[2]~reg0_q\ : std_logic;
SIGNAL \TARIFA~0_combout\ : std_logic;
SIGNAL \TARIFA[3]~reg0_q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CATEGORIA_VEHICULO <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(CATEGORIA_VEHICULO);
ww_TIEMPO_PASO <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(TIEMPO_PASO);
TARIFA <= IEEE.NUMERIC_STD.UNSIGNED(ww_TARIFA);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X14_Y29_N9
\TARIFA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TARIFA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \TARIFA[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\TARIFA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TARIFA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \TARIFA[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\TARIFA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TARIFA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \TARIFA[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\TARIFA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TARIFA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \TARIFA[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\TARIFA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TARIFA[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\TARIFA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TARIFA[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\TARIFA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TARIFA[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\TARIFA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TARIFA[7]~output_o\);

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

-- Location: IOIBUF_X0_Y5_N8
\TIEMPO_PASO[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(15),
	o => \TIEMPO_PASO[15]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\TIEMPO_PASO[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(14),
	o => \TIEMPO_PASO[14]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\TIEMPO_PASO[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(4),
	o => \TIEMPO_PASO[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\TIEMPO_PASO[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(5),
	o => \TIEMPO_PASO[5]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\TIEMPO_PASO[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(6),
	o => \TIEMPO_PASO[6]~input_o\);

-- Location: LCCOMB_X1_Y9_N12
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\TIEMPO_PASO[4]~input_o\) # ((\TIEMPO_PASO[5]~input_o\) # (\TIEMPO_PASO[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASO[4]~input_o\,
	datab => \TIEMPO_PASO[5]~input_o\,
	datac => \TIEMPO_PASO[6]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X0_Y2_N8
\TIEMPO_PASO[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(12),
	o => \TIEMPO_PASO[12]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\TIEMPO_PASO[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(10),
	o => \TIEMPO_PASO[10]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\TIEMPO_PASO[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(11),
	o => \TIEMPO_PASO[11]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\TIEMPO_PASO[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(13),
	o => \TIEMPO_PASO[13]~input_o\);

-- Location: LCCOMB_X1_Y9_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\TIEMPO_PASO[13]~input_o\) # ((\TIEMPO_PASO[12]~input_o\ & ((\TIEMPO_PASO[10]~input_o\) # (\TIEMPO_PASO[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASO[12]~input_o\,
	datab => \TIEMPO_PASO[10]~input_o\,
	datac => \TIEMPO_PASO[11]~input_o\,
	datad => \TIEMPO_PASO[13]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\TIEMPO_PASO[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(2),
	o => \TIEMPO_PASO[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\TIEMPO_PASO[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(3),
	o => \TIEMPO_PASO[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\TIEMPO_PASO[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(0),
	o => \TIEMPO_PASO[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\TIEMPO_PASO[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(1),
	o => \TIEMPO_PASO[1]~input_o\);

-- Location: LCCOMB_X1_Y9_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\TIEMPO_PASO[3]~input_o\ & ((\TIEMPO_PASO[2]~input_o\) # ((\TIEMPO_PASO[0]~input_o\) # (\TIEMPO_PASO[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASO[2]~input_o\,
	datab => \TIEMPO_PASO[3]~input_o\,
	datac => \TIEMPO_PASO[0]~input_o\,
	datad => \TIEMPO_PASO[1]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X0_Y13_N22
\TIEMPO_PASO[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(9),
	o => \TIEMPO_PASO[9]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\TIEMPO_PASO[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(8),
	o => \TIEMPO_PASO[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\TIEMPO_PASO[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIEMPO_PASO(7),
	o => \TIEMPO_PASO[7]~input_o\);

-- Location: LCCOMB_X1_Y9_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\TIEMPO_PASO[9]~input_o\ & (\TIEMPO_PASO[8]~input_o\ & (\TIEMPO_PASO[12]~input_o\ & \TIEMPO_PASO[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASO[9]~input_o\,
	datab => \TIEMPO_PASO[8]~input_o\,
	datac => \TIEMPO_PASO[12]~input_o\,
	datad => \TIEMPO_PASO[7]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y9_N24
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y9_N26
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\TIEMPO_PASO[15]~input_o\) # ((\TIEMPO_PASO[14]~input_o\) # (\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TIEMPO_PASO[15]~input_o\,
	datac => \TIEMPO_PASO[14]~input_o\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X0_Y6_N15
\CATEGORIA_VEHICULO[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CATEGORIA_VEHICULO(1),
	o => \CATEGORIA_VEHICULO[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\CATEGORIA_VEHICULO[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CATEGORIA_VEHICULO(0),
	o => \CATEGORIA_VEHICULO[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N8
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\LessThan0~5_combout\ & (!\CATEGORIA_VEHICULO[1]~input_o\ & !\CATEGORIA_VEHICULO[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \CATEGORIA_VEHICULO[1]~input_o\,
	datac => \CATEGORIA_VEHICULO[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X1_Y9_N9
\TARIFA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TARIFA[0]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\CATEGORIA_VEHICULO[1]~input_o\ & (\LessThan0~5_combout\ $ (\CATEGORIA_VEHICULO[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \CATEGORIA_VEHICULO[1]~input_o\,
	datac => \CATEGORIA_VEHICULO[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X1_Y9_N19
\TARIFA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TARIFA[1]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\LessThan0~5_combout\ & (!\CATEGORIA_VEHICULO[1]~input_o\ & \CATEGORIA_VEHICULO[0]~input_o\)) # (!\LessThan0~5_combout\ & (\CATEGORIA_VEHICULO[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \CATEGORIA_VEHICULO[1]~input_o\,
	datac => \CATEGORIA_VEHICULO[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y9_N21
\TARIFA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TARIFA[2]~reg0_q\);

-- Location: LCCOMB_X1_Y9_N14
\TARIFA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TARIFA~0_combout\ = (\CATEGORIA_VEHICULO[1]~input_o\ & ((\LessThan0~4_combout\) # ((\TIEMPO_PASO[14]~input_o\) # (\TIEMPO_PASO[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \CATEGORIA_VEHICULO[1]~input_o\,
	datac => \TIEMPO_PASO[14]~input_o\,
	datad => \TIEMPO_PASO[15]~input_o\,
	combout => \TARIFA~0_combout\);

-- Location: FF_X1_Y9_N15
\TARIFA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TARIFA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TARIFA[3]~reg0_q\);

ww_TARIFA(0) <= \TARIFA[0]~output_o\;

ww_TARIFA(1) <= \TARIFA[1]~output_o\;

ww_TARIFA(2) <= \TARIFA[2]~output_o\;

ww_TARIFA(3) <= \TARIFA[3]~output_o\;

ww_TARIFA(4) <= \TARIFA[4]~output_o\;

ww_TARIFA(5) <= \TARIFA[5]~output_o\;

ww_TARIFA(6) <= \TARIFA[6]~output_o\;

ww_TARIFA(7) <= \TARIFA[7]~output_o\;
END structure;


