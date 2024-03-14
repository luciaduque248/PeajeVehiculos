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

-- DATE "03/14/2024 17:33:03"

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

ENTITY 	Peaje_electronico IS
    PORT (
	CLK : IN std_logic;
	REINICIO : IN std_logic;
	DETECTOR_VEHICULO : IN std_logic;
	ABRIR_TALANQUERA : IN std_logic;
	IDVALIDA : IN std_logic;
	SALIDA_SEMAFORO_VERDE : BUFFER std_logic;
	CONTADOR_VEHICULAR : BUFFER std_logic_vector(7 DOWNTO 0);
	TIEMPODEPASOVEHICULAR : BUFFER std_logic_vector(15 DOWNTO 0);
	TALANQUERA_CERRADA_TIEMPO : BUFFER std_logic_vector(15 DOWNTO 0);
	SemaforoRojo : BUFFER std_logic;
	Semaforoverde : BUFFER std_logic;
	talanquera : BUFFER std_logic;
	LED_AUTORIZADO_VERDE : BUFFER std_logic;
	LED_DENEGADO_ROJO : BUFFER std_logic;
	CATEGORIA_VEHICULO : IN std_logic_vector(1 DOWNTO 0)
	);
END Peaje_electronico;

-- Design Ports Information
-- DETECTOR_VEHICULO	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_SEMAFORO_VERDE	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[7]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[8]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[9]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[11]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[12]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[14]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[15]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[9]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[11]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[14]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[15]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SemaforoRojo	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Semaforoverde	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_AUTORIZADO_VERDE	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_DENEGADO_ROJO	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CATEGORIA_VEHICULO[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CATEGORIA_VEHICULO[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABRIR_TALANQUERA	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REINICIO	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDVALIDA	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Peaje_electronico IS
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
SIGNAL ww_DETECTOR_VEHICULO : std_logic;
SIGNAL ww_ABRIR_TALANQUERA : std_logic;
SIGNAL ww_IDVALIDA : std_logic;
SIGNAL ww_SALIDA_SEMAFORO_VERDE : std_logic;
SIGNAL ww_CONTADOR_VEHICULAR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TIEMPODEPASOVEHICULAR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TALANQUERA_CERRADA_TIEMPO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SemaforoRojo : std_logic;
SIGNAL ww_Semaforoverde : std_logic;
SIGNAL ww_talanquera : std_logic;
SIGNAL ww_LED_AUTORIZADO_VERDE : std_logic;
SIGNAL ww_LED_DENEGADO_ROJO : std_logic;
SIGNAL ww_CATEGORIA_VEHICULO : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DETECTOR_VEHICULO~input_o\ : std_logic;
SIGNAL \CATEGORIA_VEHICULO[0]~input_o\ : std_logic;
SIGNAL \CATEGORIA_VEHICULO[1]~input_o\ : std_logic;
SIGNAL \ABRIR_TALANQUERA~input_o\ : std_logic;
SIGNAL \SALIDA_SEMAFORO_VERDE~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[0]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[1]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[2]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[3]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[4]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[5]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[6]~output_o\ : std_logic;
SIGNAL \CONTADOR_VEHICULAR[7]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[0]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[1]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[2]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[3]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[4]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[5]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[6]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[7]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[8]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[9]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[10]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[11]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[12]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[13]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[14]~output_o\ : std_logic;
SIGNAL \TIEMPODEPASOVEHICULAR[15]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[0]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[1]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[2]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[3]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[4]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[5]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[6]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[7]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[8]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[9]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[10]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[11]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[12]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[13]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[14]~output_o\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[15]~output_o\ : std_logic;
SIGNAL \SemaforoRojo~output_o\ : std_logic;
SIGNAL \Semaforoverde~output_o\ : std_logic;
SIGNAL \talanquera~output_o\ : std_logic;
SIGNAL \LED_AUTORIZADO_VERDE~output_o\ : std_logic;
SIGNAL \LED_DENEGADO_ROJO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Front_sensor_inst|CONTADOR_TIEMPO[2]~0_combout\ : std_logic;
SIGNAL \Front_sensor_inst|CONTADOR_TIEMPO[1]~2_combout\ : std_logic;
SIGNAL \Front_sensor_inst|CONTADOR_TIEMPO[0]~1_combout\ : std_logic;
SIGNAL \Front_sensor_inst|Equal0~0_combout\ : std_logic;
SIGNAL \Front_sensor_inst|DETECTOR_VEHICULO~q\ : std_logic;
SIGNAL \Semaforo_salida_inst|Estado~combout\ : std_logic;
SIGNAL \IDVALIDA~input_o\ : std_logic;
SIGNAL \Id_vehiculo_inst|ESTADO~0_combout\ : std_logic;
SIGNAL \REINICIO~input_o\ : std_logic;
SIGNAL \Id_vehiculo_inst|ESTADO~q\ : std_logic;
SIGNAL \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~0_combout\ : std_logic;
SIGNAL \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~q\ : std_logic;
SIGNAL \Front_sensor_inst|CONTADOR_TIEMPO\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_REINICIO~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_REINICIO <= REINICIO;
ww_DETECTOR_VEHICULO <= DETECTOR_VEHICULO;
ww_ABRIR_TALANQUERA <= ABRIR_TALANQUERA;
ww_IDVALIDA <= IDVALIDA;
SALIDA_SEMAFORO_VERDE <= ww_SALIDA_SEMAFORO_VERDE;
CONTADOR_VEHICULAR <= ww_CONTADOR_VEHICULAR;
TIEMPODEPASOVEHICULAR <= ww_TIEMPODEPASOVEHICULAR;
TALANQUERA_CERRADA_TIEMPO <= ww_TALANQUERA_CERRADA_TIEMPO;
SemaforoRojo <= ww_SemaforoRojo;
Semaforoverde <= ww_Semaforoverde;
talanquera <= ww_talanquera;
LED_AUTORIZADO_VERDE <= ww_LED_AUTORIZADO_VERDE;
LED_DENEGADO_ROJO <= ww_LED_DENEGADO_ROJO;
ww_CATEGORIA_VEHICULO <= CATEGORIA_VEHICULO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_REINICIO~input_o\ <= NOT \REINICIO~input_o\;

-- Location: IOOBUF_X5_Y29_N23
\SALIDA_SEMAFORO_VERDE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SALIDA_SEMAFORO_VERDE~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\CONTADOR_VEHICULAR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\CONTADOR_VEHICULAR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\CONTADOR_VEHICULAR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[2]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\CONTADOR_VEHICULAR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\CONTADOR_VEHICULAR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\CONTADOR_VEHICULAR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[5]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\CONTADOR_VEHICULAR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\CONTADOR_VEHICULAR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\TIEMPODEPASOVEHICULAR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\TIEMPODEPASOVEHICULAR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\TIEMPODEPASOVEHICULAR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\TIEMPODEPASOVEHICULAR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\TIEMPODEPASOVEHICULAR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\TIEMPODEPASOVEHICULAR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\TIEMPODEPASOVEHICULAR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[6]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\TIEMPODEPASOVEHICULAR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\TIEMPODEPASOVEHICULAR[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\TIEMPODEPASOVEHICULAR[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\TIEMPODEPASOVEHICULAR[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\TIEMPODEPASOVEHICULAR[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[11]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\TIEMPODEPASOVEHICULAR[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[12]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\TIEMPODEPASOVEHICULAR[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[13]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\TIEMPODEPASOVEHICULAR[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\TIEMPODEPASOVEHICULAR[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\TALANQUERA_CERRADA_TIEMPO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\TALANQUERA_CERRADA_TIEMPO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\TALANQUERA_CERRADA_TIEMPO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[2]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\TALANQUERA_CERRADA_TIEMPO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\TALANQUERA_CERRADA_TIEMPO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\TALANQUERA_CERRADA_TIEMPO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\TALANQUERA_CERRADA_TIEMPO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\TALANQUERA_CERRADA_TIEMPO[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[7]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\TALANQUERA_CERRADA_TIEMPO[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\TALANQUERA_CERRADA_TIEMPO[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\TALANQUERA_CERRADA_TIEMPO[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[10]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\TALANQUERA_CERRADA_TIEMPO[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\TALANQUERA_CERRADA_TIEMPO[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[12]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\TALANQUERA_CERRADA_TIEMPO[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\TALANQUERA_CERRADA_TIEMPO[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[14]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\TALANQUERA_CERRADA_TIEMPO[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[15]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\SemaforoRojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SemaforoRojo~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Semaforoverde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_salida_inst|Estado~combout\,
	devoe => ww_devoe,
	o => \Semaforoverde~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\talanquera~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LED_AUTORIZADO_VERDE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~q\,
	devoe => ww_devoe,
	o => \LED_AUTORIZADO_VERDE~output_o\);

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X1_Y20_N18
\Front_sensor_inst|CONTADOR_TIEMPO[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_inst|CONTADOR_TIEMPO[2]~0_combout\ = (\Front_sensor_inst|CONTADOR_TIEMPO\(2) & ((\Front_sensor_inst|CONTADOR_TIEMPO\(1)) # (\Front_sensor_inst|CONTADOR_TIEMPO\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Front_sensor_inst|CONTADOR_TIEMPO\(1),
	datac => \Front_sensor_inst|CONTADOR_TIEMPO\(2),
	datad => \Front_sensor_inst|CONTADOR_TIEMPO\(0),
	combout => \Front_sensor_inst|CONTADOR_TIEMPO[2]~0_combout\);

-- Location: FF_X1_Y20_N19
\Front_sensor_inst|CONTADOR_TIEMPO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Front_sensor_inst|CONTADOR_TIEMPO[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Front_sensor_inst|CONTADOR_TIEMPO\(2));

-- Location: LCCOMB_X1_Y20_N22
\Front_sensor_inst|CONTADOR_TIEMPO[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_inst|CONTADOR_TIEMPO[1]~2_combout\ = (\Front_sensor_inst|CONTADOR_TIEMPO\(1) & ((\Front_sensor_inst|CONTADOR_TIEMPO\(0)))) # (!\Front_sensor_inst|CONTADOR_TIEMPO\(1) & (\Front_sensor_inst|CONTADOR_TIEMPO\(2) & 
-- !\Front_sensor_inst|CONTADOR_TIEMPO\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Front_sensor_inst|CONTADOR_TIEMPO\(2),
	datac => \Front_sensor_inst|CONTADOR_TIEMPO\(1),
	datad => \Front_sensor_inst|CONTADOR_TIEMPO\(0),
	combout => \Front_sensor_inst|CONTADOR_TIEMPO[1]~2_combout\);

-- Location: FF_X1_Y20_N23
\Front_sensor_inst|CONTADOR_TIEMPO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Front_sensor_inst|CONTADOR_TIEMPO[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Front_sensor_inst|CONTADOR_TIEMPO\(1));

-- Location: LCCOMB_X1_Y20_N16
\Front_sensor_inst|CONTADOR_TIEMPO[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_inst|CONTADOR_TIEMPO[0]~1_combout\ = (!\Front_sensor_inst|CONTADOR_TIEMPO\(0) & ((\Front_sensor_inst|CONTADOR_TIEMPO\(1)) # (\Front_sensor_inst|CONTADOR_TIEMPO\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Front_sensor_inst|CONTADOR_TIEMPO\(1),
	datac => \Front_sensor_inst|CONTADOR_TIEMPO\(0),
	datad => \Front_sensor_inst|CONTADOR_TIEMPO\(2),
	combout => \Front_sensor_inst|CONTADOR_TIEMPO[0]~1_combout\);

-- Location: FF_X1_Y20_N17
\Front_sensor_inst|CONTADOR_TIEMPO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Front_sensor_inst|CONTADOR_TIEMPO[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Front_sensor_inst|CONTADOR_TIEMPO\(0));

-- Location: LCCOMB_X1_Y20_N8
\Front_sensor_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_inst|Equal0~0_combout\ = (!\Front_sensor_inst|CONTADOR_TIEMPO\(0) & (!\Front_sensor_inst|CONTADOR_TIEMPO\(1) & !\Front_sensor_inst|CONTADOR_TIEMPO\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Front_sensor_inst|CONTADOR_TIEMPO\(0),
	datac => \Front_sensor_inst|CONTADOR_TIEMPO\(1),
	datad => \Front_sensor_inst|CONTADOR_TIEMPO\(2),
	combout => \Front_sensor_inst|Equal0~0_combout\);

-- Location: FF_X1_Y20_N25
\Front_sensor_inst|DETECTOR_VEHICULO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Front_sensor_inst|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Front_sensor_inst|DETECTOR_VEHICULO~q\);

-- Location: LCCOMB_X1_Y20_N24
\Semaforo_salida_inst|Estado\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_salida_inst|Estado~combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\Front_sensor_inst|DETECTOR_VEHICULO~q\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\Semaforo_salida_inst|Estado~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Semaforo_salida_inst|Estado~combout\,
	datac => \Front_sensor_inst|DETECTOR_VEHICULO~q\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \Semaforo_salida_inst|Estado~combout\);

-- Location: IOIBUF_X0_Y25_N22
\IDVALIDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDVALIDA,
	o => \IDVALIDA~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\Id_vehiculo_inst|ESTADO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Id_vehiculo_inst|ESTADO~0_combout\ = (!\Id_vehiculo_inst|ESTADO~q\ & \IDVALIDA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Id_vehiculo_inst|ESTADO~q\,
	datad => \IDVALIDA~input_o\,
	combout => \Id_vehiculo_inst|ESTADO~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\REINICIO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REINICIO,
	o => \REINICIO~input_o\);

-- Location: FF_X1_Y25_N3
\Id_vehiculo_inst|ESTADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Id_vehiculo_inst|ESTADO~0_combout\,
	clrn => \ALT_INV_REINICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Id_vehiculo_inst|ESTADO~q\);

-- Location: LCCOMB_X1_Y25_N20
\Id_vehiculo_inst|LED_AUTORIZADO_VERDE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~0_combout\ = (\Id_vehiculo_inst|LED_AUTORIZADO_VERDE~q\) # (\Id_vehiculo_inst|ESTADO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~q\,
	datad => \Id_vehiculo_inst|ESTADO~q\,
	combout => \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~0_combout\);

-- Location: FF_X1_Y25_N21
\Id_vehiculo_inst|LED_AUTORIZADO_VERDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~0_combout\,
	clrn => \ALT_INV_REINICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Id_vehiculo_inst|LED_AUTORIZADO_VERDE~q\);

-- Location: IOIBUF_X0_Y26_N1
\DETECTOR_VEHICULO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DETECTOR_VEHICULO,
	o => \DETECTOR_VEHICULO~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\CATEGORIA_VEHICULO[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CATEGORIA_VEHICULO(0),
	o => \CATEGORIA_VEHICULO[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\CATEGORIA_VEHICULO[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CATEGORIA_VEHICULO(1),
	o => \CATEGORIA_VEHICULO[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\ABRIR_TALANQUERA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABRIR_TALANQUERA,
	o => \ABRIR_TALANQUERA~input_o\);

ww_SALIDA_SEMAFORO_VERDE <= \SALIDA_SEMAFORO_VERDE~output_o\;

ww_CONTADOR_VEHICULAR(0) <= \CONTADOR_VEHICULAR[0]~output_o\;

ww_CONTADOR_VEHICULAR(1) <= \CONTADOR_VEHICULAR[1]~output_o\;

ww_CONTADOR_VEHICULAR(2) <= \CONTADOR_VEHICULAR[2]~output_o\;

ww_CONTADOR_VEHICULAR(3) <= \CONTADOR_VEHICULAR[3]~output_o\;

ww_CONTADOR_VEHICULAR(4) <= \CONTADOR_VEHICULAR[4]~output_o\;

ww_CONTADOR_VEHICULAR(5) <= \CONTADOR_VEHICULAR[5]~output_o\;

ww_CONTADOR_VEHICULAR(6) <= \CONTADOR_VEHICULAR[6]~output_o\;

ww_CONTADOR_VEHICULAR(7) <= \CONTADOR_VEHICULAR[7]~output_o\;

ww_TIEMPODEPASOVEHICULAR(0) <= \TIEMPODEPASOVEHICULAR[0]~output_o\;

ww_TIEMPODEPASOVEHICULAR(1) <= \TIEMPODEPASOVEHICULAR[1]~output_o\;

ww_TIEMPODEPASOVEHICULAR(2) <= \TIEMPODEPASOVEHICULAR[2]~output_o\;

ww_TIEMPODEPASOVEHICULAR(3) <= \TIEMPODEPASOVEHICULAR[3]~output_o\;

ww_TIEMPODEPASOVEHICULAR(4) <= \TIEMPODEPASOVEHICULAR[4]~output_o\;

ww_TIEMPODEPASOVEHICULAR(5) <= \TIEMPODEPASOVEHICULAR[5]~output_o\;

ww_TIEMPODEPASOVEHICULAR(6) <= \TIEMPODEPASOVEHICULAR[6]~output_o\;

ww_TIEMPODEPASOVEHICULAR(7) <= \TIEMPODEPASOVEHICULAR[7]~output_o\;

ww_TIEMPODEPASOVEHICULAR(8) <= \TIEMPODEPASOVEHICULAR[8]~output_o\;

ww_TIEMPODEPASOVEHICULAR(9) <= \TIEMPODEPASOVEHICULAR[9]~output_o\;

ww_TIEMPODEPASOVEHICULAR(10) <= \TIEMPODEPASOVEHICULAR[10]~output_o\;

ww_TIEMPODEPASOVEHICULAR(11) <= \TIEMPODEPASOVEHICULAR[11]~output_o\;

ww_TIEMPODEPASOVEHICULAR(12) <= \TIEMPODEPASOVEHICULAR[12]~output_o\;

ww_TIEMPODEPASOVEHICULAR(13) <= \TIEMPODEPASOVEHICULAR[13]~output_o\;

ww_TIEMPODEPASOVEHICULAR(14) <= \TIEMPODEPASOVEHICULAR[14]~output_o\;

ww_TIEMPODEPASOVEHICULAR(15) <= \TIEMPODEPASOVEHICULAR[15]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(0) <= \TALANQUERA_CERRADA_TIEMPO[0]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(1) <= \TALANQUERA_CERRADA_TIEMPO[1]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(2) <= \TALANQUERA_CERRADA_TIEMPO[2]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(3) <= \TALANQUERA_CERRADA_TIEMPO[3]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(4) <= \TALANQUERA_CERRADA_TIEMPO[4]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(5) <= \TALANQUERA_CERRADA_TIEMPO[5]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(6) <= \TALANQUERA_CERRADA_TIEMPO[6]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(7) <= \TALANQUERA_CERRADA_TIEMPO[7]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(8) <= \TALANQUERA_CERRADA_TIEMPO[8]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(9) <= \TALANQUERA_CERRADA_TIEMPO[9]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(10) <= \TALANQUERA_CERRADA_TIEMPO[10]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(11) <= \TALANQUERA_CERRADA_TIEMPO[11]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(12) <= \TALANQUERA_CERRADA_TIEMPO[12]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(13) <= \TALANQUERA_CERRADA_TIEMPO[13]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(14) <= \TALANQUERA_CERRADA_TIEMPO[14]~output_o\;

ww_TALANQUERA_CERRADA_TIEMPO(15) <= \TALANQUERA_CERRADA_TIEMPO[15]~output_o\;

ww_SemaforoRojo <= \SemaforoRojo~output_o\;

ww_Semaforoverde <= \Semaforoverde~output_o\;

ww_talanquera <= \talanquera~output_o\;

ww_LED_AUTORIZADO_VERDE <= \LED_AUTORIZADO_VERDE~output_o\;

ww_LED_DENEGADO_ROJO <= \LED_DENEGADO_ROJO~output_o\;
END structure;


