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

-- DATE "03/12/2024 16:47:05"

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

ENTITY 	VehicleSeparation IS
    PORT (
	vehicle1_position : IN STD.STANDARD.integer range 0 TO 100;
	vehicle2_position : IN STD.STANDARD.integer range 0 TO 100;
	alert : OUT std_logic
	);
END VehicleSeparation;

-- Design Ports Information
-- alert	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle2_position[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle1_position[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VehicleSeparation IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_vehicle1_position : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_vehicle2_position : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_alert : std_logic;
SIGNAL \alert~output_o\ : std_logic;
SIGNAL \vehicle1_position[3]~input_o\ : std_logic;
SIGNAL \vehicle2_position[3]~input_o\ : std_logic;
SIGNAL \vehicle2_position[2]~input_o\ : std_logic;
SIGNAL \vehicle1_position[2]~input_o\ : std_logic;
SIGNAL \vehicle2_position[1]~input_o\ : std_logic;
SIGNAL \vehicle1_position[1]~input_o\ : std_logic;
SIGNAL \vehicle2_position[0]~input_o\ : std_logic;
SIGNAL \vehicle1_position[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \vehicle2_position[5]~input_o\ : std_logic;
SIGNAL \vehicle1_position[5]~input_o\ : std_logic;
SIGNAL \vehicle1_position[4]~input_o\ : std_logic;
SIGNAL \vehicle2_position[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \vehicle1_position[6]~input_o\ : std_logic;
SIGNAL \vehicle2_position[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;

BEGIN

ww_vehicle1_position <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(vehicle1_position, 7);
ww_vehicle2_position <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(vehicle2_position, 7);
alert <= ww_alert;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y5_N16
\alert~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \alert~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\vehicle1_position[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(3),
	o => \vehicle1_position[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\vehicle2_position[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(3),
	o => \vehicle2_position[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\vehicle2_position[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(2),
	o => \vehicle2_position[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\vehicle1_position[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(2),
	o => \vehicle1_position[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\vehicle2_position[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(1),
	o => \vehicle2_position[1]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\vehicle1_position[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(1),
	o => \vehicle1_position[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\vehicle2_position[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(0),
	o => \vehicle2_position[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\vehicle1_position[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(0),
	o => \vehicle1_position[0]~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\vehicle2_position[0]~input_o\ & (\vehicle1_position[0]~input_o\ $ (VCC))) # (!\vehicle2_position[0]~input_o\ & ((\vehicle1_position[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\vehicle1_position[0]~input_o\) # (!\vehicle2_position[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[0]~input_o\,
	datab => \vehicle1_position[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y5_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\vehicle2_position[1]~input_o\ & ((\vehicle1_position[1]~input_o\ & (!\Add0~1\)) # (!\vehicle1_position[1]~input_o\ & ((\Add0~1\) # (GND))))) # (!\vehicle2_position[1]~input_o\ & ((\vehicle1_position[1]~input_o\ & (\Add0~1\ & VCC)) # 
-- (!\vehicle1_position[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\vehicle2_position[1]~input_o\ & ((!\Add0~1\) # (!\vehicle1_position[1]~input_o\))) # (!\vehicle2_position[1]~input_o\ & (!\vehicle1_position[1]~input_o\ & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[1]~input_o\,
	datab => \vehicle1_position[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y5_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\vehicle2_position[2]~input_o\ $ (\vehicle1_position[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\vehicle2_position[2]~input_o\ & (\vehicle1_position[2]~input_o\ & !\Add0~3\)) # (!\vehicle2_position[2]~input_o\ & ((\vehicle1_position[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[2]~input_o\,
	datab => \vehicle1_position[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y5_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\vehicle1_position[3]~input_o\ & ((\vehicle2_position[3]~input_o\ & (!\Add0~5\)) # (!\vehicle2_position[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\vehicle1_position[3]~input_o\ & ((\vehicle2_position[3]~input_o\ & ((\Add0~5\) # (GND))) # 
-- (!\vehicle2_position[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\vehicle1_position[3]~input_o\ & (\vehicle2_position[3]~input_o\ & !\Add0~5\)) # (!\vehicle1_position[3]~input_o\ & ((\vehicle2_position[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[3]~input_o\,
	datab => \vehicle2_position[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X0_Y6_N22
\vehicle2_position[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(5),
	o => \vehicle2_position[5]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\vehicle1_position[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(5),
	o => \vehicle1_position[5]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\vehicle1_position[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(4),
	o => \vehicle1_position[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\vehicle2_position[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(4),
	o => \vehicle2_position[4]~input_o\);

-- Location: LCCOMB_X1_Y5_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\vehicle1_position[4]~input_o\ $ (\vehicle2_position[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\vehicle1_position[4]~input_o\ & ((!\Add0~7\) # (!\vehicle2_position[4]~input_o\))) # (!\vehicle1_position[4]~input_o\ & (!\vehicle2_position[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[4]~input_o\,
	datab => \vehicle2_position[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y5_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\vehicle2_position[5]~input_o\ & ((\vehicle1_position[5]~input_o\ & (!\Add0~9\)) # (!\vehicle1_position[5]~input_o\ & ((\Add0~9\) # (GND))))) # (!\vehicle2_position[5]~input_o\ & ((\vehicle1_position[5]~input_o\ & (\Add0~9\ & VCC)) # 
-- (!\vehicle1_position[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\vehicle2_position[5]~input_o\ & ((!\Add0~9\) # (!\vehicle1_position[5]~input_o\))) # (!\vehicle2_position[5]~input_o\ & (!\vehicle1_position[5]~input_o\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle2_position[5]~input_o\,
	datab => \vehicle1_position[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X0_Y8_N22
\vehicle1_position[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle1_position(6),
	o => \vehicle1_position[6]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\vehicle2_position[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle2_position(6),
	o => \vehicle2_position[6]~input_o\);

-- Location: LCCOMB_X1_Y5_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\vehicle1_position[6]~input_o\ $ (\vehicle2_position[6]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\vehicle1_position[6]~input_o\ & ((!\Add0~11\) # (!\vehicle2_position[6]~input_o\))) # (!\vehicle1_position[6]~input_o\ & (!\vehicle2_position[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle1_position[6]~input_o\,
	datab => \vehicle2_position[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y5_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y5_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~10_combout\ & (!\Add0~14_combout\ & (\Add0~8_combout\ & \Add0~12_combout\))) # (!\Add0~10_combout\ & (\Add0~14_combout\ & (!\Add0~8_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~12_combout\ & (\Add0~0_combout\ & (\Add0~4_combout\ & \Add0~2_combout\))) # (!\Add0~12_combout\ & (((\Add0~4_combout\) # (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y5_N20
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & ((\Add0~6_combout\ & ((\Add0~12_combout\) # (!\LessThan0~1_combout\))) # (!\Add0~6_combout\ & ((\LessThan0~1_combout\) # (!\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~2_combout\);

ww_alert <= \alert~output_o\;
END structure;


