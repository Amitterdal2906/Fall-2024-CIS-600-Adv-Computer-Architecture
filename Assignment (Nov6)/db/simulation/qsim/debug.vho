-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/09/2024 18:23:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	debug IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END debug;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debug IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \icount[0]~6_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \icount[1]~2_combout\ : std_logic;
SIGNAL \icount[1]~3\ : std_logic;
SIGNAL \icount[2]~4_combout\ : std_logic;
SIGNAL \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][3]~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \plusone3[1]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \plusone0[3]~15_combout\ : std_logic;
SIGNAL \plusone0[3]~16_combout\ : std_logic;
SIGNAL \My_ALU_32|ALU_0|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][0]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][0]~q\ : std_logic;
SIGNAL \plusone3[1]~1_combout\ : std_logic;
SIGNAL \plusone3[1]~0_combout\ : std_logic;
SIGNAL \plusone0[0]~6_combout\ : std_logic;
SIGNAL \plusone0[0]~7_combout\ : std_logic;
SIGNAL \plusone0[0]~17_combout\ : std_logic;
SIGNAL \plusone0[0]~8_combout\ : std_logic;
SIGNAL \My_ALU_32|alubits:1:ALU_i|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][1]~q\ : std_logic;
SIGNAL \plusone0[1]~9_combout\ : std_logic;
SIGNAL \plusone0[1]~10_combout\ : std_logic;
SIGNAL \plusone0[1]~18_combout\ : std_logic;
SIGNAL \plusone0[1]~11_combout\ : std_logic;
SIGNAL \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][2]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][2]~q\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \plusone0[2]~12_combout\ : std_logic;
SIGNAL \plusone0[2]~13_combout\ : std_logic;
SIGNAL \plusone0[2]~14_combout\ : std_logic;
SIGNAL \h0|Mux6~0_combout\ : std_logic;
SIGNAL \h0|Mux5~0_combout\ : std_logic;
SIGNAL \h0|Mux4~0_combout\ : std_logic;
SIGNAL \h0|Mux3~0_combout\ : std_logic;
SIGNAL \h0|Mux2~0_combout\ : std_logic;
SIGNAL \h0|Mux1~0_combout\ : std_logic;
SIGNAL \h0|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][5]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][5]~q\ : std_logic;
SIGNAL \plusone1[1]~2_combout\ : std_logic;
SIGNAL \plusone1[1]~3_combout\ : std_logic;
SIGNAL \Registers[0][4]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][4]~q\ : std_logic;
SIGNAL \plusone1[0]~0_combout\ : std_logic;
SIGNAL \plusone1[0]~1_combout\ : std_logic;
SIGNAL \Registers[0][6]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][6]~q\ : std_logic;
SIGNAL \plusone1[2]~4_combout\ : std_logic;
SIGNAL \plusone1[2]~5_combout\ : std_logic;
SIGNAL \Registers[0][7]~q\ : std_logic;
SIGNAL \plusone1[3]~6_combout\ : std_logic;
SIGNAL \plusone1[3]~7_combout\ : std_logic;
SIGNAL \h1|Mux6~0_combout\ : std_logic;
SIGNAL \h1|Mux5~0_combout\ : std_logic;
SIGNAL \h1|Mux4~0_combout\ : std_logic;
SIGNAL \h1|Mux3~0_combout\ : std_logic;
SIGNAL \h1|Mux2~0_combout\ : std_logic;
SIGNAL \h1|Mux1~0_combout\ : std_logic;
SIGNAL \h1|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][10]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][10]~q\ : std_logic;
SIGNAL \plusone2[2]~4_combout\ : std_logic;
SIGNAL \plusone2[2]~5_combout\ : std_logic;
SIGNAL \Registers[0][11]~q\ : std_logic;
SIGNAL \plusone2[3]~6_combout\ : std_logic;
SIGNAL \plusone2[3]~7_combout\ : std_logic;
SIGNAL \Registers[0][8]~q\ : std_logic;
SIGNAL \plusone2[0]~0_combout\ : std_logic;
SIGNAL \plusone2[0]~1_combout\ : std_logic;
SIGNAL \Registers[0][9]~q\ : std_logic;
SIGNAL \plusone2[1]~2_combout\ : std_logic;
SIGNAL \plusone2[1]~3_combout\ : std_logic;
SIGNAL \h2|Mux6~0_combout\ : std_logic;
SIGNAL \h2|Mux5~0_combout\ : std_logic;
SIGNAL \h2|Mux4~0_combout\ : std_logic;
SIGNAL \h2|Mux3~0_combout\ : std_logic;
SIGNAL \h2|Mux2~0_combout\ : std_logic;
SIGNAL \h2|Mux1~0_combout\ : std_logic;
SIGNAL \h2|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][15]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][15]~q\ : std_logic;
SIGNAL \plusone3[3]~9_combout\ : std_logic;
SIGNAL \plusone3[3]~10_combout\ : std_logic;
SIGNAL \Registers[0][13]~q\ : std_logic;
SIGNAL \plusone3[1]~5_combout\ : std_logic;
SIGNAL \plusone3[1]~6_combout\ : std_logic;
SIGNAL \Registers[0][14]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][14]~q\ : std_logic;
SIGNAL \plusone3[2]~7_combout\ : std_logic;
SIGNAL \plusone3[2]~8_combout\ : std_logic;
SIGNAL \Registers[0][12]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][12]~q\ : std_logic;
SIGNAL \plusone3[0]~3_combout\ : std_logic;
SIGNAL \plusone3[0]~4_combout\ : std_logic;
SIGNAL \h3|Mux6~0_combout\ : std_logic;
SIGNAL \h3|Mux5~0_combout\ : std_logic;
SIGNAL \h3|Mux4~0_combout\ : std_logic;
SIGNAL \h3|Mux3~0_combout\ : std_logic;
SIGNAL \h3|Mux2~0_combout\ : std_logic;
SIGNAL \h3|Mux1~0_combout\ : std_logic;
SIGNAL \h3|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][18]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][18]~q\ : std_logic;
SIGNAL \plusone4[2]~4_combout\ : std_logic;
SIGNAL \plusone4[2]~5_combout\ : std_logic;
SIGNAL \Registers[0][17]~q\ : std_logic;
SIGNAL \plusone4[1]~2_combout\ : std_logic;
SIGNAL \plusone4[1]~3_combout\ : std_logic;
SIGNAL \Registers[0][19]~q\ : std_logic;
SIGNAL \plusone4[3]~6_combout\ : std_logic;
SIGNAL \plusone4[3]~7_combout\ : std_logic;
SIGNAL \Registers[0][16]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][16]~q\ : std_logic;
SIGNAL \plusone4[0]~0_combout\ : std_logic;
SIGNAL \plusone4[0]~1_combout\ : std_logic;
SIGNAL \h4|Mux6~0_combout\ : std_logic;
SIGNAL \h4|Mux5~0_combout\ : std_logic;
SIGNAL \h4|Mux4~0_combout\ : std_logic;
SIGNAL \h4|Mux3~0_combout\ : std_logic;
SIGNAL \h4|Mux2~0_combout\ : std_logic;
SIGNAL \h4|Mux1~0_combout\ : std_logic;
SIGNAL \h4|Mux0~0_combout\ : std_logic;
SIGNAL \Registers[0][21]~q\ : std_logic;
SIGNAL \plusone5[1]~2_combout\ : std_logic;
SIGNAL \plusone5[1]~3_combout\ : std_logic;
SIGNAL \Registers[0][22]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][22]~q\ : std_logic;
SIGNAL \plusone5[2]~4_combout\ : std_logic;
SIGNAL \plusone5[2]~5_combout\ : std_logic;
SIGNAL \Registers[0][20]~q\ : std_logic;
SIGNAL \plusone5[0]~0_combout\ : std_logic;
SIGNAL \plusone5[0]~1_combout\ : std_logic;
SIGNAL \Registers[0][23]~feeder_combout\ : std_logic;
SIGNAL \Registers[0][23]~q\ : std_logic;
SIGNAL \plusone5[3]~6_combout\ : std_logic;
SIGNAL \plusone5[3]~7_combout\ : std_logic;
SIGNAL \h5|Mux6~0_combout\ : std_logic;
SIGNAL \h5|Mux5~0_combout\ : std_logic;
SIGNAL \h5|Mux4~0_combout\ : std_logic;
SIGNAL \h5|Mux3~0_combout\ : std_logic;
SIGNAL \h5|Mux2~0_combout\ : std_logic;
SIGNAL \h5|Mux1~0_combout\ : std_logic;
SIGNAL \h5|Mux0~0_combout\ : std_logic;
SIGNAL icount : std_logic_vector(31 DOWNTO 0);
SIGNAL \h3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \h5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h4|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\h3|ALT_INV_Mux0~0_combout\ <= NOT \h3|Mux0~0_combout\;
\h2|ALT_INV_Mux0~0_combout\ <= NOT \h2|Mux0~0_combout\;
\h1|ALT_INV_Mux0~0_combout\ <= NOT \h1|Mux0~0_combout\;
\h0|ALT_INV_Mux0~0_combout\ <= NOT \h0|Mux0~0_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\h5|ALT_INV_Mux0~0_combout\ <= NOT \h5|Mux0~0_combout\;
\h4|ALT_INV_Mux0~0_combout\ <= NOT \h4|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N4
\icount[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \icount[0]~6_combout\ = !icount(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => icount(0),
	combout => \icount[0]~6_combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X50_Y53_N5
\icount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \icount[0]~6_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => icount(0));

-- Location: LCCOMB_X50_Y53_N18
\icount[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \icount[1]~2_combout\ = (icount(0) & (icount(1) $ (VCC))) # (!icount(0) & (icount(1) & VCC))
-- \icount[1]~3\ = CARRY((icount(0) & icount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icount(0),
	datab => icount(1),
	datad => VCC,
	combout => \icount[1]~2_combout\,
	cout => \icount[1]~3\);

-- Location: FF_X50_Y53_N19
\icount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \icount[1]~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => icount(1));

-- Location: LCCOMB_X50_Y53_N20
\icount[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \icount[2]~4_combout\ = icount(2) $ (\icount[1]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => icount(2),
	cin => \icount[1]~3\,
	combout => \icount[2]~4_combout\);

-- Location: FF_X50_Y53_N21
\icount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \icount[2]~4_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => icount(2));

-- Location: LCCOMB_X50_Y53_N0
\My_ALU_32|alubits:7:ALU_i|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\ = (icount(0) & icount(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => icount(0),
	datad => icount(2),
	combout => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\);

-- Location: FF_X49_Y53_N31
\Registers[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][3]~q\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N24
\plusone3[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~2_combout\ = (\SW[2]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \plusone3[1]~2_combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X49_Y53_N16
\plusone0[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[3]~15_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][3]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][3]~q\,
	datab => \plusone3[1]~2_combout\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone0[3]~15_combout\);

-- Location: LCCOMB_X50_Y53_N14
\plusone0[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[3]~16_combout\ = (\plusone0[3]~15_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~15_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone0[3]~16_combout\);

-- Location: LCCOMB_X50_Y53_N8
\My_ALU_32|ALU_0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \My_ALU_32|ALU_0|Mux0~0_combout\ = (icount(2) & ((icount(1)) # (!icount(0)))) # (!icount(2) & ((icount(0)) # (!icount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icount(2),
	datab => icount(0),
	datad => icount(1),
	combout => \My_ALU_32|ALU_0|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y53_N20
\Registers[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][0]~feeder_combout\ = \My_ALU_32|ALU_0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \My_ALU_32|ALU_0|Mux0~0_combout\,
	combout => \Registers[0][0]~feeder_combout\);

-- Location: FF_X47_Y53_N21
\Registers[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][0]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][0]~q\);

-- Location: LCCOMB_X50_Y50_N6
\plusone3[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~1_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \plusone3[1]~1_combout\);

-- Location: LCCOMB_X50_Y50_N8
\plusone3[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~0_combout\ = (!\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \plusone3[1]~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\plusone0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[0]~6_combout\ = (icount(2) & (icount(1) & ((!icount(0)) # (!\plusone3[1]~1_combout\)))) # (!icount(2) & (!icount(1) & ((icount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icount(2),
	datab => icount(1),
	datac => \plusone3[1]~1_combout\,
	datad => icount(0),
	combout => \plusone0[0]~6_combout\);

-- Location: LCCOMB_X50_Y50_N0
\plusone0[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[0]~7_combout\ = (\plusone3[1]~1_combout\ & (((\plusone0[0]~6_combout\) # (!\plusone3[1]~0_combout\)))) # (!\plusone3[1]~1_combout\ & (\plusone3[1]~0_combout\ & ((!\plusone0[0]~6_combout\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \plusone3[1]~0_combout\,
	datad => \plusone0[0]~6_combout\,
	combout => \plusone0[0]~7_combout\);

-- Location: LCCOMB_X50_Y53_N10
\plusone0[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[0]~17_combout\ = (!\SW[0]~input_o\ & (\SW[2]~input_o\ & ((\plusone0[0]~7_combout\) # (!\My_ALU_32|ALU_0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \plusone0[0]~7_combout\,
	datad => \My_ALU_32|ALU_0|Mux0~0_combout\,
	combout => \plusone0[0]~17_combout\);

-- Location: LCCOMB_X50_Y53_N26
\plusone0[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[0]~8_combout\ = (\KEY[1]~input_o\ & ((\plusone0[0]~7_combout\ & (\Registers[0][0]~q\ & \plusone0[0]~17_combout\)) # (!\plusone0[0]~7_combout\ & ((!\plusone0[0]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][0]~q\,
	datab => \KEY[1]~input_o\,
	datac => \plusone0[0]~7_combout\,
	datad => \plusone0[0]~17_combout\,
	combout => \plusone0[0]~8_combout\);

-- Location: LCCOMB_X50_Y53_N16
\My_ALU_32|alubits:1:ALU_i|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \My_ALU_32|alubits:1:ALU_i|Mux0~0_combout\ = icount(0) $ (!icount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icount(0),
	datad => icount(1),
	combout => \My_ALU_32|alubits:1:ALU_i|Mux0~0_combout\);

-- Location: FF_X50_Y53_N17
\Registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \My_ALU_32|alubits:1:ALU_i|Mux0~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][1]~q\);

-- Location: LCCOMB_X51_Y53_N2
\plusone0[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[1]~9_combout\ = (\plusone3[1]~1_combout\ & (((icount(0)) # (icount(1))))) # (!\plusone3[1]~1_combout\ & (\SW[1]~input_o\ & ((!icount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => icount(0),
	datac => \plusone3[1]~1_combout\,
	datad => icount(1),
	combout => \plusone0[1]~9_combout\);

-- Location: LCCOMB_X51_Y53_N28
\plusone0[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[1]~10_combout\ = (\plusone3[1]~0_combout\ & ((icount(2) & (!\plusone3[1]~1_combout\)) # (!icount(2) & ((!\plusone0[1]~9_combout\))))) # (!\plusone3[1]~0_combout\ & (((\plusone3[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~0_combout\,
	datab => icount(2),
	datac => \plusone3[1]~1_combout\,
	datad => \plusone0[1]~9_combout\,
	combout => \plusone0[1]~10_combout\);

-- Location: LCCOMB_X51_Y53_N18
\plusone0[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[1]~18_combout\ = (\plusone3[1]~2_combout\ & ((\plusone0[1]~10_combout\) # (icount(1) $ (icount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~2_combout\,
	datab => icount(1),
	datac => icount(0),
	datad => \plusone0[1]~10_combout\,
	combout => \plusone0[1]~18_combout\);

-- Location: LCCOMB_X51_Y53_N30
\plusone0[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[1]~11_combout\ = (\KEY[1]~input_o\ & ((\plusone0[1]~18_combout\ & (\Registers[0][1]~q\ & \plusone0[1]~10_combout\)) # (!\plusone0[1]~18_combout\ & ((!\plusone0[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][1]~q\,
	datab => \plusone0[1]~18_combout\,
	datac => \KEY[1]~input_o\,
	datad => \plusone0[1]~10_combout\,
	combout => \plusone0[1]~11_combout\);

-- Location: LCCOMB_X50_Y53_N6
\My_ALU_32|alubits:2:ALU_i|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\ = icount(0) $ (((icount(2) & !icount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => icount(2),
	datab => icount(1),
	datad => icount(0),
	combout => \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y53_N20
\Registers[0][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][2]~feeder_combout\ = \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][2]~feeder_combout\);

-- Location: FF_X49_Y53_N21
\Registers[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][2]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][2]~q\);

-- Location: LCCOMB_X50_Y53_N24
\Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = icount(2) $ (icount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => icount(2),
	datad => icount(1),
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X51_Y53_N16
\plusone0[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[2]~12_combout\ = (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[1]~input_o\))) # (!\SW[2]~input_o\ & (\Mux61~0_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \Mux61~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \plusone0[2]~12_combout\);

-- Location: LCCOMB_X50_Y53_N30
\plusone0[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[2]~13_combout\ = (\plusone3[1]~2_combout\ & ((\plusone0[2]~12_combout\ & ((\My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\))) # (!\plusone0[2]~12_combout\ & (\Registers[0][2]~q\)))) # (!\plusone3[1]~2_combout\ & (((\plusone0[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~2_combout\,
	datab => \Registers[0][2]~q\,
	datac => \My_ALU_32|alubits:2:ALU_i|Mux0~0_combout\,
	datad => \plusone0[2]~12_combout\,
	combout => \plusone0[2]~13_combout\);

-- Location: LCCOMB_X50_Y50_N2
\plusone0[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone0[2]~14_combout\ = (\KEY[1]~input_o\ & \plusone0[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone0[2]~13_combout\,
	combout => \plusone0[2]~14_combout\);

-- Location: LCCOMB_X50_Y50_N20
\h0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux6~0_combout\ = (\plusone0[3]~16_combout\ & (\plusone0[0]~8_combout\ & (\plusone0[1]~11_combout\ $ (\plusone0[2]~14_combout\)))) # (!\plusone0[3]~16_combout\ & (!\plusone0[1]~11_combout\ & (\plusone0[0]~8_combout\ $ (\plusone0[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\h0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux5~0_combout\ = (\plusone0[3]~16_combout\ & ((\plusone0[0]~8_combout\ & (\plusone0[1]~11_combout\)) # (!\plusone0[0]~8_combout\ & ((\plusone0[2]~14_combout\))))) # (!\plusone0[3]~16_combout\ & (\plusone0[2]~14_combout\ & (\plusone0[0]~8_combout\ $ 
-- (\plusone0[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y50_N4
\h0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux4~0_combout\ = (\plusone0[3]~16_combout\ & (\plusone0[2]~14_combout\ & ((\plusone0[1]~11_combout\) # (!\plusone0[0]~8_combout\)))) # (!\plusone0[3]~16_combout\ & (!\plusone0[0]~8_combout\ & (\plusone0[1]~11_combout\ & !\plusone0[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y50_N26
\h0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux3~0_combout\ = (\plusone0[1]~11_combout\ & ((\plusone0[0]~8_combout\ & ((\plusone0[2]~14_combout\))) # (!\plusone0[0]~8_combout\ & (\plusone0[3]~16_combout\ & !\plusone0[2]~14_combout\)))) # (!\plusone0[1]~11_combout\ & (!\plusone0[3]~16_combout\ & 
-- (\plusone0[0]~8_combout\ $ (\plusone0[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y50_N24
\h0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux2~0_combout\ = (\plusone0[1]~11_combout\ & (!\plusone0[3]~16_combout\ & (\plusone0[0]~8_combout\))) # (!\plusone0[1]~11_combout\ & ((\plusone0[2]~14_combout\ & (!\plusone0[3]~16_combout\)) # (!\plusone0[2]~14_combout\ & 
-- ((\plusone0[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y50_N18
\h0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux1~0_combout\ = (\plusone0[0]~8_combout\ & (\plusone0[3]~16_combout\ $ (((\plusone0[1]~11_combout\) # (!\plusone0[2]~14_combout\))))) # (!\plusone0[0]~8_combout\ & (!\plusone0[3]~16_combout\ & (\plusone0[1]~11_combout\ & !\plusone0[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y50_N12
\h0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux0~0_combout\ = (\plusone0[0]~8_combout\ & ((\plusone0[3]~16_combout\) # (\plusone0[1]~11_combout\ $ (\plusone0[2]~14_combout\)))) # (!\plusone0[0]~8_combout\ & ((\plusone0[1]~11_combout\) # (\plusone0[3]~16_combout\ $ (\plusone0[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone0[3]~16_combout\,
	datab => \plusone0[0]~8_combout\,
	datac => \plusone0[1]~11_combout\,
	datad => \plusone0[2]~14_combout\,
	combout => \h0|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y53_N4
\Registers[0][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][5]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][5]~feeder_combout\);

-- Location: FF_X46_Y53_N5
\Registers[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][5]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][5]~q\);

-- Location: LCCOMB_X46_Y53_N2
\plusone1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[1]~2_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][5]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Registers[0][5]~q\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \plusone3[1]~2_combout\,
	combout => \plusone1[1]~2_combout\);

-- Location: LCCOMB_X69_Y49_N12
\plusone1[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[1]~3_combout\ = (\KEY[1]~input_o\ & \plusone1[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \plusone1[1]~2_combout\,
	combout => \plusone1[1]~3_combout\);

-- Location: LCCOMB_X47_Y53_N2
\Registers[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][4]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][4]~feeder_combout\);

-- Location: FF_X47_Y53_N3
\Registers[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][4]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][4]~q\);

-- Location: LCCOMB_X51_Y53_N22
\plusone1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~0_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][4]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Registers[0][4]~q\,
	datac => \plusone3[1]~2_combout\,
	datad => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \plusone1[0]~0_combout\);

-- Location: LCCOMB_X63_Y49_N4
\plusone1[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~1_combout\ = (\KEY[1]~input_o\ & \plusone1[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone1[0]~0_combout\,
	combout => \plusone1[0]~1_combout\);

-- Location: LCCOMB_X46_Y53_N28
\Registers[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][6]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][6]~feeder_combout\);

-- Location: FF_X46_Y53_N29
\Registers[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][6]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][6]~q\);

-- Location: LCCOMB_X49_Y53_N18
\plusone1[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[2]~4_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][6]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][6]~q\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \plusone3[1]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone1[2]~4_combout\);

-- Location: LCCOMB_X52_Y49_N20
\plusone1[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[2]~5_combout\ = (\plusone1[2]~4_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plusone1[2]~4_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone1[2]~5_combout\);

-- Location: FF_X50_Y53_N7
\Registers[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][7]~q\);

-- Location: LCCOMB_X50_Y53_N28
\plusone1[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[3]~6_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & ((\Registers[0][7]~q\))) # (!\SW[1]~input_o\ & (\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~2_combout\,
	datab => \SW[1]~input_o\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \Registers[0][7]~q\,
	combout => \plusone1[3]~6_combout\);

-- Location: LCCOMB_X69_Y49_N10
\plusone1[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[3]~7_combout\ = (\KEY[1]~input_o\ & \plusone1[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \plusone1[3]~6_combout\,
	combout => \plusone1[3]~7_combout\);

-- Location: LCCOMB_X69_Y49_N28
\h1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux6~0_combout\ = (\plusone1[2]~5_combout\ & (!\plusone1[1]~3_combout\ & (\plusone1[0]~1_combout\ $ (!\plusone1[3]~7_combout\)))) # (!\plusone1[2]~5_combout\ & (\plusone1[0]~1_combout\ & (\plusone1[1]~3_combout\ $ (!\plusone1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y49_N2
\h1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux5~0_combout\ = (\plusone1[1]~3_combout\ & ((\plusone1[0]~1_combout\ & ((\plusone1[3]~7_combout\))) # (!\plusone1[0]~1_combout\ & (\plusone1[2]~5_combout\)))) # (!\plusone1[1]~3_combout\ & (\plusone1[2]~5_combout\ & (\plusone1[0]~1_combout\ $ 
-- (\plusone1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y49_N4
\h1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux4~0_combout\ = (\plusone1[2]~5_combout\ & (\plusone1[3]~7_combout\ & ((\plusone1[1]~3_combout\) # (!\plusone1[0]~1_combout\)))) # (!\plusone1[2]~5_combout\ & (\plusone1[1]~3_combout\ & (!\plusone1[0]~1_combout\ & !\plusone1[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y49_N14
\h1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux3~0_combout\ = (\plusone1[1]~3_combout\ & ((\plusone1[0]~1_combout\ & (\plusone1[2]~5_combout\)) # (!\plusone1[0]~1_combout\ & (!\plusone1[2]~5_combout\ & \plusone1[3]~7_combout\)))) # (!\plusone1[1]~3_combout\ & (!\plusone1[3]~7_combout\ & 
-- (\plusone1[0]~1_combout\ $ (\plusone1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y49_N0
\h1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux2~0_combout\ = (\plusone1[1]~3_combout\ & (\plusone1[0]~1_combout\ & ((!\plusone1[3]~7_combout\)))) # (!\plusone1[1]~3_combout\ & ((\plusone1[2]~5_combout\ & ((!\plusone1[3]~7_combout\))) # (!\plusone1[2]~5_combout\ & (\plusone1[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y49_N22
\h1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux1~0_combout\ = (\plusone1[1]~3_combout\ & (!\plusone1[3]~7_combout\ & ((\plusone1[0]~1_combout\) # (!\plusone1[2]~5_combout\)))) # (!\plusone1[1]~3_combout\ & (\plusone1[0]~1_combout\ & (\plusone1[2]~5_combout\ $ (!\plusone1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y49_N24
\h1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux0~0_combout\ = (\plusone1[0]~1_combout\ & ((\plusone1[3]~7_combout\) # (\plusone1[1]~3_combout\ $ (\plusone1[2]~5_combout\)))) # (!\plusone1[0]~1_combout\ & ((\plusone1[1]~3_combout\) # (\plusone1[2]~5_combout\ $ (\plusone1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~3_combout\,
	datab => \plusone1[0]~1_combout\,
	datac => \plusone1[2]~5_combout\,
	datad => \plusone1[3]~7_combout\,
	combout => \h1|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y53_N0
\Registers[0][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][10]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][10]~feeder_combout\);

-- Location: FF_X47_Y53_N1
\Registers[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][10]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][10]~q\);

-- Location: LCCOMB_X50_Y53_N12
\plusone2[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[2]~4_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][10]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][10]~q\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \plusone3[1]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone2[2]~4_combout\);

-- Location: LCCOMB_X63_Y49_N26
\plusone2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[2]~5_combout\ = (\plusone2[2]~4_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \plusone2[2]~4_combout\,
	datac => \KEY[1]~input_o\,
	combout => \plusone2[2]~5_combout\);

-- Location: FF_X50_Y53_N29
\Registers[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][11]~q\);

-- Location: LCCOMB_X51_Y53_N14
\plusone2[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~6_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][11]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Registers[0][11]~q\,
	datac => \plusone3[1]~2_combout\,
	datad => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \plusone2[3]~6_combout\);

-- Location: LCCOMB_X63_Y49_N16
\plusone2[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~7_combout\ = (\KEY[1]~input_o\ & \plusone2[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone2[3]~6_combout\,
	combout => \plusone2[3]~7_combout\);

-- Location: FF_X50_Y53_N3
\Registers[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][8]~q\);

-- Location: LCCOMB_X50_Y53_N2
\plusone2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[0]~0_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & ((\Registers[0][8]~q\))) # (!\SW[1]~input_o\ & (\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~2_combout\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \Registers[0][8]~q\,
	datad => \SW[1]~input_o\,
	combout => \plusone2[0]~0_combout\);

-- Location: LCCOMB_X63_Y49_N22
\plusone2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[0]~1_combout\ = (\KEY[1]~input_o\ & \plusone2[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone2[0]~0_combout\,
	combout => \plusone2[0]~1_combout\);

-- Location: FF_X50_Y53_N9
\Registers[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][9]~q\);

-- Location: LCCOMB_X51_Y53_N8
\plusone2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[1]~2_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][9]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \plusone3[1]~2_combout\,
	datac => \Registers[0][9]~q\,
	datad => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \plusone2[1]~2_combout\);

-- Location: LCCOMB_X63_Y49_N12
\plusone2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[1]~3_combout\ = (\KEY[1]~input_o\ & \plusone2[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone2[1]~2_combout\,
	combout => \plusone2[1]~3_combout\);

-- Location: LCCOMB_X63_Y49_N6
\h2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux6~0_combout\ = (\plusone2[2]~5_combout\ & (!\plusone2[1]~3_combout\ & (\plusone2[3]~7_combout\ $ (!\plusone2[0]~1_combout\)))) # (!\plusone2[2]~5_combout\ & (\plusone2[0]~1_combout\ & (\plusone2[3]~7_combout\ $ (!\plusone2[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y49_N20
\h2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux5~0_combout\ = (\plusone2[3]~7_combout\ & ((\plusone2[0]~1_combout\ & ((\plusone2[1]~3_combout\))) # (!\plusone2[0]~1_combout\ & (\plusone2[2]~5_combout\)))) # (!\plusone2[3]~7_combout\ & (\plusone2[2]~5_combout\ & (\plusone2[0]~1_combout\ $ 
-- (\plusone2[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y49_N30
\h2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux4~0_combout\ = (\plusone2[2]~5_combout\ & (\plusone2[3]~7_combout\ & ((\plusone2[1]~3_combout\) # (!\plusone2[0]~1_combout\)))) # (!\plusone2[2]~5_combout\ & (!\plusone2[3]~7_combout\ & (!\plusone2[0]~1_combout\ & \plusone2[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y49_N24
\h2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux3~0_combout\ = (\plusone2[1]~3_combout\ & ((\plusone2[2]~5_combout\ & ((\plusone2[0]~1_combout\))) # (!\plusone2[2]~5_combout\ & (\plusone2[3]~7_combout\ & !\plusone2[0]~1_combout\)))) # (!\plusone2[1]~3_combout\ & (!\plusone2[3]~7_combout\ & 
-- (\plusone2[2]~5_combout\ $ (\plusone2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y49_N18
\h2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux2~0_combout\ = (\plusone2[1]~3_combout\ & (((!\plusone2[3]~7_combout\ & \plusone2[0]~1_combout\)))) # (!\plusone2[1]~3_combout\ & ((\plusone2[2]~5_combout\ & (!\plusone2[3]~7_combout\)) # (!\plusone2[2]~5_combout\ & ((\plusone2[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y49_N28
\h2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux1~0_combout\ = (\plusone2[2]~5_combout\ & (\plusone2[0]~1_combout\ & (\plusone2[3]~7_combout\ $ (\plusone2[1]~3_combout\)))) # (!\plusone2[2]~5_combout\ & (!\plusone2[3]~7_combout\ & ((\plusone2[0]~1_combout\) # (\plusone2[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y49_N10
\h2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux0~0_combout\ = (\plusone2[0]~1_combout\ & ((\plusone2[3]~7_combout\) # (\plusone2[2]~5_combout\ $ (\plusone2[1]~3_combout\)))) # (!\plusone2[0]~1_combout\ & ((\plusone2[1]~3_combout\) # (\plusone2[2]~5_combout\ $ (\plusone2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[2]~5_combout\,
	datab => \plusone2[3]~7_combout\,
	datac => \plusone2[0]~1_combout\,
	datad => \plusone2[1]~3_combout\,
	combout => \h2|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y53_N12
\Registers[0][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][15]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][15]~feeder_combout\);

-- Location: FF_X47_Y53_N13
\Registers[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][15]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][15]~q\);

-- Location: LCCOMB_X47_Y53_N22
\plusone3[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[3]~9_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][15]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][15]~q\,
	datab => \plusone3[1]~2_combout\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone3[3]~9_combout\);

-- Location: LCCOMB_X70_Y49_N12
\plusone3[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[3]~10_combout\ = (\plusone3[3]~9_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plusone3[3]~9_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone3[3]~10_combout\);

-- Location: FF_X50_Y53_N15
\Registers[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][13]~q\);

-- Location: LCCOMB_X51_Y53_N6
\plusone3[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~5_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][13]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \plusone3[1]~2_combout\,
	datac => \Registers[0][13]~q\,
	datad => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \plusone3[1]~5_combout\);

-- Location: LCCOMB_X70_Y49_N2
\plusone3[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~6_combout\ = (\KEY[1]~input_o\ & \plusone3[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \plusone3[1]~5_combout\,
	combout => \plusone3[1]~6_combout\);

-- Location: LCCOMB_X46_Y53_N18
\Registers[0][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][14]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][14]~feeder_combout\);

-- Location: FF_X46_Y53_N19
\Registers[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][14]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][14]~q\);

-- Location: LCCOMB_X46_Y53_N12
\plusone3[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[2]~7_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][14]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Registers[0][14]~q\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \plusone3[1]~2_combout\,
	combout => \plusone3[2]~7_combout\);

-- Location: LCCOMB_X46_Y53_N10
\plusone3[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[2]~8_combout\ = (\plusone3[2]~7_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[2]~7_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone3[2]~8_combout\);

-- Location: LCCOMB_X47_Y53_N10
\Registers[0][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][12]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][12]~feeder_combout\);

-- Location: FF_X47_Y53_N11
\Registers[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][12]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][12]~q\);

-- Location: LCCOMB_X51_Y53_N4
\plusone3[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[0]~3_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & ((\Registers[0][12]~q\))) # (!\SW[1]~input_o\ & (\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datab => \Registers[0][12]~q\,
	datac => \plusone3[1]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone3[0]~3_combout\);

-- Location: LCCOMB_X70_Y49_N28
\plusone3[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[0]~4_combout\ = (\KEY[1]~input_o\ & \plusone3[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \plusone3[0]~3_combout\,
	combout => \plusone3[0]~4_combout\);

-- Location: LCCOMB_X70_Y49_N22
\h3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux6~0_combout\ = (\plusone3[3]~10_combout\ & (\plusone3[0]~4_combout\ & (\plusone3[1]~6_combout\ $ (\plusone3[2]~8_combout\)))) # (!\plusone3[3]~10_combout\ & (!\plusone3[1]~6_combout\ & (\plusone3[2]~8_combout\ $ (\plusone3[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y49_N16
\h3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux5~0_combout\ = (\plusone3[3]~10_combout\ & ((\plusone3[0]~4_combout\ & (\plusone3[1]~6_combout\)) # (!\plusone3[0]~4_combout\ & ((\plusone3[2]~8_combout\))))) # (!\plusone3[3]~10_combout\ & (\plusone3[2]~8_combout\ & (\plusone3[1]~6_combout\ $ 
-- (\plusone3[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y49_N30
\h3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux4~0_combout\ = (\plusone3[3]~10_combout\ & (\plusone3[2]~8_combout\ & ((\plusone3[1]~6_combout\) # (!\plusone3[0]~4_combout\)))) # (!\plusone3[3]~10_combout\ & (\plusone3[1]~6_combout\ & (!\plusone3[2]~8_combout\ & !\plusone3[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y49_N24
\h3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux3~0_combout\ = (\plusone3[1]~6_combout\ & ((\plusone3[2]~8_combout\ & ((\plusone3[0]~4_combout\))) # (!\plusone3[2]~8_combout\ & (\plusone3[3]~10_combout\ & !\plusone3[0]~4_combout\)))) # (!\plusone3[1]~6_combout\ & (!\plusone3[3]~10_combout\ & 
-- (\plusone3[2]~8_combout\ $ (\plusone3[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y49_N10
\h3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux2~0_combout\ = (\plusone3[1]~6_combout\ & (!\plusone3[3]~10_combout\ & ((\plusone3[0]~4_combout\)))) # (!\plusone3[1]~6_combout\ & ((\plusone3[2]~8_combout\ & (!\plusone3[3]~10_combout\)) # (!\plusone3[2]~8_combout\ & ((\plusone3[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y49_N20
\h3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux1~0_combout\ = (\plusone3[1]~6_combout\ & (!\plusone3[3]~10_combout\ & ((\plusone3[0]~4_combout\) # (!\plusone3[2]~8_combout\)))) # (!\plusone3[1]~6_combout\ & (\plusone3[0]~4_combout\ & (\plusone3[3]~10_combout\ $ (!\plusone3[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y49_N18
\h3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux0~0_combout\ = (\plusone3[0]~4_combout\ & ((\plusone3[3]~10_combout\) # (\plusone3[1]~6_combout\ $ (\plusone3[2]~8_combout\)))) # (!\plusone3[0]~4_combout\ & ((\plusone3[1]~6_combout\) # (\plusone3[3]~10_combout\ $ (\plusone3[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~10_combout\,
	datab => \plusone3[1]~6_combout\,
	datac => \plusone3[2]~8_combout\,
	datad => \plusone3[0]~4_combout\,
	combout => \h3|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y53_N18
\Registers[0][18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][18]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][18]~feeder_combout\);

-- Location: FF_X47_Y53_N19
\Registers[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][18]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][18]~q\);

-- Location: LCCOMB_X47_Y53_N28
\plusone4[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[2]~4_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][18]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Registers[0][18]~q\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \plusone3[1]~2_combout\,
	combout => \plusone4[2]~4_combout\);

-- Location: LCCOMB_X75_Y45_N12
\plusone4[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[2]~5_combout\ = (\plusone4[2]~4_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~4_combout\,
	datac => \KEY[1]~input_o\,
	combout => \plusone4[2]~5_combout\);

-- Location: FF_X50_Y53_N1
\Registers[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][17]~q\);

-- Location: LCCOMB_X51_Y53_N20
\plusone4[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[1]~2_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][17]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \plusone3[1]~2_combout\,
	datac => \Registers[0][17]~q\,
	datad => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \plusone4[1]~2_combout\);

-- Location: LCCOMB_X75_Y45_N18
\plusone4[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[1]~3_combout\ = (\KEY[1]~input_o\ & \plusone4[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone4[1]~2_combout\,
	combout => \plusone4[1]~3_combout\);

-- Location: FF_X46_Y53_N11
\Registers[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][19]~q\);

-- Location: LCCOMB_X46_Y53_N24
\plusone4[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[3]~6_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][19]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][19]~q\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \plusone3[1]~2_combout\,
	combout => \plusone4[3]~6_combout\);

-- Location: LCCOMB_X75_Y45_N22
\plusone4[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[3]~7_combout\ = (\plusone4[3]~6_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[3]~6_combout\,
	datac => \KEY[1]~input_o\,
	combout => \plusone4[3]~7_combout\);

-- Location: LCCOMB_X47_Y53_N4
\Registers[0][16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][16]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][16]~feeder_combout\);

-- Location: FF_X47_Y53_N5
\Registers[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][16]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][16]~q\);

-- Location: LCCOMB_X49_Y53_N30
\plusone4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[0]~0_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][16]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~2_combout\,
	datab => \Registers[0][16]~q\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone4[0]~0_combout\);

-- Location: LCCOMB_X75_Y45_N24
\plusone4[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[0]~1_combout\ = (\KEY[1]~input_o\ & \plusone4[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \plusone4[0]~0_combout\,
	combout => \plusone4[0]~1_combout\);

-- Location: LCCOMB_X75_Y45_N28
\h4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux6~0_combout\ = (\plusone4[2]~5_combout\ & (!\plusone4[1]~3_combout\ & (\plusone4[3]~7_combout\ $ (!\plusone4[0]~1_combout\)))) # (!\plusone4[2]~5_combout\ & (\plusone4[0]~1_combout\ & (\plusone4[1]~3_combout\ $ (!\plusone4[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y45_N30
\h4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux5~0_combout\ = (\plusone4[1]~3_combout\ & ((\plusone4[0]~1_combout\ & ((\plusone4[3]~7_combout\))) # (!\plusone4[0]~1_combout\ & (\plusone4[2]~5_combout\)))) # (!\plusone4[1]~3_combout\ & (\plusone4[2]~5_combout\ & (\plusone4[3]~7_combout\ $ 
-- (\plusone4[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y45_N4
\h4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux4~0_combout\ = (\plusone4[2]~5_combout\ & (\plusone4[3]~7_combout\ & ((\plusone4[1]~3_combout\) # (!\plusone4[0]~1_combout\)))) # (!\plusone4[2]~5_combout\ & (\plusone4[1]~3_combout\ & (!\plusone4[3]~7_combout\ & !\plusone4[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y45_N6
\h4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux3~0_combout\ = (\plusone4[1]~3_combout\ & ((\plusone4[2]~5_combout\ & ((\plusone4[0]~1_combout\))) # (!\plusone4[2]~5_combout\ & (\plusone4[3]~7_combout\ & !\plusone4[0]~1_combout\)))) # (!\plusone4[1]~3_combout\ & (!\plusone4[3]~7_combout\ & 
-- (\plusone4[2]~5_combout\ $ (\plusone4[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y45_N20
\h4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux2~0_combout\ = (\plusone4[1]~3_combout\ & (((!\plusone4[3]~7_combout\ & \plusone4[0]~1_combout\)))) # (!\plusone4[1]~3_combout\ & ((\plusone4[2]~5_combout\ & (!\plusone4[3]~7_combout\)) # (!\plusone4[2]~5_combout\ & ((\plusone4[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y45_N10
\h4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux1~0_combout\ = (\plusone4[2]~5_combout\ & (\plusone4[0]~1_combout\ & (\plusone4[1]~3_combout\ $ (\plusone4[3]~7_combout\)))) # (!\plusone4[2]~5_combout\ & (!\plusone4[3]~7_combout\ & ((\plusone4[1]~3_combout\) # (\plusone4[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y45_N16
\h4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux0~0_combout\ = (\plusone4[0]~1_combout\ & ((\plusone4[3]~7_combout\) # (\plusone4[2]~5_combout\ $ (\plusone4[1]~3_combout\)))) # (!\plusone4[0]~1_combout\ & ((\plusone4[1]~3_combout\) # (\plusone4[2]~5_combout\ $ (\plusone4[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~5_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone4[3]~7_combout\,
	datad => \plusone4[0]~1_combout\,
	combout => \h4|Mux0~0_combout\);

-- Location: FF_X47_Y53_N7
\Registers[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][21]~q\);

-- Location: LCCOMB_X47_Y53_N6
\plusone5[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[1]~2_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & ((\Registers[0][21]~q\))) # (!\SW[1]~input_o\ & (\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \Registers[0][21]~q\,
	datad => \plusone3[1]~2_combout\,
	combout => \plusone5[1]~2_combout\);

-- Location: LCCOMB_X49_Y53_N0
\plusone5[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[1]~3_combout\ = (\plusone5[1]~2_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plusone5[1]~2_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone5[1]~3_combout\);

-- Location: LCCOMB_X47_Y53_N8
\Registers[0][22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][22]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][22]~feeder_combout\);

-- Location: FF_X47_Y53_N9
\Registers[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][22]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][22]~q\);

-- Location: LCCOMB_X49_Y53_N22
\plusone5[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[2]~4_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][22]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][22]~q\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \plusone3[1]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone5[2]~4_combout\);

-- Location: LCCOMB_X49_Y53_N28
\plusone5[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[2]~5_combout\ = (\plusone5[2]~4_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plusone5[2]~4_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone5[2]~5_combout\);

-- Location: FF_X47_Y53_N29
\Registers[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	sload => VCC,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][20]~q\);

-- Location: LCCOMB_X49_Y53_N12
\plusone5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[0]~0_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][20]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][20]~q\,
	datab => \plusone3[1]~2_combout\,
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone5[0]~0_combout\);

-- Location: LCCOMB_X49_Y53_N26
\plusone5[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[0]~1_combout\ = (\plusone5[0]~0_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[0]~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone5[0]~1_combout\);

-- Location: LCCOMB_X49_Y53_N10
\Registers[0][23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registers[0][23]~feeder_combout\ = \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	combout => \Registers[0][23]~feeder_combout\);

-- Location: FF_X49_Y53_N11
\Registers[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \Registers[0][23]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registers[0][23]~q\);

-- Location: LCCOMB_X49_Y53_N4
\plusone5[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[3]~6_combout\ = (\plusone3[1]~2_combout\ & ((\SW[1]~input_o\ & (\Registers[0][23]~q\)) # (!\SW[1]~input_o\ & ((\My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers[0][23]~q\,
	datab => \My_ALU_32|alubits:7:ALU_i|Mux0~0_combout\,
	datac => \plusone3[1]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \plusone5[3]~6_combout\);

-- Location: LCCOMB_X49_Y53_N14
\plusone5[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[3]~7_combout\ = (\plusone5[3]~6_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plusone5[3]~6_combout\,
	datad => \KEY[1]~input_o\,
	combout => \plusone5[3]~7_combout\);

-- Location: LCCOMB_X49_Y53_N24
\h5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux6~0_combout\ = (\plusone5[2]~5_combout\ & (!\plusone5[1]~3_combout\ & (\plusone5[0]~1_combout\ $ (!\plusone5[3]~7_combout\)))) # (!\plusone5[2]~5_combout\ & (\plusone5[0]~1_combout\ & (\plusone5[1]~3_combout\ $ (!\plusone5[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[1]~3_combout\,
	datab => \plusone5[2]~5_combout\,
	datac => \plusone5[0]~1_combout\,
	datad => \plusone5[3]~7_combout\,
	combout => \h5|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y53_N10
\h5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux5~0_combout\ = (\plusone5[3]~7_combout\ & ((\plusone5[0]~1_combout\ & ((\plusone5[1]~3_combout\))) # (!\plusone5[0]~1_combout\ & (\plusone5[2]~5_combout\)))) # (!\plusone5[3]~7_combout\ & (\plusone5[2]~5_combout\ & (\plusone5[1]~3_combout\ $ 
-- (\plusone5[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~5_combout\,
	datab => \plusone5[3]~7_combout\,
	datac => \plusone5[1]~3_combout\,
	datad => \plusone5[0]~1_combout\,
	combout => \h5|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\h5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux4~0_combout\ = (\plusone5[2]~5_combout\ & (\plusone5[3]~7_combout\ & ((\plusone5[1]~3_combout\) # (!\plusone5[0]~1_combout\)))) # (!\plusone5[2]~5_combout\ & (!\plusone5[3]~7_combout\ & (\plusone5[1]~3_combout\ & !\plusone5[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~5_combout\,
	datab => \plusone5[3]~7_combout\,
	datac => \plusone5[1]~3_combout\,
	datad => \plusone5[0]~1_combout\,
	combout => \h5|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y53_N2
\h5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux3~0_combout\ = (\plusone5[1]~3_combout\ & ((\plusone5[2]~5_combout\ & (\plusone5[0]~1_combout\)) # (!\plusone5[2]~5_combout\ & (!\plusone5[0]~1_combout\ & \plusone5[3]~7_combout\)))) # (!\plusone5[1]~3_combout\ & (!\plusone5[3]~7_combout\ & 
-- (\plusone5[2]~5_combout\ $ (\plusone5[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[1]~3_combout\,
	datab => \plusone5[2]~5_combout\,
	datac => \plusone5[0]~1_combout\,
	datad => \plusone5[3]~7_combout\,
	combout => \h5|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\h5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux2~0_combout\ = (\plusone5[1]~3_combout\ & (((!\plusone5[3]~7_combout\ & \plusone5[0]~1_combout\)))) # (!\plusone5[1]~3_combout\ & ((\plusone5[2]~5_combout\ & (!\plusone5[3]~7_combout\)) # (!\plusone5[2]~5_combout\ & ((\plusone5[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~5_combout\,
	datab => \plusone5[3]~7_combout\,
	datac => \plusone5[1]~3_combout\,
	datad => \plusone5[0]~1_combout\,
	combout => \h5|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y53_N0
\h5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux1~0_combout\ = (\plusone5[2]~5_combout\ & (\plusone5[0]~1_combout\ & (\plusone5[3]~7_combout\ $ (\plusone5[1]~3_combout\)))) # (!\plusone5[2]~5_combout\ & (!\plusone5[3]~7_combout\ & ((\plusone5[1]~3_combout\) # (\plusone5[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~5_combout\,
	datab => \plusone5[3]~7_combout\,
	datac => \plusone5[1]~3_combout\,
	datad => \plusone5[0]~1_combout\,
	combout => \h5|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y53_N8
\h5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux0~0_combout\ = (\plusone5[0]~1_combout\ & ((\plusone5[3]~7_combout\) # (\plusone5[1]~3_combout\ $ (\plusone5[2]~5_combout\)))) # (!\plusone5[0]~1_combout\ & ((\plusone5[1]~3_combout\) # (\plusone5[2]~5_combout\ $ (\plusone5[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[1]~3_combout\,
	datab => \plusone5[2]~5_combout\,
	datac => \plusone5[0]~1_combout\,
	datad => \plusone5[3]~7_combout\,
	combout => \h5|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


