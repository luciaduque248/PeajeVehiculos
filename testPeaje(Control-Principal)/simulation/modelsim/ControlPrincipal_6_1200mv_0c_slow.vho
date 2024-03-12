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

-- DATE "03/12/2024 17:38:42"

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

ENTITY 	ControlPrincipal IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	vehicle_detected_front : IN std_logic;
	vehicle_detected_back : IN std_logic;
	identification_valid : IN std_logic;
	barrier_closed : OUT std_logic;
	semaforo_entrada : OUT std_logic_vector(1 DOWNTO 0);
	semaforo_salida : OUT std_logic_vector(1 DOWNTO 0);
	talanquera_inicial : OUT std_logic;
	talanquera_final : OUT std_logic;
	display_data : OUT std_logic_vector(6 DOWNTO 0);
	green_led : OUT std_logic;
	red_led : OUT std_logic;
	alarm : OUT std_logic
	);
END ControlPrincipal;

-- Design Ports Information
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected_front	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected_back	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identification_valid	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrier_closed	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_salida[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_inicial	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_final	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_data[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_vehicle_detected_front : std_logic;
SIGNAL ww_vehicle_detected_back : std_logic;
SIGNAL ww_identification_valid : std_logic;
SIGNAL ww_barrier_closed : std_logic;
SIGNAL ww_semaforo_entrada : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_semaforo_salida : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_talanquera_inicial : std_logic;
SIGNAL ww_talanquera_final : std_logic;
SIGNAL ww_display_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_green_led : std_logic;
SIGNAL ww_red_led : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \vehicle_detected_front~input_o\ : std_logic;
SIGNAL \vehicle_detected_back~input_o\ : std_logic;
SIGNAL \identification_valid~input_o\ : std_logic;
SIGNAL \barrier_closed~output_o\ : std_logic;
SIGNAL \semaforo_entrada[0]~output_o\ : std_logic;
SIGNAL \semaforo_entrada[1]~output_o\ : std_logic;
SIGNAL \semaforo_salida[0]~output_o\ : std_logic;
SIGNAL \semaforo_salida[1]~output_o\ : std_logic;
SIGNAL \talanquera_inicial~output_o\ : std_logic;
SIGNAL \talanquera_final~output_o\ : std_logic;
SIGNAL \display_data[0]~output_o\ : std_logic;
SIGNAL \display_data[1]~output_o\ : std_logic;
SIGNAL \display_data[2]~output_o\ : std_logic;
SIGNAL \display_data[3]~output_o\ : std_logic;
SIGNAL \display_data[4]~output_o\ : std_logic;
SIGNAL \display_data[5]~output_o\ : std_logic;
SIGNAL \display_data[6]~output_o\ : std_logic;
SIGNAL \green_led~output_o\ : std_logic;
SIGNAL \red_led~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_vehicle_detected_front <= vehicle_detected_front;
ww_vehicle_detected_back <= vehicle_detected_back;
ww_identification_valid <= identification_valid;
barrier_closed <= ww_barrier_closed;
semaforo_entrada <= ww_semaforo_entrada;
semaforo_salida <= ww_semaforo_salida;
talanquera_inicial <= ww_talanquera_inicial;
talanquera_final <= ww_talanquera_final;
display_data <= ww_display_data;
green_led <= ww_green_led;
red_led <= ww_red_led;
alarm <= ww_alarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N2
\barrier_closed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \barrier_closed~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\semaforo_entrada[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_entrada[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\semaforo_entrada[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_entrada[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\semaforo_salida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_salida[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\semaforo_salida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_salida[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\talanquera_inicial~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera_inicial~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\talanquera_final~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera_final~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\display_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\display_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\display_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\display_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\display_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\display_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_data[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\green_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_led~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\red_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \red_led~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\vehicle_detected_front~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected_front,
	o => \vehicle_detected_front~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\vehicle_detected_back~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected_back,
	o => \vehicle_detected_back~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\identification_valid~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identification_valid,
	o => \identification_valid~input_o\);

ww_barrier_closed <= \barrier_closed~output_o\;

ww_semaforo_entrada(0) <= \semaforo_entrada[0]~output_o\;

ww_semaforo_entrada(1) <= \semaforo_entrada[1]~output_o\;

ww_semaforo_salida(0) <= \semaforo_salida[0]~output_o\;

ww_semaforo_salida(1) <= \semaforo_salida[1]~output_o\;

ww_talanquera_inicial <= \talanquera_inicial~output_o\;

ww_talanquera_final <= \talanquera_final~output_o\;

ww_display_data(0) <= \display_data[0]~output_o\;

ww_display_data(1) <= \display_data[1]~output_o\;

ww_display_data(2) <= \display_data[2]~output_o\;

ww_display_data(3) <= \display_data[3]~output_o\;

ww_display_data(4) <= \display_data[4]~output_o\;

ww_display_data(5) <= \display_data[5]~output_o\;

ww_display_data(6) <= \display_data[6]~output_o\;

ww_green_led <= \green_led~output_o\;

ww_red_led <= \red_led~output_o\;

ww_alarm <= \alarm~output_o\;
END structure;


