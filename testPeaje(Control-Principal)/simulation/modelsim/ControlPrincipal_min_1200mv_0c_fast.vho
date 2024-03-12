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

-- DATE "03/12/2024 17:52:21"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ControlPrincipal IS
    PORT (
	vehicle_detected : IN std_logic;
	identification_in : IN std_logic_vector(4 DOWNTO 0);
	cerrar_barrera : IN std_logic;
	vehicle1_position : IN STD.STANDARD.integer range 0 TO 100;
	vehicle2_position : IN STD.STANDARD.integer range 0 TO 100;
	back_sensor_active : OUT std_logic;
	tagValido : OUT std_logic;
	barrera_abierta : OUT std_logic;
	alert : OUT std_logic
	);
END ControlPrincipal;

-- Design Ports Information
-- identification_in[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor_active	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tagValido	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_abierta	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alert	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_in[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_barrera	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlPrincipal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_vehicle_detected : std_logic;
SIGNAL ww_identification_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_cerrar_barrera : std_logic;
SIGNAL ww_vehicle1_position : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_vehicle2_position : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_back_sensor_active : std_logic;
SIGNAL ww_tagValido : std_logic;
SIGNAL ww_barrera_abierta : std_logic;
SIGNAL ww_alert : std_logic;
SIGNAL \identification_in[0]~input_o\ : std_logic;
SIGNAL \identification_in[1]~input_o\ : std_logic;
SIGNAL \identification_in[2]~input_o\ : std_logic;
SIGNAL \back_sensor_active~output_o\ : std_logic;
SIGNAL \tagValido~output_o\ : std_logic;
SIGNAL \barrera_abierta~output_o\ : std_logic;
SIGNAL \alert~output_o\ : std_logic;
SIGNAL \vehicle_detected~input_o\ : std_logic;
SIGNAL \identification_in[3]~input_o\ : std_logic;
SIGNAL \identification_in[4]~input_o\ : std_logic;
SIGNAL \IdentificacionVehiculo_inst|Mux0~0_combout\ : std_logic;
SIGNAL \cerrar_barrera~input_o\ : std_logic;
SIGNAL \vehicle2_position[3]~input_o\ : std_logic;
SIGNAL \vehicle1_position[3]~input_o\ : std_logic;
SIGNAL \vehicle1_position[2]~input_o\ : std_logic;
SIGNAL \vehicle2_position[2]~input_o\ : std_logic;
SIGNAL \vehicle2_position[1]~input_o\ : std_logic;
SIGNAL \vehicle1_position[1]~input_o\ : std_logic;
SIGNAL \vehicle1_position[0]~input_o\ : std_logic;
SIGNAL \vehicle2_position[0]~input_o\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~1\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~3\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~5\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~6_combout\ : std_logic;
SIGNAL \vehicle2_position[5]~input_o\ : std_logic;
SIGNAL \vehicle1_position[5]~input_o\ : std_logic;
SIGNAL \vehicle2_position[4]~input_o\ : std_logic;
SIGNAL \vehicle1_position[4]~input_o\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~7\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~9\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~10_combout\ : std_logic;
SIGNAL \vehicle1_position[6]~input_o\ : std_logic;
SIGNAL \vehicle2_position[6]~input_o\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~11\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~13\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~14_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~8_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~12_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~0_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~4_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|Add0~2_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \VehicleSeparation_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_cerrar_barrera~input_o\ : std_logic;

BEGIN

ww_vehicle_detected <= vehicle_detected;
ww_identification_in <= identification_in;
ww_cerrar_barrera <= cerrar_barrera;
ww_vehicle1_position <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(vehicle1_position, 7);
ww_vehicle2_position <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(vehicle2_position, 7);
back_sensor_active <= ww_back_sensor_active;
tagValido <= ww_tagValido;
barrera_abierta <= ww_barrera_abierta;
alert <= ww_alert;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cerrar_barrera~input_o\ <= NOT \cerrar_barrera~input_o\;

-- Location: IOOBUF_X0_Y2_N23
\back_sensor_active~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vehicle_detected~input_o\,
	devoe => ww_devoe,
	o => \back_sensor_active~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\tagValido~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IdentificacionVehiculo_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \tagValido~output_o\);

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X0_Y3_N2
\alert~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VehicleSeparation_inst|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \alert~output_o\);

