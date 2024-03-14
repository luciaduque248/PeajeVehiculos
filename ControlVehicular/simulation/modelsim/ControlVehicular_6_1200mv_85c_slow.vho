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

-- DATE "03/13/2024 00:37:07"

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

ENTITY 	ControlVehicular IS
    PORT (
	CLK : IN std_logic;
	REINICIO : IN std_logic;
	DETECTOR_VEHICULO : IN std_logic;
	ABRIR_TALANQUERA : IN std_logic;
	SALIDA_SEMAFORO_VERDE : IN std_logic;
	CONTADOR_VEHICULAR : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	TIEMPODEPASOVEHICULAR : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	TALANQUERA_CERRADA_TIEMPO : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0)
	);
END ControlVehicular;

-- Design Ports Information
-- CONTADOR_VEHICULAR[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[3]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTADOR_VEHICULAR[7]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[6]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[9]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[10]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[12]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIEMPODEPASOVEHICULAR[15]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[4]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[9]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[10]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[11]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[14]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TALANQUERA_CERRADA_TIEMPO[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REINICIO	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABRIR_TALANQUERA	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DETECTOR_VEHICULO	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_SEMAFORO_VERDE	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlVehicular IS
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
SIGNAL ww_SALIDA_SEMAFORO_VERDE : std_logic;
SIGNAL ww_CONTADOR_VEHICULAR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TIEMPODEPASOVEHICULAR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TALANQUERA_CERRADA_TIEMPO : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REINICIO~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[0]~23_combout\ : std_logic;
SIGNAL \REINICIO~input_o\ : std_logic;
SIGNAL \REINICIO~inputclkctrl_outclk\ : std_logic;
SIGNAL \DETECTOR_VEHICULO~input_o\ : std_logic;
SIGNAL \SALIDA_SEMAFORO_VERDE~input_o\ : std_logic;
SIGNAL \ABRIR_TALANQUERA~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \ESTADO.BARRIER_CLOSING~q\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[0]~1_combout\ : std_logic;
SIGNAL \ESTADO.IDLE~0_combout\ : std_logic;
SIGNAL \ESTADO.IDLE~q\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[1]~16_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[0]~17_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[1]~45_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[0]~18\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[1]~19_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[1]~20\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[2]~21_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[2]~22\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[3]~23_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[3]~24\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[4]~25_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[4]~26\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[5]~27_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[5]~28\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[6]~29_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[6]~30\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[7]~31_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[7]~32\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[8]~33_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[8]~34\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[9]~35_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[9]~36\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[10]~37_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[10]~38\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[11]~39_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[11]~40\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[12]~41_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[12]~42\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[13]~43_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[13]~44\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[14]~46_combout\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[14]~47\ : std_logic;
SIGNAL \TIEMPO_PASOVEHICULO[15]~48_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[0]~7_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ESTADO.VEHICLE_PASSING~q\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[0]~8_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[1]~9_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[1]~10\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[2]~11_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[2]~12\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[3]~13_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[3]~14\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[4]~15_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[4]~16\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[5]~17_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[5]~18\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[6]~19_combout\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[6]~20\ : std_logic;
SIGNAL \REGISTRO_CONTEOVEHICULAR[7]~21_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[0]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[1]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[5]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[6]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[7]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[8]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[9]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[10]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[11]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[12]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[13]~feeder_combout\ : std_logic;
SIGNAL \REGISTRO_TIEMPOVEHICULAR[14]~feeder_combout\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[0]~16_combout\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[14]~18_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[0]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[0]~17\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[1]~19_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[1]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[1]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[1]~20\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[2]~21_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[2]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[2]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[2]~22\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[3]~23_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[3]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[3]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[3]~24\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[4]~25_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[4]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[4]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[4]~26\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[5]~27_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[5]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[5]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[5]~28\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[6]~29_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[6]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[6]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[6]~30\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[7]~31_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[7]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[7]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[7]~32\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[8]~33_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[8]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[8]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[8]~34\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[9]~35_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[9]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[9]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[9]~36\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[10]~37_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[10]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[10]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[10]~38\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[11]~39_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[11]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[11]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[11]~40\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[12]~41_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[12]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[12]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[12]~42\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[13]~43_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[13]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[13]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[13]~44\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[14]~45_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[14]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[14]~reg0_q\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[14]~46\ : std_logic;
SIGNAL \TIEMPOTALANQUERA_CERRADA[15]~47_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[15]~reg0feeder_combout\ : std_logic;
SIGNAL \TALANQUERA_CERRADA_TIEMPO[15]~reg0_q\ : std_logic;
SIGNAL TIEMPO_PASOVEHICULO : std_logic_vector(15 DOWNTO 0);
SIGNAL TIEMPOTALANQUERA_CERRADA : std_logic_vector(15 DOWNTO 0);
SIGNAL REGISTRO_TIEMPOVEHICULAR : std_logic_vector(15 DOWNTO 0);
SIGNAL REGISTRO_CONTEOVEHICULAR : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_REINICIO~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ESTADO.BARRIER_CLOSING~q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.VEHICLE_PASSING~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_REINICIO <= REINICIO;
ww_DETECTOR_VEHICULO <= DETECTOR_VEHICULO;
ww_ABRIR_TALANQUERA <= ABRIR_TALANQUERA;
ww_SALIDA_SEMAFORO_VERDE <= SALIDA_SEMAFORO_VERDE;
CONTADOR_VEHICULAR <= IEEE.NUMERIC_STD.UNSIGNED(ww_CONTADOR_VEHICULAR);
TIEMPODEPASOVEHICULAR <= IEEE.NUMERIC_STD.UNSIGNED(ww_TIEMPODEPASOVEHICULAR);
TALANQUERA_CERRADA_TIEMPO <= IEEE.NUMERIC_STD.UNSIGNED(ww_TALANQUERA_CERRADA_TIEMPO);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\REINICIO~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REINICIO~input_o\);
\ALT_INV_REINICIO~inputclkctrl_outclk\ <= NOT \REINICIO~inputclkctrl_outclk\;
\ALT_INV_ESTADO.BARRIER_CLOSING~q\ <= NOT \ESTADO.BARRIER_CLOSING~q\;
\ALT_INV_ESTADO.VEHICLE_PASSING~q\ <= NOT \ESTADO.VEHICLE_PASSING~q\;

-- Location: IOOBUF_X41_Y7_N16
\CONTADOR_VEHICULAR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(0),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[0]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\CONTADOR_VEHICULAR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(1),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[1]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\CONTADOR_VEHICULAR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(2),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[2]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\CONTADOR_VEHICULAR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(3),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\CONTADOR_VEHICULAR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(4),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[4]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\CONTADOR_VEHICULAR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(5),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[5]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\CONTADOR_VEHICULAR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(6),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[6]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\CONTADOR_VEHICULAR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_CONTEOVEHICULAR(7),
	devoe => ww_devoe,
	o => \CONTADOR_VEHICULAR[7]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\TIEMPODEPASOVEHICULAR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(0),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\TIEMPODEPASOVEHICULAR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(1),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[1]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\TIEMPODEPASOVEHICULAR[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(2),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[2]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\TIEMPODEPASOVEHICULAR[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(3),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[3]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\TIEMPODEPASOVEHICULAR[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(4),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\TIEMPODEPASOVEHICULAR[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(5),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[5]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\TIEMPODEPASOVEHICULAR[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(6),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[6]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\TIEMPODEPASOVEHICULAR[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(7),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[7]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\TIEMPODEPASOVEHICULAR[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(8),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[8]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\TIEMPODEPASOVEHICULAR[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(9),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[9]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\TIEMPODEPASOVEHICULAR[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(10),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[10]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\TIEMPODEPASOVEHICULAR[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(11),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[11]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\TIEMPODEPASOVEHICULAR[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(12),
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
	i => REGISTRO_TIEMPOVEHICULAR(13),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[13]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\TIEMPODEPASOVEHICULAR[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(14),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[14]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\TIEMPODEPASOVEHICULAR[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => REGISTRO_TIEMPOVEHICULAR(15),
	devoe => ww_devoe,
	o => \TIEMPODEPASOVEHICULAR[15]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\TALANQUERA_CERRADA_TIEMPO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[0]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[0]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\TALANQUERA_CERRADA_TIEMPO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[1]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[1]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\TALANQUERA_CERRADA_TIEMPO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[2]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[2]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\TALANQUERA_CERRADA_TIEMPO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[3]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[3]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\TALANQUERA_CERRADA_TIEMPO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[4]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\TALANQUERA_CERRADA_TIEMPO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[5]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[5]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\TALANQUERA_CERRADA_TIEMPO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[6]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[6]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\TALANQUERA_CERRADA_TIEMPO[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[7]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[7]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\TALANQUERA_CERRADA_TIEMPO[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[8]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[8]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\TALANQUERA_CERRADA_TIEMPO[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[9]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[9]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\TALANQUERA_CERRADA_TIEMPO[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[10]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[10]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\TALANQUERA_CERRADA_TIEMPO[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[11]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[11]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\TALANQUERA_CERRADA_TIEMPO[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[12]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[12]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\TALANQUERA_CERRADA_TIEMPO[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[13]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[13]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\TALANQUERA_CERRADA_TIEMPO[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[14]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[14]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\TALANQUERA_CERRADA_TIEMPO[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TALANQUERA_CERRADA_TIEMPO[15]~reg0_q\,
	devoe => ww_devoe,
	o => \TALANQUERA_CERRADA_TIEMPO[15]~output_o\);

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

-- Location: LCCOMB_X39_Y9_N4
\REGISTRO_CONTEOVEHICULAR[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[0]~23_combout\ = !REGISTRO_CONTEOVEHICULAR(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => REGISTRO_CONTEOVEHICULAR(0),
	combout => \REGISTRO_CONTEOVEHICULAR[0]~23_combout\);

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

-- Location: IOIBUF_X41_Y12_N8
\DETECTOR_VEHICULO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DETECTOR_VEHICULO,
	o => \DETECTOR_VEHICULO~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\SALIDA_SEMAFORO_VERDE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SALIDA_SEMAFORO_VERDE,
	o => \SALIDA_SEMAFORO_VERDE~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\ABRIR_TALANQUERA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABRIR_TALANQUERA,
	o => \ABRIR_TALANQUERA~input_o\);

-- Location: LCCOMB_X40_Y9_N14
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\TIEMPO_PASOVEHICULO[1]~16_combout\ & ((\REGISTRO_CONTEOVEHICULAR[0]~8_combout\) # ((!\ABRIR_TALANQUERA~input_o\ & \ESTADO.BARRIER_CLOSING~q\)))) # (!\TIEMPO_PASOVEHICULO[1]~16_combout\ & (\ESTADO.BARRIER_CLOSING~q\ & 
-- (\ABRIR_TALANQUERA~input_o\ $ (\REGISTRO_CONTEOVEHICULAR[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABRIR_TALANQUERA~input_o\,
	datab => \TIEMPO_PASOVEHICULO[1]~16_combout\,
	datac => \ESTADO.BARRIER_CLOSING~q\,
	datad => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X40_Y9_N15
\ESTADO.BARRIER_CLOSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.BARRIER_CLOSING~q\);

-- Location: LCCOMB_X38_Y9_N28
\TALANQUERA_CERRADA_TIEMPO[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[0]~1_combout\ = (\ESTADO.BARRIER_CLOSING~q\ & \ABRIR_TALANQUERA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO.BARRIER_CLOSING~q\,
	datad => \ABRIR_TALANQUERA~input_o\,
	combout => \TALANQUERA_CERRADA_TIEMPO[0]~1_combout\);

-- Location: LCCOMB_X39_Y9_N10
\ESTADO.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ESTADO.IDLE~0_combout\ = (\ESTADO.IDLE~q\ & ((\TIEMPO_PASOVEHICULO[1]~16_combout\ $ (!\REGISTRO_CONTEOVEHICULAR[0]~8_combout\)) # (!\TALANQUERA_CERRADA_TIEMPO[0]~1_combout\))) # (!\ESTADO.IDLE~q\ & (!\TALANQUERA_CERRADA_TIEMPO[0]~1_combout\ & 
-- (\TIEMPO_PASOVEHICULO[1]~16_combout\ $ (!\REGISTRO_CONTEOVEHICULAR[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASOVEHICULO[1]~16_combout\,
	datab => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	datac => \ESTADO.IDLE~q\,
	datad => \TALANQUERA_CERRADA_TIEMPO[0]~1_combout\,
	combout => \ESTADO.IDLE~0_combout\);

-- Location: FF_X39_Y9_N11
\ESTADO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ESTADO.IDLE~0_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.IDLE~q\);

-- Location: LCCOMB_X39_Y9_N2
\TIEMPO_PASOVEHICULO[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[1]~16_combout\ = ((\ESTADO.IDLE~q\) # (!\SALIDA_SEMAFORO_VERDE~input_o\)) # (!\DETECTOR_VEHICULO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DETECTOR_VEHICULO~input_o\,
	datac => \SALIDA_SEMAFORO_VERDE~input_o\,
	datad => \ESTADO.IDLE~q\,
	combout => \TIEMPO_PASOVEHICULO[1]~16_combout\);

-- Location: LCCOMB_X37_Y9_N0
\TIEMPO_PASOVEHICULO[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[0]~17_combout\ = TIEMPO_PASOVEHICULO(0) $ (VCC)
-- \TIEMPO_PASOVEHICULO[0]~18\ = CARRY(TIEMPO_PASOVEHICULO(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(0),
	datad => VCC,
	combout => \TIEMPO_PASOVEHICULO[0]~17_combout\,
	cout => \TIEMPO_PASOVEHICULO[0]~18\);

-- Location: LCCOMB_X38_Y9_N24
\TIEMPO_PASOVEHICULO[1]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[1]~45_combout\ = ((\ESTADO.VEHICLE_PASSING~q\ & \REGISTRO_CONTEOVEHICULAR[0]~7_combout\)) # (!\TIEMPO_PASOVEHICULO[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASOVEHICULO[1]~16_combout\,
	datab => \ESTADO.VEHICLE_PASSING~q\,
	datad => \REGISTRO_CONTEOVEHICULAR[0]~7_combout\,
	combout => \TIEMPO_PASOVEHICULO[1]~45_combout\);

-- Location: FF_X37_Y9_N1
\TIEMPO_PASOVEHICULO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[0]~17_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(0));

-- Location: LCCOMB_X37_Y9_N2
\TIEMPO_PASOVEHICULO[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[1]~19_combout\ = (TIEMPO_PASOVEHICULO(1) & (!\TIEMPO_PASOVEHICULO[0]~18\)) # (!TIEMPO_PASOVEHICULO(1) & ((\TIEMPO_PASOVEHICULO[0]~18\) # (GND)))
-- \TIEMPO_PASOVEHICULO[1]~20\ = CARRY((!\TIEMPO_PASOVEHICULO[0]~18\) # (!TIEMPO_PASOVEHICULO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(1),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[0]~18\,
	combout => \TIEMPO_PASOVEHICULO[1]~19_combout\,
	cout => \TIEMPO_PASOVEHICULO[1]~20\);

-- Location: FF_X37_Y9_N3
\TIEMPO_PASOVEHICULO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[1]~19_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(1));

-- Location: LCCOMB_X37_Y9_N4
\TIEMPO_PASOVEHICULO[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[2]~21_combout\ = (TIEMPO_PASOVEHICULO(2) & (\TIEMPO_PASOVEHICULO[1]~20\ $ (GND))) # (!TIEMPO_PASOVEHICULO(2) & (!\TIEMPO_PASOVEHICULO[1]~20\ & VCC))
-- \TIEMPO_PASOVEHICULO[2]~22\ = CARRY((TIEMPO_PASOVEHICULO(2) & !\TIEMPO_PASOVEHICULO[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(2),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[1]~20\,
	combout => \TIEMPO_PASOVEHICULO[2]~21_combout\,
	cout => \TIEMPO_PASOVEHICULO[2]~22\);

-- Location: FF_X37_Y9_N5
\TIEMPO_PASOVEHICULO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[2]~21_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(2));

-- Location: LCCOMB_X37_Y9_N6
\TIEMPO_PASOVEHICULO[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[3]~23_combout\ = (TIEMPO_PASOVEHICULO(3) & (!\TIEMPO_PASOVEHICULO[2]~22\)) # (!TIEMPO_PASOVEHICULO(3) & ((\TIEMPO_PASOVEHICULO[2]~22\) # (GND)))
-- \TIEMPO_PASOVEHICULO[3]~24\ = CARRY((!\TIEMPO_PASOVEHICULO[2]~22\) # (!TIEMPO_PASOVEHICULO(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(3),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[2]~22\,
	combout => \TIEMPO_PASOVEHICULO[3]~23_combout\,
	cout => \TIEMPO_PASOVEHICULO[3]~24\);

-- Location: FF_X37_Y9_N7
\TIEMPO_PASOVEHICULO[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[3]~23_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(3));

-- Location: LCCOMB_X37_Y9_N8
\TIEMPO_PASOVEHICULO[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[4]~25_combout\ = (TIEMPO_PASOVEHICULO(4) & (\TIEMPO_PASOVEHICULO[3]~24\ $ (GND))) # (!TIEMPO_PASOVEHICULO(4) & (!\TIEMPO_PASOVEHICULO[3]~24\ & VCC))
-- \TIEMPO_PASOVEHICULO[4]~26\ = CARRY((TIEMPO_PASOVEHICULO(4) & !\TIEMPO_PASOVEHICULO[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(4),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[3]~24\,
	combout => \TIEMPO_PASOVEHICULO[4]~25_combout\,
	cout => \TIEMPO_PASOVEHICULO[4]~26\);

-- Location: FF_X37_Y9_N9
\TIEMPO_PASOVEHICULO[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[4]~25_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(4));

-- Location: LCCOMB_X37_Y9_N10
\TIEMPO_PASOVEHICULO[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[5]~27_combout\ = (TIEMPO_PASOVEHICULO(5) & (!\TIEMPO_PASOVEHICULO[4]~26\)) # (!TIEMPO_PASOVEHICULO(5) & ((\TIEMPO_PASOVEHICULO[4]~26\) # (GND)))
-- \TIEMPO_PASOVEHICULO[5]~28\ = CARRY((!\TIEMPO_PASOVEHICULO[4]~26\) # (!TIEMPO_PASOVEHICULO(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(5),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[4]~26\,
	combout => \TIEMPO_PASOVEHICULO[5]~27_combout\,
	cout => \TIEMPO_PASOVEHICULO[5]~28\);

-- Location: FF_X37_Y9_N11
\TIEMPO_PASOVEHICULO[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[5]~27_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(5));

-- Location: LCCOMB_X37_Y9_N12
\TIEMPO_PASOVEHICULO[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[6]~29_combout\ = (TIEMPO_PASOVEHICULO(6) & (\TIEMPO_PASOVEHICULO[5]~28\ $ (GND))) # (!TIEMPO_PASOVEHICULO(6) & (!\TIEMPO_PASOVEHICULO[5]~28\ & VCC))
-- \TIEMPO_PASOVEHICULO[6]~30\ = CARRY((TIEMPO_PASOVEHICULO(6) & !\TIEMPO_PASOVEHICULO[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(6),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[5]~28\,
	combout => \TIEMPO_PASOVEHICULO[6]~29_combout\,
	cout => \TIEMPO_PASOVEHICULO[6]~30\);

-- Location: FF_X37_Y9_N13
\TIEMPO_PASOVEHICULO[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[6]~29_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(6));

-- Location: LCCOMB_X37_Y9_N14
\TIEMPO_PASOVEHICULO[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[7]~31_combout\ = (TIEMPO_PASOVEHICULO(7) & (!\TIEMPO_PASOVEHICULO[6]~30\)) # (!TIEMPO_PASOVEHICULO(7) & ((\TIEMPO_PASOVEHICULO[6]~30\) # (GND)))
-- \TIEMPO_PASOVEHICULO[7]~32\ = CARRY((!\TIEMPO_PASOVEHICULO[6]~30\) # (!TIEMPO_PASOVEHICULO(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(7),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[6]~30\,
	combout => \TIEMPO_PASOVEHICULO[7]~31_combout\,
	cout => \TIEMPO_PASOVEHICULO[7]~32\);

-- Location: FF_X37_Y9_N15
\TIEMPO_PASOVEHICULO[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[7]~31_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(7));

-- Location: LCCOMB_X37_Y9_N16
\TIEMPO_PASOVEHICULO[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[8]~33_combout\ = (TIEMPO_PASOVEHICULO(8) & (\TIEMPO_PASOVEHICULO[7]~32\ $ (GND))) # (!TIEMPO_PASOVEHICULO(8) & (!\TIEMPO_PASOVEHICULO[7]~32\ & VCC))
-- \TIEMPO_PASOVEHICULO[8]~34\ = CARRY((TIEMPO_PASOVEHICULO(8) & !\TIEMPO_PASOVEHICULO[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(8),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[7]~32\,
	combout => \TIEMPO_PASOVEHICULO[8]~33_combout\,
	cout => \TIEMPO_PASOVEHICULO[8]~34\);

-- Location: FF_X37_Y9_N17
\TIEMPO_PASOVEHICULO[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[8]~33_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(8));

-- Location: LCCOMB_X37_Y9_N18
\TIEMPO_PASOVEHICULO[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[9]~35_combout\ = (TIEMPO_PASOVEHICULO(9) & (!\TIEMPO_PASOVEHICULO[8]~34\)) # (!TIEMPO_PASOVEHICULO(9) & ((\TIEMPO_PASOVEHICULO[8]~34\) # (GND)))
-- \TIEMPO_PASOVEHICULO[9]~36\ = CARRY((!\TIEMPO_PASOVEHICULO[8]~34\) # (!TIEMPO_PASOVEHICULO(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(9),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[8]~34\,
	combout => \TIEMPO_PASOVEHICULO[9]~35_combout\,
	cout => \TIEMPO_PASOVEHICULO[9]~36\);

-- Location: FF_X37_Y9_N19
\TIEMPO_PASOVEHICULO[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[9]~35_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(9));

-- Location: LCCOMB_X37_Y9_N20
\TIEMPO_PASOVEHICULO[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[10]~37_combout\ = (TIEMPO_PASOVEHICULO(10) & (\TIEMPO_PASOVEHICULO[9]~36\ $ (GND))) # (!TIEMPO_PASOVEHICULO(10) & (!\TIEMPO_PASOVEHICULO[9]~36\ & VCC))
-- \TIEMPO_PASOVEHICULO[10]~38\ = CARRY((TIEMPO_PASOVEHICULO(10) & !\TIEMPO_PASOVEHICULO[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(10),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[9]~36\,
	combout => \TIEMPO_PASOVEHICULO[10]~37_combout\,
	cout => \TIEMPO_PASOVEHICULO[10]~38\);

-- Location: FF_X37_Y9_N21
\TIEMPO_PASOVEHICULO[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[10]~37_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(10));

-- Location: LCCOMB_X37_Y9_N22
\TIEMPO_PASOVEHICULO[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[11]~39_combout\ = (TIEMPO_PASOVEHICULO(11) & (!\TIEMPO_PASOVEHICULO[10]~38\)) # (!TIEMPO_PASOVEHICULO(11) & ((\TIEMPO_PASOVEHICULO[10]~38\) # (GND)))
-- \TIEMPO_PASOVEHICULO[11]~40\ = CARRY((!\TIEMPO_PASOVEHICULO[10]~38\) # (!TIEMPO_PASOVEHICULO(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(11),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[10]~38\,
	combout => \TIEMPO_PASOVEHICULO[11]~39_combout\,
	cout => \TIEMPO_PASOVEHICULO[11]~40\);

-- Location: FF_X37_Y9_N23
\TIEMPO_PASOVEHICULO[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[11]~39_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(11));

-- Location: LCCOMB_X37_Y9_N24
\TIEMPO_PASOVEHICULO[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[12]~41_combout\ = (TIEMPO_PASOVEHICULO(12) & (\TIEMPO_PASOVEHICULO[11]~40\ $ (GND))) # (!TIEMPO_PASOVEHICULO(12) & (!\TIEMPO_PASOVEHICULO[11]~40\ & VCC))
-- \TIEMPO_PASOVEHICULO[12]~42\ = CARRY((TIEMPO_PASOVEHICULO(12) & !\TIEMPO_PASOVEHICULO[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(12),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[11]~40\,
	combout => \TIEMPO_PASOVEHICULO[12]~41_combout\,
	cout => \TIEMPO_PASOVEHICULO[12]~42\);

-- Location: FF_X37_Y9_N25
\TIEMPO_PASOVEHICULO[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[12]~41_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(12));

-- Location: LCCOMB_X37_Y9_N26
\TIEMPO_PASOVEHICULO[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[13]~43_combout\ = (TIEMPO_PASOVEHICULO(13) & (!\TIEMPO_PASOVEHICULO[12]~42\)) # (!TIEMPO_PASOVEHICULO(13) & ((\TIEMPO_PASOVEHICULO[12]~42\) # (GND)))
-- \TIEMPO_PASOVEHICULO[13]~44\ = CARRY((!\TIEMPO_PASOVEHICULO[12]~42\) # (!TIEMPO_PASOVEHICULO(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(13),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[12]~42\,
	combout => \TIEMPO_PASOVEHICULO[13]~43_combout\,
	cout => \TIEMPO_PASOVEHICULO[13]~44\);

-- Location: FF_X37_Y9_N27
\TIEMPO_PASOVEHICULO[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[13]~43_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(13));

-- Location: LCCOMB_X37_Y9_N28
\TIEMPO_PASOVEHICULO[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[14]~46_combout\ = (TIEMPO_PASOVEHICULO(14) & (\TIEMPO_PASOVEHICULO[13]~44\ $ (GND))) # (!TIEMPO_PASOVEHICULO(14) & (!\TIEMPO_PASOVEHICULO[13]~44\ & VCC))
-- \TIEMPO_PASOVEHICULO[14]~47\ = CARRY((TIEMPO_PASOVEHICULO(14) & !\TIEMPO_PASOVEHICULO[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(14),
	datad => VCC,
	cin => \TIEMPO_PASOVEHICULO[13]~44\,
	combout => \TIEMPO_PASOVEHICULO[14]~46_combout\,
	cout => \TIEMPO_PASOVEHICULO[14]~47\);

-- Location: FF_X37_Y9_N29
\TIEMPO_PASOVEHICULO[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[14]~46_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(14));

-- Location: LCCOMB_X37_Y9_N30
\TIEMPO_PASOVEHICULO[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPO_PASOVEHICULO[15]~48_combout\ = \TIEMPO_PASOVEHICULO[14]~47\ $ (TIEMPO_PASOVEHICULO(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(15),
	cin => \TIEMPO_PASOVEHICULO[14]~47\,
	combout => \TIEMPO_PASOVEHICULO[15]~48_combout\);

-- Location: FF_X37_Y9_N31
\TIEMPO_PASOVEHICULO[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPO_PASOVEHICULO[15]~48_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.VEHICLE_PASSING~q\,
	ena => \TIEMPO_PASOVEHICULO[1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPO_PASOVEHICULO(15));

-- Location: LCCOMB_X38_Y9_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!TIEMPO_PASOVEHICULO(11) & (((!TIEMPO_PASOVEHICULO(8) & !TIEMPO_PASOVEHICULO(9))) # (!TIEMPO_PASOVEHICULO(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(8),
	datab => TIEMPO_PASOVEHICULO(10),
	datac => TIEMPO_PASOVEHICULO(9),
	datad => TIEMPO_PASOVEHICULO(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y9_N2
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!TIEMPO_PASOVEHICULO(13)) # (!TIEMPO_PASOVEHICULO(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TIEMPO_PASOVEHICULO(14),
	datad => TIEMPO_PASOVEHICULO(13),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y9_N20
\REGISTRO_CONTEOVEHICULAR[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[0]~7_combout\ = (!TIEMPO_PASOVEHICULO(15) & ((\LessThan0~0_combout\) # ((!TIEMPO_PASOVEHICULO(12) & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPO_PASOVEHICULO(12),
	datab => TIEMPO_PASOVEHICULO(15),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \REGISTRO_CONTEOVEHICULAR[0]~7_combout\);

-- Location: LCCOMB_X38_Y9_N8
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\TIEMPO_PASOVEHICULO[1]~16_combout\ & (\ESTADO.VEHICLE_PASSING~q\ & (\TALANQUERA_CERRADA_TIEMPO[0]~1_combout\ $ (\REGISTRO_CONTEOVEHICULAR[0]~7_combout\)))) # (!\TIEMPO_PASOVEHICULO[1]~16_combout\ & (((\ESTADO.VEHICLE_PASSING~q\ & 
-- \REGISTRO_CONTEOVEHICULAR[0]~7_combout\)) # (!\TALANQUERA_CERRADA_TIEMPO[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIEMPO_PASOVEHICULO[1]~16_combout\,
	datab => \TALANQUERA_CERRADA_TIEMPO[0]~1_combout\,
	datac => \ESTADO.VEHICLE_PASSING~q\,
	datad => \REGISTRO_CONTEOVEHICULAR[0]~7_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X38_Y9_N9
\ESTADO.VEHICLE_PASSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.VEHICLE_PASSING~q\);

-- Location: LCCOMB_X38_Y9_N6
\REGISTRO_CONTEOVEHICULAR[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[0]~8_combout\ = (\ESTADO.VEHICLE_PASSING~q\ & !\REGISTRO_CONTEOVEHICULAR[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ESTADO.VEHICLE_PASSING~q\,
	datad => \REGISTRO_CONTEOVEHICULAR[0]~7_combout\,
	combout => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\);

-- Location: FF_X39_Y9_N5
\REGISTRO_CONTEOVEHICULAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[0]~23_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(0));

-- Location: LCCOMB_X39_Y9_N12
\REGISTRO_CONTEOVEHICULAR[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[1]~9_combout\ = (REGISTRO_CONTEOVEHICULAR(1) & (REGISTRO_CONTEOVEHICULAR(0) $ (VCC))) # (!REGISTRO_CONTEOVEHICULAR(1) & (REGISTRO_CONTEOVEHICULAR(0) & VCC))
-- \REGISTRO_CONTEOVEHICULAR[1]~10\ = CARRY((REGISTRO_CONTEOVEHICULAR(1) & REGISTRO_CONTEOVEHICULAR(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => REGISTRO_CONTEOVEHICULAR(1),
	datab => REGISTRO_CONTEOVEHICULAR(0),
	datad => VCC,
	combout => \REGISTRO_CONTEOVEHICULAR[1]~9_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[1]~10\);

-- Location: FF_X39_Y9_N13
\REGISTRO_CONTEOVEHICULAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[1]~9_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(1));

-- Location: LCCOMB_X39_Y9_N14
\REGISTRO_CONTEOVEHICULAR[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[2]~11_combout\ = (REGISTRO_CONTEOVEHICULAR(2) & (!\REGISTRO_CONTEOVEHICULAR[1]~10\)) # (!REGISTRO_CONTEOVEHICULAR(2) & ((\REGISTRO_CONTEOVEHICULAR[1]~10\) # (GND)))
-- \REGISTRO_CONTEOVEHICULAR[2]~12\ = CARRY((!\REGISTRO_CONTEOVEHICULAR[1]~10\) # (!REGISTRO_CONTEOVEHICULAR(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => REGISTRO_CONTEOVEHICULAR(2),
	datad => VCC,
	cin => \REGISTRO_CONTEOVEHICULAR[1]~10\,
	combout => \REGISTRO_CONTEOVEHICULAR[2]~11_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[2]~12\);

-- Location: FF_X39_Y9_N15
\REGISTRO_CONTEOVEHICULAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[2]~11_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(2));

-- Location: LCCOMB_X39_Y9_N16
\REGISTRO_CONTEOVEHICULAR[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[3]~13_combout\ = (REGISTRO_CONTEOVEHICULAR(3) & (\REGISTRO_CONTEOVEHICULAR[2]~12\ $ (GND))) # (!REGISTRO_CONTEOVEHICULAR(3) & (!\REGISTRO_CONTEOVEHICULAR[2]~12\ & VCC))
-- \REGISTRO_CONTEOVEHICULAR[3]~14\ = CARRY((REGISTRO_CONTEOVEHICULAR(3) & !\REGISTRO_CONTEOVEHICULAR[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => REGISTRO_CONTEOVEHICULAR(3),
	datad => VCC,
	cin => \REGISTRO_CONTEOVEHICULAR[2]~12\,
	combout => \REGISTRO_CONTEOVEHICULAR[3]~13_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[3]~14\);

-- Location: FF_X39_Y9_N17
\REGISTRO_CONTEOVEHICULAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[3]~13_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(3));

-- Location: LCCOMB_X39_Y9_N18
\REGISTRO_CONTEOVEHICULAR[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[4]~15_combout\ = (REGISTRO_CONTEOVEHICULAR(4) & (!\REGISTRO_CONTEOVEHICULAR[3]~14\)) # (!REGISTRO_CONTEOVEHICULAR(4) & ((\REGISTRO_CONTEOVEHICULAR[3]~14\) # (GND)))
-- \REGISTRO_CONTEOVEHICULAR[4]~16\ = CARRY((!\REGISTRO_CONTEOVEHICULAR[3]~14\) # (!REGISTRO_CONTEOVEHICULAR(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => REGISTRO_CONTEOVEHICULAR(4),
	datad => VCC,
	cin => \REGISTRO_CONTEOVEHICULAR[3]~14\,
	combout => \REGISTRO_CONTEOVEHICULAR[4]~15_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[4]~16\);

-- Location: FF_X39_Y9_N19
\REGISTRO_CONTEOVEHICULAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[4]~15_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(4));

-- Location: LCCOMB_X39_Y9_N20
\REGISTRO_CONTEOVEHICULAR[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[5]~17_combout\ = (REGISTRO_CONTEOVEHICULAR(5) & (\REGISTRO_CONTEOVEHICULAR[4]~16\ $ (GND))) # (!REGISTRO_CONTEOVEHICULAR(5) & (!\REGISTRO_CONTEOVEHICULAR[4]~16\ & VCC))
-- \REGISTRO_CONTEOVEHICULAR[5]~18\ = CARRY((REGISTRO_CONTEOVEHICULAR(5) & !\REGISTRO_CONTEOVEHICULAR[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => REGISTRO_CONTEOVEHICULAR(5),
	datad => VCC,
	cin => \REGISTRO_CONTEOVEHICULAR[4]~16\,
	combout => \REGISTRO_CONTEOVEHICULAR[5]~17_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[5]~18\);

-- Location: FF_X39_Y9_N21
\REGISTRO_CONTEOVEHICULAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[5]~17_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(5));

-- Location: LCCOMB_X39_Y9_N22
\REGISTRO_CONTEOVEHICULAR[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[6]~19_combout\ = (REGISTRO_CONTEOVEHICULAR(6) & (!\REGISTRO_CONTEOVEHICULAR[5]~18\)) # (!REGISTRO_CONTEOVEHICULAR(6) & ((\REGISTRO_CONTEOVEHICULAR[5]~18\) # (GND)))
-- \REGISTRO_CONTEOVEHICULAR[6]~20\ = CARRY((!\REGISTRO_CONTEOVEHICULAR[5]~18\) # (!REGISTRO_CONTEOVEHICULAR(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => REGISTRO_CONTEOVEHICULAR(6),
	datad => VCC,
	cin => \REGISTRO_CONTEOVEHICULAR[5]~18\,
	combout => \REGISTRO_CONTEOVEHICULAR[6]~19_combout\,
	cout => \REGISTRO_CONTEOVEHICULAR[6]~20\);

-- Location: FF_X39_Y9_N23
\REGISTRO_CONTEOVEHICULAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[6]~19_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(6));

-- Location: LCCOMB_X39_Y9_N24
\REGISTRO_CONTEOVEHICULAR[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_CONTEOVEHICULAR[7]~21_combout\ = \REGISTRO_CONTEOVEHICULAR[6]~20\ $ (!REGISTRO_CONTEOVEHICULAR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => REGISTRO_CONTEOVEHICULAR(7),
	cin => \REGISTRO_CONTEOVEHICULAR[6]~20\,
	combout => \REGISTRO_CONTEOVEHICULAR[7]~21_combout\);

-- Location: FF_X39_Y9_N25
\REGISTRO_CONTEOVEHICULAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_CONTEOVEHICULAR[7]~21_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_CONTEOVEHICULAR(7));

-- Location: LCCOMB_X39_Y9_N26
\REGISTRO_TIEMPOVEHICULAR[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[0]~feeder_combout\ = TIEMPO_PASOVEHICULO(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(0),
	combout => \REGISTRO_TIEMPOVEHICULAR[0]~feeder_combout\);

-- Location: FF_X39_Y9_N27
\REGISTRO_TIEMPOVEHICULAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[0]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(0));

-- Location: LCCOMB_X39_Y9_N0
\REGISTRO_TIEMPOVEHICULAR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[1]~feeder_combout\ = TIEMPO_PASOVEHICULO(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(1),
	combout => \REGISTRO_TIEMPOVEHICULAR[1]~feeder_combout\);

-- Location: FF_X39_Y9_N1
\REGISTRO_TIEMPOVEHICULAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[1]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(1));

-- Location: FF_X38_Y9_N25
\REGISTRO_TIEMPOVEHICULAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => TIEMPO_PASOVEHICULO(2),
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(2));

-- Location: FF_X38_Y9_N7
\REGISTRO_TIEMPOVEHICULAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => TIEMPO_PASOVEHICULO(3),
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(3));

-- Location: FF_X38_Y9_N29
\REGISTRO_TIEMPOVEHICULAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => TIEMPO_PASOVEHICULO(4),
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(4));

-- Location: LCCOMB_X39_Y9_N6
\REGISTRO_TIEMPOVEHICULAR[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[5]~feeder_combout\ = TIEMPO_PASOVEHICULO(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(5),
	combout => \REGISTRO_TIEMPOVEHICULAR[5]~feeder_combout\);

-- Location: FF_X39_Y9_N7
\REGISTRO_TIEMPOVEHICULAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[5]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(5));

-- Location: LCCOMB_X39_Y9_N28
\REGISTRO_TIEMPOVEHICULAR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[6]~feeder_combout\ = TIEMPO_PASOVEHICULO(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(6),
	combout => \REGISTRO_TIEMPOVEHICULAR[6]~feeder_combout\);

-- Location: FF_X39_Y9_N29
\REGISTRO_TIEMPOVEHICULAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[6]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(6));

-- Location: LCCOMB_X38_Y9_N26
\REGISTRO_TIEMPOVEHICULAR[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[7]~feeder_combout\ = TIEMPO_PASOVEHICULO(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(7),
	combout => \REGISTRO_TIEMPOVEHICULAR[7]~feeder_combout\);

-- Location: FF_X38_Y9_N27
\REGISTRO_TIEMPOVEHICULAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[7]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(7));

-- Location: LCCOMB_X38_Y9_N16
\REGISTRO_TIEMPOVEHICULAR[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[8]~feeder_combout\ = TIEMPO_PASOVEHICULO(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPO_PASOVEHICULO(8),
	combout => \REGISTRO_TIEMPOVEHICULAR[8]~feeder_combout\);

-- Location: FF_X38_Y9_N17
\REGISTRO_TIEMPOVEHICULAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[8]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(8));

-- Location: LCCOMB_X38_Y9_N18
\REGISTRO_TIEMPOVEHICULAR[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[9]~feeder_combout\ = TIEMPO_PASOVEHICULO(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(9),
	combout => \REGISTRO_TIEMPOVEHICULAR[9]~feeder_combout\);

-- Location: FF_X38_Y9_N19
\REGISTRO_TIEMPOVEHICULAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[9]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(9));

-- Location: LCCOMB_X38_Y9_N4
\REGISTRO_TIEMPOVEHICULAR[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[10]~feeder_combout\ = TIEMPO_PASOVEHICULO(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(10),
	combout => \REGISTRO_TIEMPOVEHICULAR[10]~feeder_combout\);

-- Location: FF_X38_Y9_N5
\REGISTRO_TIEMPOVEHICULAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[10]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(10));

-- Location: LCCOMB_X38_Y9_N10
\REGISTRO_TIEMPOVEHICULAR[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[11]~feeder_combout\ = TIEMPO_PASOVEHICULO(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(11),
	combout => \REGISTRO_TIEMPOVEHICULAR[11]~feeder_combout\);

-- Location: FF_X38_Y9_N11
\REGISTRO_TIEMPOVEHICULAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[11]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(11));

-- Location: LCCOMB_X38_Y9_N0
\REGISTRO_TIEMPOVEHICULAR[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[12]~feeder_combout\ = TIEMPO_PASOVEHICULO(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(12),
	combout => \REGISTRO_TIEMPOVEHICULAR[12]~feeder_combout\);

-- Location: FF_X38_Y9_N1
\REGISTRO_TIEMPOVEHICULAR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[12]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(12));

-- Location: LCCOMB_X38_Y9_N14
\REGISTRO_TIEMPOVEHICULAR[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[13]~feeder_combout\ = TIEMPO_PASOVEHICULO(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPO_PASOVEHICULO(13),
	combout => \REGISTRO_TIEMPOVEHICULAR[13]~feeder_combout\);

-- Location: FF_X38_Y9_N15
\REGISTRO_TIEMPOVEHICULAR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[13]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(13));

-- Location: LCCOMB_X38_Y9_N12
\REGISTRO_TIEMPOVEHICULAR[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGISTRO_TIEMPOVEHICULAR[14]~feeder_combout\ = TIEMPO_PASOVEHICULO(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPO_PASOVEHICULO(14),
	combout => \REGISTRO_TIEMPOVEHICULAR[14]~feeder_combout\);

-- Location: FF_X38_Y9_N13
\REGISTRO_TIEMPOVEHICULAR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \REGISTRO_TIEMPOVEHICULAR[14]~feeder_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(14));

-- Location: FF_X38_Y9_N3
\REGISTRO_TIEMPOVEHICULAR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => TIEMPO_PASOVEHICULO(15),
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGISTRO_CONTEOVEHICULAR[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => REGISTRO_TIEMPOVEHICULAR(15));

-- Location: LCCOMB_X36_Y9_N0
\TIEMPOTALANQUERA_CERRADA[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[0]~16_combout\ = TIEMPOTALANQUERA_CERRADA(0) $ (VCC)
-- \TIEMPOTALANQUERA_CERRADA[0]~17\ = CARRY(TIEMPOTALANQUERA_CERRADA(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(0),
	datad => VCC,
	combout => \TIEMPOTALANQUERA_CERRADA[0]~16_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[0]~17\);

-- Location: LCCOMB_X38_Y9_N30
\TIEMPOTALANQUERA_CERRADA[14]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[14]~18_combout\ = (\ABRIR_TALANQUERA~input_o\ & (\ESTADO.VEHICLE_PASSING~q\ & ((!\REGISTRO_CONTEOVEHICULAR[0]~7_combout\)))) # (!\ABRIR_TALANQUERA~input_o\ & ((\ESTADO.BARRIER_CLOSING~q\) # ((\ESTADO.VEHICLE_PASSING~q\ & 
-- !\REGISTRO_CONTEOVEHICULAR[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABRIR_TALANQUERA~input_o\,
	datab => \ESTADO.VEHICLE_PASSING~q\,
	datac => \ESTADO.BARRIER_CLOSING~q\,
	datad => \REGISTRO_CONTEOVEHICULAR[0]~7_combout\,
	combout => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\);

-- Location: FF_X36_Y9_N1
\TIEMPOTALANQUERA_CERRADA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[0]~16_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(0));

-- Location: LCCOMB_X40_Y9_N8
\TALANQUERA_CERRADA_TIEMPO[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\ = (\ABRIR_TALANQUERA~input_o\ & (!\REINICIO~input_o\ & \ESTADO.BARRIER_CLOSING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABRIR_TALANQUERA~input_o\,
	datab => \REINICIO~input_o\,
	datad => \ESTADO.BARRIER_CLOSING~q\,
	combout => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\);

-- Location: FF_X40_Y9_N9
\TALANQUERA_CERRADA_TIEMPO[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => TIEMPOTALANQUERA_CERRADA(0),
	sload => VCC,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[0]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N2
\TIEMPOTALANQUERA_CERRADA[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[1]~19_combout\ = (TIEMPOTALANQUERA_CERRADA(1) & (!\TIEMPOTALANQUERA_CERRADA[0]~17\)) # (!TIEMPOTALANQUERA_CERRADA(1) & ((\TIEMPOTALANQUERA_CERRADA[0]~17\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[1]~20\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[0]~17\) # (!TIEMPOTALANQUERA_CERRADA(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(1),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[0]~17\,
	combout => \TIEMPOTALANQUERA_CERRADA[1]~19_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[1]~20\);

-- Location: FF_X36_Y9_N3
\TIEMPOTALANQUERA_CERRADA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[1]~19_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(1));

-- Location: LCCOMB_X40_Y9_N6
\TALANQUERA_CERRADA_TIEMPO[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[1]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(1),
	combout => \TALANQUERA_CERRADA_TIEMPO[1]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N7
\TALANQUERA_CERRADA_TIEMPO[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[1]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[1]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N4
\TIEMPOTALANQUERA_CERRADA[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[2]~21_combout\ = (TIEMPOTALANQUERA_CERRADA(2) & (\TIEMPOTALANQUERA_CERRADA[1]~20\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(2) & (!\TIEMPOTALANQUERA_CERRADA[1]~20\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[2]~22\ = CARRY((TIEMPOTALANQUERA_CERRADA(2) & !\TIEMPOTALANQUERA_CERRADA[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(2),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[1]~20\,
	combout => \TIEMPOTALANQUERA_CERRADA[2]~21_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[2]~22\);

-- Location: FF_X36_Y9_N5
\TIEMPOTALANQUERA_CERRADA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[2]~21_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(2));

-- Location: LCCOMB_X40_Y9_N12
\TALANQUERA_CERRADA_TIEMPO[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[2]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(2),
	combout => \TALANQUERA_CERRADA_TIEMPO[2]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N13
\TALANQUERA_CERRADA_TIEMPO[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[2]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[2]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N6
\TIEMPOTALANQUERA_CERRADA[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[3]~23_combout\ = (TIEMPOTALANQUERA_CERRADA(3) & (!\TIEMPOTALANQUERA_CERRADA[2]~22\)) # (!TIEMPOTALANQUERA_CERRADA(3) & ((\TIEMPOTALANQUERA_CERRADA[2]~22\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[3]~24\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[2]~22\) # (!TIEMPOTALANQUERA_CERRADA(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPOTALANQUERA_CERRADA(3),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[2]~22\,
	combout => \TIEMPOTALANQUERA_CERRADA[3]~23_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[3]~24\);

-- Location: FF_X36_Y9_N7
\TIEMPOTALANQUERA_CERRADA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[3]~23_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(3));

-- Location: LCCOMB_X40_Y9_N2
\TALANQUERA_CERRADA_TIEMPO[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[3]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(3),
	combout => \TALANQUERA_CERRADA_TIEMPO[3]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N3
\TALANQUERA_CERRADA_TIEMPO[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[3]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[3]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N8
\TIEMPOTALANQUERA_CERRADA[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[4]~25_combout\ = (TIEMPOTALANQUERA_CERRADA(4) & (\TIEMPOTALANQUERA_CERRADA[3]~24\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(4) & (!\TIEMPOTALANQUERA_CERRADA[3]~24\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[4]~26\ = CARRY((TIEMPOTALANQUERA_CERRADA(4) & !\TIEMPOTALANQUERA_CERRADA[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(4),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[3]~24\,
	combout => \TIEMPOTALANQUERA_CERRADA[4]~25_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[4]~26\);

-- Location: FF_X36_Y9_N9
\TIEMPOTALANQUERA_CERRADA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[4]~25_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(4));

-- Location: LCCOMB_X40_Y9_N0
\TALANQUERA_CERRADA_TIEMPO[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[4]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(4),
	combout => \TALANQUERA_CERRADA_TIEMPO[4]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N1
\TALANQUERA_CERRADA_TIEMPO[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[4]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[4]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N10
\TIEMPOTALANQUERA_CERRADA[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[5]~27_combout\ = (TIEMPOTALANQUERA_CERRADA(5) & (!\TIEMPOTALANQUERA_CERRADA[4]~26\)) # (!TIEMPOTALANQUERA_CERRADA(5) & ((\TIEMPOTALANQUERA_CERRADA[4]~26\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[5]~28\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[4]~26\) # (!TIEMPOTALANQUERA_CERRADA(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPOTALANQUERA_CERRADA(5),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[4]~26\,
	combout => \TIEMPOTALANQUERA_CERRADA[5]~27_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[5]~28\);

-- Location: FF_X36_Y9_N11
\TIEMPOTALANQUERA_CERRADA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[5]~27_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(5));

-- Location: LCCOMB_X40_Y9_N26
\TALANQUERA_CERRADA_TIEMPO[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[5]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(5),
	combout => \TALANQUERA_CERRADA_TIEMPO[5]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N27
\TALANQUERA_CERRADA_TIEMPO[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[5]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[5]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N12
\TIEMPOTALANQUERA_CERRADA[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[6]~29_combout\ = (TIEMPOTALANQUERA_CERRADA(6) & (\TIEMPOTALANQUERA_CERRADA[5]~28\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(6) & (!\TIEMPOTALANQUERA_CERRADA[5]~28\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[6]~30\ = CARRY((TIEMPOTALANQUERA_CERRADA(6) & !\TIEMPOTALANQUERA_CERRADA[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPOTALANQUERA_CERRADA(6),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[5]~28\,
	combout => \TIEMPOTALANQUERA_CERRADA[6]~29_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[6]~30\);

-- Location: FF_X36_Y9_N13
\TIEMPOTALANQUERA_CERRADA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[6]~29_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(6));

-- Location: LCCOMB_X40_Y9_N4
\TALANQUERA_CERRADA_TIEMPO[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[6]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(6),
	combout => \TALANQUERA_CERRADA_TIEMPO[6]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N5
\TALANQUERA_CERRADA_TIEMPO[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[6]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[6]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N14
\TIEMPOTALANQUERA_CERRADA[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[7]~31_combout\ = (TIEMPOTALANQUERA_CERRADA(7) & (!\TIEMPOTALANQUERA_CERRADA[6]~30\)) # (!TIEMPOTALANQUERA_CERRADA(7) & ((\TIEMPOTALANQUERA_CERRADA[6]~30\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[7]~32\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[6]~30\) # (!TIEMPOTALANQUERA_CERRADA(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(7),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[6]~30\,
	combout => \TIEMPOTALANQUERA_CERRADA[7]~31_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[7]~32\);

-- Location: FF_X36_Y9_N15
\TIEMPOTALANQUERA_CERRADA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[7]~31_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(7));

-- Location: LCCOMB_X40_Y9_N10
\TALANQUERA_CERRADA_TIEMPO[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[7]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(7),
	combout => \TALANQUERA_CERRADA_TIEMPO[7]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N11
\TALANQUERA_CERRADA_TIEMPO[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[7]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[7]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N16
\TIEMPOTALANQUERA_CERRADA[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[8]~33_combout\ = (TIEMPOTALANQUERA_CERRADA(8) & (\TIEMPOTALANQUERA_CERRADA[7]~32\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(8) & (!\TIEMPOTALANQUERA_CERRADA[7]~32\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[8]~34\ = CARRY((TIEMPOTALANQUERA_CERRADA(8) & !\TIEMPOTALANQUERA_CERRADA[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(8),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[7]~32\,
	combout => \TIEMPOTALANQUERA_CERRADA[8]~33_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[8]~34\);

-- Location: FF_X36_Y9_N17
\TIEMPOTALANQUERA_CERRADA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[8]~33_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(8));

-- Location: LCCOMB_X40_Y9_N28
\TALANQUERA_CERRADA_TIEMPO[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[8]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(8),
	combout => \TALANQUERA_CERRADA_TIEMPO[8]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N29
\TALANQUERA_CERRADA_TIEMPO[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[8]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[8]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N18
\TIEMPOTALANQUERA_CERRADA[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[9]~35_combout\ = (TIEMPOTALANQUERA_CERRADA(9) & (!\TIEMPOTALANQUERA_CERRADA[8]~34\)) # (!TIEMPOTALANQUERA_CERRADA(9) & ((\TIEMPOTALANQUERA_CERRADA[8]~34\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[9]~36\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[8]~34\) # (!TIEMPOTALANQUERA_CERRADA(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(9),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[8]~34\,
	combout => \TIEMPOTALANQUERA_CERRADA[9]~35_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[9]~36\);

-- Location: FF_X36_Y9_N19
\TIEMPOTALANQUERA_CERRADA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[9]~35_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(9));

-- Location: LCCOMB_X40_Y9_N18
\TALANQUERA_CERRADA_TIEMPO[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[9]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(9),
	combout => \TALANQUERA_CERRADA_TIEMPO[9]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N19
\TALANQUERA_CERRADA_TIEMPO[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[9]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[9]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N20
\TIEMPOTALANQUERA_CERRADA[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[10]~37_combout\ = (TIEMPOTALANQUERA_CERRADA(10) & (\TIEMPOTALANQUERA_CERRADA[9]~36\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(10) & (!\TIEMPOTALANQUERA_CERRADA[9]~36\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[10]~38\ = CARRY((TIEMPOTALANQUERA_CERRADA(10) & !\TIEMPOTALANQUERA_CERRADA[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(10),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[9]~36\,
	combout => \TIEMPOTALANQUERA_CERRADA[10]~37_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[10]~38\);

-- Location: FF_X36_Y9_N21
\TIEMPOTALANQUERA_CERRADA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[10]~37_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(10));

-- Location: LCCOMB_X40_Y9_N20
\TALANQUERA_CERRADA_TIEMPO[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[10]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(10),
	combout => \TALANQUERA_CERRADA_TIEMPO[10]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N21
\TALANQUERA_CERRADA_TIEMPO[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[10]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[10]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N22
\TIEMPOTALANQUERA_CERRADA[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[11]~39_combout\ = (TIEMPOTALANQUERA_CERRADA(11) & (!\TIEMPOTALANQUERA_CERRADA[10]~38\)) # (!TIEMPOTALANQUERA_CERRADA(11) & ((\TIEMPOTALANQUERA_CERRADA[10]~38\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[11]~40\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[10]~38\) # (!TIEMPOTALANQUERA_CERRADA(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPOTALANQUERA_CERRADA(11),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[10]~38\,
	combout => \TIEMPOTALANQUERA_CERRADA[11]~39_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[11]~40\);

-- Location: FF_X36_Y9_N23
\TIEMPOTALANQUERA_CERRADA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[11]~39_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(11));

-- Location: LCCOMB_X40_Y9_N22
\TALANQUERA_CERRADA_TIEMPO[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[11]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(11),
	combout => \TALANQUERA_CERRADA_TIEMPO[11]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N23
\TALANQUERA_CERRADA_TIEMPO[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[11]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[11]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N24
\TIEMPOTALANQUERA_CERRADA[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[12]~41_combout\ = (TIEMPOTALANQUERA_CERRADA(12) & (\TIEMPOTALANQUERA_CERRADA[11]~40\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(12) & (!\TIEMPOTALANQUERA_CERRADA[11]~40\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[12]~42\ = CARRY((TIEMPOTALANQUERA_CERRADA(12) & !\TIEMPOTALANQUERA_CERRADA[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(12),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[11]~40\,
	combout => \TIEMPOTALANQUERA_CERRADA[12]~41_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[12]~42\);

-- Location: FF_X36_Y9_N25
\TIEMPOTALANQUERA_CERRADA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[12]~41_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(12));

-- Location: LCCOMB_X40_Y8_N16
\TALANQUERA_CERRADA_TIEMPO[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[12]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(12),
	combout => \TALANQUERA_CERRADA_TIEMPO[12]~reg0feeder_combout\);

-- Location: FF_X40_Y8_N17
\TALANQUERA_CERRADA_TIEMPO[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[12]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[12]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N26
\TIEMPOTALANQUERA_CERRADA[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[13]~43_combout\ = (TIEMPOTALANQUERA_CERRADA(13) & (!\TIEMPOTALANQUERA_CERRADA[12]~42\)) # (!TIEMPOTALANQUERA_CERRADA(13) & ((\TIEMPOTALANQUERA_CERRADA[12]~42\) # (GND)))
-- \TIEMPOTALANQUERA_CERRADA[13]~44\ = CARRY((!\TIEMPOTALANQUERA_CERRADA[12]~42\) # (!TIEMPOTALANQUERA_CERRADA(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TIEMPOTALANQUERA_CERRADA(13),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[12]~42\,
	combout => \TIEMPOTALANQUERA_CERRADA[13]~43_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[13]~44\);

-- Location: FF_X36_Y9_N27
\TIEMPOTALANQUERA_CERRADA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[13]~43_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(13));

-- Location: LCCOMB_X40_Y9_N24
\TALANQUERA_CERRADA_TIEMPO[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[13]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(13),
	combout => \TALANQUERA_CERRADA_TIEMPO[13]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N25
\TALANQUERA_CERRADA_TIEMPO[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[13]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[13]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N28
\TIEMPOTALANQUERA_CERRADA[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[14]~45_combout\ = (TIEMPOTALANQUERA_CERRADA(14) & (\TIEMPOTALANQUERA_CERRADA[13]~44\ $ (GND))) # (!TIEMPOTALANQUERA_CERRADA(14) & (!\TIEMPOTALANQUERA_CERRADA[13]~44\ & VCC))
-- \TIEMPOTALANQUERA_CERRADA[14]~46\ = CARRY((TIEMPOTALANQUERA_CERRADA(14) & !\TIEMPOTALANQUERA_CERRADA[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TIEMPOTALANQUERA_CERRADA(14),
	datad => VCC,
	cin => \TIEMPOTALANQUERA_CERRADA[13]~44\,
	combout => \TIEMPOTALANQUERA_CERRADA[14]~45_combout\,
	cout => \TIEMPOTALANQUERA_CERRADA[14]~46\);

-- Location: FF_X36_Y9_N29
\TIEMPOTALANQUERA_CERRADA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[14]~45_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(14));

-- Location: LCCOMB_X40_Y9_N30
\TALANQUERA_CERRADA_TIEMPO[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[14]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TIEMPOTALANQUERA_CERRADA(14),
	combout => \TALANQUERA_CERRADA_TIEMPO[14]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N31
\TALANQUERA_CERRADA_TIEMPO[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[14]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[14]~reg0_q\);

-- Location: LCCOMB_X36_Y9_N30
\TIEMPOTALANQUERA_CERRADA[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TIEMPOTALANQUERA_CERRADA[15]~47_combout\ = \TIEMPOTALANQUERA_CERRADA[14]~46\ $ (TIEMPOTALANQUERA_CERRADA(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(15),
	cin => \TIEMPOTALANQUERA_CERRADA[14]~46\,
	combout => \TIEMPOTALANQUERA_CERRADA[15]~47_combout\);

-- Location: FF_X36_Y9_N31
\TIEMPOTALANQUERA_CERRADA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TIEMPOTALANQUERA_CERRADA[15]~47_combout\,
	clrn => \ALT_INV_REINICIO~inputclkctrl_outclk\,
	sclr => \ALT_INV_ESTADO.BARRIER_CLOSING~q\,
	ena => \TIEMPOTALANQUERA_CERRADA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TIEMPOTALANQUERA_CERRADA(15));

-- Location: LCCOMB_X40_Y9_N16
\TALANQUERA_CERRADA_TIEMPO[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TALANQUERA_CERRADA_TIEMPO[15]~reg0feeder_combout\ = TIEMPOTALANQUERA_CERRADA(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TIEMPOTALANQUERA_CERRADA(15),
	combout => \TALANQUERA_CERRADA_TIEMPO[15]~reg0feeder_combout\);

-- Location: FF_X40_Y9_N17
\TALANQUERA_CERRADA_TIEMPO[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TALANQUERA_CERRADA_TIEMPO[15]~reg0feeder_combout\,
	ena => \TALANQUERA_CERRADA_TIEMPO[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TALANQUERA_CERRADA_TIEMPO[15]~reg0_q\);

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
END structure;


