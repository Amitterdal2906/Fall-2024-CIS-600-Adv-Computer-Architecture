-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "01/29/2024 20:11:30"

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

ENTITY 	microcomputer IS
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
END microcomputer;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF microcomputer IS
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \plusone[3]~5_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \plusone[3]~6_combout\ : std_logic;
SIGNAL \plusone1[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU_1|pc4_mips[2]~0_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[2]~1\ : std_logic;
SIGNAL \CPU_1|pc4_mips[3]~2_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[3]~3\ : std_logic;
SIGNAL \CPU_1|pc4_mips[4]~4_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[4]~5\ : std_logic;
SIGNAL \CPU_1|pc4_mips[5]~6_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[5]~7\ : std_logic;
SIGNAL \CPU_1|pc4_mips[6]~8_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux17~0_combout\ : std_logic;
SIGNAL \plusone[2]~7_combout\ : std_logic;
SIGNAL \plusone[2]~8_combout\ : std_logic;
SIGNAL \plusone[2]~9_combout\ : std_logic;
SIGNAL \plusone[0]~2_combout\ : std_logic;
SIGNAL \plusone[0]~3_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux18~0_combout\ : std_logic;
SIGNAL \plusone[1]~4_combout\ : std_logic;
SIGNAL \plusone[3]~10_combout\ : std_logic;
SIGNAL \plusone[3]~11_combout\ : std_logic;
SIGNAL \plusone[3]~13_combout\ : std_logic;
SIGNAL \plusone[3]~12_combout\ : std_logic;
SIGNAL \h0|Mux6~0_combout\ : std_logic;
SIGNAL \h0|Mux5~0_combout\ : std_logic;
SIGNAL \h0|Mux4~0_combout\ : std_logic;
SIGNAL \h0|Mux3~0_combout\ : std_logic;
SIGNAL \h0|Mux2~0_combout\ : std_logic;
SIGNAL \h0|Mux1~0_combout\ : std_logic;
SIGNAL \h0|Mux0~0_combout\ : std_logic;
SIGNAL \plusone1[1]~4_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux15~0_combout\ : std_logic;
SIGNAL \plusone1[1]~5_combout\ : std_logic;
SIGNAL \plusone1[1]~6_combout\ : std_logic;
SIGNAL \plusone1[2]~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \plusone1[2]~8_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[6]~9\ : std_logic;
SIGNAL \CPU_1|pc4_mips[7]~10_combout\ : std_logic;
SIGNAL \plusone1[0]~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \plusone1[3]~9_combout\ : std_logic;
SIGNAL \plusone1[3]~10_combout\ : std_logic;
SIGNAL \plusone1[0]~2_combout\ : std_logic;
SIGNAL \plusone1[0]~3_combout\ : std_logic;
SIGNAL \h1|Mux6~0_combout\ : std_logic;
SIGNAL \h1|Mux5~0_combout\ : std_logic;
SIGNAL \h1|Mux4~0_combout\ : std_logic;
SIGNAL \h1|Mux3~0_combout\ : std_logic;
SIGNAL \h1|Mux2~0_combout\ : std_logic;
SIGNAL \h1|Mux1~0_combout\ : std_logic;
SIGNAL \h1|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[7]~11\ : std_logic;
SIGNAL \CPU_1|pc4_mips[8]~12_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[8]~13\ : std_logic;
SIGNAL \CPU_1|pc4_mips[9]~14_combout\ : std_logic;
SIGNAL \plusone2[1]~2_combout\ : std_logic;
SIGNAL \plusone2[1]~3_combout\ : std_logic;
SIGNAL \plusone2[0]~0_combout\ : std_logic;
SIGNAL \plusone2[0]~1_combout\ : std_logic;
SIGNAL \plusone5[2]~0_combout\ : std_logic;
SIGNAL \plusone2[3]~6_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[9]~15\ : std_logic;
SIGNAL \CPU_1|pc4_mips[10]~16_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[10]~17\ : std_logic;
SIGNAL \CPU_1|pc4_mips[11]~18_combout\ : std_logic;
SIGNAL \plusone2[3]~7_combout\ : std_logic;
SIGNAL \plusone2[3]~8_combout\ : std_logic;
SIGNAL \plusone2[3]~9_combout\ : std_logic;
SIGNAL \plusone2[3]~10_combout\ : std_logic;
SIGNAL \plusone2[2]~4_combout\ : std_logic;
SIGNAL \plusone2[2]~5_combout\ : std_logic;
SIGNAL \h2|Mux6~0_combout\ : std_logic;
SIGNAL \h2|Mux5~0_combout\ : std_logic;
SIGNAL \h2|Mux4~0_combout\ : std_logic;
SIGNAL \h2|Mux3~0_combout\ : std_logic;
SIGNAL \h2|Mux2~0_combout\ : std_logic;
SIGNAL \h2|Mux1~0_combout\ : std_logic;
SIGNAL \h2|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[11]~19\ : std_logic;
SIGNAL \CPU_1|pc4_mips[12]~20_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[12]~21\ : std_logic;
SIGNAL \CPU_1|pc4_mips[13]~22_combout\ : std_logic;
SIGNAL \plusone3[1]~2_combout\ : std_logic;
SIGNAL \plusone3[1]~3_combout\ : std_logic;
SIGNAL \plusone3[1]~4_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[13]~23\ : std_logic;
SIGNAL \CPU_1|pc4_mips[14]~24_combout\ : std_logic;
SIGNAL \plusone3[2]~5_combout\ : std_logic;
SIGNAL \plusone3[2]~6_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux11~0_combout\ : std_logic;
SIGNAL \plusone3[2]~7_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[14]~25\ : std_logic;
SIGNAL \CPU_1|pc4_mips[15]~26_combout\ : std_logic;
SIGNAL \plusone3[3]~8_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux10~0_combout\ : std_logic;
SIGNAL \plusone5[1]~1_combout\ : std_logic;
SIGNAL \plusone3[3]~9_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux13~0_combout\ : std_logic;
SIGNAL \plusone3[0]~0_combout\ : std_logic;
SIGNAL \plusone3[0]~1_combout\ : std_logic;
SIGNAL \h3|Mux6~0_combout\ : std_logic;
SIGNAL \h3|Mux5~0_combout\ : std_logic;
SIGNAL \h3|Mux4~0_combout\ : std_logic;
SIGNAL \h3|Mux3~0_combout\ : std_logic;
SIGNAL \h3|Mux2~0_combout\ : std_logic;
SIGNAL \h3|Mux1~0_combout\ : std_logic;
SIGNAL \h3|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[15]~27\ : std_logic;
SIGNAL \CPU_1|pc4_mips[16]~28_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[16]~29\ : std_logic;
SIGNAL \CPU_1|pc4_mips[17]~30_combout\ : std_logic;
SIGNAL \plusone4[1]~3_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux8~0_combout\ : std_logic;
SIGNAL \plusone4[1]~4_combout\ : std_logic;
SIGNAL \plusone4[1]~5_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[17]~31\ : std_logic;
SIGNAL \CPU_1|pc4_mips[18]~32_combout\ : std_logic;
SIGNAL \plusone4[2]~6_combout\ : std_logic;
SIGNAL \plusone4[2]~0_combout\ : std_logic;
SIGNAL \plusone4[2]~7_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[18]~33\ : std_logic;
SIGNAL \CPU_1|pc4_mips[19]~34_combout\ : std_logic;
SIGNAL \plusone4[3]~8_combout\ : std_logic;
SIGNAL \plusone4[3]~9_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux6~0_combout\ : std_logic;
SIGNAL \plusone4[3]~10_combout\ : std_logic;
SIGNAL \plusone4[0]~1_combout\ : std_logic;
SIGNAL \plusone4[0]~2_combout\ : std_logic;
SIGNAL \h4|Mux6~0_combout\ : std_logic;
SIGNAL \h4|Mux5~0_combout\ : std_logic;
SIGNAL \h4|Mux4~0_combout\ : std_logic;
SIGNAL \h4|Mux3~0_combout\ : std_logic;
SIGNAL \h4|Mux2~0_combout\ : std_logic;
SIGNAL \h4|Mux1~0_combout\ : std_logic;
SIGNAL \h4|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[19]~35\ : std_logic;
SIGNAL \CPU_1|pc4_mips[20]~36_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[20]~37\ : std_logic;
SIGNAL \CPU_1|pc4_mips[21]~38_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[21]~39\ : std_logic;
SIGNAL \CPU_1|pc4_mips[22]~40_combout\ : std_logic;
SIGNAL \CPU_1|pc4_mips[22]~41\ : std_logic;
SIGNAL \CPU_1|pc4_mips[23]~42_combout\ : std_logic;
SIGNAL \plusone5[3]~8_combout\ : std_logic;
SIGNAL \plusone5[3]~9_combout\ : std_logic;
SIGNAL \plusone5[2]~6_combout\ : std_logic;
SIGNAL \plusone5[2]~7_combout\ : std_logic;
SIGNAL \plusone5[0]~2_combout\ : std_logic;
SIGNAL \plusone5[0]~3_combout\ : std_logic;
SIGNAL \MEMORY_1|Mux4~0_combout\ : std_logic;
SIGNAL \plusone5[1]~4_combout\ : std_logic;
SIGNAL \plusone5[1]~5_combout\ : std_logic;
SIGNAL \h5|Mux6~0_combout\ : std_logic;
SIGNAL \h5|Mux5~0_combout\ : std_logic;
SIGNAL \h5|Mux4~0_combout\ : std_logic;
SIGNAL \h5|Mux3~0_combout\ : std_logic;
SIGNAL \h5|Mux2~0_combout\ : std_logic;
SIGNAL \h5|Mux1~0_combout\ : std_logic;
SIGNAL \h5|Mux0~0_combout\ : std_logic;
SIGNAL \CPU_1|pc_next\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \h5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \h0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

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
\h5|ALT_INV_Mux0~0_combout\ <= NOT \h5|Mux0~0_combout\;
\h4|ALT_INV_Mux0~0_combout\ <= NOT \h4|Mux0~0_combout\;
\h3|ALT_INV_Mux0~0_combout\ <= NOT \h3|Mux0~0_combout\;
\h2|ALT_INV_Mux0~0_combout\ <= NOT \h2|Mux0~0_combout\;
\h1|ALT_INV_Mux0~0_combout\ <= NOT \h1|Mux0~0_combout\;
\h0|ALT_INV_Mux0~0_combout\ <= NOT \h0|Mux0~0_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: LCCOMB_X54_Y51_N4
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\SW[4]~input_o\ & (!\SW[2]~input_o\ & (!\SW[5]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Equal1~0_combout\);

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

-- Location: LCCOMB_X56_Y51_N12
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & !\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \Equal1~1_combout\);

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

-- Location: LCCOMB_X71_Y47_N0
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X71_Y47_N18
\plusone[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~5_combout\ = (!\SW[0]~input_o\ & \Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone[3]~5_combout\);

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

-- Location: LCCOMB_X71_Y47_N20
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\Equal1~1_combout\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \Equal1~1_combout\,
	datad => \SW[9]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X70_Y48_N22
\plusone[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~6_combout\ = (\plusone[3]~5_combout\) # ((\SW[6]~input_o\ & (\Equal8~0_combout\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[3]~5_combout\,
	datab => \SW[6]~input_o\,
	datac => \Equal8~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \plusone[3]~6_combout\);

-- Location: LCCOMB_X70_Y47_N22
\plusone1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~0_combout\ = (\SW[1]~input_o\) # (!\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \SW[1]~input_o\,
	combout => \plusone1[0]~0_combout\);

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

-- Location: FF_X69_Y47_N5
\CPU_1|pc_next[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[2]~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(2));

-- Location: LCCOMB_X69_Y47_N10
\CPU_1|pc4_mips[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[2]~0_combout\ = \CPU_1|pc_next\(2) $ (VCC)
-- \CPU_1|pc4_mips[2]~1\ = CARRY(\CPU_1|pc_next\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(2),
	datad => VCC,
	combout => \CPU_1|pc4_mips[2]~0_combout\,
	cout => \CPU_1|pc4_mips[2]~1\);

-- Location: LCCOMB_X69_Y47_N12
\CPU_1|pc4_mips[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[3]~2_combout\ = (\CPU_1|pc_next\(3) & (!\CPU_1|pc4_mips[2]~1\)) # (!\CPU_1|pc_next\(3) & ((\CPU_1|pc4_mips[2]~1\) # (GND)))
-- \CPU_1|pc4_mips[3]~3\ = CARRY((!\CPU_1|pc4_mips[2]~1\) # (!\CPU_1|pc_next\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datad => VCC,
	cin => \CPU_1|pc4_mips[2]~1\,
	combout => \CPU_1|pc4_mips[3]~2_combout\,
	cout => \CPU_1|pc4_mips[3]~3\);

-- Location: FF_X69_Y47_N7
\CPU_1|pc_next[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[3]~2_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(3));

-- Location: LCCOMB_X69_Y47_N14
\CPU_1|pc4_mips[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[4]~4_combout\ = (\CPU_1|pc_next\(4) & (\CPU_1|pc4_mips[3]~3\ $ (GND))) # (!\CPU_1|pc_next\(4) & (!\CPU_1|pc4_mips[3]~3\ & VCC))
-- \CPU_1|pc4_mips[4]~5\ = CARRY((\CPU_1|pc_next\(4) & !\CPU_1|pc4_mips[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(4),
	datad => VCC,
	cin => \CPU_1|pc4_mips[3]~3\,
	combout => \CPU_1|pc4_mips[4]~4_combout\,
	cout => \CPU_1|pc4_mips[4]~5\);

-- Location: FF_X69_Y47_N9
\CPU_1|pc_next[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[4]~4_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(4));

-- Location: LCCOMB_X69_Y47_N16
\CPU_1|pc4_mips[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[5]~6_combout\ = (\CPU_1|pc_next\(5) & (!\CPU_1|pc4_mips[4]~5\)) # (!\CPU_1|pc_next\(5) & ((\CPU_1|pc4_mips[4]~5\) # (GND)))
-- \CPU_1|pc4_mips[5]~7\ = CARRY((!\CPU_1|pc4_mips[4]~5\) # (!\CPU_1|pc_next\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(5),
	datad => VCC,
	cin => \CPU_1|pc4_mips[4]~5\,
	combout => \CPU_1|pc4_mips[5]~6_combout\,
	cout => \CPU_1|pc4_mips[5]~7\);

-- Location: FF_X69_Y47_N3
\CPU_1|pc_next[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[5]~6_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(5));

-- Location: LCCOMB_X69_Y47_N18
\CPU_1|pc4_mips[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[6]~8_combout\ = (\CPU_1|pc_next\(6) & (\CPU_1|pc4_mips[5]~7\ $ (GND))) # (!\CPU_1|pc_next\(6) & (!\CPU_1|pc4_mips[5]~7\ & VCC))
-- \CPU_1|pc4_mips[6]~9\ = CARRY((\CPU_1|pc_next\(6) & !\CPU_1|pc4_mips[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(6),
	datad => VCC,
	cin => \CPU_1|pc4_mips[5]~7\,
	combout => \CPU_1|pc4_mips[6]~8_combout\,
	cout => \CPU_1|pc4_mips[6]~9\);

-- Location: FF_X69_Y47_N19
\CPU_1|pc_next[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[6]~8_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(6));

-- Location: LCCOMB_X70_Y47_N0
\MEMORY_1|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux17~0_combout\ = (\CPU_1|pc_next\(3) & (!\CPU_1|pc_next\(4) & (!\CPU_1|pc_next\(5) & !\CPU_1|pc_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(4),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(6),
	combout => \MEMORY_1|Mux17~0_combout\);

-- Location: LCCOMB_X70_Y48_N0
\plusone[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[2]~7_combout\ = (\plusone[3]~5_combout\ & (((\plusone1[0]~0_combout\) # (\CPU_1|pc_next\(2))))) # (!\plusone[3]~5_combout\ & (\MEMORY_1|Mux17~0_combout\ & (!\plusone1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[3]~5_combout\,
	datab => \MEMORY_1|Mux17~0_combout\,
	datac => \plusone1[0]~0_combout\,
	datad => \CPU_1|pc_next\(2),
	combout => \plusone[2]~7_combout\);

-- Location: LCCOMB_X70_Y48_N6
\plusone[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[2]~8_combout\ = (\plusone[2]~7_combout\ & (((\CPU_1|pc4_mips[2]~0_combout\) # (!\plusone1[0]~0_combout\)) # (!\plusone[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[3]~6_combout\,
	datab => \plusone1[0]~0_combout\,
	datac => \CPU_1|pc4_mips[2]~0_combout\,
	datad => \plusone[2]~7_combout\,
	combout => \plusone[2]~8_combout\);

-- Location: LCCOMB_X70_Y48_N12
\plusone[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[2]~9_combout\ = (\KEY[1]~input_o\ & \plusone[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \plusone[2]~8_combout\,
	combout => \plusone[2]~9_combout\);

-- Location: LCCOMB_X71_Y47_N22
\plusone[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[0]~2_combout\ = (\SW[0]~input_o\ & (\KEY[1]~input_o\ & (!\SW[1]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone[0]~2_combout\);

-- Location: LCCOMB_X70_Y48_N8
\plusone[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[0]~3_combout\ = (\CPU_1|pc_next\(2) & (\MEMORY_1|Mux17~0_combout\ & \plusone[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(2),
	datab => \MEMORY_1|Mux17~0_combout\,
	datad => \plusone[0]~2_combout\,
	combout => \plusone[0]~3_combout\);

-- Location: LCCOMB_X70_Y46_N16
\MEMORY_1|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux18~0_combout\ = (!\CPU_1|pc_next\(3) & (!\CPU_1|pc_next\(5) & (\CPU_1|pc_next\(2) $ (\CPU_1|pc_next\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux18~0_combout\);

-- Location: LCCOMB_X71_Y47_N12
\plusone[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[1]~4_combout\ = (\plusone[0]~2_combout\ & (\MEMORY_1|Mux18~0_combout\ & !\CPU_1|pc_next\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[0]~2_combout\,
	datab => \MEMORY_1|Mux18~0_combout\,
	datac => \CPU_1|pc_next\(6),
	combout => \plusone[1]~4_combout\);

-- Location: LCCOMB_X70_Y47_N28
\plusone[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~10_combout\ = (!\CPU_1|pc_next\(5) & (\CPU_1|pc_next\(4) & (!\CPU_1|pc_next\(2) & !\CPU_1|pc_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(5),
	datab => \CPU_1|pc_next\(4),
	datac => \CPU_1|pc_next\(2),
	datad => \CPU_1|pc_next\(6),
	combout => \plusone[3]~10_combout\);

-- Location: LCCOMB_X70_Y46_N18
\plusone[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~11_combout\ = (\CPU_1|pc_next\(3) & (((\plusone[3]~5_combout\)))) # (!\CPU_1|pc_next\(3) & ((\plusone1[0]~0_combout\ & (\plusone[3]~5_combout\)) # (!\plusone1[0]~0_combout\ & (!\plusone[3]~5_combout\ & \plusone[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \plusone1[0]~0_combout\,
	datac => \plusone[3]~5_combout\,
	datad => \plusone[3]~10_combout\,
	combout => \plusone[3]~11_combout\);

-- Location: LCCOMB_X70_Y48_N16
\plusone[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~13_combout\ = (\plusone[3]~6_combout\ & (!\CPU_1|pc4_mips[3]~2_combout\ & ((\SW[1]~input_o\) # (!\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[3]~6_combout\,
	datab => \SW[1]~input_o\,
	datac => \CPU_1|pc4_mips[3]~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \plusone[3]~13_combout\);

-- Location: LCCOMB_X70_Y48_N2
\plusone[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone[3]~12_combout\ = (\KEY[1]~input_o\ & (\plusone[3]~11_combout\ & !\plusone[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \plusone[3]~11_combout\,
	datad => \plusone[3]~13_combout\,
	combout => \plusone[3]~12_combout\);

-- Location: LCCOMB_X70_Y48_N28
\h0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux6~0_combout\ = (\plusone[2]~9_combout\ & (!\plusone[1]~4_combout\ & (\plusone[0]~3_combout\ $ (!\plusone[3]~12_combout\)))) # (!\plusone[2]~9_combout\ & (\plusone[0]~3_combout\ & (\plusone[1]~4_combout\ $ (!\plusone[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y48_N10
\h0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux5~0_combout\ = (\plusone[1]~4_combout\ & ((\plusone[0]~3_combout\ & ((\plusone[3]~12_combout\))) # (!\plusone[0]~3_combout\ & (\plusone[2]~9_combout\)))) # (!\plusone[1]~4_combout\ & (\plusone[2]~9_combout\ & (\plusone[0]~3_combout\ $ 
-- (\plusone[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y48_N20
\h0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux4~0_combout\ = (\plusone[2]~9_combout\ & (\plusone[3]~12_combout\ & ((\plusone[1]~4_combout\) # (!\plusone[0]~3_combout\)))) # (!\plusone[2]~9_combout\ & (!\plusone[0]~3_combout\ & (\plusone[1]~4_combout\ & !\plusone[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y48_N30
\h0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux3~0_combout\ = (\plusone[1]~4_combout\ & ((\plusone[2]~9_combout\ & (\plusone[0]~3_combout\)) # (!\plusone[2]~9_combout\ & (!\plusone[0]~3_combout\ & \plusone[3]~12_combout\)))) # (!\plusone[1]~4_combout\ & (!\plusone[3]~12_combout\ & 
-- (\plusone[2]~9_combout\ $ (\plusone[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y48_N24
\h0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux2~0_combout\ = (\plusone[1]~4_combout\ & (((\plusone[0]~3_combout\ & !\plusone[3]~12_combout\)))) # (!\plusone[1]~4_combout\ & ((\plusone[2]~9_combout\ & ((!\plusone[3]~12_combout\))) # (!\plusone[2]~9_combout\ & (\plusone[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y48_N26
\h0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux1~0_combout\ = (\plusone[2]~9_combout\ & (\plusone[0]~3_combout\ & (\plusone[1]~4_combout\ $ (\plusone[3]~12_combout\)))) # (!\plusone[2]~9_combout\ & (!\plusone[3]~12_combout\ & ((\plusone[0]~3_combout\) # (\plusone[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y48_N4
\h0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h0|Mux0~0_combout\ = (\plusone[0]~3_combout\ & ((\plusone[3]~12_combout\) # (\plusone[2]~9_combout\ $ (\plusone[1]~4_combout\)))) # (!\plusone[0]~3_combout\ & ((\plusone[1]~4_combout\) # (\plusone[2]~9_combout\ $ (\plusone[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[2]~9_combout\,
	datab => \plusone[0]~3_combout\,
	datac => \plusone[1]~4_combout\,
	datad => \plusone[3]~12_combout\,
	combout => \h0|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y47_N2
\plusone1[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[1]~4_combout\ = (\plusone[3]~5_combout\ & ((\plusone1[0]~0_combout\ & (\CPU_1|pc4_mips[5]~6_combout\)) # (!\plusone1[0]~0_combout\ & ((\CPU_1|pc_next\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[5]~6_combout\,
	datab => \plusone1[0]~0_combout\,
	datac => \CPU_1|pc_next\(5),
	datad => \plusone[3]~5_combout\,
	combout => \plusone1[1]~4_combout\);

-- Location: LCCOMB_X70_Y47_N2
\MEMORY_1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux15~0_combout\ = (\CPU_1|pc_next\(5)) # ((\CPU_1|pc_next\(4) & ((\CPU_1|pc_next\(3)) # (\CPU_1|pc_next\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux15~0_combout\);

-- Location: LCCOMB_X71_Y47_N2
\plusone1[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[1]~5_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\CPU_1|pc_next\(6) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \CPU_1|pc_next\(6),
	datad => \Equal1~2_combout\,
	combout => \plusone1[1]~5_combout\);

-- Location: LCCOMB_X70_Y47_N4
\plusone1[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[1]~6_combout\ = (\KEY[1]~input_o\ & ((\plusone1[1]~4_combout\) # ((!\MEMORY_1|Mux15~0_combout\ & \plusone1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~4_combout\,
	datab => \MEMORY_1|Mux15~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \plusone1[1]~5_combout\,
	combout => \plusone1[1]~6_combout\);

-- Location: LCCOMB_X71_Y47_N4
\plusone1[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[2]~7_combout\ = (!\SW[0]~input_o\ & (\CPU_1|pc4_mips[6]~8_combout\ & (\SW[1]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU_1|pc4_mips[6]~8_combout\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone1[2]~7_combout\);

-- Location: LCCOMB_X71_Y47_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\) # (!\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X70_Y47_N26
\plusone1[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[2]~8_combout\ = (\KEY[1]~input_o\ & ((\plusone1[2]~7_combout\) # ((\CPU_1|pc_next\(6) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[2]~7_combout\,
	datab => \CPU_1|pc_next\(6),
	datac => \KEY[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \plusone1[2]~8_combout\);

-- Location: LCCOMB_X69_Y47_N20
\CPU_1|pc4_mips[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[7]~10_combout\ = (\CPU_1|pc_next\(7) & (!\CPU_1|pc4_mips[6]~9\)) # (!\CPU_1|pc_next\(7) & ((\CPU_1|pc4_mips[6]~9\) # (GND)))
-- \CPU_1|pc4_mips[7]~11\ = CARRY((!\CPU_1|pc4_mips[6]~9\) # (!\CPU_1|pc_next\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(7),
	datad => VCC,
	cin => \CPU_1|pc4_mips[6]~9\,
	combout => \CPU_1|pc4_mips[7]~10_combout\,
	cout => \CPU_1|pc4_mips[7]~11\);

-- Location: FF_X69_Y47_N21
\CPU_1|pc_next[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[7]~10_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(7));

-- Location: LCCOMB_X70_Y48_N18
\plusone1[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~1_combout\ = (!\SW[6]~input_o\ & (\Equal8~0_combout\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \Equal8~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \plusone1[0]~1_combout\);

-- Location: LCCOMB_X71_Y47_N26
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X70_Y47_N20
\plusone1[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[3]~9_combout\ = (\Equal0~0_combout\ & ((\Equal2~0_combout\ & (\CPU_1|pc4_mips[7]~10_combout\)) # (!\Equal2~0_combout\ & ((\plusone1[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[7]~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \plusone1[0]~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \plusone1[3]~9_combout\);

-- Location: LCCOMB_X70_Y47_N18
\plusone1[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[3]~10_combout\ = (\KEY[1]~input_o\ & ((\plusone1[3]~9_combout\) # ((\CPU_1|pc_next\(7) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(7),
	datab => \plusone1[3]~9_combout\,
	datac => \KEY[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \plusone1[3]~10_combout\);

-- Location: LCCOMB_X70_Y47_N10
\plusone1[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~2_combout\ = (\plusone1[0]~0_combout\ & ((\plusone1[0]~1_combout\) # ((\CPU_1|pc4_mips[4]~4_combout\ & \Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[4]~4_combout\,
	datab => \plusone1[0]~0_combout\,
	datac => \plusone1[0]~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \plusone1[0]~2_combout\);

-- Location: LCCOMB_X70_Y47_N16
\plusone1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone1[0]~3_combout\ = (\KEY[1]~input_o\ & ((\plusone1[0]~2_combout\) # ((!\Equal0~0_combout\ & \CPU_1|pc_next\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[0]~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \CPU_1|pc_next\(4),
	combout => \plusone1[0]~3_combout\);

-- Location: LCCOMB_X69_Y50_N12
\h1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux6~0_combout\ = (\plusone1[2]~8_combout\ & (!\plusone1[1]~6_combout\ & (\plusone1[3]~10_combout\ $ (!\plusone1[0]~3_combout\)))) # (!\plusone1[2]~8_combout\ & (\plusone1[0]~3_combout\ & (\plusone1[1]~6_combout\ $ (!\plusone1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y50_N30
\h1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux5~0_combout\ = (\plusone1[1]~6_combout\ & ((\plusone1[0]~3_combout\ & ((\plusone1[3]~10_combout\))) # (!\plusone1[0]~3_combout\ & (\plusone1[2]~8_combout\)))) # (!\plusone1[1]~6_combout\ & (\plusone1[2]~8_combout\ & (\plusone1[3]~10_combout\ $ 
-- (\plusone1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y50_N16
\h1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux4~0_combout\ = (\plusone1[2]~8_combout\ & (\plusone1[3]~10_combout\ & ((\plusone1[1]~6_combout\) # (!\plusone1[0]~3_combout\)))) # (!\plusone1[2]~8_combout\ & (\plusone1[1]~6_combout\ & (!\plusone1[3]~10_combout\ & !\plusone1[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y50_N22
\h1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux3~0_combout\ = (\plusone1[1]~6_combout\ & ((\plusone1[2]~8_combout\ & ((\plusone1[0]~3_combout\))) # (!\plusone1[2]~8_combout\ & (\plusone1[3]~10_combout\ & !\plusone1[0]~3_combout\)))) # (!\plusone1[1]~6_combout\ & (!\plusone1[3]~10_combout\ & 
-- (\plusone1[2]~8_combout\ $ (\plusone1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y50_N28
\h1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux2~0_combout\ = (\plusone1[1]~6_combout\ & (((!\plusone1[3]~10_combout\ & \plusone1[0]~3_combout\)))) # (!\plusone1[1]~6_combout\ & ((\plusone1[2]~8_combout\ & (!\plusone1[3]~10_combout\)) # (!\plusone1[2]~8_combout\ & ((\plusone1[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y50_N2
\h1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux1~0_combout\ = (\plusone1[1]~6_combout\ & (!\plusone1[3]~10_combout\ & ((\plusone1[0]~3_combout\) # (!\plusone1[2]~8_combout\)))) # (!\plusone1[1]~6_combout\ & (\plusone1[0]~3_combout\ & (\plusone1[2]~8_combout\ $ (!\plusone1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y50_N0
\h1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h1|Mux0~0_combout\ = (\plusone1[0]~3_combout\ & ((\plusone1[3]~10_combout\) # (\plusone1[1]~6_combout\ $ (\plusone1[2]~8_combout\)))) # (!\plusone1[0]~3_combout\ & ((\plusone1[1]~6_combout\) # (\plusone1[2]~8_combout\ $ (\plusone1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[1]~6_combout\,
	datab => \plusone1[2]~8_combout\,
	datac => \plusone1[3]~10_combout\,
	datad => \plusone1[0]~3_combout\,
	combout => \h1|Mux0~0_combout\);

-- Location: FF_X69_Y47_N25
\CPU_1|pc_next[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[9]~14_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(9));

-- Location: LCCOMB_X69_Y47_N22
\CPU_1|pc4_mips[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[8]~12_combout\ = (\CPU_1|pc_next\(8) & (\CPU_1|pc4_mips[7]~11\ $ (GND))) # (!\CPU_1|pc_next\(8) & (!\CPU_1|pc4_mips[7]~11\ & VCC))
-- \CPU_1|pc4_mips[8]~13\ = CARRY((\CPU_1|pc_next\(8) & !\CPU_1|pc4_mips[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(8),
	datad => VCC,
	cin => \CPU_1|pc4_mips[7]~11\,
	combout => \CPU_1|pc4_mips[8]~12_combout\,
	cout => \CPU_1|pc4_mips[8]~13\);

-- Location: FF_X69_Y47_N23
\CPU_1|pc_next[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[8]~12_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(8));

-- Location: LCCOMB_X69_Y47_N24
\CPU_1|pc4_mips[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[9]~14_combout\ = (\CPU_1|pc_next\(9) & (!\CPU_1|pc4_mips[8]~13\)) # (!\CPU_1|pc_next\(9) & ((\CPU_1|pc4_mips[8]~13\) # (GND)))
-- \CPU_1|pc4_mips[9]~15\ = CARRY((!\CPU_1|pc4_mips[8]~13\) # (!\CPU_1|pc_next\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(9),
	datad => VCC,
	cin => \CPU_1|pc4_mips[8]~13\,
	combout => \CPU_1|pc4_mips[9]~14_combout\,
	cout => \CPU_1|pc4_mips[9]~15\);

-- Location: LCCOMB_X71_Y47_N16
\plusone2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[1]~2_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (\CPU_1|pc4_mips[9]~14_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \CPU_1|pc4_mips[9]~14_combout\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[1]~2_combout\);

-- Location: LCCOMB_X72_Y47_N22
\plusone2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[1]~3_combout\ = (\KEY[1]~input_o\ & ((\plusone2[1]~2_combout\) # ((\CPU_1|pc_next\(9) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \plusone2[1]~2_combout\,
	datac => \CPU_1|pc_next\(9),
	datad => \Equal0~0_combout\,
	combout => \plusone2[1]~3_combout\);

-- Location: LCCOMB_X71_Y47_N14
\plusone2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[0]~0_combout\ = (!\SW[0]~input_o\ & (\CPU_1|pc4_mips[8]~12_combout\ & (\SW[1]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU_1|pc4_mips[8]~12_combout\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[0]~0_combout\);

-- Location: LCCOMB_X72_Y47_N24
\plusone2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[0]~1_combout\ = (\KEY[1]~input_o\ & ((\plusone2[0]~0_combout\) # ((!\Equal0~0_combout\ & \CPU_1|pc_next\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \CPU_1|pc_next\(8),
	datad => \plusone2[0]~0_combout\,
	combout => \plusone2[0]~1_combout\);

-- Location: LCCOMB_X70_Y47_N30
\plusone5[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[2]~0_combout\ = (!\plusone[3]~5_combout\ & (!\CPU_1|pc_next\(6) & (!\CPU_1|pc_next\(5) & !\CPU_1|pc_next\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone[3]~5_combout\,
	datab => \CPU_1|pc_next\(6),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \plusone5[2]~0_combout\);

-- Location: LCCOMB_X71_Y47_N8
\plusone2[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~6_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & (\SW[1]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[3]~6_combout\);

-- Location: FF_X69_Y47_N29
\CPU_1|pc_next[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[11]~18_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(11));

-- Location: LCCOMB_X69_Y47_N26
\CPU_1|pc4_mips[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[10]~16_combout\ = (\CPU_1|pc_next\(10) & (\CPU_1|pc4_mips[9]~15\ $ (GND))) # (!\CPU_1|pc_next\(10) & (!\CPU_1|pc4_mips[9]~15\ & VCC))
-- \CPU_1|pc4_mips[10]~17\ = CARRY((\CPU_1|pc_next\(10) & !\CPU_1|pc4_mips[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(10),
	datad => VCC,
	cin => \CPU_1|pc4_mips[9]~15\,
	combout => \CPU_1|pc4_mips[10]~16_combout\,
	cout => \CPU_1|pc4_mips[10]~17\);

-- Location: FF_X69_Y47_N27
\CPU_1|pc_next[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[10]~16_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(10));

-- Location: LCCOMB_X69_Y47_N28
\CPU_1|pc4_mips[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[11]~18_combout\ = (\CPU_1|pc_next\(11) & (!\CPU_1|pc4_mips[10]~17\)) # (!\CPU_1|pc_next\(11) & ((\CPU_1|pc4_mips[10]~17\) # (GND)))
-- \CPU_1|pc4_mips[11]~19\ = CARRY((!\CPU_1|pc4_mips[10]~17\) # (!\CPU_1|pc_next\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(11),
	datad => VCC,
	cin => \CPU_1|pc4_mips[10]~17\,
	combout => \CPU_1|pc4_mips[11]~18_combout\,
	cout => \CPU_1|pc4_mips[11]~19\);

-- Location: LCCOMB_X71_Y47_N6
\plusone2[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~7_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & (!\SW[1]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[3]~7_combout\);

-- Location: LCCOMB_X70_Y47_N8
\plusone2[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~8_combout\ = (\plusone2[3]~6_combout\ & ((\CPU_1|pc4_mips[11]~18_combout\) # ((\CPU_1|pc_next\(11) & \plusone2[3]~7_combout\)))) # (!\plusone2[3]~6_combout\ & (((\CPU_1|pc_next\(11) & \plusone2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[3]~6_combout\,
	datab => \CPU_1|pc4_mips[11]~18_combout\,
	datac => \CPU_1|pc_next\(11),
	datad => \plusone2[3]~7_combout\,
	combout => \plusone2[3]~8_combout\);

-- Location: LCCOMB_X71_Y47_N28
\plusone2[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~9_combout\ = (\KEY[1]~input_o\ & (!\SW[1]~input_o\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[3]~9_combout\);

-- Location: LCCOMB_X70_Y47_N12
\plusone2[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[3]~10_combout\ = (\plusone2[3]~8_combout\) # ((\plusone5[2]~0_combout\ & (!\CPU_1|pc_next\(2) & \plusone2[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~0_combout\,
	datab => \CPU_1|pc_next\(2),
	datac => \plusone2[3]~8_combout\,
	datad => \plusone2[3]~9_combout\,
	combout => \plusone2[3]~10_combout\);

-- Location: LCCOMB_X71_Y47_N30
\plusone2[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[2]~4_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (\CPU_1|pc4_mips[10]~16_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \CPU_1|pc4_mips[10]~16_combout\,
	datad => \Equal1~2_combout\,
	combout => \plusone2[2]~4_combout\);

-- Location: LCCOMB_X72_Y47_N12
\plusone2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone2[2]~5_combout\ = (\KEY[1]~input_o\ & ((\plusone2[2]~4_combout\) # ((\CPU_1|pc_next\(10) & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \plusone2[2]~4_combout\,
	datac => \CPU_1|pc_next\(10),
	datad => \Equal0~0_combout\,
	combout => \plusone2[2]~5_combout\);

-- Location: LCCOMB_X72_Y47_N6
\h2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux6~0_combout\ = (\plusone2[3]~10_combout\ & (\plusone2[0]~1_combout\ & (\plusone2[1]~3_combout\ $ (\plusone2[2]~5_combout\)))) # (!\plusone2[3]~10_combout\ & (!\plusone2[1]~3_combout\ & (\plusone2[0]~1_combout\ $ (\plusone2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y47_N28
\h2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux5~0_combout\ = (\plusone2[1]~3_combout\ & ((\plusone2[0]~1_combout\ & (\plusone2[3]~10_combout\)) # (!\plusone2[0]~1_combout\ & ((\plusone2[2]~5_combout\))))) # (!\plusone2[1]~3_combout\ & (\plusone2[2]~5_combout\ & (\plusone2[0]~1_combout\ $ 
-- (\plusone2[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y47_N26
\h2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux4~0_combout\ = (\plusone2[3]~10_combout\ & (\plusone2[2]~5_combout\ & ((\plusone2[1]~3_combout\) # (!\plusone2[0]~1_combout\)))) # (!\plusone2[3]~10_combout\ & (\plusone2[1]~3_combout\ & (!\plusone2[0]~1_combout\ & !\plusone2[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y47_N8
\h2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux3~0_combout\ = (\plusone2[1]~3_combout\ & ((\plusone2[0]~1_combout\ & ((\plusone2[2]~5_combout\))) # (!\plusone2[0]~1_combout\ & (\plusone2[3]~10_combout\ & !\plusone2[2]~5_combout\)))) # (!\plusone2[1]~3_combout\ & (!\plusone2[3]~10_combout\ & 
-- (\plusone2[0]~1_combout\ $ (\plusone2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y47_N2
\h2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux2~0_combout\ = (\plusone2[1]~3_combout\ & (\plusone2[0]~1_combout\ & (!\plusone2[3]~10_combout\))) # (!\plusone2[1]~3_combout\ & ((\plusone2[2]~5_combout\ & ((!\plusone2[3]~10_combout\))) # (!\plusone2[2]~5_combout\ & (\plusone2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y47_N16
\h2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux1~0_combout\ = (\plusone2[1]~3_combout\ & (!\plusone2[3]~10_combout\ & ((\plusone2[0]~1_combout\) # (!\plusone2[2]~5_combout\)))) # (!\plusone2[1]~3_combout\ & (\plusone2[0]~1_combout\ & (\plusone2[3]~10_combout\ $ (!\plusone2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y47_N18
\h2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h2|Mux0~0_combout\ = (\plusone2[0]~1_combout\ & ((\plusone2[3]~10_combout\) # (\plusone2[1]~3_combout\ $ (\plusone2[2]~5_combout\)))) # (!\plusone2[0]~1_combout\ & ((\plusone2[1]~3_combout\) # (\plusone2[3]~10_combout\ $ (\plusone2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[1]~3_combout\,
	datab => \plusone2[0]~1_combout\,
	datac => \plusone2[3]~10_combout\,
	datad => \plusone2[2]~5_combout\,
	combout => \h2|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y47_N30
\CPU_1|pc4_mips[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[12]~20_combout\ = (\CPU_1|pc_next\(12) & (\CPU_1|pc4_mips[11]~19\ $ (GND))) # (!\CPU_1|pc_next\(12) & (!\CPU_1|pc4_mips[11]~19\ & VCC))
-- \CPU_1|pc4_mips[12]~21\ = CARRY((\CPU_1|pc_next\(12) & !\CPU_1|pc4_mips[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(12),
	datad => VCC,
	cin => \CPU_1|pc4_mips[11]~19\,
	combout => \CPU_1|pc4_mips[12]~20_combout\,
	cout => \CPU_1|pc4_mips[12]~21\);

-- Location: FF_X69_Y47_N1
\CPU_1|pc_next[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[12]~20_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(12));

-- Location: LCCOMB_X69_Y46_N0
\CPU_1|pc4_mips[13]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[13]~22_combout\ = (\CPU_1|pc_next\(13) & (!\CPU_1|pc4_mips[12]~21\)) # (!\CPU_1|pc_next\(13) & ((\CPU_1|pc4_mips[12]~21\) # (GND)))
-- \CPU_1|pc4_mips[13]~23\ = CARRY((!\CPU_1|pc4_mips[12]~21\) # (!\CPU_1|pc_next\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(13),
	datad => VCC,
	cin => \CPU_1|pc4_mips[12]~21\,
	combout => \CPU_1|pc4_mips[13]~22_combout\,
	cout => \CPU_1|pc4_mips[13]~23\);

-- Location: FF_X69_Y46_N23
\CPU_1|pc_next[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[13]~22_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(13));

-- Location: LCCOMB_X69_Y47_N4
\plusone3[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~2_combout\ = (\plusone5[2]~0_combout\ & (!\CPU_1|pc_next\(3) & (\CPU_1|pc_next\(2) & \plusone2[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~0_combout\,
	datab => \CPU_1|pc_next\(3),
	datac => \CPU_1|pc_next\(2),
	datad => \plusone2[3]~9_combout\,
	combout => \plusone3[1]~2_combout\);

-- Location: LCCOMB_X69_Y46_N22
\plusone3[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~3_combout\ = (\plusone1[0]~0_combout\ & (\KEY[1]~input_o\ & (\CPU_1|pc4_mips[13]~22_combout\ & \plusone[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[0]~0_combout\,
	datab => \KEY[1]~input_o\,
	datac => \CPU_1|pc4_mips[13]~22_combout\,
	datad => \plusone[3]~5_combout\,
	combout => \plusone3[1]~3_combout\);

-- Location: LCCOMB_X69_Y46_N28
\plusone3[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[1]~4_combout\ = (\plusone3[1]~2_combout\) # ((\plusone3[1]~3_combout\) # ((\CPU_1|pc_next\(13) & \plusone2[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(13),
	datab => \plusone2[3]~7_combout\,
	datac => \plusone3[1]~2_combout\,
	datad => \plusone3[1]~3_combout\,
	combout => \plusone3[1]~4_combout\);

-- Location: LCCOMB_X69_Y46_N2
\CPU_1|pc4_mips[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[14]~24_combout\ = (\CPU_1|pc_next\(14) & (\CPU_1|pc4_mips[13]~23\ $ (GND))) # (!\CPU_1|pc_next\(14) & (!\CPU_1|pc4_mips[13]~23\ & VCC))
-- \CPU_1|pc4_mips[14]~25\ = CARRY((\CPU_1|pc_next\(14) & !\CPU_1|pc4_mips[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(14),
	datad => VCC,
	cin => \CPU_1|pc4_mips[13]~23\,
	combout => \CPU_1|pc4_mips[14]~24_combout\,
	cout => \CPU_1|pc4_mips[14]~25\);

-- Location: FF_X69_Y46_N3
\CPU_1|pc_next[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[14]~24_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(14));

-- Location: LCCOMB_X70_Y46_N14
\plusone3[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[2]~5_combout\ = (\plusone[3]~5_combout\ & ((\plusone1[0]~0_combout\ & ((\CPU_1|pc4_mips[14]~24_combout\))) # (!\plusone1[0]~0_combout\ & (\CPU_1|pc_next\(14))))) # (!\plusone[3]~5_combout\ & (((\plusone1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(14),
	datab => \CPU_1|pc4_mips[14]~24_combout\,
	datac => \plusone[3]~5_combout\,
	datad => \plusone1[0]~0_combout\,
	combout => \plusone3[2]~5_combout\);

-- Location: LCCOMB_X70_Y46_N12
\plusone3[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[2]~6_combout\ = (\plusone[3]~5_combout\) # ((\plusone3[2]~5_combout\ & ((\plusone1[0]~1_combout\))) # (!\plusone3[2]~5_combout\ & (\CPU_1|pc_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(6),
	datab => \plusone3[2]~5_combout\,
	datac => \plusone[3]~5_combout\,
	datad => \plusone1[0]~1_combout\,
	combout => \plusone3[2]~6_combout\);

-- Location: LCCOMB_X70_Y46_N28
\MEMORY_1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux11~0_combout\ = (!\CPU_1|pc_next\(2) & (!\CPU_1|pc_next\(5) & (\CPU_1|pc_next\(3) $ (\CPU_1|pc_next\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux11~0_combout\);

-- Location: LCCOMB_X70_Y46_N2
\plusone3[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[2]~7_combout\ = (\KEY[1]~input_o\ & ((\plusone3[2]~6_combout\ & (\plusone3[2]~5_combout\)) # (!\plusone3[2]~6_combout\ & (!\plusone3[2]~5_combout\ & \MEMORY_1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[2]~6_combout\,
	datab => \plusone3[2]~5_combout\,
	datac => \KEY[1]~input_o\,
	datad => \MEMORY_1|Mux11~0_combout\,
	combout => \plusone3[2]~7_combout\);

-- Location: FF_X69_Y46_N31
\CPU_1|pc_next[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[15]~26_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(15));

-- Location: LCCOMB_X69_Y46_N4
\CPU_1|pc4_mips[15]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[15]~26_combout\ = (\CPU_1|pc_next\(15) & (!\CPU_1|pc4_mips[14]~25\)) # (!\CPU_1|pc_next\(15) & ((\CPU_1|pc4_mips[14]~25\) # (GND)))
-- \CPU_1|pc4_mips[15]~27\ = CARRY((!\CPU_1|pc4_mips[14]~25\) # (!\CPU_1|pc_next\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(15),
	datad => VCC,
	cin => \CPU_1|pc4_mips[14]~25\,
	combout => \CPU_1|pc4_mips[15]~26_combout\,
	cout => \CPU_1|pc4_mips[15]~27\);

-- Location: LCCOMB_X69_Y46_N30
\plusone3[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[3]~8_combout\ = (\plusone2[3]~6_combout\ & ((\CPU_1|pc4_mips[15]~26_combout\) # ((\CPU_1|pc_next\(15) & \plusone2[3]~7_combout\)))) # (!\plusone2[3]~6_combout\ & (((\CPU_1|pc_next\(15) & \plusone2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[3]~6_combout\,
	datab => \CPU_1|pc4_mips[15]~26_combout\,
	datac => \CPU_1|pc_next\(15),
	datad => \plusone2[3]~7_combout\,
	combout => \plusone3[3]~8_combout\);

-- Location: LCCOMB_X69_Y47_N6
\MEMORY_1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux10~0_combout\ = (!\CPU_1|pc_next\(5) & ((\CPU_1|pc_next\(2) & (!\CPU_1|pc_next\(4) & \CPU_1|pc_next\(3))) # (!\CPU_1|pc_next\(2) & (\CPU_1|pc_next\(4) & !\CPU_1|pc_next\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(2),
	datab => \CPU_1|pc_next\(4),
	datac => \CPU_1|pc_next\(3),
	datad => \CPU_1|pc_next\(5),
	combout => \MEMORY_1|Mux10~0_combout\);

-- Location: LCCOMB_X71_Y47_N10
\plusone5[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[1]~1_combout\ = (!\CPU_1|pc_next\(6) & ((\SW[0]~input_o\) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \CPU_1|pc_next\(6),
	datad => \Equal1~2_combout\,
	combout => \plusone5[1]~1_combout\);

-- Location: LCCOMB_X70_Y45_N6
\plusone3[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[3]~9_combout\ = (\plusone3[3]~8_combout\) # ((\MEMORY_1|Mux10~0_combout\ & (\plusone2[3]~9_combout\ & \plusone5[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[3]~8_combout\,
	datab => \MEMORY_1|Mux10~0_combout\,
	datac => \plusone2[3]~9_combout\,
	datad => \plusone5[1]~1_combout\,
	combout => \plusone3[3]~9_combout\);

-- Location: LCCOMB_X70_Y47_N6
\MEMORY_1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux13~0_combout\ = (!\CPU_1|pc_next\(5) & (!\CPU_1|pc_next\(4) & (\CPU_1|pc_next\(3) $ (\CPU_1|pc_next\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux13~0_combout\);

-- Location: LCCOMB_X69_Y47_N0
\plusone3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[0]~0_combout\ = (\CPU_1|pc4_mips[12]~20_combout\ & ((\plusone2[3]~6_combout\) # ((\CPU_1|pc_next\(12) & \plusone2[3]~7_combout\)))) # (!\CPU_1|pc4_mips[12]~20_combout\ & (((\CPU_1|pc_next\(12) & \plusone2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[12]~20_combout\,
	datab => \plusone2[3]~6_combout\,
	datac => \CPU_1|pc_next\(12),
	datad => \plusone2[3]~7_combout\,
	combout => \plusone3[0]~0_combout\);

-- Location: LCCOMB_X70_Y45_N8
\plusone3[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone3[0]~1_combout\ = (\plusone3[0]~0_combout\) # ((\MEMORY_1|Mux13~0_combout\ & (\plusone2[3]~9_combout\ & \plusone5[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_1|Mux13~0_combout\,
	datab => \plusone3[0]~0_combout\,
	datac => \plusone2[3]~9_combout\,
	datad => \plusone5[1]~1_combout\,
	combout => \plusone3[0]~1_combout\);

-- Location: LCCOMB_X74_Y41_N20
\h3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux6~0_combout\ = (\plusone3[2]~7_combout\ & (!\plusone3[1]~4_combout\ & (\plusone3[3]~9_combout\ $ (!\plusone3[0]~1_combout\)))) # (!\plusone3[2]~7_combout\ & (\plusone3[0]~1_combout\ & (\plusone3[1]~4_combout\ $ (!\plusone3[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y41_N6
\h3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux5~0_combout\ = (\plusone3[1]~4_combout\ & ((\plusone3[0]~1_combout\ & ((\plusone3[3]~9_combout\))) # (!\plusone3[0]~1_combout\ & (\plusone3[2]~7_combout\)))) # (!\plusone3[1]~4_combout\ & (\plusone3[2]~7_combout\ & (\plusone3[3]~9_combout\ $ 
-- (\plusone3[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y41_N12
\h3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux4~0_combout\ = (\plusone3[2]~7_combout\ & (\plusone3[3]~9_combout\ & ((\plusone3[1]~4_combout\) # (!\plusone3[0]~1_combout\)))) # (!\plusone3[2]~7_combout\ & (\plusone3[1]~4_combout\ & (!\plusone3[3]~9_combout\ & !\plusone3[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y41_N18
\h3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux3~0_combout\ = (\plusone3[1]~4_combout\ & ((\plusone3[2]~7_combout\ & ((\plusone3[0]~1_combout\))) # (!\plusone3[2]~7_combout\ & (\plusone3[3]~9_combout\ & !\plusone3[0]~1_combout\)))) # (!\plusone3[1]~4_combout\ & (!\plusone3[3]~9_combout\ & 
-- (\plusone3[2]~7_combout\ $ (\plusone3[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y41_N4
\h3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux2~0_combout\ = (\plusone3[1]~4_combout\ & (((!\plusone3[3]~9_combout\ & \plusone3[0]~1_combout\)))) # (!\plusone3[1]~4_combout\ & ((\plusone3[2]~7_combout\ & (!\plusone3[3]~9_combout\)) # (!\plusone3[2]~7_combout\ & ((\plusone3[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y41_N10
\h3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux1~0_combout\ = (\plusone3[1]~4_combout\ & (!\plusone3[3]~9_combout\ & ((\plusone3[0]~1_combout\) # (!\plusone3[2]~7_combout\)))) # (!\plusone3[1]~4_combout\ & (\plusone3[0]~1_combout\ & (\plusone3[2]~7_combout\ $ (!\plusone3[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y41_N8
\h3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h3|Mux0~0_combout\ = (\plusone3[0]~1_combout\ & ((\plusone3[3]~9_combout\) # (\plusone3[1]~4_combout\ $ (\plusone3[2]~7_combout\)))) # (!\plusone3[0]~1_combout\ & ((\plusone3[1]~4_combout\) # (\plusone3[2]~7_combout\ $ (\plusone3[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone3[1]~4_combout\,
	datab => \plusone3[2]~7_combout\,
	datac => \plusone3[3]~9_combout\,
	datad => \plusone3[0]~1_combout\,
	combout => \h3|Mux0~0_combout\);

-- Location: FF_X69_Y46_N25
\CPU_1|pc_next[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[17]~30_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(17));

-- Location: LCCOMB_X69_Y46_N6
\CPU_1|pc4_mips[16]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[16]~28_combout\ = (\CPU_1|pc_next\(16) & (\CPU_1|pc4_mips[15]~27\ $ (GND))) # (!\CPU_1|pc_next\(16) & (!\CPU_1|pc4_mips[15]~27\ & VCC))
-- \CPU_1|pc4_mips[16]~29\ = CARRY((\CPU_1|pc_next\(16) & !\CPU_1|pc4_mips[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(16),
	datad => VCC,
	cin => \CPU_1|pc4_mips[15]~27\,
	combout => \CPU_1|pc4_mips[16]~28_combout\,
	cout => \CPU_1|pc4_mips[16]~29\);

-- Location: FF_X69_Y46_N7
\CPU_1|pc_next[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[16]~28_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(16));

-- Location: LCCOMB_X69_Y46_N8
\CPU_1|pc4_mips[17]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[17]~30_combout\ = (\CPU_1|pc_next\(17) & (!\CPU_1|pc4_mips[16]~29\)) # (!\CPU_1|pc_next\(17) & ((\CPU_1|pc4_mips[16]~29\) # (GND)))
-- \CPU_1|pc4_mips[17]~31\ = CARRY((!\CPU_1|pc4_mips[16]~29\) # (!\CPU_1|pc_next\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(17),
	datad => VCC,
	cin => \CPU_1|pc4_mips[16]~29\,
	combout => \CPU_1|pc4_mips[17]~30_combout\,
	cout => \CPU_1|pc4_mips[17]~31\);

-- Location: LCCOMB_X69_Y46_N24
\plusone4[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[1]~3_combout\ = (\plusone1[0]~0_combout\ & ((\CPU_1|pc4_mips[17]~30_combout\) # ((!\plusone[3]~5_combout\)))) # (!\plusone1[0]~0_combout\ & (((\CPU_1|pc_next\(17) & \plusone[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[0]~0_combout\,
	datab => \CPU_1|pc4_mips[17]~30_combout\,
	datac => \CPU_1|pc_next\(17),
	datad => \plusone[3]~5_combout\,
	combout => \plusone4[1]~3_combout\);

-- Location: LCCOMB_X69_Y47_N8
\MEMORY_1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux8~0_combout\ = (\CPU_1|pc_next\(5)) # ((\CPU_1|pc_next\(2) & ((\CPU_1|pc_next\(4)) # (!\CPU_1|pc_next\(3)))) # (!\CPU_1|pc_next\(2) & (\CPU_1|pc_next\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(2),
	datab => \CPU_1|pc_next\(3),
	datac => \CPU_1|pc_next\(4),
	datad => \CPU_1|pc_next\(5),
	combout => \MEMORY_1|Mux8~0_combout\);

-- Location: LCCOMB_X70_Y46_N10
\plusone4[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[1]~4_combout\ = (\plusone[3]~5_combout\) # ((\plusone4[1]~3_combout\ & ((\plusone1[0]~1_combout\))) # (!\plusone4[1]~3_combout\ & (\MEMORY_1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_1|Mux8~0_combout\,
	datab => \plusone4[1]~3_combout\,
	datac => \plusone[3]~5_combout\,
	datad => \plusone1[0]~1_combout\,
	combout => \plusone4[1]~4_combout\);

-- Location: LCCOMB_X70_Y46_N8
\plusone4[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[1]~5_combout\ = (\KEY[1]~input_o\ & ((\plusone4[1]~3_combout\ & ((\plusone4[1]~4_combout\))) # (!\plusone4[1]~3_combout\ & (!\CPU_1|pc_next\(6) & !\plusone4[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(6),
	datab => \plusone4[1]~3_combout\,
	datac => \KEY[1]~input_o\,
	datad => \plusone4[1]~4_combout\,
	combout => \plusone4[1]~5_combout\);

-- Location: FF_X69_Y46_N27
\CPU_1|pc_next[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \CPU_1|pc4_mips[18]~32_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(18));

-- Location: LCCOMB_X69_Y46_N10
\CPU_1|pc4_mips[18]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[18]~32_combout\ = (\CPU_1|pc_next\(18) & (\CPU_1|pc4_mips[17]~31\ $ (GND))) # (!\CPU_1|pc_next\(18) & (!\CPU_1|pc4_mips[17]~31\ & VCC))
-- \CPU_1|pc4_mips[18]~33\ = CARRY((\CPU_1|pc_next\(18) & !\CPU_1|pc4_mips[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(18),
	datad => VCC,
	cin => \CPU_1|pc4_mips[17]~31\,
	combout => \CPU_1|pc4_mips[18]~32_combout\,
	cout => \CPU_1|pc4_mips[18]~33\);

-- Location: LCCOMB_X69_Y46_N26
\plusone4[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[2]~6_combout\ = (\plusone2[3]~6_combout\ & ((\CPU_1|pc4_mips[18]~32_combout\) # ((\CPU_1|pc_next\(18) & \plusone2[3]~7_combout\)))) # (!\plusone2[3]~6_combout\ & (((\CPU_1|pc_next\(18) & \plusone2[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[3]~6_combout\,
	datab => \CPU_1|pc4_mips[18]~32_combout\,
	datac => \CPU_1|pc_next\(18),
	datad => \plusone2[3]~7_combout\,
	combout => \plusone4[2]~6_combout\);

-- Location: LCCOMB_X70_Y46_N0
\plusone4[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[2]~0_combout\ = (!\CPU_1|pc_next\(2) & (\plusone5[2]~0_combout\ & \plusone2[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(2),
	datac => \plusone5[2]~0_combout\,
	datad => \plusone2[3]~9_combout\,
	combout => \plusone4[2]~0_combout\);

-- Location: LCCOMB_X70_Y46_N6
\plusone4[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[2]~7_combout\ = (\plusone4[2]~6_combout\) # ((\CPU_1|pc_next\(3) & \plusone4[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[2]~6_combout\,
	datac => \CPU_1|pc_next\(3),
	datad => \plusone4[2]~0_combout\,
	combout => \plusone4[2]~7_combout\);

-- Location: LCCOMB_X69_Y46_N12
\CPU_1|pc4_mips[19]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[19]~34_combout\ = (\CPU_1|pc_next\(19) & (!\CPU_1|pc4_mips[18]~33\)) # (!\CPU_1|pc_next\(19) & ((\CPU_1|pc4_mips[18]~33\) # (GND)))
-- \CPU_1|pc4_mips[19]~35\ = CARRY((!\CPU_1|pc4_mips[18]~33\) # (!\CPU_1|pc_next\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(19),
	datad => VCC,
	cin => \CPU_1|pc4_mips[18]~33\,
	combout => \CPU_1|pc4_mips[19]~34_combout\,
	cout => \CPU_1|pc4_mips[19]~35\);

-- Location: FF_X69_Y46_N13
\CPU_1|pc_next[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[19]~34_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(19));

-- Location: LCCOMB_X70_Y46_N20
\plusone4[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[3]~8_combout\ = (\plusone1[0]~0_combout\ & ((\plusone[3]~5_combout\ & ((\CPU_1|pc4_mips[19]~34_combout\))) # (!\plusone[3]~5_combout\ & (\plusone1[0]~1_combout\)))) # (!\plusone1[0]~0_combout\ & (((\plusone[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone1[0]~1_combout\,
	datab => \plusone1[0]~0_combout\,
	datac => \plusone[3]~5_combout\,
	datad => \CPU_1|pc4_mips[19]~34_combout\,
	combout => \plusone4[3]~8_combout\);

-- Location: LCCOMB_X70_Y46_N22
\plusone4[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[3]~9_combout\ = (\plusone1[0]~0_combout\) # ((\plusone4[3]~8_combout\ & (\CPU_1|pc_next\(19))) # (!\plusone4[3]~8_combout\ & ((\CPU_1|pc_next\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(19),
	datab => \plusone4[3]~8_combout\,
	datac => \CPU_1|pc_next\(6),
	datad => \plusone1[0]~0_combout\,
	combout => \plusone4[3]~9_combout\);

-- Location: LCCOMB_X70_Y47_N24
\MEMORY_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux6~0_combout\ = (!\CPU_1|pc_next\(5) & ((\CPU_1|pc_next\(3) & (!\CPU_1|pc_next\(2) & !\CPU_1|pc_next\(4))) # (!\CPU_1|pc_next\(3) & (\CPU_1|pc_next\(2) $ (\CPU_1|pc_next\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y46_N4
\plusone4[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[3]~10_combout\ = (\KEY[1]~input_o\ & ((\plusone4[3]~9_combout\ & (\plusone4[3]~8_combout\)) # (!\plusone4[3]~9_combout\ & (!\plusone4[3]~8_combout\ & \MEMORY_1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[3]~9_combout\,
	datab => \plusone4[3]~8_combout\,
	datac => \KEY[1]~input_o\,
	datad => \MEMORY_1|Mux6~0_combout\,
	combout => \plusone4[3]~10_combout\);

-- Location: LCCOMB_X70_Y46_N26
\plusone4[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[0]~1_combout\ = (\CPU_1|pc4_mips[16]~28_combout\ & (\KEY[1]~input_o\ & (\plusone[3]~5_combout\ & \plusone1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[16]~28_combout\,
	datab => \KEY[1]~input_o\,
	datac => \plusone[3]~5_combout\,
	datad => \plusone1[0]~0_combout\,
	combout => \plusone4[0]~1_combout\);

-- Location: LCCOMB_X70_Y46_N24
\plusone4[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone4[0]~2_combout\ = (\plusone4[0]~1_combout\) # ((\plusone4[2]~0_combout\) # ((\CPU_1|pc_next\(16) & \plusone2[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[0]~1_combout\,
	datab => \CPU_1|pc_next\(16),
	datac => \plusone2[3]~7_combout\,
	datad => \plusone4[2]~0_combout\,
	combout => \plusone4[0]~2_combout\);

-- Location: LCCOMB_X77_Y42_N8
\h4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux6~0_combout\ = (\plusone4[2]~7_combout\ & (!\plusone4[1]~5_combout\ & (\plusone4[3]~10_combout\ $ (!\plusone4[0]~2_combout\)))) # (!\plusone4[2]~7_combout\ & (\plusone4[0]~2_combout\ & (\plusone4[1]~5_combout\ $ (!\plusone4[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y42_N30
\h4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux5~0_combout\ = (\plusone4[1]~5_combout\ & ((\plusone4[0]~2_combout\ & ((\plusone4[3]~10_combout\))) # (!\plusone4[0]~2_combout\ & (\plusone4[2]~7_combout\)))) # (!\plusone4[1]~5_combout\ & (\plusone4[2]~7_combout\ & (\plusone4[3]~10_combout\ $ 
-- (\plusone4[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y42_N4
\h4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux4~0_combout\ = (\plusone4[2]~7_combout\ & (\plusone4[3]~10_combout\ & ((\plusone4[1]~5_combout\) # (!\plusone4[0]~2_combout\)))) # (!\plusone4[2]~7_combout\ & (\plusone4[1]~5_combout\ & (!\plusone4[3]~10_combout\ & !\plusone4[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y42_N14
\h4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux3~0_combout\ = (\plusone4[1]~5_combout\ & ((\plusone4[2]~7_combout\ & ((\plusone4[0]~2_combout\))) # (!\plusone4[2]~7_combout\ & (\plusone4[3]~10_combout\ & !\plusone4[0]~2_combout\)))) # (!\plusone4[1]~5_combout\ & (!\plusone4[3]~10_combout\ & 
-- (\plusone4[2]~7_combout\ $ (\plusone4[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y42_N16
\h4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux2~0_combout\ = (\plusone4[1]~5_combout\ & (((!\plusone4[3]~10_combout\ & \plusone4[0]~2_combout\)))) # (!\plusone4[1]~5_combout\ & ((\plusone4[2]~7_combout\ & (!\plusone4[3]~10_combout\)) # (!\plusone4[2]~7_combout\ & ((\plusone4[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y42_N10
\h4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux1~0_combout\ = (\plusone4[1]~5_combout\ & (!\plusone4[3]~10_combout\ & ((\plusone4[0]~2_combout\) # (!\plusone4[2]~7_combout\)))) # (!\plusone4[1]~5_combout\ & (\plusone4[0]~2_combout\ & (\plusone4[2]~7_combout\ $ (!\plusone4[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y42_N12
\h4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h4|Mux0~0_combout\ = (\plusone4[0]~2_combout\ & ((\plusone4[3]~10_combout\) # (\plusone4[1]~5_combout\ $ (\plusone4[2]~7_combout\)))) # (!\plusone4[0]~2_combout\ & ((\plusone4[1]~5_combout\) # (\plusone4[2]~7_combout\ $ (\plusone4[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone4[1]~5_combout\,
	datab => \plusone4[2]~7_combout\,
	datac => \plusone4[3]~10_combout\,
	datad => \plusone4[0]~2_combout\,
	combout => \h4|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y46_N14
\CPU_1|pc4_mips[20]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[20]~36_combout\ = (\CPU_1|pc_next\(20) & (\CPU_1|pc4_mips[19]~35\ $ (GND))) # (!\CPU_1|pc_next\(20) & (!\CPU_1|pc4_mips[19]~35\ & VCC))
-- \CPU_1|pc4_mips[20]~37\ = CARRY((\CPU_1|pc_next\(20) & !\CPU_1|pc4_mips[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(20),
	datad => VCC,
	cin => \CPU_1|pc4_mips[19]~35\,
	combout => \CPU_1|pc4_mips[20]~36_combout\,
	cout => \CPU_1|pc4_mips[20]~37\);

-- Location: FF_X69_Y46_N15
\CPU_1|pc_next[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[20]~36_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(20));

-- Location: LCCOMB_X69_Y46_N16
\CPU_1|pc4_mips[21]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[21]~38_combout\ = (\CPU_1|pc_next\(21) & (!\CPU_1|pc4_mips[20]~37\)) # (!\CPU_1|pc_next\(21) & ((\CPU_1|pc4_mips[20]~37\) # (GND)))
-- \CPU_1|pc4_mips[21]~39\ = CARRY((!\CPU_1|pc4_mips[20]~37\) # (!\CPU_1|pc_next\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(21),
	datad => VCC,
	cin => \CPU_1|pc4_mips[20]~37\,
	combout => \CPU_1|pc4_mips[21]~38_combout\,
	cout => \CPU_1|pc4_mips[21]~39\);

-- Location: FF_X69_Y46_N17
\CPU_1|pc_next[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[21]~38_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(21));

-- Location: LCCOMB_X69_Y46_N18
\CPU_1|pc4_mips[22]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[22]~40_combout\ = (\CPU_1|pc_next\(22) & (\CPU_1|pc4_mips[21]~39\ $ (GND))) # (!\CPU_1|pc_next\(22) & (!\CPU_1|pc4_mips[21]~39\ & VCC))
-- \CPU_1|pc4_mips[22]~41\ = CARRY((\CPU_1|pc_next\(22) & !\CPU_1|pc4_mips[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU_1|pc_next\(22),
	datad => VCC,
	cin => \CPU_1|pc4_mips[21]~39\,
	combout => \CPU_1|pc4_mips[22]~40_combout\,
	cout => \CPU_1|pc4_mips[22]~41\);

-- Location: FF_X69_Y46_N19
\CPU_1|pc_next[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[22]~40_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(22));

-- Location: LCCOMB_X69_Y46_N20
\CPU_1|pc4_mips[23]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CPU_1|pc4_mips[23]~42_combout\ = \CPU_1|pc4_mips[22]~41\ $ (\CPU_1|pc_next\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU_1|pc_next\(23),
	cin => \CPU_1|pc4_mips[22]~41\,
	combout => \CPU_1|pc4_mips[23]~42_combout\);

-- Location: FF_X69_Y46_N21
\CPU_1|pc_next[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \CPU_1|pc4_mips[23]~42_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_1|pc_next\(23));

-- Location: LCCOMB_X70_Y45_N10
\plusone5[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[3]~8_combout\ = (\plusone[3]~5_combout\ & (((\CPU_1|pc_next\(23))))) # (!\plusone[3]~5_combout\ & (\MEMORY_1|Mux13~0_combout\ & ((!\CPU_1|pc_next\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_1|Mux13~0_combout\,
	datab => \CPU_1|pc_next\(23),
	datac => \CPU_1|pc_next\(6),
	datad => \plusone[3]~5_combout\,
	combout => \plusone5[3]~8_combout\);

-- Location: LCCOMB_X70_Y45_N12
\plusone5[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[3]~9_combout\ = (\plusone5[3]~8_combout\ & ((\plusone2[3]~9_combout\) # ((\CPU_1|pc4_mips[23]~42_combout\ & \plusone2[3]~6_combout\)))) # (!\plusone5[3]~8_combout\ & (((\CPU_1|pc4_mips[23]~42_combout\ & \plusone2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~8_combout\,
	datab => \plusone2[3]~9_combout\,
	datac => \CPU_1|pc4_mips[23]~42_combout\,
	datad => \plusone2[3]~6_combout\,
	combout => \plusone5[3]~9_combout\);

-- Location: LCCOMB_X70_Y46_N30
\plusone5[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[2]~6_combout\ = (\CPU_1|pc_next\(3) & (\plusone[3]~5_combout\ & ((\CPU_1|pc_next\(22))))) # (!\CPU_1|pc_next\(3) & ((\plusone5[2]~0_combout\) # ((\plusone[3]~5_combout\ & \CPU_1|pc_next\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \plusone[3]~5_combout\,
	datac => \plusone5[2]~0_combout\,
	datad => \CPU_1|pc_next\(22),
	combout => \plusone5[2]~6_combout\);

-- Location: LCCOMB_X70_Y45_N24
\plusone5[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[2]~7_combout\ = (\plusone5[2]~6_combout\ & ((\plusone2[3]~9_combout\) # ((\CPU_1|pc4_mips[22]~40_combout\ & \plusone2[3]~6_combout\)))) # (!\plusone5[2]~6_combout\ & (((\CPU_1|pc4_mips[22]~40_combout\ & \plusone2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[2]~6_combout\,
	datab => \plusone2[3]~9_combout\,
	datac => \CPU_1|pc4_mips[22]~40_combout\,
	datad => \plusone2[3]~6_combout\,
	combout => \plusone5[2]~7_combout\);

-- Location: LCCOMB_X70_Y45_N20
\plusone5[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[0]~2_combout\ = (\plusone[3]~5_combout\ & (((\CPU_1|pc_next\(20))))) # (!\plusone[3]~5_combout\ & (!\CPU_1|pc_next\(6) & (\MEMORY_1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(6),
	datab => \MEMORY_1|Mux10~0_combout\,
	datac => \CPU_1|pc_next\(20),
	datad => \plusone[3]~5_combout\,
	combout => \plusone5[0]~2_combout\);

-- Location: LCCOMB_X70_Y45_N22
\plusone5[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[0]~3_combout\ = (\plusone2[3]~6_combout\ & ((\CPU_1|pc4_mips[20]~36_combout\) # ((\plusone2[3]~9_combout\ & \plusone5[0]~2_combout\)))) # (!\plusone2[3]~6_combout\ & (((\plusone2[3]~9_combout\ & \plusone5[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone2[3]~6_combout\,
	datab => \CPU_1|pc4_mips[20]~36_combout\,
	datac => \plusone2[3]~9_combout\,
	datad => \plusone5[0]~2_combout\,
	combout => \plusone5[0]~3_combout\);

-- Location: LCCOMB_X70_Y47_N14
\MEMORY_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_1|Mux4~0_combout\ = (!\CPU_1|pc_next\(5) & ((\CPU_1|pc_next\(2) & ((!\CPU_1|pc_next\(4)))) # (!\CPU_1|pc_next\(2) & (!\CPU_1|pc_next\(3) & \CPU_1|pc_next\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(3),
	datab => \CPU_1|pc_next\(2),
	datac => \CPU_1|pc_next\(5),
	datad => \CPU_1|pc_next\(4),
	combout => \MEMORY_1|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y45_N28
\plusone5[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[1]~4_combout\ = (\plusone[3]~5_combout\ & (((\CPU_1|pc_next\(21))))) # (!\plusone[3]~5_combout\ & (!\CPU_1|pc_next\(6) & (\MEMORY_1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc_next\(6),
	datab => \MEMORY_1|Mux4~0_combout\,
	datac => \CPU_1|pc_next\(21),
	datad => \plusone[3]~5_combout\,
	combout => \plusone5[1]~4_combout\);

-- Location: LCCOMB_X70_Y45_N2
\plusone5[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \plusone5[1]~5_combout\ = (\CPU_1|pc4_mips[21]~38_combout\ & ((\plusone2[3]~6_combout\) # ((\plusone5[1]~4_combout\ & \plusone2[3]~9_combout\)))) # (!\CPU_1|pc4_mips[21]~38_combout\ & (\plusone5[1]~4_combout\ & (\plusone2[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_1|pc4_mips[21]~38_combout\,
	datab => \plusone5[1]~4_combout\,
	datac => \plusone2[3]~9_combout\,
	datad => \plusone2[3]~6_combout\,
	combout => \plusone5[1]~5_combout\);

-- Location: LCCOMB_X70_Y45_N26
\h5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux6~0_combout\ = (\plusone5[3]~9_combout\ & (\plusone5[0]~3_combout\ & (\plusone5[2]~7_combout\ $ (\plusone5[1]~5_combout\)))) # (!\plusone5[3]~9_combout\ & (!\plusone5[1]~5_combout\ & (\plusone5[2]~7_combout\ $ (\plusone5[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y45_N4
\h5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux5~0_combout\ = (\plusone5[3]~9_combout\ & ((\plusone5[0]~3_combout\ & ((\plusone5[1]~5_combout\))) # (!\plusone5[0]~3_combout\ & (\plusone5[2]~7_combout\)))) # (!\plusone5[3]~9_combout\ & (\plusone5[2]~7_combout\ & (\plusone5[0]~3_combout\ $ 
-- (\plusone5[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y45_N18
\h5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux4~0_combout\ = (\plusone5[3]~9_combout\ & (\plusone5[2]~7_combout\ & ((\plusone5[1]~5_combout\) # (!\plusone5[0]~3_combout\)))) # (!\plusone5[3]~9_combout\ & (!\plusone5[2]~7_combout\ & (!\plusone5[0]~3_combout\ & \plusone5[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y45_N0
\h5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux3~0_combout\ = (\plusone5[1]~5_combout\ & ((\plusone5[2]~7_combout\ & ((\plusone5[0]~3_combout\))) # (!\plusone5[2]~7_combout\ & (\plusone5[3]~9_combout\ & !\plusone5[0]~3_combout\)))) # (!\plusone5[1]~5_combout\ & (!\plusone5[3]~9_combout\ & 
-- (\plusone5[2]~7_combout\ $ (\plusone5[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y45_N14
\h5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux2~0_combout\ = (\plusone5[1]~5_combout\ & (!\plusone5[3]~9_combout\ & ((\plusone5[0]~3_combout\)))) # (!\plusone5[1]~5_combout\ & ((\plusone5[2]~7_combout\ & (!\plusone5[3]~9_combout\)) # (!\plusone5[2]~7_combout\ & ((\plusone5[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y45_N16
\h5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux1~0_combout\ = (\plusone5[2]~7_combout\ & (\plusone5[0]~3_combout\ & (\plusone5[3]~9_combout\ $ (\plusone5[1]~5_combout\)))) # (!\plusone5[2]~7_combout\ & (!\plusone5[3]~9_combout\ & ((\plusone5[0]~3_combout\) # (\plusone5[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
	combout => \h5|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y45_N30
\h5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \h5|Mux0~0_combout\ = (\plusone5[0]~3_combout\ & ((\plusone5[3]~9_combout\) # (\plusone5[2]~7_combout\ $ (\plusone5[1]~5_combout\)))) # (!\plusone5[0]~3_combout\ & ((\plusone5[1]~5_combout\) # (\plusone5[3]~9_combout\ $ (\plusone5[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plusone5[3]~9_combout\,
	datab => \plusone5[2]~7_combout\,
	datac => \plusone5[0]~3_combout\,
	datad => \plusone5[1]~5_combout\,
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