-- Location: IOIBUF_X0_Y2_N15
\vehicle_detected~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected,
	o => \vehicle_detected~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\identification_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(3),
	o => \identification_in[3]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\identification_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(4),
	o => \identification_in[4]~input_o\);

-- Location: LCCOMB_X3_Y28_N0
\IdentificacionVehiculo_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IdentificacionVehiculo_inst|Mux0~0_combout\ = (\identification_in[3]~input_o\ & !\identification_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \identification_in[3]~input_o\,
	datad => \identification_in[4]~input_o\,
	combout => \IdentificacionVehiculo_inst|Mux0~0_combout\);

-- Location: IOIBUF_X11_Y29_N8
\cerrar_barrera~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_barrera,
	o => \cerrar_barrera~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\vehicle2_position[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(3),
	o => \vehicle2_position[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\vehicle1_position[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(3),
	o => \vehicle1_position[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\vehicle1_position[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(2),
	o => \vehicle1_position[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\vehicle2_position[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(2),
	o => \vehicle2_position[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\vehicle2_position[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(1),
	o => \vehicle2_position[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\vehicle1_position[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(1),
	o => \vehicle1_position[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\vehicle1_position[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(0),
	o => \vehicle1_position[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\vehicle2_position[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(0),
	o => \vehicle2_position[0]~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\VehicleSeparation_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~0_combout\ = (\vehicle1_position[0]~input_o\ & ((GND) # (!\vehicle2_position[0]~input_o\))) # (!\vehicle1_position[0]~input_o\ & (\vehicle2_position[0]~input_o\ $ (GND)))
-- \VehicleSeparation_inst|Add0~1\ = CARRY((\vehicle1_position[0]~input_o\) # (!\vehicle2_position[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[0]~input_o\,
	datab => \vehicle2_position[0]~input_o\,
	datad => VCC,
	combout => \VehicleSeparation_inst|Add0~0_combout\,
	cout => \VehicleSeparation_inst|Add0~1\);

-- Location: LCCOMB_X1_Y3_N2
\VehicleSeparation_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~2_combout\ = (\vehicle2_position[1]~input_o\ & ((\vehicle1_position[1]~input_o\ & (!\VehicleSeparation_inst|Add0~1\)) # (!\vehicle1_position[1]~input_o\ & ((\VehicleSeparation_inst|Add0~1\) # (GND))))) # 
-- (!\vehicle2_position[1]~input_o\ & ((\vehicle1_position[1]~input_o\ & (\VehicleSeparation_inst|Add0~1\ & VCC)) # (!\vehicle1_position[1]~input_o\ & (!\VehicleSeparation_inst|Add0~1\))))
-- \VehicleSeparation_inst|Add0~3\ = CARRY((\vehicle2_position[1]~input_o\ & ((!\VehicleSeparation_inst|Add0~1\) # (!\vehicle1_position[1]~input_o\))) # (!\vehicle2_position[1]~input_o\ & (!\vehicle1_position[1]~input_o\ & !\VehicleSeparation_inst|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[1]~input_o\,
	datab => \vehicle1_position[1]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~1\,
	combout => \VehicleSeparation_inst|Add0~2_combout\,
	cout => \VehicleSeparation_inst|Add0~3\);

-- Location: LCCOMB_X1_Y3_N4
\VehicleSeparation_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~4_combout\ = ((\vehicle1_position[2]~input_o\ $ (\vehicle2_position[2]~input_o\ $ (\VehicleSeparation_inst|Add0~3\)))) # (GND)
-- \VehicleSeparation_inst|Add0~5\ = CARRY((\vehicle1_position[2]~input_o\ & ((!\VehicleSeparation_inst|Add0~3\) # (!\vehicle2_position[2]~input_o\))) # (!\vehicle1_position[2]~input_o\ & (!\vehicle2_position[2]~input_o\ & !\VehicleSeparation_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[2]~input_o\,
	datab => \vehicle2_position[2]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~3\,
	combout => \VehicleSeparation_inst|Add0~4_combout\,
	cout => \VehicleSeparation_inst|Add0~5\);

-- Location: LCCOMB_X1_Y3_N6
\VehicleSeparation_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~6_combout\ = (\vehicle2_position[3]~input_o\ & ((\vehicle1_position[3]~input_o\ & (!\VehicleSeparation_inst|Add0~5\)) # (!\vehicle1_position[3]~input_o\ & ((\VehicleSeparation_inst|Add0~5\) # (GND))))) # 
-- (!\vehicle2_position[3]~input_o\ & ((\vehicle1_position[3]~input_o\ & (\VehicleSeparation_inst|Add0~5\ & VCC)) # (!\vehicle1_position[3]~input_o\ & (!\VehicleSeparation_inst|Add0~5\))))
-- \VehicleSeparation_inst|Add0~7\ = CARRY((\vehicle2_position[3]~input_o\ & ((!\VehicleSeparation_inst|Add0~5\) # (!\vehicle1_position[3]~input_o\))) # (!\vehicle2_position[3]~input_o\ & (!\vehicle1_position[3]~input_o\ & !\VehicleSeparation_inst|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[3]~input_o\,
	datab => \vehicle1_position[3]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~5\,
	combout => \VehicleSeparation_inst|Add0~6_combout\,
	cout => \VehicleSeparation_inst|Add0~7\);

-- Location: IOIBUF_X0_Y3_N8
\vehicle2_position[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(5),
	o => \vehicle2_position[5]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\vehicle1_position[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(5),
	o => \vehicle1_position[5]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\vehicle2_position[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(4),
	o => \vehicle2_position[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\vehicle1_position[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(4),
	o => \vehicle1_position[4]~input_o\);

-- Location: LCCOMB_X1_Y3_N8
\VehicleSeparation_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~8_combout\ = ((\vehicle2_position[4]~input_o\ $ (\vehicle1_position[4]~input_o\ $ (\VehicleSeparation_inst|Add0~7\)))) # (GND)
-- \VehicleSeparation_inst|Add0~9\ = CARRY((\vehicle2_position[4]~input_o\ & (\vehicle1_position[4]~input_o\ & !\VehicleSeparation_inst|Add0~7\)) # (!\vehicle2_position[4]~input_o\ & ((\vehicle1_position[4]~input_o\) # (!\VehicleSeparation_inst|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[4]~input_o\,
	datab => \vehicle1_position[4]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~7\,
	combout => \VehicleSeparation_inst|Add0~8_combout\,
	cout => \VehicleSeparation_inst|Add0~9\);

-- Location: LCCOMB_X1_Y3_N10
\VehicleSeparation_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~10_combout\ = (\vehicle2_position[5]~input_o\ & ((\vehicle1_position[5]~input_o\ & (!\VehicleSeparation_inst|Add0~9\)) # (!\vehicle1_position[5]~input_o\ & ((\VehicleSeparation_inst|Add0~9\) # (GND))))) # 
-- (!\vehicle2_position[5]~input_o\ & ((\vehicle1_position[5]~input_o\ & (\VehicleSeparation_inst|Add0~9\ & VCC)) # (!\vehicle1_position[5]~input_o\ & (!\VehicleSeparation_inst|Add0~9\))))
-- \VehicleSeparation_inst|Add0~11\ = CARRY((\vehicle2_position[5]~input_o\ & ((!\VehicleSeparation_inst|Add0~9\) # (!\vehicle1_position[5]~input_o\))) # (!\vehicle2_position[5]~input_o\ & (!\vehicle1_position[5]~input_o\ & 
-- !\VehicleSeparation_inst|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[5]~input_o\,
	datab => \vehicle1_position[5]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~9\,
	combout => \VehicleSeparation_inst|Add0~10_combout\,
	cout => \VehicleSeparation_inst|Add0~11\);

-- Location: IOIBUF_X1_Y0_N8
\vehicle1_position[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(6),
	o => \vehicle1_position[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\vehicle2_position[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(6),
	o => \vehicle2_position[6]~input_o\);

-- Location: LCCOMB_X1_Y3_N12
\VehicleSeparation_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~12_combout\ = ((\vehicle1_position[6]~input_o\ $ (\vehicle2_position[6]~input_o\ $ (\VehicleSeparation_inst|Add0~11\)))) # (GND)
-- \VehicleSeparation_inst|Add0~13\ = CARRY((\vehicle1_position[6]~input_o\ & ((!\VehicleSeparation_inst|Add0~11\) # (!\vehicle2_position[6]~input_o\))) # (!\vehicle1_position[6]~input_o\ & (!\vehicle2_position[6]~input_o\ & 
-- !\VehicleSeparation_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[6]~input_o\,
	datab => \vehicle2_position[6]~input_o\,
	datad => VCC,
	cin => \VehicleSeparation_inst|Add0~11\,
	combout => \VehicleSeparation_inst|Add0~12_combout\,
	cout => \VehicleSeparation_inst|Add0~13\);

-- Location: LCCOMB_X1_Y3_N14
\VehicleSeparation_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|Add0~14_combout\ = \VehicleSeparation_inst|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VehicleSeparation_inst|Add0~13\,
	combout => \VehicleSeparation_inst|Add0~14_combout\);

-- Location: LCCOMB_X1_Y3_N24
\VehicleSeparation_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|LessThan0~0_combout\ = (\VehicleSeparation_inst|Add0~10_combout\ & (!\VehicleSeparation_inst|Add0~14_combout\ & (\VehicleSeparation_inst|Add0~8_combout\ & \VehicleSeparation_inst|Add0~12_combout\))) # 
-- (!\VehicleSeparation_inst|Add0~10_combout\ & (\VehicleSeparation_inst|Add0~14_combout\ & (!\VehicleSeparation_inst|Add0~8_combout\ & !\VehicleSeparation_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VehicleSeparation_inst|Add0~10_combout\,
	datab => \VehicleSeparation_inst|Add0~14_combout\,
	datac => \VehicleSeparation_inst|Add0~8_combout\,
	datad => \VehicleSeparation_inst|Add0~12_combout\,
	combout => \VehicleSeparation_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y3_N26
\VehicleSeparation_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|LessThan0~1_combout\ = (\VehicleSeparation_inst|Add0~12_combout\ & (\VehicleSeparation_inst|Add0~0_combout\ & (\VehicleSeparation_inst|Add0~4_combout\ & \VehicleSeparation_inst|Add0~2_combout\))) # 
-- (!\VehicleSeparation_inst|Add0~12_combout\ & (((\VehicleSeparation_inst|Add0~4_combout\) # (\VehicleSeparation_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VehicleSeparation_inst|Add0~12_combout\,
	datab => \VehicleSeparation_inst|Add0~0_combout\,
	datac => \VehicleSeparation_inst|Add0~4_combout\,
	datad => \VehicleSeparation_inst|Add0~2_combout\,
	combout => \VehicleSeparation_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y3_N20
\VehicleSeparation_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VehicleSeparation_inst|LessThan0~2_combout\ = (\VehicleSeparation_inst|LessThan0~0_combout\ & ((\VehicleSeparation_inst|Add0~6_combout\ & ((\VehicleSeparation_inst|Add0~12_combout\) # (!\VehicleSeparation_inst|LessThan0~1_combout\))) # 
-- (!\VehicleSeparation_inst|Add0~6_combout\ & ((\VehicleSeparation_inst|LessThan0~1_combout\) # (!\VehicleSeparation_inst|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VehicleSeparation_inst|Add0~6_combout\,
	datab => \VehicleSeparation_inst|LessThan0~0_combout\,
	datac => \VehicleSeparation_inst|LessThan0~1_combout\,
	datad => \VehicleSeparation_inst|Add0~12_combout\,
	combout => \VehicleSeparation_inst|LessThan0~2_combout\);

-- Location: IOIBUF_X11_Y29_N15
\identification_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(0),
	o => \identification_in[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\identification_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(1),
	o => \identification_in[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\identification_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_in(2),
	o => \identification_in[2]~input_o\);

ww_back_sensor_active <= \back_sensor_active~output_o\;

ww_tagValido <= \tagValido~output_o\;

ww_barrera_abierta <= \barrera_abierta~output_o\;

ww_alert <= \alert~output_o\;
END structure;


