-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/23/2025 20:24:57"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	poly_dec_RAG IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	xin : IN std_logic_vector(7 DOWNTO 0);
	xin_en : IN std_logic;
	xout : OUT std_logic_vector(15 DOWNTO 0);
	xout_en : OUT std_logic
	);
END poly_dec_RAG;

-- Design Ports Information
-- xout[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[8]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[10]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[12]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[14]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[15]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout_en	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin_en	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF poly_dec_RAG IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_xin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_xin_en : std_logic;
SIGNAL ww_xout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_xout_en : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \xin[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \xin_en~input_o\ : std_logic;
SIGNAL \phase_cnt~0_combout\ : std_logic;
SIGNAL \phase_cnt~q\ : std_logic;
SIGNAL \phase_cnt_d~q\ : std_logic;
SIGNAL \xout_en~0_combout\ : std_logic;
SIGNAL \phase1_gen|xin_reg[0]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|xout[15]~0_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][0]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~1_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][0]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][0]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][0]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][0]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][0]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~1_sumout\ : std_logic;
SIGNAL \xin_phase0[0]~feeder_combout\ : std_logic;
SIGNAL \xout[0]~0_combout\ : std_logic;
SIGNAL \phase0_gen|xout[15]~0_combout\ : std_logic;
SIGNAL \phase0_gen|w2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][0]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][0]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][0]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][0]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][0]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][0]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][0]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][0]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~1_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \xout[0]~reg0_q\ : std_logic;
SIGNAL \xin[1]~input_o\ : std_logic;
SIGNAL \phase1_gen|Add0~1_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][1]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~2\ : std_logic;
SIGNAL \phase1_gen|Add3~5_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add2~1_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][1]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][1]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~2\ : std_logic;
SIGNAL \phase1_gen|Add11~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~2\ : std_logic;
SIGNAL \phase1_gen|Add10~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~2\ : std_logic;
SIGNAL \phase1_gen|Add9~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][1]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][1]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~2\ : std_logic;
SIGNAL \phase1_gen|Add6~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~2\ : std_logic;
SIGNAL \phase1_gen|Add5~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~2\ : std_logic;
SIGNAL \phase1_gen|Add4~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][1]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~2\ : std_logic;
SIGNAL \phase1_gen|Add13~5_sumout\ : std_logic;
SIGNAL \xin_phase0[1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|xin_reg[1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add0~1_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add1~1_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][1]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][1]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][1]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~2\ : std_logic;
SIGNAL \phase0_gen|Add9~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~2\ : std_logic;
SIGNAL \phase0_gen|Add7~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][1]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][1]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][1]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~2\ : std_logic;
SIGNAL \phase0_gen|Add13~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \xout[1]~reg0_q\ : std_logic;
SIGNAL \xin[2]~input_o\ : std_logic;
SIGNAL \xin_phase1[2]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|xin_reg[2]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add2~2\ : std_logic;
SIGNAL \phase1_gen|Add2~5_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][2]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add0~2\ : std_logic;
SIGNAL \phase1_gen|Add0~5_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~6\ : std_logic;
SIGNAL \phase1_gen|Add3~9_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][2]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][2]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][2]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~6\ : std_logic;
SIGNAL \phase1_gen|Add11~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~6\ : std_logic;
SIGNAL \phase1_gen|Add10~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~6\ : std_logic;
SIGNAL \phase1_gen|Add9~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][2]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~1_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~6\ : std_logic;
SIGNAL \phase1_gen|Add6~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~6\ : std_logic;
SIGNAL \phase1_gen|Add5~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~6\ : std_logic;
SIGNAL \phase1_gen|Add4~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][2]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~6\ : std_logic;
SIGNAL \phase1_gen|Add13~9_sumout\ : std_logic;
SIGNAL \xin_phase0[2]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add1~2\ : std_logic;
SIGNAL \phase0_gen|Add1~5_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~2\ : std_logic;
SIGNAL \phase0_gen|Add0~5_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][2]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][2]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][2]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][2]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][2]~q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~2\ : std_logic;
SIGNAL \phase0_gen|Add11~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][2]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][2]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~6\ : std_logic;
SIGNAL \phase0_gen|Add9~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~2\ : std_logic;
SIGNAL \phase0_gen|Add8~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~6\ : std_logic;
SIGNAL \phase0_gen|Add7~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][2]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~2\ : std_logic;
SIGNAL \phase0_gen|Add5~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][2]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][2]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~6\ : std_logic;
SIGNAL \phase0_gen|Add13~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \xout[2]~reg0_q\ : std_logic;
SIGNAL \xin[3]~input_o\ : std_logic;
SIGNAL \xin_phase1[3]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|xin_reg[3]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add0~6\ : std_logic;
SIGNAL \phase1_gen|Add0~9_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~10\ : std_logic;
SIGNAL \phase1_gen|Add3~13_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][3]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][3]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][3]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][3]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add2~6\ : std_logic;
SIGNAL \phase1_gen|Add2~9_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][3]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][3]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~10\ : std_logic;
SIGNAL \phase1_gen|Add11~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~10\ : std_logic;
SIGNAL \phase1_gen|Add10~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~10\ : std_logic;
SIGNAL \phase1_gen|Add9~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~2\ : std_logic;
SIGNAL \phase1_gen|Add8~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~2\ : std_logic;
SIGNAL \phase1_gen|Add7~5_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~10\ : std_logic;
SIGNAL \phase1_gen|Add6~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~10\ : std_logic;
SIGNAL \phase1_gen|Add5~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~10\ : std_logic;
SIGNAL \phase1_gen|Add4~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][3]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~10\ : std_logic;
SIGNAL \phase1_gen|Add13~13_sumout\ : std_logic;
SIGNAL \phase0_gen|Add2~1_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][3]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][3]~q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][3]~q\ : std_logic;
SIGNAL \xin_phase0[3]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add1~6\ : std_logic;
SIGNAL \phase0_gen|Add1~9_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][3]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][3]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][3]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~6\ : std_logic;
SIGNAL \phase0_gen|Add11~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~6\ : std_logic;
SIGNAL \phase0_gen|Add0~9_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][3]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~10\ : std_logic;
SIGNAL \phase0_gen|Add9~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~6\ : std_logic;
SIGNAL \phase0_gen|Add8~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~10\ : std_logic;
SIGNAL \phase0_gen|Add7~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~1_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~6\ : std_logic;
SIGNAL \phase0_gen|Add5~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][3]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][3]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~10\ : std_logic;
SIGNAL \phase0_gen|Add13~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \xout[3]~reg0_q\ : std_logic;
SIGNAL \xin[4]~input_o\ : std_logic;
SIGNAL \xin_phase1[4]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|xin_reg[4]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add0~10\ : std_logic;
SIGNAL \phase1_gen|Add0~13_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][4]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~14\ : std_logic;
SIGNAL \phase1_gen|Add3~17_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][4]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add2~10\ : std_logic;
SIGNAL \phase1_gen|Add2~13_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][4]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][4]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][4]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~14\ : std_logic;
SIGNAL \phase1_gen|Add11~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~14\ : std_logic;
SIGNAL \phase1_gen|Add10~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~14\ : std_logic;
SIGNAL \phase1_gen|Add9~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~6\ : std_logic;
SIGNAL \phase1_gen|Add8~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~6\ : std_logic;
SIGNAL \phase1_gen|Add7~9_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~14\ : std_logic;
SIGNAL \phase1_gen|Add6~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~14\ : std_logic;
SIGNAL \phase1_gen|Add5~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~14\ : std_logic;
SIGNAL \phase1_gen|Add4~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][4]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~14\ : std_logic;
SIGNAL \phase1_gen|Add13~17_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~2\ : std_logic;
SIGNAL \phase0_gen|Add2~5_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][4]~q\ : std_logic;
SIGNAL \xin_phase0[4]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add1~10\ : std_logic;
SIGNAL \phase0_gen|Add1~13_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][4]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][4]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][4]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][4]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~10\ : std_logic;
SIGNAL \phase0_gen|Add11~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~2\ : std_logic;
SIGNAL \phase0_gen|Add10~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~10\ : std_logic;
SIGNAL \phase0_gen|Add0~13_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][4]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~14\ : std_logic;
SIGNAL \phase0_gen|Add9~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~1_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~10\ : std_logic;
SIGNAL \phase0_gen|Add8~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~14\ : std_logic;
SIGNAL \phase0_gen|Add7~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~2\ : std_logic;
SIGNAL \phase0_gen|Add6~5_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~10\ : std_logic;
SIGNAL \phase0_gen|Add5~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][4]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][4]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~14\ : std_logic;
SIGNAL \phase0_gen|Add13~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \xout[4]~reg0_q\ : std_logic;
SIGNAL \xin[5]~input_o\ : std_logic;
SIGNAL \xin_phase1[5]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add0~14\ : std_logic;
SIGNAL \phase1_gen|Add0~17_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~18\ : std_logic;
SIGNAL \phase1_gen|Add3~21_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~1_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add2~14\ : std_logic;
SIGNAL \phase1_gen|Add2~17_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][5]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][5]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][5]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][5]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~18\ : std_logic;
SIGNAL \phase1_gen|Add11~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~18\ : std_logic;
SIGNAL \phase1_gen|Add10~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~18\ : std_logic;
SIGNAL \phase1_gen|Add9~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~10\ : std_logic;
SIGNAL \phase1_gen|Add8~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~10\ : std_logic;
SIGNAL \phase1_gen|Add7~13_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~18\ : std_logic;
SIGNAL \phase1_gen|Add6~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~18\ : std_logic;
SIGNAL \phase1_gen|Add5~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~18\ : std_logic;
SIGNAL \phase1_gen|Add4~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][5]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~18\ : std_logic;
SIGNAL \phase1_gen|Add13~21_sumout\ : std_logic;
SIGNAL \xin_phase0[5]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add0~14\ : std_logic;
SIGNAL \phase0_gen|Add0~17_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][5]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~2\ : std_logic;
SIGNAL \phase0_gen|Add3~5_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add1~14\ : std_logic;
SIGNAL \phase0_gen|Add1~17_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][5]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][5]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][5]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][5]~q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~14\ : std_logic;
SIGNAL \phase0_gen|Add11~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~6\ : std_logic;
SIGNAL \phase0_gen|Add2~9_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~6\ : std_logic;
SIGNAL \phase0_gen|Add10~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~18\ : std_logic;
SIGNAL \phase0_gen|Add9~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~14\ : std_logic;
SIGNAL \phase0_gen|Add8~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~18\ : std_logic;
SIGNAL \phase0_gen|Add7~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~6\ : std_logic;
SIGNAL \phase0_gen|Add6~9_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~14\ : std_logic;
SIGNAL \phase0_gen|Add5~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][5]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][5]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~18\ : std_logic;
SIGNAL \phase0_gen|Add13~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \xout[5]~reg0_q\ : std_logic;
SIGNAL \xin[6]~input_o\ : std_logic;
SIGNAL \phase1_gen|xin_reg[6]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add0~18\ : std_logic;
SIGNAL \phase1_gen|Add0~21_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~22\ : std_logic;
SIGNAL \phase1_gen|Add3~25_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~2\ : std_logic;
SIGNAL \phase1_gen|Add1~5_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][6]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add2~18\ : std_logic;
SIGNAL \phase1_gen|Add2~21_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][6]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][6]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~22\ : std_logic;
SIGNAL \phase1_gen|Add11~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~22\ : std_logic;
SIGNAL \phase1_gen|Add10~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~22\ : std_logic;
SIGNAL \phase1_gen|Add9~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~14\ : std_logic;
SIGNAL \phase1_gen|Add8~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~14\ : std_logic;
SIGNAL \phase1_gen|Add7~17_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~22\ : std_logic;
SIGNAL \phase1_gen|Add6~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~22\ : std_logic;
SIGNAL \phase1_gen|Add5~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~22\ : std_logic;
SIGNAL \phase1_gen|Add4~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][6]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~22\ : std_logic;
SIGNAL \phase1_gen|Add13~25_sumout\ : std_logic;
SIGNAL \xin_phase0[6]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|Add1~18\ : std_logic;
SIGNAL \phase0_gen|Add1~21_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~10\ : std_logic;
SIGNAL \phase0_gen|Add2~13_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~18\ : std_logic;
SIGNAL \phase0_gen|Add0~21_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][6]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][6]~q\ : std_logic;
SIGNAL \phase0_gen|w2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][6]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][6]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][6]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][6]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~18\ : std_logic;
SIGNAL \phase0_gen|Add11~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~10\ : std_logic;
SIGNAL \phase0_gen|Add10~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~22\ : std_logic;
SIGNAL \phase0_gen|Add9~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~6\ : std_logic;
SIGNAL \phase0_gen|Add3~9_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~18\ : std_logic;
SIGNAL \phase0_gen|Add8~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~22\ : std_logic;
SIGNAL \phase0_gen|Add7~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~10\ : std_logic;
SIGNAL \phase0_gen|Add6~13_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~18\ : std_logic;
SIGNAL \phase0_gen|Add5~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][6]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][6]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~22\ : std_logic;
SIGNAL \phase0_gen|Add13~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \xout[6]~reg0_q\ : std_logic;
SIGNAL \xin[7]~input_o\ : std_logic;
SIGNAL \xin_phase1[7]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|Add2~22\ : std_logic;
SIGNAL \phase1_gen|Add2~25_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add0~22\ : std_logic;
SIGNAL \phase1_gen|Add0~25_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][7]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~26\ : std_logic;
SIGNAL \phase1_gen|Add3~29_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~6\ : std_logic;
SIGNAL \phase1_gen|Add1~9_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][7]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][7]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][7]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~26\ : std_logic;
SIGNAL \phase1_gen|Add11~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~26\ : std_logic;
SIGNAL \phase1_gen|Add10~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~26\ : std_logic;
SIGNAL \phase1_gen|Add9~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~18\ : std_logic;
SIGNAL \phase1_gen|Add8~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~18\ : std_logic;
SIGNAL \phase1_gen|Add7~21_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~26\ : std_logic;
SIGNAL \phase1_gen|Add6~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~26\ : std_logic;
SIGNAL \phase1_gen|Add5~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~26\ : std_logic;
SIGNAL \phase1_gen|Add4~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][7]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~26\ : std_logic;
SIGNAL \phase1_gen|Add13~29_sumout\ : std_logic;
SIGNAL \phase0_gen|Add1~22\ : std_logic;
SIGNAL \phase0_gen|Add1~25_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][7]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~14\ : std_logic;
SIGNAL \phase0_gen|Add2~17_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~22\ : std_logic;
SIGNAL \phase0_gen|Add0~25_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][7]~q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][7]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][7]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][7]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~22\ : std_logic;
SIGNAL \phase0_gen|Add11~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~14\ : std_logic;
SIGNAL \phase0_gen|Add10~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~26\ : std_logic;
SIGNAL \phase0_gen|Add9~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~10\ : std_logic;
SIGNAL \phase0_gen|Add3~13_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~22\ : std_logic;
SIGNAL \phase0_gen|Add8~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~26\ : std_logic;
SIGNAL \phase0_gen|Add7~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~14\ : std_logic;
SIGNAL \phase0_gen|Add6~17_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~22\ : std_logic;
SIGNAL \phase0_gen|Add5~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][7]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][7]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~26\ : std_logic;
SIGNAL \phase0_gen|Add13~29_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \xout[7]~reg0_q\ : std_logic;
SIGNAL \phase1_gen|Add2~26\ : std_logic;
SIGNAL \phase1_gen|Add2~29_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[0][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add0~26\ : std_logic;
SIGNAL \phase1_gen|Add0~29_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~30\ : std_logic;
SIGNAL \phase1_gen|Add3~33_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~10\ : std_logic;
SIGNAL \phase1_gen|Add1~13_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][8]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][8]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][10]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[8][10]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][8]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~30\ : std_logic;
SIGNAL \phase1_gen|Add11~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~30\ : std_logic;
SIGNAL \phase1_gen|Add10~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~30\ : std_logic;
SIGNAL \phase1_gen|Add9~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~22\ : std_logic;
SIGNAL \phase1_gen|Add8~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~22\ : std_logic;
SIGNAL \phase1_gen|Add7~25_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~30\ : std_logic;
SIGNAL \phase1_gen|Add6~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~30\ : std_logic;
SIGNAL \phase1_gen|Add5~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~30\ : std_logic;
SIGNAL \phase1_gen|Add4~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][8]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~30\ : std_logic;
SIGNAL \phase1_gen|Add13~33_sumout\ : std_logic;
SIGNAL \phase0_gen|Add1~26\ : std_logic;
SIGNAL \phase0_gen|Add1~29_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[0][10]~q\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[2][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~26\ : std_logic;
SIGNAL \phase0_gen|Add0~29_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][8]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~14\ : std_logic;
SIGNAL \phase0_gen|Add3~17_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~18\ : std_logic;
SIGNAL \phase0_gen|Add2~21_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][8]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[9][10]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[8][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~26\ : std_logic;
SIGNAL \phase0_gen|Add11~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~18\ : std_logic;
SIGNAL \phase0_gen|Add10~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~30\ : std_logic;
SIGNAL \phase0_gen|Add9~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~26\ : std_logic;
SIGNAL \phase0_gen|Add8~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~30\ : std_logic;
SIGNAL \phase0_gen|Add7~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~18\ : std_logic;
SIGNAL \phase0_gen|Add6~21_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~26\ : std_logic;
SIGNAL \phase0_gen|Add5~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][8]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][8]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~30\ : std_logic;
SIGNAL \phase0_gen|Add13~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \xout[8]~reg0_q\ : std_logic;
SIGNAL \phase1_gen|Add0~30\ : std_logic;
SIGNAL \phase1_gen|Add0~33_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~34\ : std_logic;
SIGNAL \phase1_gen|Add3~37_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~14\ : std_logic;
SIGNAL \phase1_gen|Add1~17_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][9]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][9]~q\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][9]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~34\ : std_logic;
SIGNAL \phase1_gen|Add11~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~34\ : std_logic;
SIGNAL \phase1_gen|Add10~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~34\ : std_logic;
SIGNAL \phase1_gen|Add9~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~26\ : std_logic;
SIGNAL \phase1_gen|Add8~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~26\ : std_logic;
SIGNAL \phase1_gen|Add7~29_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~34\ : std_logic;
SIGNAL \phase1_gen|Add6~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~34\ : std_logic;
SIGNAL \phase1_gen|Add5~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~34\ : std_logic;
SIGNAL \phase1_gen|Add4~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][9]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~34\ : std_logic;
SIGNAL \phase1_gen|Add13~37_sumout\ : std_logic;
SIGNAL \phase0_gen|Add2~22\ : std_logic;
SIGNAL \phase0_gen|Add2~25_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add11~30\ : std_logic;
SIGNAL \phase0_gen|Add11~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~22\ : std_logic;
SIGNAL \phase0_gen|Add10~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add0~30\ : std_logic;
SIGNAL \phase0_gen|Add0~33_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][9]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~34\ : std_logic;
SIGNAL \phase0_gen|Add9~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~18\ : std_logic;
SIGNAL \phase0_gen|Add3~21_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~30\ : std_logic;
SIGNAL \phase0_gen|Add8~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~34\ : std_logic;
SIGNAL \phase0_gen|Add7~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~22\ : std_logic;
SIGNAL \phase0_gen|Add6~25_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~30\ : std_logic;
SIGNAL \phase0_gen|Add5~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][9]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][9]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][9]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~34\ : std_logic;
SIGNAL \phase0_gen|Add13~37_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \xout[9]~reg0_q\ : std_logic;
SIGNAL \phase1_gen|Add1~18\ : std_logic;
SIGNAL \phase1_gen|Add1~21_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add0~34\ : std_logic;
SIGNAL \phase1_gen|Add0~37_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][10]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[1][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~38\ : std_logic;
SIGNAL \phase1_gen|Add11~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add3~38\ : std_logic;
SIGNAL \phase1_gen|Add3~41_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~38\ : std_logic;
SIGNAL \phase1_gen|Add10~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~38\ : std_logic;
SIGNAL \phase1_gen|Add9~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~30\ : std_logic;
SIGNAL \phase1_gen|Add8~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~30\ : std_logic;
SIGNAL \phase1_gen|Add7~33_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~38\ : std_logic;
SIGNAL \phase1_gen|Add6~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~38\ : std_logic;
SIGNAL \phase1_gen|Add5~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~38\ : std_logic;
SIGNAL \phase1_gen|Add4~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][10]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~38\ : std_logic;
SIGNAL \phase1_gen|Add13~41_sumout\ : std_logic;
SIGNAL \phase0_gen|Add0~34\ : std_logic;
SIGNAL \phase0_gen|Add0~37_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~26\ : std_logic;
SIGNAL \phase0_gen|Add2~29_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][10]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~26\ : std_logic;
SIGNAL \phase0_gen|Add10~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~38\ : std_logic;
SIGNAL \phase0_gen|Add9~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~22\ : std_logic;
SIGNAL \phase0_gen|Add3~25_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~34\ : std_logic;
SIGNAL \phase0_gen|Add8~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~38\ : std_logic;
SIGNAL \phase0_gen|Add7~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~26\ : std_logic;
SIGNAL \phase0_gen|Add6~29_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~34\ : std_logic;
SIGNAL \phase0_gen|Add5~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][10]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][10]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][10]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~38\ : std_logic;
SIGNAL \phase0_gen|Add13~41_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \xout[10]~reg0_q\ : std_logic;
SIGNAL \phase0_gen|Add0~38\ : std_logic;
SIGNAL \phase0_gen|Add0~41_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add2~30\ : std_logic;
SIGNAL \phase0_gen|Add2~33_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[3][11]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~30\ : std_logic;
SIGNAL \phase0_gen|Add10~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~42\ : std_logic;
SIGNAL \phase0_gen|Add9~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~26\ : std_logic;
SIGNAL \phase0_gen|Add3~29_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~38\ : std_logic;
SIGNAL \phase0_gen|Add8~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~42\ : std_logic;
SIGNAL \phase0_gen|Add7~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~30\ : std_logic;
SIGNAL \phase0_gen|Add6~33_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~38\ : std_logic;
SIGNAL \phase0_gen|Add5~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][11]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][11]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][11]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~42\ : std_logic;
SIGNAL \phase0_gen|Add13~45_sumout\ : std_logic;
SIGNAL \phase1_gen|Add3~42\ : std_logic;
SIGNAL \phase1_gen|Add3~45_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[2][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add11~42\ : std_logic;
SIGNAL \phase1_gen|Add11~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][11]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~42\ : std_logic;
SIGNAL \phase1_gen|Add10~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~42\ : std_logic;
SIGNAL \phase1_gen|Add9~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add1~22\ : std_logic;
SIGNAL \phase1_gen|Add1~25_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][11]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~34\ : std_logic;
SIGNAL \phase1_gen|Add8~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~34\ : std_logic;
SIGNAL \phase1_gen|Add7~37_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~42\ : std_logic;
SIGNAL \phase1_gen|Add6~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~42\ : std_logic;
SIGNAL \phase1_gen|Add5~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~42\ : std_logic;
SIGNAL \phase1_gen|Add4~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][11]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~42\ : std_logic;
SIGNAL \phase1_gen|Add13~45_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \xout[11]~reg0_q\ : std_logic;
SIGNAL \phase1_gen|Add1~26\ : std_logic;
SIGNAL \phase1_gen|Add1~29_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][12]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][12]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][12]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~46\ : std_logic;
SIGNAL \phase1_gen|Add10~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~46\ : std_logic;
SIGNAL \phase1_gen|Add9~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~38\ : std_logic;
SIGNAL \phase1_gen|Add8~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~38\ : std_logic;
SIGNAL \phase1_gen|Add7~41_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~46\ : std_logic;
SIGNAL \phase1_gen|Add6~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~46\ : std_logic;
SIGNAL \phase1_gen|Add5~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~46\ : std_logic;
SIGNAL \phase1_gen|Add4~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][12]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~46\ : std_logic;
SIGNAL \phase1_gen|Add13~49_sumout\ : std_logic;
SIGNAL \phase0_gen|Add0~42\ : std_logic;
SIGNAL \phase0_gen|Add0~45_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][12]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|mul_out[4][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add3~30\ : std_logic;
SIGNAL \phase0_gen|Add3~33_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][12]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~34\ : std_logic;
SIGNAL \phase0_gen|Add10~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~46\ : std_logic;
SIGNAL \phase0_gen|Add9~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~42\ : std_logic;
SIGNAL \phase0_gen|Add8~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~46\ : std_logic;
SIGNAL \phase0_gen|Add7~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~34\ : std_logic;
SIGNAL \phase0_gen|Add6~37_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~42\ : std_logic;
SIGNAL \phase0_gen|Add5~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][12]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][12]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~46\ : std_logic;
SIGNAL \phase0_gen|Add13~49_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \xout[12]~reg0_q\ : std_logic;
SIGNAL \phase0_gen|Add3~34\ : std_logic;
SIGNAL \phase0_gen|Add3~37_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][13]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~38\ : std_logic;
SIGNAL \phase0_gen|Add10~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~50\ : std_logic;
SIGNAL \phase0_gen|Add9~53_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~46\ : std_logic;
SIGNAL \phase0_gen|Add8~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~50\ : std_logic;
SIGNAL \phase0_gen|Add7~53_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~38\ : std_logic;
SIGNAL \phase0_gen|Add6~41_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~46\ : std_logic;
SIGNAL \phase0_gen|Add5~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][13]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][13]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~50\ : std_logic;
SIGNAL \phase0_gen|Add13~53_sumout\ : std_logic;
SIGNAL \phase1_gen|Add1~30\ : std_logic;
SIGNAL \phase1_gen|Add1~33_sumout\ : std_logic;
SIGNAL \phase1_gen|mul_out[4][13]~q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][13]~feeder_combout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~50\ : std_logic;
SIGNAL \phase1_gen|Add10~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~50\ : std_logic;
SIGNAL \phase1_gen|Add9~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~42\ : std_logic;
SIGNAL \phase1_gen|Add8~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~42\ : std_logic;
SIGNAL \phase1_gen|Add7~45_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~50\ : std_logic;
SIGNAL \phase1_gen|Add6~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~50\ : std_logic;
SIGNAL \phase1_gen|Add5~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~50\ : std_logic;
SIGNAL \phase1_gen|Add4~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][13]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~50\ : std_logic;
SIGNAL \phase1_gen|Add13~53_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \xout[13]~reg0_q\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~54\ : std_logic;
SIGNAL \phase1_gen|Add10~57_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~54\ : std_logic;
SIGNAL \phase1_gen|Add9~57_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~46\ : std_logic;
SIGNAL \phase1_gen|Add8~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~46\ : std_logic;
SIGNAL \phase1_gen|Add7~49_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~54\ : std_logic;
SIGNAL \phase1_gen|Add6~57_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~54\ : std_logic;
SIGNAL \phase1_gen|Add5~57_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~54\ : std_logic;
SIGNAL \phase1_gen|Add4~57_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][14]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~54\ : std_logic;
SIGNAL \phase1_gen|Add13~57_sumout\ : std_logic;
SIGNAL \phase0_gen|Add3~38\ : std_logic;
SIGNAL \phase0_gen|Add3~41_sumout\ : std_logic;
SIGNAL \phase0_gen|mul_out[5][14]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~42\ : std_logic;
SIGNAL \phase0_gen|Add10~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~54\ : std_logic;
SIGNAL \phase0_gen|Add9~57_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~50\ : std_logic;
SIGNAL \phase0_gen|Add8~53_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~54\ : std_logic;
SIGNAL \phase0_gen|Add7~57_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~42\ : std_logic;
SIGNAL \phase0_gen|Add6~45_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~50\ : std_logic;
SIGNAL \phase0_gen|Add5~53_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][14]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][14]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~54\ : std_logic;
SIGNAL \phase0_gen|Add13~57_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \xout[14]~reg0_q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[7][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add10~46\ : std_logic;
SIGNAL \phase0_gen|Add10~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[6][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add9~58\ : std_logic;
SIGNAL \phase0_gen|Add9~61_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[5][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add8~54\ : std_logic;
SIGNAL \phase0_gen|Add8~57_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[4][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add7~58\ : std_logic;
SIGNAL \phase0_gen|Add7~61_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[3][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add6~46\ : std_logic;
SIGNAL \phase0_gen|Add6~49_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[2][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add5~54\ : std_logic;
SIGNAL \phase0_gen|Add5~57_sumout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[1][15]~q\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][15]~feeder_combout\ : std_logic;
SIGNAL \phase0_gen|shift_reg[0][15]~q\ : std_logic;
SIGNAL \phase0_gen|Add13~58\ : std_logic;
SIGNAL \phase0_gen|Add13~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[7][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add10~58\ : std_logic;
SIGNAL \phase1_gen|Add10~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[6][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add9~58\ : std_logic;
SIGNAL \phase1_gen|Add9~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[5][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add8~50\ : std_logic;
SIGNAL \phase1_gen|Add8~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[4][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add7~50\ : std_logic;
SIGNAL \phase1_gen|Add7~53_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[3][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add6~58\ : std_logic;
SIGNAL \phase1_gen|Add6~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[2][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add5~58\ : std_logic;
SIGNAL \phase1_gen|Add5~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[1][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add4~58\ : std_logic;
SIGNAL \phase1_gen|Add4~61_sumout\ : std_logic;
SIGNAL \phase1_gen|shift_reg[0][15]~q\ : std_logic;
SIGNAL \phase1_gen|Add13~58\ : std_logic;
SIGNAL \phase1_gen|Add13~61_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \xout[15]~reg0_q\ : std_logic;
SIGNAL \xout_en~reg0feeder_combout\ : std_logic;
SIGNAL \xout_en~reg0_q\ : std_logic;
SIGNAL \phase0_gen|xout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase0_gen|w2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase1_gen|xout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase0_gen|xin_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \phase0_gen|w1_n\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase1_gen|xin_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \phase1_gen|w1_n\ : std_logic_vector(15 DOWNTO 0);
SIGNAL xin_phase0 : std_logic_vector(7 DOWNTO 0);
SIGNAL xin_phase1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \phase1_gen|w3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase0_gen|w15\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase1_gen|w9\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase1_gen|ALT_INV_xout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase0_gen|ALT_INV_xout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_xin_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \phase0_gen|ALT_INV_xin_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[1][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[0][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[0][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[0][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[0][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[2][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][1]~q\ : std_logic;
SIGNAL ALT_INV_xin_phase1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[1][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[1][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][1]~q\ : std_logic;
SIGNAL ALT_INV_xin_phase0 : std_logic_vector(1 DOWNTO 1);
SIGNAL \phase1_gen|ALT_INV_shift_reg[2][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[2][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[2][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[3][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[3][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[3][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_mul_out[4][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[4][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[4][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[4][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[5][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_mul_out[5][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[6][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][8]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[6][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][0]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[5][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_w3\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \phase0_gen|ALT_INV_w1_n\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \phase1_gen|ALT_INV_w1_n\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \phase0_gen|ALT_INV_w2\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \ALT_INV_phase_cnt~q\ : std_logic;
SIGNAL \ALT_INV_xout_en~0_combout\ : std_logic;
SIGNAL \ALT_INV_phase_cnt_d~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][3]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_Add11~45_sumout\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][7]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][6]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][5]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][4]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[8][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][15]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][14]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][13]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][12]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][11]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][10]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][9]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][8]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][7]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][6]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][5]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][4]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][3]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[7][2]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][2]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][1]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[9][1]~q\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_shift_reg[8][0]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][15]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][14]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][13]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][12]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][11]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][10]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][9]~q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_shift_reg[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_xin[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_xin_en~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \phase1_gen|ALT_INV_w9\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \phase0_gen|ALT_INV_w15\ : std_logic_vector(12 DOWNTO 3);
SIGNAL \phase0_gen|ALT_INV_w2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \phase0_gen|ALT_INV_w2[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_xin <= xin;
ww_xin_en <= xin_en;
xout <= ww_xout;
xout_en <= ww_xout_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\phase1_gen|ALT_INV_xout\(15) <= NOT \phase1_gen|xout\(15);
\phase0_gen|ALT_INV_xout\(15) <= NOT \phase0_gen|xout\(15);
\phase1_gen|ALT_INV_xout\(14) <= NOT \phase1_gen|xout\(14);
\phase0_gen|ALT_INV_xout\(14) <= NOT \phase0_gen|xout\(14);
\phase1_gen|ALT_INV_xout\(13) <= NOT \phase1_gen|xout\(13);
\phase0_gen|ALT_INV_xout\(13) <= NOT \phase0_gen|xout\(13);
\phase1_gen|ALT_INV_xout\(12) <= NOT \phase1_gen|xout\(12);
\phase0_gen|ALT_INV_xout\(12) <= NOT \phase0_gen|xout\(12);
\phase1_gen|ALT_INV_xout\(11) <= NOT \phase1_gen|xout\(11);
\phase0_gen|ALT_INV_xout\(11) <= NOT \phase0_gen|xout\(11);
\phase1_gen|ALT_INV_xout\(10) <= NOT \phase1_gen|xout\(10);
\phase0_gen|ALT_INV_xout\(10) <= NOT \phase0_gen|xout\(10);
\phase1_gen|ALT_INV_xout\(9) <= NOT \phase1_gen|xout\(9);
\phase0_gen|ALT_INV_xout\(9) <= NOT \phase0_gen|xout\(9);
\phase1_gen|ALT_INV_xout\(8) <= NOT \phase1_gen|xout\(8);
\phase0_gen|ALT_INV_xout\(8) <= NOT \phase0_gen|xout\(8);
\phase1_gen|ALT_INV_xout\(7) <= NOT \phase1_gen|xout\(7);
\phase0_gen|ALT_INV_xout\(7) <= NOT \phase0_gen|xout\(7);
\phase1_gen|ALT_INV_xout\(6) <= NOT \phase1_gen|xout\(6);
\phase0_gen|ALT_INV_xout\(6) <= NOT \phase0_gen|xout\(6);
\phase1_gen|ALT_INV_xout\(5) <= NOT \phase1_gen|xout\(5);
\phase0_gen|ALT_INV_xout\(5) <= NOT \phase0_gen|xout\(5);
\phase1_gen|ALT_INV_xout\(4) <= NOT \phase1_gen|xout\(4);
\phase0_gen|ALT_INV_xout\(4) <= NOT \phase0_gen|xout\(4);
\phase1_gen|ALT_INV_xout\(3) <= NOT \phase1_gen|xout\(3);
\phase0_gen|ALT_INV_xout\(3) <= NOT \phase0_gen|xout\(3);
\phase1_gen|ALT_INV_xout\(2) <= NOT \phase1_gen|xout\(2);
\phase0_gen|ALT_INV_xout\(2) <= NOT \phase0_gen|xout\(2);
\phase1_gen|ALT_INV_xout\(1) <= NOT \phase1_gen|xout\(1);
\phase0_gen|ALT_INV_xout\(1) <= NOT \phase0_gen|xout\(1);
\phase1_gen|ALT_INV_xout\(0) <= NOT \phase1_gen|xout\(0);
\phase0_gen|ALT_INV_xout\(0) <= NOT \phase0_gen|xout\(0);
\phase1_gen|ALT_INV_shift_reg[1][2]~q\ <= NOT \phase1_gen|shift_reg[1][2]~q\;
\phase1_gen|ALT_INV_mul_out[1][2]~q\ <= NOT \phase1_gen|mul_out[1][2]~q\;
\phase1_gen|ALT_INV_shift_reg[1][1]~q\ <= NOT \phase1_gen|shift_reg[1][1]~q\;
\phase1_gen|ALT_INV_mul_out[1][1]~q\ <= NOT \phase1_gen|mul_out[1][1]~q\;
\phase1_gen|ALT_INV_shift_reg[1][0]~q\ <= NOT \phase1_gen|shift_reg[1][0]~q\;
\phase1_gen|ALT_INV_xin_reg\(0) <= NOT \phase1_gen|xin_reg\(0);
\phase0_gen|ALT_INV_xin_reg\(0) <= NOT \phase0_gen|xin_reg\(0);
\phase0_gen|ALT_INV_shift_reg[1][15]~q\ <= NOT \phase0_gen|shift_reg[1][15]~q\;
\phase0_gen|ALT_INV_shift_reg[1][11]~q\ <= NOT \phase0_gen|shift_reg[1][11]~q\;
\phase0_gen|ALT_INV_shift_reg[1][10]~q\ <= NOT \phase0_gen|shift_reg[1][10]~q\;
\phase0_gen|ALT_INV_shift_reg[1][9]~q\ <= NOT \phase0_gen|shift_reg[1][9]~q\;
\phase0_gen|ALT_INV_shift_reg[1][8]~q\ <= NOT \phase0_gen|shift_reg[1][8]~q\;
\phase0_gen|ALT_INV_shift_reg[1][7]~q\ <= NOT \phase0_gen|shift_reg[1][7]~q\;
\phase0_gen|ALT_INV_shift_reg[1][3]~q\ <= NOT \phase0_gen|shift_reg[1][3]~q\;
\phase1_gen|ALT_INV_shift_reg[0][15]~q\ <= NOT \phase1_gen|shift_reg[0][15]~q\;
\phase0_gen|ALT_INV_shift_reg[0][15]~q\ <= NOT \phase0_gen|shift_reg[0][15]~q\;
\phase1_gen|ALT_INV_shift_reg[0][14]~q\ <= NOT \phase1_gen|shift_reg[0][14]~q\;
\phase0_gen|ALT_INV_shift_reg[0][14]~q\ <= NOT \phase0_gen|shift_reg[0][14]~q\;
\phase1_gen|ALT_INV_shift_reg[0][13]~q\ <= NOT \phase1_gen|shift_reg[0][13]~q\;
\phase0_gen|ALT_INV_shift_reg[0][13]~q\ <= NOT \phase0_gen|shift_reg[0][13]~q\;
\phase1_gen|ALT_INV_shift_reg[0][12]~q\ <= NOT \phase1_gen|shift_reg[0][12]~q\;
\phase0_gen|ALT_INV_shift_reg[0][12]~q\ <= NOT \phase0_gen|shift_reg[0][12]~q\;
\phase1_gen|ALT_INV_shift_reg[0][11]~q\ <= NOT \phase1_gen|shift_reg[0][11]~q\;
\phase0_gen|ALT_INV_shift_reg[0][11]~q\ <= NOT \phase0_gen|shift_reg[0][11]~q\;
\phase1_gen|ALT_INV_shift_reg[0][10]~q\ <= NOT \phase1_gen|shift_reg[0][10]~q\;
\phase0_gen|ALT_INV_shift_reg[0][10]~q\ <= NOT \phase0_gen|shift_reg[0][10]~q\;
\phase1_gen|ALT_INV_shift_reg[0][9]~q\ <= NOT \phase1_gen|shift_reg[0][9]~q\;
\phase0_gen|ALT_INV_shift_reg[0][9]~q\ <= NOT \phase0_gen|shift_reg[0][9]~q\;
\phase1_gen|ALT_INV_shift_reg[0][8]~q\ <= NOT \phase1_gen|shift_reg[0][8]~q\;
\phase1_gen|ALT_INV_mul_out[0][10]~q\ <= NOT \phase1_gen|mul_out[0][10]~q\;
\phase0_gen|ALT_INV_shift_reg[0][8]~q\ <= NOT \phase0_gen|shift_reg[0][8]~q\;
\phase0_gen|ALT_INV_mul_out[0][10]~q\ <= NOT \phase0_gen|mul_out[0][10]~q\;
\phase1_gen|ALT_INV_shift_reg[0][7]~q\ <= NOT \phase1_gen|shift_reg[0][7]~q\;
\phase1_gen|ALT_INV_mul_out[0][7]~q\ <= NOT \phase1_gen|mul_out[0][7]~q\;
\phase0_gen|ALT_INV_shift_reg[0][7]~q\ <= NOT \phase0_gen|shift_reg[0][7]~q\;
\phase0_gen|ALT_INV_mul_out[0][7]~q\ <= NOT \phase0_gen|mul_out[0][7]~q\;
\phase1_gen|ALT_INV_shift_reg[0][6]~q\ <= NOT \phase1_gen|shift_reg[0][6]~q\;
\phase1_gen|ALT_INV_mul_out[0][6]~q\ <= NOT \phase1_gen|mul_out[0][6]~q\;
\phase0_gen|ALT_INV_shift_reg[0][6]~q\ <= NOT \phase0_gen|shift_reg[0][6]~q\;
\phase0_gen|ALT_INV_mul_out[0][6]~q\ <= NOT \phase0_gen|mul_out[0][6]~q\;
\phase1_gen|ALT_INV_shift_reg[0][5]~q\ <= NOT \phase1_gen|shift_reg[0][5]~q\;
\phase1_gen|ALT_INV_mul_out[0][5]~q\ <= NOT \phase1_gen|mul_out[0][5]~q\;
\phase0_gen|ALT_INV_shift_reg[0][5]~q\ <= NOT \phase0_gen|shift_reg[0][5]~q\;
\phase0_gen|ALT_INV_mul_out[0][5]~q\ <= NOT \phase0_gen|mul_out[0][5]~q\;
\phase1_gen|ALT_INV_shift_reg[0][4]~q\ <= NOT \phase1_gen|shift_reg[0][4]~q\;
\phase1_gen|ALT_INV_mul_out[0][4]~q\ <= NOT \phase1_gen|mul_out[0][4]~q\;
\phase0_gen|ALT_INV_shift_reg[0][4]~q\ <= NOT \phase0_gen|shift_reg[0][4]~q\;
\phase0_gen|ALT_INV_mul_out[0][4]~q\ <= NOT \phase0_gen|mul_out[0][4]~q\;
\phase1_gen|ALT_INV_shift_reg[0][3]~q\ <= NOT \phase1_gen|shift_reg[0][3]~q\;
\phase1_gen|ALT_INV_mul_out[0][3]~q\ <= NOT \phase1_gen|mul_out[0][3]~q\;
\phase0_gen|ALT_INV_shift_reg[0][3]~q\ <= NOT \phase0_gen|shift_reg[0][3]~q\;
\phase0_gen|ALT_INV_mul_out[0][3]~q\ <= NOT \phase0_gen|mul_out[0][3]~q\;
\phase1_gen|ALT_INV_shift_reg[0][2]~q\ <= NOT \phase1_gen|shift_reg[0][2]~q\;
\phase1_gen|ALT_INV_mul_out[0][2]~q\ <= NOT \phase1_gen|mul_out[0][2]~q\;
\phase0_gen|ALT_INV_shift_reg[0][2]~q\ <= NOT \phase0_gen|shift_reg[0][2]~q\;
\phase0_gen|ALT_INV_mul_out[0][2]~q\ <= NOT \phase0_gen|mul_out[0][2]~q\;
\phase1_gen|ALT_INV_shift_reg[0][1]~q\ <= NOT \phase1_gen|shift_reg[0][1]~q\;
\phase1_gen|ALT_INV_mul_out[0][1]~q\ <= NOT \phase1_gen|mul_out[0][1]~q\;
\phase0_gen|ALT_INV_shift_reg[0][1]~q\ <= NOT \phase0_gen|shift_reg[0][1]~q\;
\phase0_gen|ALT_INV_mul_out[0][1]~q\ <= NOT \phase0_gen|mul_out[0][1]~q\;
\phase1_gen|ALT_INV_shift_reg[0][0]~q\ <= NOT \phase1_gen|shift_reg[0][0]~q\;
\phase1_gen|ALT_INV_mul_out[0][0]~q\ <= NOT \phase1_gen|mul_out[0][0]~q\;
\phase0_gen|ALT_INV_shift_reg[0][0]~q\ <= NOT \phase0_gen|shift_reg[0][0]~q\;
\phase0_gen|ALT_INV_mul_out[0][0]~q\ <= NOT \phase0_gen|mul_out[0][0]~q\;
\phase0_gen|ALT_INV_shift_reg[2][12]~q\ <= NOT \phase0_gen|shift_reg[2][12]~q\;
\phase0_gen|ALT_INV_shift_reg[2][11]~q\ <= NOT \phase0_gen|shift_reg[2][11]~q\;
\phase0_gen|ALT_INV_shift_reg[2][10]~q\ <= NOT \phase0_gen|shift_reg[2][10]~q\;
\phase0_gen|ALT_INV_shift_reg[2][9]~q\ <= NOT \phase0_gen|shift_reg[2][9]~q\;
\phase0_gen|ALT_INV_shift_reg[2][8]~q\ <= NOT \phase0_gen|shift_reg[2][8]~q\;
\phase0_gen|ALT_INV_mul_out[2][10]~q\ <= NOT \phase0_gen|mul_out[2][10]~q\;
\phase1_gen|ALT_INV_xin_reg\(7) <= NOT \phase1_gen|xin_reg\(7);
\phase0_gen|ALT_INV_shift_reg[2][7]~q\ <= NOT \phase0_gen|shift_reg[2][7]~q\;
\phase0_gen|ALT_INV_mul_out[2][7]~q\ <= NOT \phase0_gen|mul_out[2][7]~q\;
\phase0_gen|ALT_INV_xin_reg\(7) <= NOT \phase0_gen|xin_reg\(7);
\phase1_gen|ALT_INV_xin_reg\(6) <= NOT \phase1_gen|xin_reg\(6);
\phase0_gen|ALT_INV_shift_reg[2][6]~q\ <= NOT \phase0_gen|shift_reg[2][6]~q\;
\phase0_gen|ALT_INV_mul_out[2][6]~q\ <= NOT \phase0_gen|mul_out[2][6]~q\;
\phase0_gen|ALT_INV_xin_reg\(6) <= NOT \phase0_gen|xin_reg\(6);
\phase1_gen|ALT_INV_xin_reg\(5) <= NOT \phase1_gen|xin_reg\(5);
\phase0_gen|ALT_INV_shift_reg[2][5]~q\ <= NOT \phase0_gen|shift_reg[2][5]~q\;
\phase0_gen|ALT_INV_mul_out[2][5]~q\ <= NOT \phase0_gen|mul_out[2][5]~q\;
\phase0_gen|ALT_INV_xin_reg\(5) <= NOT \phase0_gen|xin_reg\(5);
\phase1_gen|ALT_INV_xin_reg\(4) <= NOT \phase1_gen|xin_reg\(4);
\phase0_gen|ALT_INV_shift_reg[2][4]~q\ <= NOT \phase0_gen|shift_reg[2][4]~q\;
\phase0_gen|ALT_INV_mul_out[2][4]~q\ <= NOT \phase0_gen|mul_out[2][4]~q\;
\phase0_gen|ALT_INV_xin_reg\(4) <= NOT \phase0_gen|xin_reg\(4);
\phase1_gen|ALT_INV_xin_reg\(3) <= NOT \phase1_gen|xin_reg\(3);
\phase0_gen|ALT_INV_shift_reg[2][3]~q\ <= NOT \phase0_gen|shift_reg[2][3]~q\;
\phase0_gen|ALT_INV_mul_out[2][3]~q\ <= NOT \phase0_gen|mul_out[2][3]~q\;
\phase0_gen|ALT_INV_xin_reg\(3) <= NOT \phase0_gen|xin_reg\(3);
\phase1_gen|ALT_INV_xin_reg\(2) <= NOT \phase1_gen|xin_reg\(2);
\phase0_gen|ALT_INV_shift_reg[2][2]~q\ <= NOT \phase0_gen|shift_reg[2][2]~q\;
\phase0_gen|ALT_INV_mul_out[2][2]~q\ <= NOT \phase0_gen|mul_out[2][2]~q\;
\phase0_gen|ALT_INV_xin_reg\(2) <= NOT \phase0_gen|xin_reg\(2);
\phase1_gen|ALT_INV_xin_reg\(1) <= NOT \phase1_gen|xin_reg\(1);
\phase0_gen|ALT_INV_shift_reg[2][1]~q\ <= NOT \phase0_gen|shift_reg[2][1]~q\;
\phase0_gen|ALT_INV_xin_reg\(1) <= NOT \phase0_gen|xin_reg\(1);
ALT_INV_xin_phase1(0) <= NOT xin_phase1(0);
\phase1_gen|ALT_INV_shift_reg[1][15]~q\ <= NOT \phase1_gen|shift_reg[1][15]~q\;
\phase1_gen|ALT_INV_shift_reg[1][14]~q\ <= NOT \phase1_gen|shift_reg[1][14]~q\;
\phase1_gen|ALT_INV_shift_reg[1][13]~q\ <= NOT \phase1_gen|shift_reg[1][13]~q\;
\phase1_gen|ALT_INV_shift_reg[1][12]~q\ <= NOT \phase1_gen|shift_reg[1][12]~q\;
\phase1_gen|ALT_INV_shift_reg[1][11]~q\ <= NOT \phase1_gen|shift_reg[1][11]~q\;
\phase1_gen|ALT_INV_shift_reg[1][10]~q\ <= NOT \phase1_gen|shift_reg[1][10]~q\;
\phase1_gen|ALT_INV_mul_out[1][10]~q\ <= NOT \phase1_gen|mul_out[1][10]~q\;
\phase1_gen|ALT_INV_shift_reg[1][9]~q\ <= NOT \phase1_gen|shift_reg[1][9]~q\;
\phase1_gen|ALT_INV_mul_out[1][9]~q\ <= NOT \phase1_gen|mul_out[1][9]~q\;
\phase1_gen|ALT_INV_shift_reg[1][8]~q\ <= NOT \phase1_gen|shift_reg[1][8]~q\;
\phase1_gen|ALT_INV_mul_out[1][8]~q\ <= NOT \phase1_gen|mul_out[1][8]~q\;
\phase1_gen|ALT_INV_shift_reg[1][7]~q\ <= NOT \phase1_gen|shift_reg[1][7]~q\;
\phase1_gen|ALT_INV_mul_out[1][7]~q\ <= NOT \phase1_gen|mul_out[1][7]~q\;
\phase1_gen|ALT_INV_shift_reg[1][6]~q\ <= NOT \phase1_gen|shift_reg[1][6]~q\;
\phase1_gen|ALT_INV_mul_out[1][6]~q\ <= NOT \phase1_gen|mul_out[1][6]~q\;
\phase1_gen|ALT_INV_shift_reg[1][5]~q\ <= NOT \phase1_gen|shift_reg[1][5]~q\;
\phase1_gen|ALT_INV_mul_out[1][5]~q\ <= NOT \phase1_gen|mul_out[1][5]~q\;
\phase1_gen|ALT_INV_shift_reg[1][4]~q\ <= NOT \phase1_gen|shift_reg[1][4]~q\;
\phase1_gen|ALT_INV_mul_out[1][4]~q\ <= NOT \phase1_gen|mul_out[1][4]~q\;
\phase1_gen|ALT_INV_shift_reg[1][3]~q\ <= NOT \phase1_gen|shift_reg[1][3]~q\;
\phase1_gen|ALT_INV_mul_out[1][3]~q\ <= NOT \phase1_gen|mul_out[1][3]~q\;
\phase0_gen|ALT_INV_shift_reg[3][4]~q\ <= NOT \phase0_gen|shift_reg[3][4]~q\;
\phase0_gen|ALT_INV_mul_out[3][4]~q\ <= NOT \phase0_gen|mul_out[3][4]~q\;
\phase0_gen|ALT_INV_mul_out[3][3]~q\ <= NOT \phase0_gen|mul_out[3][3]~q\;
\phase0_gen|ALT_INV_shift_reg[3][3]~q\ <= NOT \phase0_gen|shift_reg[3][3]~q\;
\phase1_gen|ALT_INV_Add6~1_sumout\ <= NOT \phase1_gen|Add6~1_sumout\;
\phase0_gen|ALT_INV_shift_reg[4][0]~q\ <= NOT \phase0_gen|shift_reg[4][0]~q\;
\phase1_gen|ALT_INV_shift_reg[2][15]~q\ <= NOT \phase1_gen|shift_reg[2][15]~q\;
\phase1_gen|ALT_INV_shift_reg[2][14]~q\ <= NOT \phase1_gen|shift_reg[2][14]~q\;
\phase1_gen|ALT_INV_shift_reg[2][13]~q\ <= NOT \phase1_gen|shift_reg[2][13]~q\;
\phase1_gen|ALT_INV_shift_reg[2][12]~q\ <= NOT \phase1_gen|shift_reg[2][12]~q\;
\phase1_gen|ALT_INV_shift_reg[2][11]~q\ <= NOT \phase1_gen|shift_reg[2][11]~q\;
\phase1_gen|ALT_INV_mul_out[2][11]~q\ <= NOT \phase1_gen|mul_out[2][11]~q\;
\phase1_gen|ALT_INV_shift_reg[2][10]~q\ <= NOT \phase1_gen|shift_reg[2][10]~q\;
\phase1_gen|ALT_INV_mul_out[2][10]~q\ <= NOT \phase1_gen|mul_out[2][10]~q\;
\phase1_gen|ALT_INV_shift_reg[2][9]~q\ <= NOT \phase1_gen|shift_reg[2][9]~q\;
\phase1_gen|ALT_INV_mul_out[2][9]~q\ <= NOT \phase1_gen|mul_out[2][9]~q\;
\phase1_gen|ALT_INV_shift_reg[2][8]~q\ <= NOT \phase1_gen|shift_reg[2][8]~q\;
\phase1_gen|ALT_INV_mul_out[2][8]~q\ <= NOT \phase1_gen|mul_out[2][8]~q\;
\phase1_gen|ALT_INV_shift_reg[2][7]~q\ <= NOT \phase1_gen|shift_reg[2][7]~q\;
\phase1_gen|ALT_INV_mul_out[2][7]~q\ <= NOT \phase1_gen|mul_out[2][7]~q\;
\phase1_gen|ALT_INV_shift_reg[2][6]~q\ <= NOT \phase1_gen|shift_reg[2][6]~q\;
\phase1_gen|ALT_INV_mul_out[2][6]~q\ <= NOT \phase1_gen|mul_out[2][6]~q\;
ALT_INV_xin_phase1(6) <= NOT xin_phase1(6);
\phase1_gen|ALT_INV_shift_reg[2][5]~q\ <= NOT \phase1_gen|shift_reg[2][5]~q\;
\phase1_gen|ALT_INV_mul_out[2][5]~q\ <= NOT \phase1_gen|mul_out[2][5]~q\;
\phase1_gen|ALT_INV_shift_reg[2][4]~q\ <= NOT \phase1_gen|shift_reg[2][4]~q\;
\phase1_gen|ALT_INV_mul_out[2][4]~q\ <= NOT \phase1_gen|mul_out[2][4]~q\;
ALT_INV_xin_phase1(4) <= NOT xin_phase1(4);
\phase1_gen|ALT_INV_shift_reg[2][3]~q\ <= NOT \phase1_gen|shift_reg[2][3]~q\;
\phase1_gen|ALT_INV_mul_out[2][3]~q\ <= NOT \phase1_gen|mul_out[2][3]~q\;
ALT_INV_xin_phase1(3) <= NOT xin_phase1(3);
\phase1_gen|ALT_INV_shift_reg[2][2]~q\ <= NOT \phase1_gen|shift_reg[2][2]~q\;
\phase1_gen|ALT_INV_mul_out[2][2]~q\ <= NOT \phase1_gen|mul_out[2][2]~q\;
ALT_INV_xin_phase1(2) <= NOT xin_phase1(2);
\phase1_gen|ALT_INV_shift_reg[2][1]~q\ <= NOT \phase1_gen|shift_reg[2][1]~q\;
\phase1_gen|ALT_INV_mul_out[2][1]~q\ <= NOT \phase1_gen|mul_out[2][1]~q\;
\phase0_gen|ALT_INV_shift_reg[3][1]~q\ <= NOT \phase0_gen|shift_reg[3][1]~q\;
ALT_INV_xin_phase0(1) <= NOT xin_phase0(1);
\phase1_gen|ALT_INV_shift_reg[2][0]~q\ <= NOT \phase1_gen|shift_reg[2][0]~q\;
\phase1_gen|ALT_INV_mul_out[2][0]~q\ <= NOT \phase1_gen|mul_out[2][0]~q\;
\phase0_gen|ALT_INV_shift_reg[2][15]~q\ <= NOT \phase0_gen|shift_reg[2][15]~q\;
\phase0_gen|ALT_INV_shift_reg[2][14]~q\ <= NOT \phase0_gen|shift_reg[2][14]~q\;
\phase0_gen|ALT_INV_shift_reg[2][13]~q\ <= NOT \phase0_gen|shift_reg[2][13]~q\;
\phase1_gen|ALT_INV_shift_reg[4][1]~q\ <= NOT \phase1_gen|shift_reg[4][1]~q\;
\phase1_gen|ALT_INV_shift_reg[3][15]~q\ <= NOT \phase1_gen|shift_reg[3][15]~q\;
\phase1_gen|ALT_INV_shift_reg[3][14]~q\ <= NOT \phase1_gen|shift_reg[3][14]~q\;
\phase1_gen|ALT_INV_shift_reg[3][13]~q\ <= NOT \phase1_gen|shift_reg[3][13]~q\;
\phase1_gen|ALT_INV_shift_reg[3][12]~q\ <= NOT \phase1_gen|shift_reg[3][12]~q\;
\phase1_gen|ALT_INV_shift_reg[3][11]~q\ <= NOT \phase1_gen|shift_reg[3][11]~q\;
\phase1_gen|ALT_INV_shift_reg[3][10]~q\ <= NOT \phase1_gen|shift_reg[3][10]~q\;
\phase1_gen|ALT_INV_shift_reg[3][9]~q\ <= NOT \phase1_gen|shift_reg[3][9]~q\;
\phase1_gen|ALT_INV_shift_reg[3][8]~q\ <= NOT \phase1_gen|shift_reg[3][8]~q\;
\phase1_gen|ALT_INV_shift_reg[3][7]~q\ <= NOT \phase1_gen|shift_reg[3][7]~q\;
\phase1_gen|ALT_INV_shift_reg[3][6]~q\ <= NOT \phase1_gen|shift_reg[3][6]~q\;
\phase1_gen|ALT_INV_shift_reg[3][5]~q\ <= NOT \phase1_gen|shift_reg[3][5]~q\;
\phase1_gen|ALT_INV_shift_reg[3][4]~q\ <= NOT \phase1_gen|shift_reg[3][4]~q\;
\phase1_gen|ALT_INV_shift_reg[3][3]~q\ <= NOT \phase1_gen|shift_reg[3][3]~q\;
\phase0_gen|ALT_INV_Add2~1_sumout\ <= NOT \phase0_gen|Add2~1_sumout\;
\phase1_gen|ALT_INV_shift_reg[3][2]~q\ <= NOT \phase1_gen|shift_reg[3][2]~q\;
\phase0_gen|ALT_INV_shift_reg[4][2]~q\ <= NOT \phase0_gen|shift_reg[4][2]~q\;
\phase0_gen|ALT_INV_mul_out[4][2]~q\ <= NOT \phase0_gen|mul_out[4][2]~q\;
\phase1_gen|ALT_INV_shift_reg[3][1]~q\ <= NOT \phase1_gen|shift_reg[3][1]~q\;
\phase0_gen|ALT_INV_shift_reg[4][1]~q\ <= NOT \phase0_gen|shift_reg[4][1]~q\;
\phase0_gen|ALT_INV_mul_out[4][1]~q\ <= NOT \phase0_gen|mul_out[4][1]~q\;
\phase1_gen|ALT_INV_shift_reg[3][0]~q\ <= NOT \phase1_gen|shift_reg[3][0]~q\;
\phase0_gen|ALT_INV_shift_reg[5][0]~q\ <= NOT \phase0_gen|shift_reg[5][0]~q\;
\phase0_gen|ALT_INV_shift_reg[3][15]~q\ <= NOT \phase0_gen|shift_reg[3][15]~q\;
\phase0_gen|ALT_INV_shift_reg[3][14]~q\ <= NOT \phase0_gen|shift_reg[3][14]~q\;
\phase0_gen|ALT_INV_shift_reg[3][13]~q\ <= NOT \phase0_gen|shift_reg[3][13]~q\;
\phase0_gen|ALT_INV_shift_reg[3][12]~q\ <= NOT \phase0_gen|shift_reg[3][12]~q\;
\phase0_gen|ALT_INV_shift_reg[3][11]~q\ <= NOT \phase0_gen|shift_reg[3][11]~q\;
\phase0_gen|ALT_INV_mul_out[3][11]~q\ <= NOT \phase0_gen|mul_out[3][11]~q\;
\phase0_gen|ALT_INV_shift_reg[3][10]~q\ <= NOT \phase0_gen|shift_reg[3][10]~q\;
\phase0_gen|ALT_INV_mul_out[3][10]~q\ <= NOT \phase0_gen|mul_out[3][10]~q\;
\phase0_gen|ALT_INV_shift_reg[3][9]~q\ <= NOT \phase0_gen|shift_reg[3][9]~q\;
\phase0_gen|ALT_INV_mul_out[3][9]~q\ <= NOT \phase0_gen|mul_out[3][9]~q\;
\phase0_gen|ALT_INV_shift_reg[3][8]~q\ <= NOT \phase0_gen|shift_reg[3][8]~q\;
\phase0_gen|ALT_INV_mul_out[3][8]~q\ <= NOT \phase0_gen|mul_out[3][8]~q\;
\phase0_gen|ALT_INV_shift_reg[3][7]~q\ <= NOT \phase0_gen|shift_reg[3][7]~q\;
\phase0_gen|ALT_INV_mul_out[3][7]~q\ <= NOT \phase0_gen|mul_out[3][7]~q\;
\phase0_gen|ALT_INV_shift_reg[3][6]~q\ <= NOT \phase0_gen|shift_reg[3][6]~q\;
\phase0_gen|ALT_INV_mul_out[3][6]~q\ <= NOT \phase0_gen|mul_out[3][6]~q\;
\phase0_gen|ALT_INV_shift_reg[3][5]~q\ <= NOT \phase0_gen|shift_reg[3][5]~q\;
\phase0_gen|ALT_INV_mul_out[3][5]~q\ <= NOT \phase0_gen|mul_out[3][5]~q\;
\phase0_gen|ALT_INV_shift_reg[5][4]~q\ <= NOT \phase0_gen|shift_reg[5][4]~q\;
\phase0_gen|ALT_INV_mul_out[5][4]~q\ <= NOT \phase0_gen|mul_out[5][4]~q\;
\phase0_gen|ALT_INV_shift_reg[5][3]~q\ <= NOT \phase0_gen|shift_reg[5][3]~q\;
\phase1_gen|ALT_INV_Add8~1_sumout\ <= NOT \phase1_gen|Add8~1_sumout\;
\phase0_gen|ALT_INV_shift_reg[7][0]~q\ <= NOT \phase0_gen|shift_reg[7][0]~q\;
\phase1_gen|ALT_INV_shift_reg[4][15]~q\ <= NOT \phase1_gen|shift_reg[4][15]~q\;
\phase1_gen|ALT_INV_shift_reg[4][14]~q\ <= NOT \phase1_gen|shift_reg[4][14]~q\;
\phase1_gen|ALT_INV_shift_reg[4][13]~q\ <= NOT \phase1_gen|shift_reg[4][13]~q\;
\phase1_gen|ALT_INV_mul_out[4][13]~q\ <= NOT \phase1_gen|mul_out[4][13]~q\;
\phase1_gen|ALT_INV_shift_reg[4][12]~q\ <= NOT \phase1_gen|shift_reg[4][12]~q\;
\phase1_gen|ALT_INV_mul_out[4][12]~q\ <= NOT \phase1_gen|mul_out[4][12]~q\;
\phase1_gen|ALT_INV_shift_reg[4][11]~q\ <= NOT \phase1_gen|shift_reg[4][11]~q\;
\phase1_gen|ALT_INV_mul_out[4][11]~q\ <= NOT \phase1_gen|mul_out[4][11]~q\;
\phase1_gen|ALT_INV_shift_reg[4][10]~q\ <= NOT \phase1_gen|shift_reg[4][10]~q\;
\phase1_gen|ALT_INV_mul_out[4][10]~q\ <= NOT \phase1_gen|mul_out[4][10]~q\;
\phase1_gen|ALT_INV_shift_reg[4][9]~q\ <= NOT \phase1_gen|shift_reg[4][9]~q\;
\phase1_gen|ALT_INV_mul_out[4][9]~q\ <= NOT \phase1_gen|mul_out[4][9]~q\;
\phase1_gen|ALT_INV_shift_reg[4][8]~q\ <= NOT \phase1_gen|shift_reg[4][8]~q\;
\phase1_gen|ALT_INV_mul_out[4][8]~q\ <= NOT \phase1_gen|mul_out[4][8]~q\;
\phase1_gen|ALT_INV_shift_reg[4][7]~q\ <= NOT \phase1_gen|shift_reg[4][7]~q\;
\phase1_gen|ALT_INV_mul_out[4][7]~q\ <= NOT \phase1_gen|mul_out[4][7]~q\;
\phase1_gen|ALT_INV_shift_reg[4][6]~q\ <= NOT \phase1_gen|shift_reg[4][6]~q\;
\phase1_gen|ALT_INV_mul_out[4][6]~q\ <= NOT \phase1_gen|mul_out[4][6]~q\;
\phase1_gen|ALT_INV_shift_reg[4][5]~q\ <= NOT \phase1_gen|shift_reg[4][5]~q\;
\phase1_gen|ALT_INV_mul_out[4][5]~q\ <= NOT \phase1_gen|mul_out[4][5]~q\;
\phase1_gen|ALT_INV_shift_reg[4][4]~q\ <= NOT \phase1_gen|shift_reg[4][4]~q\;
\phase1_gen|ALT_INV_mul_out[4][4]~q\ <= NOT \phase1_gen|mul_out[4][4]~q\;
\phase1_gen|ALT_INV_shift_reg[4][3]~q\ <= NOT \phase1_gen|shift_reg[4][3]~q\;
\phase1_gen|ALT_INV_mul_out[4][3]~q\ <= NOT \phase1_gen|mul_out[4][3]~q\;
\phase1_gen|ALT_INV_shift_reg[4][2]~q\ <= NOT \phase1_gen|shift_reg[4][2]~q\;
\phase0_gen|ALT_INV_shift_reg[5][2]~q\ <= NOT \phase0_gen|shift_reg[5][2]~q\;
\phase0_gen|ALT_INV_shift_reg[5][1]~q\ <= NOT \phase0_gen|shift_reg[5][1]~q\;
\phase1_gen|ALT_INV_shift_reg[5][0]~q\ <= NOT \phase1_gen|shift_reg[5][0]~q\;
\phase0_gen|ALT_INV_shift_reg[6][0]~q\ <= NOT \phase0_gen|shift_reg[6][0]~q\;
\phase0_gen|ALT_INV_shift_reg[4][15]~q\ <= NOT \phase0_gen|shift_reg[4][15]~q\;
\phase0_gen|ALT_INV_shift_reg[4][14]~q\ <= NOT \phase0_gen|shift_reg[4][14]~q\;
\phase0_gen|ALT_INV_shift_reg[4][13]~q\ <= NOT \phase0_gen|shift_reg[4][13]~q\;
\phase0_gen|ALT_INV_shift_reg[4][12]~q\ <= NOT \phase0_gen|shift_reg[4][12]~q\;
\phase0_gen|ALT_INV_mul_out[4][12]~q\ <= NOT \phase0_gen|mul_out[4][12]~q\;
\phase0_gen|ALT_INV_shift_reg[4][11]~q\ <= NOT \phase0_gen|shift_reg[4][11]~q\;
\phase0_gen|ALT_INV_mul_out[4][11]~q\ <= NOT \phase0_gen|mul_out[4][11]~q\;
\phase0_gen|ALT_INV_shift_reg[4][10]~q\ <= NOT \phase0_gen|shift_reg[4][10]~q\;
\phase0_gen|ALT_INV_mul_out[4][10]~q\ <= NOT \phase0_gen|mul_out[4][10]~q\;
\phase0_gen|ALT_INV_shift_reg[4][9]~q\ <= NOT \phase0_gen|shift_reg[4][9]~q\;
\phase0_gen|ALT_INV_mul_out[4][9]~q\ <= NOT \phase0_gen|mul_out[4][9]~q\;
\phase0_gen|ALT_INV_shift_reg[4][8]~q\ <= NOT \phase0_gen|shift_reg[4][8]~q\;
\phase0_gen|ALT_INV_mul_out[4][8]~q\ <= NOT \phase0_gen|mul_out[4][8]~q\;
\phase0_gen|ALT_INV_shift_reg[4][7]~q\ <= NOT \phase0_gen|shift_reg[4][7]~q\;
\phase0_gen|ALT_INV_mul_out[4][7]~q\ <= NOT \phase0_gen|mul_out[4][7]~q\;
\phase0_gen|ALT_INV_shift_reg[4][6]~q\ <= NOT \phase0_gen|shift_reg[4][6]~q\;
\phase0_gen|ALT_INV_mul_out[4][6]~q\ <= NOT \phase0_gen|mul_out[4][6]~q\;
\phase0_gen|ALT_INV_shift_reg[4][5]~q\ <= NOT \phase0_gen|shift_reg[4][5]~q\;
\phase0_gen|ALT_INV_mul_out[4][5]~q\ <= NOT \phase0_gen|mul_out[4][5]~q\;
\phase0_gen|ALT_INV_shift_reg[4][4]~q\ <= NOT \phase0_gen|shift_reg[4][4]~q\;
\phase0_gen|ALT_INV_mul_out[4][4]~q\ <= NOT \phase0_gen|mul_out[4][4]~q\;
\phase0_gen|ALT_INV_shift_reg[4][3]~q\ <= NOT \phase0_gen|shift_reg[4][3]~q\;
\phase0_gen|ALT_INV_mul_out[4][3]~q\ <= NOT \phase0_gen|mul_out[4][3]~q\;
\phase1_gen|ALT_INV_shift_reg[5][11]~q\ <= NOT \phase1_gen|shift_reg[5][11]~q\;
\phase1_gen|ALT_INV_shift_reg[5][10]~q\ <= NOT \phase1_gen|shift_reg[5][10]~q\;
\phase1_gen|ALT_INV_shift_reg[5][9]~q\ <= NOT \phase1_gen|shift_reg[5][9]~q\;
\phase1_gen|ALT_INV_shift_reg[5][8]~q\ <= NOT \phase1_gen|shift_reg[5][8]~q\;
\phase1_gen|ALT_INV_shift_reg[5][7]~q\ <= NOT \phase1_gen|shift_reg[5][7]~q\;
\phase1_gen|ALT_INV_shift_reg[5][6]~q\ <= NOT \phase1_gen|shift_reg[5][6]~q\;
\phase1_gen|ALT_INV_shift_reg[5][5]~q\ <= NOT \phase1_gen|shift_reg[5][5]~q\;
\phase1_gen|ALT_INV_shift_reg[5][4]~q\ <= NOT \phase1_gen|shift_reg[5][4]~q\;
\phase1_gen|ALT_INV_shift_reg[5][3]~q\ <= NOT \phase1_gen|shift_reg[5][3]~q\;
\phase1_gen|ALT_INV_shift_reg[5][2]~q\ <= NOT \phase1_gen|shift_reg[5][2]~q\;
\phase0_gen|ALT_INV_shift_reg[6][2]~q\ <= NOT \phase0_gen|shift_reg[6][2]~q\;
\phase1_gen|ALT_INV_shift_reg[6][1]~q\ <= NOT \phase1_gen|shift_reg[6][1]~q\;
\phase0_gen|ALT_INV_shift_reg[6][1]~q\ <= NOT \phase0_gen|shift_reg[6][1]~q\;
\phase1_gen|ALT_INV_shift_reg[6][0]~q\ <= NOT \phase1_gen|shift_reg[6][0]~q\;
\phase0_gen|ALT_INV_shift_reg[8][0]~q\ <= NOT \phase0_gen|shift_reg[8][0]~q\;
\phase0_gen|ALT_INV_shift_reg[5][15]~q\ <= NOT \phase0_gen|shift_reg[5][15]~q\;
\phase0_gen|ALT_INV_shift_reg[5][14]~q\ <= NOT \phase0_gen|shift_reg[5][14]~q\;
\phase0_gen|ALT_INV_mul_out[5][14]~q\ <= NOT \phase0_gen|mul_out[5][14]~q\;
\phase0_gen|ALT_INV_shift_reg[5][13]~q\ <= NOT \phase0_gen|shift_reg[5][13]~q\;
\phase0_gen|ALT_INV_mul_out[5][13]~q\ <= NOT \phase0_gen|mul_out[5][13]~q\;
\phase0_gen|ALT_INV_shift_reg[5][12]~q\ <= NOT \phase0_gen|shift_reg[5][12]~q\;
\phase0_gen|ALT_INV_mul_out[5][12]~q\ <= NOT \phase0_gen|mul_out[5][12]~q\;
\phase0_gen|ALT_INV_shift_reg[5][11]~q\ <= NOT \phase0_gen|shift_reg[5][11]~q\;
\phase0_gen|ALT_INV_mul_out[5][11]~q\ <= NOT \phase0_gen|mul_out[5][11]~q\;
\phase0_gen|ALT_INV_shift_reg[5][10]~q\ <= NOT \phase0_gen|shift_reg[5][10]~q\;
\phase0_gen|ALT_INV_mul_out[5][10]~q\ <= NOT \phase0_gen|mul_out[5][10]~q\;
\phase0_gen|ALT_INV_shift_reg[5][9]~q\ <= NOT \phase0_gen|shift_reg[5][9]~q\;
\phase0_gen|ALT_INV_mul_out[5][9]~q\ <= NOT \phase0_gen|mul_out[5][9]~q\;
\phase0_gen|ALT_INV_shift_reg[5][8]~q\ <= NOT \phase0_gen|shift_reg[5][8]~q\;
\phase0_gen|ALT_INV_mul_out[5][8]~q\ <= NOT \phase0_gen|mul_out[5][8]~q\;
\phase0_gen|ALT_INV_shift_reg[5][7]~q\ <= NOT \phase0_gen|shift_reg[5][7]~q\;
\phase0_gen|ALT_INV_mul_out[5][7]~q\ <= NOT \phase0_gen|mul_out[5][7]~q\;
\phase0_gen|ALT_INV_shift_reg[5][6]~q\ <= NOT \phase0_gen|shift_reg[5][6]~q\;
\phase0_gen|ALT_INV_mul_out[5][6]~q\ <= NOT \phase0_gen|mul_out[5][6]~q\;
\phase0_gen|ALT_INV_shift_reg[5][5]~q\ <= NOT \phase0_gen|shift_reg[5][5]~q\;
\phase0_gen|ALT_INV_mul_out[5][5]~q\ <= NOT \phase0_gen|mul_out[5][5]~q\;
\phase0_gen|ALT_INV_shift_reg[7][7]~q\ <= NOT \phase0_gen|shift_reg[7][7]~q\;
\phase0_gen|ALT_INV_shift_reg[7][6]~q\ <= NOT \phase0_gen|shift_reg[7][6]~q\;
\phase0_gen|ALT_INV_shift_reg[7][5]~q\ <= NOT \phase0_gen|shift_reg[7][5]~q\;
\phase0_gen|ALT_INV_shift_reg[7][4]~q\ <= NOT \phase0_gen|shift_reg[7][4]~q\;
\phase0_gen|ALT_INV_shift_reg[7][3]~q\ <= NOT \phase0_gen|shift_reg[7][3]~q\;
\phase0_gen|ALT_INV_shift_reg[8][2]~q\ <= NOT \phase0_gen|shift_reg[8][2]~q\;
\phase0_gen|ALT_INV_shift_reg[8][1]~q\ <= NOT \phase0_gen|shift_reg[8][1]~q\;
\phase1_gen|ALT_INV_Add11~1_sumout\ <= NOT \phase1_gen|Add11~1_sumout\;
\phase1_gen|ALT_INV_shift_reg[6][15]~q\ <= NOT \phase1_gen|shift_reg[6][15]~q\;
\phase1_gen|ALT_INV_shift_reg[6][14]~q\ <= NOT \phase1_gen|shift_reg[6][14]~q\;
\phase1_gen|ALT_INV_shift_reg[6][13]~q\ <= NOT \phase1_gen|shift_reg[6][13]~q\;
\phase1_gen|ALT_INV_shift_reg[6][12]~q\ <= NOT \phase1_gen|shift_reg[6][12]~q\;
\phase1_gen|ALT_INV_shift_reg[6][11]~q\ <= NOT \phase1_gen|shift_reg[6][11]~q\;
\phase1_gen|ALT_INV_shift_reg[6][10]~q\ <= NOT \phase1_gen|shift_reg[6][10]~q\;
\phase1_gen|ALT_INV_shift_reg[6][9]~q\ <= NOT \phase1_gen|shift_reg[6][9]~q\;
\phase1_gen|ALT_INV_shift_reg[6][8]~q\ <= NOT \phase1_gen|shift_reg[6][8]~q\;
\phase1_gen|ALT_INV_shift_reg[6][7]~q\ <= NOT \phase1_gen|shift_reg[6][7]~q\;
\phase1_gen|ALT_INV_shift_reg[6][6]~q\ <= NOT \phase1_gen|shift_reg[6][6]~q\;
\phase1_gen|ALT_INV_shift_reg[6][5]~q\ <= NOT \phase1_gen|shift_reg[6][5]~q\;
\phase1_gen|ALT_INV_shift_reg[6][4]~q\ <= NOT \phase1_gen|shift_reg[6][4]~q\;
\phase1_gen|ALT_INV_shift_reg[6][3]~q\ <= NOT \phase1_gen|shift_reg[6][3]~q\;
\phase1_gen|ALT_INV_shift_reg[6][2]~q\ <= NOT \phase1_gen|shift_reg[6][2]~q\;
\phase1_gen|ALT_INV_shift_reg[7][1]~q\ <= NOT \phase1_gen|shift_reg[7][1]~q\;
\phase1_gen|ALT_INV_shift_reg[7][0]~q\ <= NOT \phase1_gen|shift_reg[7][0]~q\;
\phase0_gen|ALT_INV_shift_reg[6][15]~q\ <= NOT \phase0_gen|shift_reg[6][15]~q\;
\phase0_gen|ALT_INV_shift_reg[6][14]~q\ <= NOT \phase0_gen|shift_reg[6][14]~q\;
\phase0_gen|ALT_INV_shift_reg[6][13]~q\ <= NOT \phase0_gen|shift_reg[6][13]~q\;
\phase0_gen|ALT_INV_shift_reg[6][12]~q\ <= NOT \phase0_gen|shift_reg[6][12]~q\;
\phase0_gen|ALT_INV_shift_reg[6][11]~q\ <= NOT \phase0_gen|shift_reg[6][11]~q\;
\phase0_gen|ALT_INV_shift_reg[6][10]~q\ <= NOT \phase0_gen|shift_reg[6][10]~q\;
\phase0_gen|ALT_INV_shift_reg[6][9]~q\ <= NOT \phase0_gen|shift_reg[6][9]~q\;
\phase0_gen|ALT_INV_shift_reg[6][8]~q\ <= NOT \phase0_gen|shift_reg[6][8]~q\;
\phase0_gen|ALT_INV_shift_reg[6][7]~q\ <= NOT \phase0_gen|shift_reg[6][7]~q\;
\phase0_gen|ALT_INV_shift_reg[6][6]~q\ <= NOT \phase0_gen|shift_reg[6][6]~q\;
\phase0_gen|ALT_INV_shift_reg[6][5]~q\ <= NOT \phase0_gen|shift_reg[6][5]~q\;
\phase0_gen|ALT_INV_shift_reg[6][4]~q\ <= NOT \phase0_gen|shift_reg[6][4]~q\;
\phase0_gen|ALT_INV_shift_reg[6][3]~q\ <= NOT \phase0_gen|shift_reg[6][3]~q\;
\phase0_gen|ALT_INV_shift_reg[7][2]~q\ <= NOT \phase0_gen|shift_reg[7][2]~q\;
\phase0_gen|ALT_INV_shift_reg[7][1]~q\ <= NOT \phase0_gen|shift_reg[7][1]~q\;
\phase0_gen|ALT_INV_shift_reg[9][0]~q\ <= NOT \phase0_gen|shift_reg[9][0]~q\;
\phase1_gen|ALT_INV_shift_reg[5][15]~q\ <= NOT \phase1_gen|shift_reg[5][15]~q\;
\phase1_gen|ALT_INV_shift_reg[5][14]~q\ <= NOT \phase1_gen|shift_reg[5][14]~q\;
\phase1_gen|ALT_INV_shift_reg[5][13]~q\ <= NOT \phase1_gen|shift_reg[5][13]~q\;
\phase1_gen|ALT_INV_shift_reg[5][12]~q\ <= NOT \phase1_gen|shift_reg[5][12]~q\;
\phase1_gen|ALT_INV_w3\(3) <= NOT \phase1_gen|w3\(3);
\phase1_gen|ALT_INV_w3\(2) <= NOT \phase1_gen|w3\(2);
\phase1_gen|ALT_INV_w3\(1) <= NOT \phase1_gen|w3\(1);
\phase0_gen|ALT_INV_w1_n\(8) <= NOT \phase0_gen|w1_n\(8);
\phase0_gen|ALT_INV_w1_n\(7) <= NOT \phase0_gen|w1_n\(7);
\phase1_gen|ALT_INV_w1_n\(5) <= NOT \phase1_gen|w1_n\(5);
\phase0_gen|ALT_INV_w1_n\(5) <= NOT \phase0_gen|w1_n\(5);
\phase1_gen|ALT_INV_w1_n\(4) <= NOT \phase1_gen|w1_n\(4);
\phase0_gen|ALT_INV_w1_n\(4) <= NOT \phase0_gen|w1_n\(4);
\phase1_gen|ALT_INV_w1_n\(3) <= NOT \phase1_gen|w1_n\(3);
\phase1_gen|ALT_INV_w1_n\(2) <= NOT \phase1_gen|w1_n\(2);
\phase0_gen|ALT_INV_w1_n\(1) <= NOT \phase0_gen|w1_n\(1);
\phase1_gen|ALT_INV_w1_n\(0) <= NOT \phase1_gen|w1_n\(0);
\phase0_gen|ALT_INV_w2\(1) <= NOT \phase0_gen|w2\(1);
\ALT_INV_phase_cnt~q\ <= NOT \phase_cnt~q\;
\ALT_INV_xout_en~0_combout\ <= NOT \xout_en~0_combout\;
\ALT_INV_phase_cnt_d~q\ <= NOT \phase_cnt_d~q\;
\phase1_gen|ALT_INV_shift_reg[8][10]~q\ <= NOT \phase1_gen|shift_reg[8][10]~q\;
\phase0_gen|ALT_INV_shift_reg[9][10]~q\ <= NOT \phase0_gen|shift_reg[9][10]~q\;
\phase1_gen|ALT_INV_shift_reg[8][7]~q\ <= NOT \phase1_gen|shift_reg[8][7]~q\;
\phase0_gen|ALT_INV_shift_reg[9][7]~q\ <= NOT \phase0_gen|shift_reg[9][7]~q\;
\phase1_gen|ALT_INV_shift_reg[8][6]~q\ <= NOT \phase1_gen|shift_reg[8][6]~q\;
\phase0_gen|ALT_INV_shift_reg[9][6]~q\ <= NOT \phase0_gen|shift_reg[9][6]~q\;
\phase1_gen|ALT_INV_shift_reg[8][5]~q\ <= NOT \phase1_gen|shift_reg[8][5]~q\;
\phase1_gen|ALT_INV_shift_reg[8][4]~q\ <= NOT \phase1_gen|shift_reg[8][4]~q\;
\phase1_gen|ALT_INV_shift_reg[8][3]~q\ <= NOT \phase1_gen|shift_reg[8][3]~q\;
\phase0_gen|ALT_INV_shift_reg[9][3]~q\ <= NOT \phase0_gen|shift_reg[9][3]~q\;
\phase1_gen|ALT_INV_shift_reg[8][2]~q\ <= NOT \phase1_gen|shift_reg[8][2]~q\;
\phase1_gen|ALT_INV_Add11~45_sumout\ <= NOT \phase1_gen|Add11~45_sumout\;
\phase0_gen|ALT_INV_shift_reg[8][10]~q\ <= NOT \phase0_gen|shift_reg[8][10]~q\;
\phase0_gen|ALT_INV_shift_reg[8][7]~q\ <= NOT \phase0_gen|shift_reg[8][7]~q\;
\phase0_gen|ALT_INV_shift_reg[8][6]~q\ <= NOT \phase0_gen|shift_reg[8][6]~q\;
\phase0_gen|ALT_INV_shift_reg[8][5]~q\ <= NOT \phase0_gen|shift_reg[8][5]~q\;
\phase0_gen|ALT_INV_shift_reg[8][4]~q\ <= NOT \phase0_gen|shift_reg[8][4]~q\;
\phase0_gen|ALT_INV_shift_reg[8][3]~q\ <= NOT \phase0_gen|shift_reg[8][3]~q\;
\phase1_gen|ALT_INV_shift_reg[7][15]~q\ <= NOT \phase1_gen|shift_reg[7][15]~q\;
\phase1_gen|ALT_INV_shift_reg[7][14]~q\ <= NOT \phase1_gen|shift_reg[7][14]~q\;
\phase1_gen|ALT_INV_shift_reg[7][13]~q\ <= NOT \phase1_gen|shift_reg[7][13]~q\;
\phase1_gen|ALT_INV_shift_reg[7][12]~q\ <= NOT \phase1_gen|shift_reg[7][12]~q\;
\phase1_gen|ALT_INV_shift_reg[7][11]~q\ <= NOT \phase1_gen|shift_reg[7][11]~q\;
\phase1_gen|ALT_INV_shift_reg[7][10]~q\ <= NOT \phase1_gen|shift_reg[7][10]~q\;
\phase1_gen|ALT_INV_shift_reg[7][9]~q\ <= NOT \phase1_gen|shift_reg[7][9]~q\;
\phase1_gen|ALT_INV_shift_reg[7][8]~q\ <= NOT \phase1_gen|shift_reg[7][8]~q\;
\phase1_gen|ALT_INV_shift_reg[7][7]~q\ <= NOT \phase1_gen|shift_reg[7][7]~q\;
\phase1_gen|ALT_INV_shift_reg[7][6]~q\ <= NOT \phase1_gen|shift_reg[7][6]~q\;
\phase1_gen|ALT_INV_shift_reg[7][5]~q\ <= NOT \phase1_gen|shift_reg[7][5]~q\;
\phase1_gen|ALT_INV_shift_reg[7][4]~q\ <= NOT \phase1_gen|shift_reg[7][4]~q\;
\phase1_gen|ALT_INV_shift_reg[7][3]~q\ <= NOT \phase1_gen|shift_reg[7][3]~q\;
\phase1_gen|ALT_INV_shift_reg[7][2]~q\ <= NOT \phase1_gen|shift_reg[7][2]~q\;
\phase0_gen|ALT_INV_shift_reg[9][2]~q\ <= NOT \phase0_gen|shift_reg[9][2]~q\;
\phase1_gen|ALT_INV_shift_reg[8][1]~q\ <= NOT \phase1_gen|shift_reg[8][1]~q\;
\phase0_gen|ALT_INV_shift_reg[9][1]~q\ <= NOT \phase0_gen|shift_reg[9][1]~q\;
\phase1_gen|ALT_INV_shift_reg[8][0]~q\ <= NOT \phase1_gen|shift_reg[8][0]~q\;
\phase0_gen|ALT_INV_shift_reg[7][15]~q\ <= NOT \phase0_gen|shift_reg[7][15]~q\;
\phase0_gen|ALT_INV_shift_reg[7][14]~q\ <= NOT \phase0_gen|shift_reg[7][14]~q\;
\phase0_gen|ALT_INV_shift_reg[7][13]~q\ <= NOT \phase0_gen|shift_reg[7][13]~q\;
\phase0_gen|ALT_INV_shift_reg[7][12]~q\ <= NOT \phase0_gen|shift_reg[7][12]~q\;
\phase0_gen|ALT_INV_shift_reg[7][11]~q\ <= NOT \phase0_gen|shift_reg[7][11]~q\;
\phase0_gen|ALT_INV_shift_reg[7][10]~q\ <= NOT \phase0_gen|shift_reg[7][10]~q\;
\phase0_gen|ALT_INV_shift_reg[7][9]~q\ <= NOT \phase0_gen|shift_reg[7][9]~q\;
\phase0_gen|ALT_INV_shift_reg[7][8]~q\ <= NOT \phase0_gen|shift_reg[7][8]~q\;
\ALT_INV_xin[7]~input_o\ <= NOT \xin[7]~input_o\;
\ALT_INV_xin[6]~input_o\ <= NOT \xin[6]~input_o\;
\ALT_INV_xin[5]~input_o\ <= NOT \xin[5]~input_o\;
\ALT_INV_xin[4]~input_o\ <= NOT \xin[4]~input_o\;
\ALT_INV_xin[3]~input_o\ <= NOT \xin[3]~input_o\;
\ALT_INV_xin[2]~input_o\ <= NOT \xin[2]~input_o\;
\ALT_INV_xin[1]~input_o\ <= NOT \xin[1]~input_o\;
\ALT_INV_xin[0]~input_o\ <= NOT \xin[0]~input_o\;
\ALT_INV_xin_en~input_o\ <= NOT \xin_en~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\phase1_gen|ALT_INV_w9\(10) <= NOT \phase1_gen|w9\(10);
\phase1_gen|ALT_INV_w9\(9) <= NOT \phase1_gen|w9\(9);
\phase1_gen|ALT_INV_w9\(7) <= NOT \phase1_gen|w9\(7);
\phase1_gen|ALT_INV_w9\(6) <= NOT \phase1_gen|w9\(6);
\phase1_gen|ALT_INV_w9\(5) <= NOT \phase1_gen|w9\(5);
\phase1_gen|ALT_INV_w9\(4) <= NOT \phase1_gen|w9\(4);
\phase1_gen|ALT_INV_w9\(1) <= NOT \phase1_gen|w9\(1);
\phase0_gen|ALT_INV_w15\(12) <= NOT \phase0_gen|w15\(12);
\phase0_gen|ALT_INV_w15\(11) <= NOT \phase0_gen|w15\(11);
\phase0_gen|ALT_INV_w15\(10) <= NOT \phase0_gen|w15\(10);
\phase0_gen|ALT_INV_w15\(9) <= NOT \phase0_gen|w15\(9);
\phase0_gen|ALT_INV_w15\(8) <= NOT \phase0_gen|w15\(8);
\phase0_gen|ALT_INV_w15\(7) <= NOT \phase0_gen|w15\(7);
\phase0_gen|ALT_INV_w15\(6) <= NOT \phase0_gen|w15\(6);
\phase0_gen|ALT_INV_w15\(5) <= NOT \phase0_gen|w15\(5);
\phase0_gen|ALT_INV_w15\(4) <= NOT \phase0_gen|w15\(4);
\phase0_gen|ALT_INV_w15\(3) <= NOT \phase0_gen|w15\(3);
\phase0_gen|ALT_INV_w2\(8) <= NOT \phase0_gen|w2\(8);
\phase0_gen|ALT_INV_w2\(7) <= NOT \phase0_gen|w2\(7);
\phase0_gen|ALT_INV_w2\(6) <= NOT \phase0_gen|w2\(6);
\phase0_gen|ALT_INV_w2\(5) <= NOT \phase0_gen|w2\(5);
\phase0_gen|ALT_INV_w2\(4) <= NOT \phase0_gen|w2\(4);
\phase0_gen|ALT_INV_w2\(3) <= NOT \phase0_gen|w2\(3);
\phase0_gen|ALT_INV_w2\(2) <= NOT \phase0_gen|w2\(2);
\phase1_gen|ALT_INV_w3\(10) <= NOT \phase1_gen|w3\(10);
\phase1_gen|ALT_INV_w3\(9) <= NOT \phase1_gen|w3\(9);
\phase1_gen|ALT_INV_w3\(8) <= NOT \phase1_gen|w3\(8);
\phase1_gen|ALT_INV_w3\(7) <= NOT \phase1_gen|w3\(7);
\phase1_gen|ALT_INV_w3\(6) <= NOT \phase1_gen|w3\(6);
\phase1_gen|ALT_INV_w3\(5) <= NOT \phase1_gen|w3\(5);
\phase1_gen|ALT_INV_w3\(4) <= NOT \phase1_gen|w3\(4);
\phase0_gen|ALT_INV_w2[6]~DUPLICATE_q\ <= NOT \phase0_gen|w2[6]~DUPLICATE_q\;
\phase0_gen|ALT_INV_w2[1]~DUPLICATE_q\ <= NOT \phase0_gen|w2[1]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y8_N5
\xout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(0));

-- Location: IOOBUF_X72_Y0_N2
\xout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(1));

-- Location: IOOBUF_X72_Y0_N19
\xout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(2));

-- Location: IOOBUF_X58_Y0_N42
\xout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(3));

-- Location: IOOBUF_X89_Y6_N39
\xout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(4));

-- Location: IOOBUF_X89_Y9_N5
\xout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(5));

-- Location: IOOBUF_X72_Y0_N53
\xout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(6));

-- Location: IOOBUF_X89_Y6_N22
\xout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(7));

-- Location: IOOBUF_X89_Y4_N96
\xout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(8));

-- Location: IOOBUF_X89_Y8_N22
\xout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(9));

-- Location: IOOBUF_X72_Y0_N36
\xout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(10));

-- Location: IOOBUF_X89_Y6_N56
\xout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(11));

-- Location: IOOBUF_X89_Y36_N5
\xout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(12));

-- Location: IOOBUF_X89_Y8_N56
\xout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(13));

-- Location: IOOBUF_X89_Y4_N79
\xout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(14));

-- Location: IOOBUF_X84_Y81_N19
\xout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout(15));

-- Location: IOOBUF_X89_Y4_N62
\xout_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xout_en~reg0_q\,
	devoe => ww_devoe,
	o => ww_xout_en);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N95
\xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(0),
	o => \xin[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\xin_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin_en,
	o => \xin_en~input_o\);

-- Location: MLABCELL_X84_Y9_N48
\phase_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase_cnt~0_combout\ = ( !\phase_cnt~q\ & ( \xin_en~input_o\ ) ) # ( \phase_cnt~q\ & ( !\xin_en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_phase_cnt~q\,
	dataf => \ALT_INV_xin_en~input_o\,
	combout => \phase_cnt~0_combout\);

-- Location: FF_X84_Y9_N49
phase_cnt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase_cnt~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_cnt~q\);

-- Location: FF_X85_Y10_N38
phase_cnt_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase_cnt~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_cnt_d~q\);

-- Location: LABCELL_X85_Y10_N36
\xout_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xout_en~0_combout\ = ( \phase_cnt_d~q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_phase_cnt_d~q\,
	combout => \xout_en~0_combout\);

-- Location: FF_X85_Y11_N58
\xin_phase1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xin[0]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(0));

-- Location: LABCELL_X85_Y8_N57
\phase1_gen|xin_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xin_reg[0]~feeder_combout\ = ( xin_phase1(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase1(0),
	combout => \phase1_gen|xin_reg[0]~feeder_combout\);

-- Location: LABCELL_X85_Y10_N54
\phase1_gen|xout[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xout[15]~0_combout\ = ( \phase_cnt_d~q\ & ( (\xin_en~input_o\) # (\rst~input_o\) ) ) # ( !\phase_cnt_d~q\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_xin_en~input_o\,
	datae => \ALT_INV_phase_cnt_d~q\,
	combout => \phase1_gen|xout[15]~0_combout\);

-- Location: FF_X85_Y8_N59
\phase1_gen|xin_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|xin_reg[0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(0));

-- Location: FF_X84_Y8_N19
\phase1_gen|w1_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|xin_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(0));

-- Location: LABCELL_X83_Y11_N42
\phase1_gen|mul_out[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[0][0]~feeder_combout\ = ( \phase1_gen|w1_n\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w1_n\(0),
	combout => \phase1_gen|mul_out[0][0]~feeder_combout\);

-- Location: FF_X83_Y11_N44
\phase1_gen|mul_out[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[0][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][0]~q\);

-- Location: LABCELL_X83_Y9_N0
\phase1_gen|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~1_sumout\ = SUM(( !\phase1_gen|w1_n\(0) ) + ( VCC ) + ( !VCC ))
-- \phase1_gen|Add3~2\ = CARRY(( !\phase1_gen|w1_n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w1_n\(0),
	cin => GND,
	sumout => \phase1_gen|Add3~1_sumout\,
	cout => \phase1_gen|Add3~2\);

-- Location: FF_X83_Y9_N2
\phase1_gen|mul_out[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][0]~q\);

-- Location: FF_X84_Y11_N56
\phase1_gen|shift_reg[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|mul_out[0][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][0]~q\);

-- Location: MLABCELL_X84_Y11_N0
\phase1_gen|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~1_sumout\ = SUM(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[8][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add11~2\ = CARRY(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[8][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[8][0]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add11~1_sumout\,
	cout => \phase1_gen|Add11~2\);

-- Location: LABCELL_X85_Y9_N51
\phase1_gen|shift_reg[7][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[7][0]~feeder_combout\ = ( \phase1_gen|Add11~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add11~1_sumout\,
	combout => \phase1_gen|shift_reg[7][0]~feeder_combout\);

-- Location: FF_X85_Y9_N53
\phase1_gen|shift_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[7][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][0]~q\);

-- Location: LABCELL_X85_Y9_N0
\phase1_gen|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~1_sumout\ = SUM(( \phase1_gen|shift_reg[7][0]~q\ ) + ( \phase1_gen|mul_out[2][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add10~2\ = CARRY(( \phase1_gen|shift_reg[7][0]~q\ ) + ( \phase1_gen|mul_out[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][0]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[7][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add10~1_sumout\,
	cout => \phase1_gen|Add10~2\);

-- Location: FF_X85_Y9_N2
\phase1_gen|shift_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][0]~q\);

-- Location: MLABCELL_X84_Y9_N0
\phase1_gen|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~1_sumout\ = SUM(( \phase1_gen|shift_reg[6][0]~q\ ) + ( \phase1_gen|mul_out[2][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add9~2\ = CARRY(( \phase1_gen|shift_reg[6][0]~q\ ) + ( \phase1_gen|mul_out[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][0]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add9~1_sumout\,
	cout => \phase1_gen|Add9~2\);

-- Location: FF_X84_Y9_N1
\phase1_gen|shift_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][0]~q\);

-- Location: LABCELL_X83_Y9_N54
\phase1_gen|shift_reg[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[4][0]~feeder_combout\ = ( \phase1_gen|shift_reg[5][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_shift_reg[5][0]~q\,
	combout => \phase1_gen|shift_reg[4][0]~feeder_combout\);

-- Location: FF_X83_Y9_N55
\phase1_gen|shift_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[4][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][0]~q\);

-- Location: FF_X82_Y9_N53
\phase1_gen|shift_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|shift_reg[4][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][0]~q\);

-- Location: MLABCELL_X82_Y9_N0
\phase1_gen|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~1_sumout\ = SUM(( \phase1_gen|mul_out[2][0]~q\ ) + ( \phase1_gen|shift_reg[3][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add6~2\ = CARRY(( \phase1_gen|mul_out[2][0]~q\ ) + ( \phase1_gen|shift_reg[3][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[3][0]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add6~1_sumout\,
	cout => \phase1_gen|Add6~2\);

-- Location: LABCELL_X81_Y9_N48
\phase1_gen|shift_reg[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[2][0]~feeder_combout\ = ( \phase1_gen|Add6~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add6~1_sumout\,
	combout => \phase1_gen|shift_reg[2][0]~feeder_combout\);

-- Location: FF_X81_Y9_N50
\phase1_gen|shift_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[2][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][0]~q\);

-- Location: LABCELL_X81_Y9_N0
\phase1_gen|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~1_sumout\ = SUM(( \phase1_gen|mul_out[2][0]~q\ ) + ( \phase1_gen|shift_reg[2][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add5~2\ = CARRY(( \phase1_gen|mul_out[2][0]~q\ ) + ( \phase1_gen|shift_reg[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][0]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add5~1_sumout\,
	cout => \phase1_gen|Add5~2\);

-- Location: FF_X81_Y9_N1
\phase1_gen|shift_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][0]~q\);

-- Location: MLABCELL_X82_Y10_N0
\phase1_gen|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~1_sumout\ = SUM(( \phase1_gen|shift_reg[1][0]~q\ ) + ( \phase1_gen|mul_out[0][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add4~2\ = CARRY(( \phase1_gen|shift_reg[1][0]~q\ ) + ( \phase1_gen|mul_out[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[0][0]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add4~1_sumout\,
	cout => \phase1_gen|Add4~2\);

-- Location: FF_X82_Y10_N1
\phase1_gen|shift_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][0]~q\);

-- Location: LABCELL_X83_Y10_N0
\phase1_gen|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~1_sumout\ = SUM(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[0][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add13~2\ = CARRY(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[0][0]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add13~1_sumout\,
	cout => \phase1_gen|Add13~2\);

-- Location: FF_X83_Y10_N1
\phase1_gen|xout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(0));

-- Location: LABCELL_X85_Y12_N54
\xin_phase0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[0]~feeder_combout\ = ( \xin[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[0]~input_o\,
	combout => \xin_phase0[0]~feeder_combout\);

-- Location: LABCELL_X85_Y10_N42
\xout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xout[0]~0_combout\ = ( \phase_cnt_d~q\ ) # ( !\phase_cnt_d~q\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_phase_cnt_d~q\,
	combout => \xout[0]~0_combout\);

-- Location: FF_X85_Y12_N56
\xin_phase0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(0));

-- Location: LABCELL_X85_Y10_N51
\phase0_gen|xout[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|xout[15]~0_combout\ = ( \phase_cnt_d~q\ & ( \rst~input_o\ ) ) # ( !\phase_cnt_d~q\ & ( (\rst~input_o\) # (\xin_en~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011110000111101011111010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_xin_en~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_phase_cnt_d~q\,
	combout => \phase0_gen|xout[15]~0_combout\);

-- Location: FF_X85_Y12_N38
\phase0_gen|xin_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(0),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(0));

-- Location: FF_X85_Y10_N46
\phase0_gen|w2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y11_N6
\phase0_gen|mul_out[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][0]~feeder_combout\ = ( \phase0_gen|w2[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w2[1]~DUPLICATE_q\,
	combout => \phase0_gen|mul_out[0][0]~feeder_combout\);

-- Location: FF_X87_Y11_N8
\phase0_gen|mul_out[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][0]~q\);

-- Location: FF_X88_Y9_N52
\phase0_gen|shift_reg[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|mul_out[0][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][0]~q\);

-- Location: MLABCELL_X87_Y9_N48
\phase0_gen|shift_reg[8][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][0]~feeder_combout\ = ( \phase0_gen|shift_reg[9][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][0]~q\,
	combout => \phase0_gen|shift_reg[8][0]~feeder_combout\);

-- Location: FF_X87_Y9_N50
\phase0_gen|shift_reg[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][0]~q\);

-- Location: MLABCELL_X87_Y9_N45
\phase0_gen|shift_reg[7][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[7][0]~feeder_combout\ = \phase0_gen|shift_reg[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[8][0]~q\,
	combout => \phase0_gen|shift_reg[7][0]~feeder_combout\);

-- Location: FF_X87_Y9_N46
\phase0_gen|shift_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[7][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][0]~q\);

-- Location: LABCELL_X88_Y9_N54
\phase0_gen|shift_reg[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[6][0]~feeder_combout\ = ( \phase0_gen|shift_reg[7][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[7][0]~q\,
	combout => \phase0_gen|shift_reg[6][0]~feeder_combout\);

-- Location: FF_X88_Y9_N56
\phase0_gen|shift_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[6][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][0]~q\);

-- Location: LABCELL_X88_Y9_N0
\phase0_gen|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~1_sumout\ = SUM(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[6][0]~q\ ) + ( !VCC ))
-- \phase0_gen|Add9~2\ = CARRY(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[6][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[6][0]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase0_gen|Add9~1_sumout\,
	cout => \phase0_gen|Add9~2\);

-- Location: FF_X88_Y9_N1
\phase0_gen|shift_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][0]~q\);

-- Location: LABCELL_X88_Y10_N48
\phase0_gen|shift_reg[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[4][0]~feeder_combout\ = ( \phase0_gen|shift_reg[5][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[5][0]~q\,
	combout => \phase0_gen|shift_reg[4][0]~feeder_combout\);

-- Location: FF_X88_Y10_N50
\phase0_gen|shift_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[4][0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][0]~q\);

-- Location: LABCELL_X88_Y10_N0
\phase0_gen|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~1_sumout\ = SUM(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[4][0]~q\ ) + ( !VCC ))
-- \phase0_gen|Add7~2\ = CARRY(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[4][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][0]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase0_gen|Add7~1_sumout\,
	cout => \phase0_gen|Add7~2\);

-- Location: FF_X88_Y10_N2
\phase0_gen|shift_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][0]~q\);

-- Location: FF_X88_Y10_N23
\phase0_gen|shift_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[3][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][0]~q\);

-- Location: FF_X88_Y10_N34
\phase0_gen|shift_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[2][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][0]~q\);

-- Location: FF_X87_Y12_N53
\phase0_gen|shift_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][0]~q\);

-- Location: MLABCELL_X87_Y12_N0
\phase0_gen|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~1_sumout\ = SUM(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[0][0]~q\ ) + ( !VCC ))
-- \phase0_gen|Add13~2\ = CARRY(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[0][0]~q\,
	datab => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase0_gen|Add13~1_sumout\,
	cout => \phase0_gen|Add13~2\);

-- Location: FF_X87_Y12_N2
\phase0_gen|xout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(0));

-- Location: MLABCELL_X84_Y10_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \phase0_gen|xout\(0) ) + ( \phase1_gen|xout\(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \phase0_gen|xout\(0) ) + ( \phase1_gen|xout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xout\(0),
	datad => \phase0_gen|ALT_INV_xout\(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X84_Y10_N1
\xout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[0]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N38
\xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(1),
	o => \xin[1]~input_o\);

-- Location: FF_X84_Y8_N5
\xin_phase1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xin[1]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(1));

-- Location: FF_X84_Y8_N58
\phase1_gen|xin_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase1(1),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(1));

-- Location: LABCELL_X85_Y8_N0
\phase1_gen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~1_sumout\ = SUM(( !\phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(1) ) + ( !VCC ))
-- \phase1_gen|Add0~2\ = CARRY(( !\phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(1),
	datad => \phase1_gen|ALT_INV_xin_reg\(0),
	cin => GND,
	sumout => \phase1_gen|Add0~1_sumout\,
	cout => \phase1_gen|Add0~2\);

-- Location: FF_X85_Y8_N1
\phase1_gen|w3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(1));

-- Location: LABCELL_X83_Y9_N36
\phase1_gen|mul_out[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][1]~feeder_combout\ = ( \phase1_gen|w3\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(1),
	combout => \phase1_gen|mul_out[1][1]~feeder_combout\);

-- Location: FF_X83_Y9_N38
\phase1_gen|mul_out[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][1]~q\);

-- Location: LABCELL_X83_Y9_N3
\phase1_gen|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~5_sumout\ = SUM(( !\phase1_gen|w3\(1) ) + ( GND ) + ( \phase1_gen|Add3~2\ ))
-- \phase1_gen|Add3~6\ = CARRY(( !\phase1_gen|w3\(1) ) + ( GND ) + ( \phase1_gen|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_w3\(1),
	cin => \phase1_gen|Add3~2\,
	sumout => \phase1_gen|Add3~5_sumout\,
	cout => \phase1_gen|Add3~6\);

-- Location: FF_X83_Y9_N5
\phase1_gen|mul_out[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][1]~q\);

-- Location: MLABCELL_X84_Y8_N30
\phase1_gen|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~1_sumout\ = SUM(( !\phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(1) ) + ( !VCC ))
-- \phase1_gen|Add2~2\ = CARRY(( !\phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(1),
	datad => \phase1_gen|ALT_INV_xin_reg\(0),
	cin => GND,
	sumout => \phase1_gen|Add2~1_sumout\,
	cout => \phase1_gen|Add2~2\);

-- Location: FF_X84_Y8_N31
\phase1_gen|w1_n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(1));

-- Location: FF_X83_Y10_N59
\phase1_gen|mul_out[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w1_n\(1),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][1]~q\);

-- Location: MLABCELL_X84_Y11_N39
\phase1_gen|shift_reg[8][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][1]~feeder_combout\ = ( \phase1_gen|mul_out[0][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][1]~q\,
	combout => \phase1_gen|shift_reg[8][1]~feeder_combout\);

-- Location: FF_X84_Y11_N41
\phase1_gen|shift_reg[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][1]~q\);

-- Location: MLABCELL_X84_Y11_N3
\phase1_gen|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~5_sumout\ = SUM(( \phase1_gen|mul_out[1][1]~q\ ) + ( \phase1_gen|shift_reg[8][1]~q\ ) + ( \phase1_gen|Add11~2\ ))
-- \phase1_gen|Add11~6\ = CARRY(( \phase1_gen|mul_out[1][1]~q\ ) + ( \phase1_gen|shift_reg[8][1]~q\ ) + ( \phase1_gen|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[8][1]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][1]~q\,
	cin => \phase1_gen|Add11~2\,
	sumout => \phase1_gen|Add11~5_sumout\,
	cout => \phase1_gen|Add11~6\);

-- Location: FF_X84_Y11_N4
\phase1_gen|shift_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][1]~q\);

-- Location: LABCELL_X85_Y9_N3
\phase1_gen|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~5_sumout\ = SUM(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[7][1]~q\ ) + ( \phase1_gen|Add10~2\ ))
-- \phase1_gen|Add10~6\ = CARRY(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[7][1]~q\ ) + ( \phase1_gen|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][1]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][1]~q\,
	cin => \phase1_gen|Add10~2\,
	sumout => \phase1_gen|Add10~5_sumout\,
	cout => \phase1_gen|Add10~6\);

-- Location: FF_X85_Y9_N5
\phase1_gen|shift_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][1]~q\);

-- Location: MLABCELL_X84_Y9_N3
\phase1_gen|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~5_sumout\ = SUM(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[6][1]~q\ ) + ( \phase1_gen|Add9~2\ ))
-- \phase1_gen|Add9~6\ = CARRY(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[6][1]~q\ ) + ( \phase1_gen|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[6][1]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][1]~q\,
	cin => \phase1_gen|Add9~2\,
	sumout => \phase1_gen|Add9~5_sumout\,
	cout => \phase1_gen|Add9~6\);

-- Location: FF_X84_Y9_N5
\phase1_gen|shift_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][1]~q\);

-- Location: FF_X83_Y9_N53
\phase1_gen|shift_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|shift_reg[5][1]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][1]~q\);

-- Location: MLABCELL_X82_Y9_N54
\phase1_gen|shift_reg[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[3][1]~feeder_combout\ = ( \phase1_gen|shift_reg[4][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_shift_reg[4][1]~q\,
	combout => \phase1_gen|shift_reg[3][1]~feeder_combout\);

-- Location: FF_X82_Y9_N56
\phase1_gen|shift_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[3][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][1]~q\);

-- Location: MLABCELL_X82_Y9_N3
\phase1_gen|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~5_sumout\ = SUM(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[3][1]~q\ ) + ( \phase1_gen|Add6~2\ ))
-- \phase1_gen|Add6~6\ = CARRY(( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|shift_reg[3][1]~q\ ) + ( \phase1_gen|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[3][1]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][1]~q\,
	cin => \phase1_gen|Add6~2\,
	sumout => \phase1_gen|Add6~5_sumout\,
	cout => \phase1_gen|Add6~6\);

-- Location: FF_X82_Y9_N5
\phase1_gen|shift_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][1]~q\);

-- Location: LABCELL_X81_Y9_N3
\phase1_gen|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~5_sumout\ = SUM(( \phase1_gen|shift_reg[2][1]~q\ ) + ( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|Add5~2\ ))
-- \phase1_gen|Add5~6\ = CARRY(( \phase1_gen|shift_reg[2][1]~q\ ) + ( \phase1_gen|mul_out[2][1]~q\ ) + ( \phase1_gen|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][1]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][1]~q\,
	cin => \phase1_gen|Add5~2\,
	sumout => \phase1_gen|Add5~5_sumout\,
	cout => \phase1_gen|Add5~6\);

-- Location: FF_X81_Y9_N5
\phase1_gen|shift_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][1]~q\);

-- Location: MLABCELL_X82_Y10_N3
\phase1_gen|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~5_sumout\ = SUM(( \phase1_gen|shift_reg[1][1]~q\ ) + ( \phase1_gen|mul_out[1][1]~q\ ) + ( \phase1_gen|Add4~2\ ))
-- \phase1_gen|Add4~6\ = CARRY(( \phase1_gen|shift_reg[1][1]~q\ ) + ( \phase1_gen|mul_out[1][1]~q\ ) + ( \phase1_gen|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][1]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][1]~q\,
	cin => \phase1_gen|Add4~2\,
	sumout => \phase1_gen|Add4~5_sumout\,
	cout => \phase1_gen|Add4~6\);

-- Location: FF_X82_Y10_N4
\phase1_gen|shift_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][1]~q\);

-- Location: LABCELL_X83_Y10_N3
\phase1_gen|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~5_sumout\ = SUM(( \phase1_gen|mul_out[0][1]~q\ ) + ( \phase1_gen|shift_reg[0][1]~q\ ) + ( \phase1_gen|Add13~2\ ))
-- \phase1_gen|Add13~6\ = CARRY(( \phase1_gen|mul_out[0][1]~q\ ) + ( \phase1_gen|shift_reg[0][1]~q\ ) + ( \phase1_gen|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][1]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][1]~q\,
	cin => \phase1_gen|Add13~2\,
	sumout => \phase1_gen|Add13~5_sumout\,
	cout => \phase1_gen|Add13~6\);

-- Location: FF_X83_Y10_N4
\phase1_gen|xout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(1));

-- Location: MLABCELL_X84_Y12_N54
\xin_phase0[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[1]~feeder_combout\ = ( \xin[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[1]~input_o\,
	combout => \xin_phase0[1]~feeder_combout\);

-- Location: FF_X84_Y12_N55
\xin_phase0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(1));

-- Location: LABCELL_X85_Y12_N51
\phase0_gen|xin_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|xin_reg[1]~feeder_combout\ = ( xin_phase0(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase0(1),
	combout => \phase0_gen|xin_reg[1]~feeder_combout\);

-- Location: FF_X85_Y12_N53
\phase0_gen|xin_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|xin_reg[1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(1));

-- Location: LABCELL_X85_Y12_N0
\phase0_gen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~1_sumout\ = SUM(( !\phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(1) ) + ( !VCC ))
-- \phase0_gen|Add0~2\ = CARRY(( !\phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(1),
	datad => \phase0_gen|ALT_INV_xin_reg\(0),
	cin => GND,
	sumout => \phase0_gen|Add0~1_sumout\,
	cout => \phase0_gen|Add0~2\);

-- Location: FF_X85_Y12_N1
\phase0_gen|w15[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(1));

-- Location: FF_X87_Y10_N50
\phase0_gen|mul_out[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w15\(1),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][1]~q\);

-- Location: MLABCELL_X84_Y12_N30
\phase0_gen|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~1_sumout\ = SUM(( !\phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(1) ) + ( !VCC ))
-- \phase0_gen|Add1~2\ = CARRY(( !\phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(1),
	datad => \phase0_gen|ALT_INV_xin_reg\(0),
	cin => GND,
	sumout => \phase0_gen|Add1~1_sumout\,
	cout => \phase0_gen|Add1~2\);

-- Location: FF_X84_Y12_N31
\phase0_gen|w1_n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(1));

-- Location: LABCELL_X88_Y12_N0
\phase0_gen|mul_out[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][1]~feeder_combout\ = ( \phase0_gen|w1_n\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w1_n\(1),
	combout => \phase0_gen|mul_out[0][1]~feeder_combout\);

-- Location: FF_X88_Y12_N2
\phase0_gen|mul_out[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][1]~q\);

-- Location: FF_X88_Y12_N4
\phase0_gen|shift_reg[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|mul_out[0][1]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][1]~q\);

-- Location: LABCELL_X88_Y11_N51
\phase0_gen|shift_reg[8][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][1]~feeder_combout\ = ( \phase0_gen|shift_reg[9][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][1]~q\,
	combout => \phase0_gen|shift_reg[8][1]~feeder_combout\);

-- Location: FF_X88_Y11_N53
\phase0_gen|shift_reg[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][1]~q\);

-- Location: MLABCELL_X87_Y11_N30
\phase0_gen|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~1_sumout\ = SUM(( \phase0_gen|shift_reg[8][1]~q\ ) + ( \phase0_gen|mul_out[0][0]~q\ ) + ( !VCC ))
-- \phase0_gen|Add11~2\ = CARRY(( \phase0_gen|shift_reg[8][1]~q\ ) + ( \phase0_gen|mul_out[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[8][1]~q\,
	cin => GND,
	sumout => \phase0_gen|Add11~1_sumout\,
	cout => \phase0_gen|Add11~2\);

-- Location: FF_X88_Y11_N28
\phase0_gen|shift_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~1_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][1]~q\);

-- Location: LABCELL_X88_Y9_N48
\phase0_gen|shift_reg[6][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[6][1]~feeder_combout\ = ( \phase0_gen|shift_reg[7][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[7][1]~q\,
	combout => \phase0_gen|shift_reg[6][1]~feeder_combout\);

-- Location: FF_X88_Y9_N49
\phase0_gen|shift_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[6][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][1]~q\);

-- Location: LABCELL_X88_Y9_N3
\phase0_gen|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~5_sumout\ = SUM(( \phase0_gen|shift_reg[6][1]~q\ ) + ( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|Add9~2\ ))
-- \phase0_gen|Add9~6\ = CARRY(( \phase0_gen|shift_reg[6][1]~q\ ) + ( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][1]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[6][1]~q\,
	cin => \phase0_gen|Add9~2\,
	sumout => \phase0_gen|Add9~5_sumout\,
	cout => \phase0_gen|Add9~6\);

-- Location: FF_X88_Y9_N5
\phase0_gen|shift_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][1]~q\);

-- Location: MLABCELL_X87_Y10_N0
\phase0_gen|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~1_sumout\ = SUM(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[5][1]~q\ ) + ( !VCC ))
-- \phase0_gen|Add8~2\ = CARRY(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[5][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][1]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase0_gen|Add8~1_sumout\,
	cout => \phase0_gen|Add8~2\);

-- Location: FF_X87_Y10_N1
\phase0_gen|shift_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][1]~q\);

-- Location: LABCELL_X88_Y10_N3
\phase0_gen|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~5_sumout\ = SUM(( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|shift_reg[4][1]~q\ ) + ( \phase0_gen|Add7~2\ ))
-- \phase0_gen|Add7~6\ = CARRY(( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|shift_reg[4][1]~q\ ) + ( \phase0_gen|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][1]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][1]~q\,
	cin => \phase0_gen|Add7~2\,
	sumout => \phase0_gen|Add7~5_sumout\,
	cout => \phase0_gen|Add7~6\);

-- Location: FF_X88_Y10_N4
\phase0_gen|shift_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][1]~q\);

-- Location: MLABCELL_X87_Y13_N51
\phase0_gen|shift_reg[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[2][1]~feeder_combout\ = ( \phase0_gen|shift_reg[3][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[3][1]~q\,
	combout => \phase0_gen|shift_reg[2][1]~feeder_combout\);

-- Location: FF_X87_Y13_N53
\phase0_gen|shift_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[2][1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][1]~q\);

-- Location: MLABCELL_X87_Y13_N0
\phase0_gen|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~1_sumout\ = SUM(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[2][1]~q\ ) + ( !VCC ))
-- \phase0_gen|Add5~2\ = CARRY(( \phase0_gen|mul_out[0][0]~q\ ) + ( \phase0_gen|shift_reg[2][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][1]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase0_gen|Add5~1_sumout\,
	cout => \phase0_gen|Add5~2\);

-- Location: FF_X87_Y13_N1
\phase0_gen|shift_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][1]~q\);

-- Location: FF_X87_Y12_N59
\phase0_gen|shift_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][1]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][1]~q\);

-- Location: MLABCELL_X87_Y12_N3
\phase0_gen|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~5_sumout\ = SUM(( \phase0_gen|mul_out[0][1]~q\ ) + ( \phase0_gen|shift_reg[0][1]~q\ ) + ( \phase0_gen|Add13~2\ ))
-- \phase0_gen|Add13~6\ = CARRY(( \phase0_gen|mul_out[0][1]~q\ ) + ( \phase0_gen|shift_reg[0][1]~q\ ) + ( \phase0_gen|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[0][1]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][1]~q\,
	cin => \phase0_gen|Add13~2\,
	sumout => \phase0_gen|Add13~5_sumout\,
	cout => \phase0_gen|Add13~6\);

-- Location: FF_X87_Y12_N4
\phase0_gen|xout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(1));

-- Location: MLABCELL_X84_Y10_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \phase0_gen|xout\(1) ) + ( \phase1_gen|xout\(1) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \phase0_gen|xout\(1) ) + ( \phase1_gen|xout\(1) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(1),
	datad => \phase0_gen|ALT_INV_xout\(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X84_Y10_N4
\xout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[1]~reg0_q\);

-- Location: IOIBUF_X89_Y35_N44
\xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(2),
	o => \xin[2]~input_o\);

-- Location: LABCELL_X85_Y11_N0
\xin_phase1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase1[2]~feeder_combout\ = ( \xin[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[2]~input_o\,
	combout => \xin_phase1[2]~feeder_combout\);

-- Location: FF_X85_Y11_N1
\xin_phase1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase1[2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(2));

-- Location: LABCELL_X85_Y8_N51
\phase1_gen|xin_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xin_reg[2]~feeder_combout\ = ( xin_phase1(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase1(2),
	combout => \phase1_gen|xin_reg[2]~feeder_combout\);

-- Location: FF_X85_Y8_N53
\phase1_gen|xin_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|xin_reg[2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(2));

-- Location: MLABCELL_X84_Y8_N33
\phase1_gen|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~5_sumout\ = SUM(( !\phase1_gen|xin_reg\(2) ) + ( GND ) + ( \phase1_gen|Add2~2\ ))
-- \phase1_gen|Add2~6\ = CARRY(( !\phase1_gen|xin_reg\(2) ) + ( GND ) + ( \phase1_gen|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(2),
	cin => \phase1_gen|Add2~2\,
	sumout => \phase1_gen|Add2~5_sumout\,
	cout => \phase1_gen|Add2~6\);

-- Location: FF_X84_Y8_N34
\phase1_gen|w1_n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(2));

-- Location: MLABCELL_X82_Y10_N51
\phase1_gen|mul_out[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[0][2]~feeder_combout\ = ( \phase1_gen|w1_n\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w1_n\(2),
	combout => \phase1_gen|mul_out[0][2]~feeder_combout\);

-- Location: FF_X82_Y10_N53
\phase1_gen|mul_out[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[0][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][2]~q\);

-- Location: LABCELL_X85_Y8_N3
\phase1_gen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~5_sumout\ = SUM(( \phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add0~2\ ))
-- \phase1_gen|Add0~6\ = CARRY(( \phase1_gen|xin_reg\(0) ) + ( !\phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(2),
	datad => \phase1_gen|ALT_INV_xin_reg\(0),
	cin => \phase1_gen|Add0~2\,
	sumout => \phase1_gen|Add0~5_sumout\,
	cout => \phase1_gen|Add0~6\);

-- Location: FF_X85_Y8_N5
\phase1_gen|w3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(2));

-- Location: LABCELL_X83_Y9_N6
\phase1_gen|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~9_sumout\ = SUM(( !\phase1_gen|w3\(2) ) + ( GND ) + ( \phase1_gen|Add3~6\ ))
-- \phase1_gen|Add3~10\ = CARRY(( !\phase1_gen|w3\(2) ) + ( GND ) + ( \phase1_gen|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(2),
	cin => \phase1_gen|Add3~6\,
	sumout => \phase1_gen|Add3~9_sumout\,
	cout => \phase1_gen|Add3~10\);

-- Location: FF_X83_Y9_N8
\phase1_gen|mul_out[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][2]~q\);

-- Location: FF_X83_Y11_N56
\phase1_gen|mul_out[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w3\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][2]~q\);

-- Location: LABCELL_X85_Y11_N21
\phase1_gen|shift_reg[8][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][2]~feeder_combout\ = ( \phase1_gen|mul_out[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][2]~q\,
	combout => \phase1_gen|shift_reg[8][2]~feeder_combout\);

-- Location: FF_X85_Y11_N23
\phase1_gen|shift_reg[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][2]~q\);

-- Location: MLABCELL_X84_Y11_N6
\phase1_gen|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~9_sumout\ = SUM(( \phase1_gen|shift_reg[8][2]~q\ ) + ( \phase1_gen|mul_out[1][2]~q\ ) + ( \phase1_gen|Add11~6\ ))
-- \phase1_gen|Add11~10\ = CARRY(( \phase1_gen|shift_reg[8][2]~q\ ) + ( \phase1_gen|mul_out[1][2]~q\ ) + ( \phase1_gen|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][2]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[8][2]~q\,
	cin => \phase1_gen|Add11~6\,
	sumout => \phase1_gen|Add11~9_sumout\,
	cout => \phase1_gen|Add11~10\);

-- Location: FF_X84_Y11_N7
\phase1_gen|shift_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][2]~q\);

-- Location: LABCELL_X85_Y9_N6
\phase1_gen|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~9_sumout\ = SUM(( \phase1_gen|shift_reg[7][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add10~6\ ))
-- \phase1_gen|Add10~10\ = CARRY(( \phase1_gen|shift_reg[7][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][2]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][2]~q\,
	cin => \phase1_gen|Add10~6\,
	sumout => \phase1_gen|Add10~9_sumout\,
	cout => \phase1_gen|Add10~10\);

-- Location: FF_X85_Y9_N8
\phase1_gen|shift_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][2]~q\);

-- Location: MLABCELL_X84_Y9_N6
\phase1_gen|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~9_sumout\ = SUM(( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|shift_reg[6][2]~q\ ) + ( \phase1_gen|Add9~6\ ))
-- \phase1_gen|Add9~10\ = CARRY(( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|shift_reg[6][2]~q\ ) + ( \phase1_gen|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[6][2]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][2]~q\,
	cin => \phase1_gen|Add9~6\,
	sumout => \phase1_gen|Add9~9_sumout\,
	cout => \phase1_gen|Add9~10\);

-- Location: FF_X84_Y9_N8
\phase1_gen|shift_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][2]~q\);

-- Location: LABCELL_X83_Y11_N0
\phase1_gen|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~1_sumout\ = SUM(( \phase1_gen|shift_reg[5][2]~q\ ) + ( \phase1_gen|mul_out[0][0]~q\ ) + ( !VCC ))
-- \phase1_gen|Add8~2\ = CARRY(( \phase1_gen|shift_reg[5][2]~q\ ) + ( \phase1_gen|mul_out[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[0][0]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][2]~q\,
	cin => GND,
	sumout => \phase1_gen|Add8~1_sumout\,
	cout => \phase1_gen|Add8~2\);

-- Location: LABCELL_X85_Y11_N45
\phase1_gen|shift_reg[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[4][2]~feeder_combout\ = ( \phase1_gen|Add8~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add8~1_sumout\,
	combout => \phase1_gen|shift_reg[4][2]~feeder_combout\);

-- Location: FF_X85_Y11_N46
\phase1_gen|shift_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[4][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][2]~q\);

-- Location: MLABCELL_X82_Y11_N0
\phase1_gen|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~1_sumout\ = SUM(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[4][2]~q\ ) + ( !VCC ))
-- \phase1_gen|Add7~2\ = CARRY(( \phase1_gen|mul_out[0][0]~q\ ) + ( \phase1_gen|shift_reg[4][2]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[4][2]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][0]~q\,
	cin => GND,
	sumout => \phase1_gen|Add7~1_sumout\,
	cout => \phase1_gen|Add7~2\);

-- Location: FF_X82_Y11_N1
\phase1_gen|shift_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][2]~q\);

-- Location: MLABCELL_X82_Y9_N6
\phase1_gen|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~9_sumout\ = SUM(( \phase1_gen|shift_reg[3][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add6~6\ ))
-- \phase1_gen|Add6~10\ = CARRY(( \phase1_gen|shift_reg[3][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][2]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][2]~q\,
	cin => \phase1_gen|Add6~6\,
	sumout => \phase1_gen|Add6~9_sumout\,
	cout => \phase1_gen|Add6~10\);

-- Location: FF_X82_Y9_N8
\phase1_gen|shift_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][2]~q\);

-- Location: LABCELL_X81_Y9_N6
\phase1_gen|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~9_sumout\ = SUM(( \phase1_gen|shift_reg[2][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add5~6\ ))
-- \phase1_gen|Add5~10\ = CARRY(( \phase1_gen|shift_reg[2][2]~q\ ) + ( \phase1_gen|mul_out[2][2]~q\ ) + ( \phase1_gen|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][2]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][2]~q\,
	cin => \phase1_gen|Add5~6\,
	sumout => \phase1_gen|Add5~9_sumout\,
	cout => \phase1_gen|Add5~10\);

-- Location: FF_X81_Y9_N7
\phase1_gen|shift_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][2]~q\);

-- Location: MLABCELL_X82_Y10_N6
\phase1_gen|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~9_sumout\ = SUM(( \phase1_gen|mul_out[1][2]~q\ ) + ( \phase1_gen|shift_reg[1][2]~q\ ) + ( \phase1_gen|Add4~6\ ))
-- \phase1_gen|Add4~10\ = CARRY(( \phase1_gen|mul_out[1][2]~q\ ) + ( \phase1_gen|shift_reg[1][2]~q\ ) + ( \phase1_gen|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][2]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][2]~q\,
	cin => \phase1_gen|Add4~6\,
	sumout => \phase1_gen|Add4~9_sumout\,
	cout => \phase1_gen|Add4~10\);

-- Location: FF_X82_Y10_N7
\phase1_gen|shift_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][2]~q\);

-- Location: LABCELL_X83_Y10_N6
\phase1_gen|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~9_sumout\ = SUM(( \phase1_gen|shift_reg[0][2]~q\ ) + ( \phase1_gen|mul_out[0][2]~q\ ) + ( \phase1_gen|Add13~6\ ))
-- \phase1_gen|Add13~10\ = CARRY(( \phase1_gen|shift_reg[0][2]~q\ ) + ( \phase1_gen|mul_out[0][2]~q\ ) + ( \phase1_gen|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[0][2]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[0][2]~q\,
	cin => \phase1_gen|Add13~6\,
	sumout => \phase1_gen|Add13~9_sumout\,
	cout => \phase1_gen|Add13~10\);

-- Location: FF_X83_Y10_N7
\phase1_gen|xout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(2));

-- Location: MLABCELL_X84_Y12_N0
\xin_phase0[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[2]~feeder_combout\ = ( \xin[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[2]~input_o\,
	combout => \xin_phase0[2]~feeder_combout\);

-- Location: FF_X84_Y12_N2
\xin_phase0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(2));

-- Location: FF_X84_Y12_N23
\phase0_gen|xin_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(2));

-- Location: MLABCELL_X84_Y12_N33
\phase0_gen|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~5_sumout\ = SUM(( !\phase0_gen|xin_reg\(2) ) + ( GND ) + ( \phase0_gen|Add1~2\ ))
-- \phase0_gen|Add1~6\ = CARRY(( !\phase0_gen|xin_reg\(2) ) + ( GND ) + ( \phase0_gen|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(2),
	cin => \phase0_gen|Add1~2\,
	sumout => \phase0_gen|Add1~5_sumout\,
	cout => \phase0_gen|Add1~6\);

-- Location: FF_X84_Y12_N35
\phase0_gen|w1_n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(2));

-- Location: FF_X88_Y12_N20
\phase0_gen|mul_out[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w1_n\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][2]~q\);

-- Location: LABCELL_X85_Y12_N3
\phase0_gen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~5_sumout\ = SUM(( !\phase0_gen|xin_reg\(2) ) + ( GND ) + ( \phase0_gen|Add0~2\ ))
-- \phase0_gen|Add0~6\ = CARRY(( !\phase0_gen|xin_reg\(2) ) + ( GND ) + ( \phase0_gen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(2),
	cin => \phase0_gen|Add0~2\,
	sumout => \phase0_gen|Add0~5_sumout\,
	cout => \phase0_gen|Add0~6\);

-- Location: FF_X85_Y12_N4
\phase0_gen|w15[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(2));

-- Location: FF_X88_Y10_N53
\phase0_gen|mul_out[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w15\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][2]~q\);

-- Location: LABCELL_X88_Y12_N24
\phase0_gen|shift_reg[9][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[9][2]~feeder_combout\ = \phase0_gen|mul_out[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][2]~q\,
	combout => \phase0_gen|shift_reg[9][2]~feeder_combout\);

-- Location: FF_X88_Y12_N25
\phase0_gen|shift_reg[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[9][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][2]~q\);

-- Location: LABCELL_X88_Y11_N36
\phase0_gen|shift_reg[8][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][2]~feeder_combout\ = ( \phase0_gen|shift_reg[9][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][2]~q\,
	combout => \phase0_gen|shift_reg[8][2]~feeder_combout\);

-- Location: FF_X88_Y11_N38
\phase0_gen|shift_reg[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][2]~q\);

-- Location: FF_X85_Y10_N49
\phase0_gen|w2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(2));

-- Location: FF_X87_Y11_N2
\phase0_gen|mul_out[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][2]~q\);

-- Location: MLABCELL_X87_Y11_N33
\phase0_gen|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~5_sumout\ = SUM(( \phase0_gen|mul_out[2][2]~q\ ) + ( \phase0_gen|shift_reg[8][2]~q\ ) + ( \phase0_gen|Add11~2\ ))
-- \phase0_gen|Add11~6\ = CARRY(( \phase0_gen|mul_out[2][2]~q\ ) + ( \phase0_gen|shift_reg[8][2]~q\ ) + ( \phase0_gen|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[8][2]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][2]~q\,
	cin => \phase0_gen|Add11~2\,
	sumout => \phase0_gen|Add11~5_sumout\,
	cout => \phase0_gen|Add11~6\);

-- Location: FF_X87_Y11_N35
\phase0_gen|shift_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][2]~q\);

-- Location: LABCELL_X88_Y9_N57
\phase0_gen|shift_reg[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[6][2]~feeder_combout\ = ( \phase0_gen|shift_reg[7][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[7][2]~q\,
	combout => \phase0_gen|shift_reg[6][2]~feeder_combout\);

-- Location: FF_X88_Y9_N59
\phase0_gen|shift_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[6][2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][2]~q\);

-- Location: LABCELL_X88_Y9_N6
\phase0_gen|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~9_sumout\ = SUM(( \phase0_gen|shift_reg[6][2]~q\ ) + ( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|Add9~6\ ))
-- \phase0_gen|Add9~10\ = CARRY(( \phase0_gen|shift_reg[6][2]~q\ ) + ( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][2]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[6][2]~q\,
	cin => \phase0_gen|Add9~6\,
	sumout => \phase0_gen|Add9~9_sumout\,
	cout => \phase0_gen|Add9~10\);

-- Location: FF_X88_Y9_N8
\phase0_gen|shift_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][2]~q\);

-- Location: MLABCELL_X87_Y10_N3
\phase0_gen|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~5_sumout\ = SUM(( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|shift_reg[5][2]~q\ ) + ( \phase0_gen|Add8~2\ ))
-- \phase0_gen|Add8~6\ = CARRY(( \phase0_gen|mul_out[4][1]~q\ ) + ( \phase0_gen|shift_reg[5][2]~q\ ) + ( \phase0_gen|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[4][1]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[5][2]~q\,
	cin => \phase0_gen|Add8~2\,
	sumout => \phase0_gen|Add8~5_sumout\,
	cout => \phase0_gen|Add8~6\);

-- Location: FF_X87_Y10_N4
\phase0_gen|shift_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][2]~q\);

-- Location: LABCELL_X88_Y10_N6
\phase0_gen|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~9_sumout\ = SUM(( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|shift_reg[4][2]~q\ ) + ( \phase0_gen|Add7~6\ ))
-- \phase0_gen|Add7~10\ = CARRY(( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|shift_reg[4][2]~q\ ) + ( \phase0_gen|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[4][2]~q\,
	datac => \phase0_gen|ALT_INV_mul_out[4][2]~q\,
	cin => \phase0_gen|Add7~6\,
	sumout => \phase0_gen|Add7~9_sumout\,
	cout => \phase0_gen|Add7~10\);

-- Location: FF_X88_Y10_N7
\phase0_gen|shift_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][2]~q\);

-- Location: FF_X87_Y13_N56
\phase0_gen|shift_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[3][2]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][2]~q\);

-- Location: MLABCELL_X87_Y13_N3
\phase0_gen|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~5_sumout\ = SUM(( \phase0_gen|mul_out[2][2]~q\ ) + ( \phase0_gen|shift_reg[2][2]~q\ ) + ( \phase0_gen|Add5~2\ ))
-- \phase0_gen|Add5~6\ = CARRY(( \phase0_gen|mul_out[2][2]~q\ ) + ( \phase0_gen|shift_reg[2][2]~q\ ) + ( \phase0_gen|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[2][2]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][2]~q\,
	cin => \phase0_gen|Add5~2\,
	sumout => \phase0_gen|Add5~5_sumout\,
	cout => \phase0_gen|Add5~6\);

-- Location: FF_X87_Y13_N4
\phase0_gen|shift_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][2]~q\);

-- Location: FF_X88_Y12_N38
\phase0_gen|shift_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][2]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][2]~q\);

-- Location: MLABCELL_X87_Y12_N6
\phase0_gen|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~9_sumout\ = SUM(( \phase0_gen|shift_reg[0][2]~q\ ) + ( \phase0_gen|mul_out[0][2]~q\ ) + ( \phase0_gen|Add13~6\ ))
-- \phase0_gen|Add13~10\ = CARRY(( \phase0_gen|shift_reg[0][2]~q\ ) + ( \phase0_gen|mul_out[0][2]~q\ ) + ( \phase0_gen|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][2]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][2]~q\,
	cin => \phase0_gen|Add13~6\,
	sumout => \phase0_gen|Add13~9_sumout\,
	cout => \phase0_gen|Add13~10\);

-- Location: FF_X87_Y12_N8
\phase0_gen|xout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(2));

-- Location: MLABCELL_X84_Y10_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \phase0_gen|xout\(2) ) + ( \phase1_gen|xout\(2) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \phase0_gen|xout\(2) ) + ( \phase1_gen|xout\(2) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(2),
	datad => \phase0_gen|ALT_INV_xout\(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X84_Y10_N8
\xout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[2]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N38
\xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(3),
	o => \xin[3]~input_o\);

-- Location: MLABCELL_X87_Y8_N48
\xin_phase1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase1[3]~feeder_combout\ = ( \xin[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[3]~input_o\,
	combout => \xin_phase1[3]~feeder_combout\);

-- Location: FF_X87_Y8_N49
\xin_phase1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase1[3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(3));

-- Location: MLABCELL_X84_Y8_N9
\phase1_gen|xin_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xin_reg[3]~feeder_combout\ = ( xin_phase1(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase1(3),
	combout => \phase1_gen|xin_reg[3]~feeder_combout\);

-- Location: FF_X84_Y8_N10
\phase1_gen|xin_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|xin_reg[3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(3));

-- Location: LABCELL_X85_Y8_N6
\phase1_gen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~9_sumout\ = SUM(( \phase1_gen|xin_reg\(1) ) + ( !\phase1_gen|xin_reg\(3) ) + ( \phase1_gen|Add0~6\ ))
-- \phase1_gen|Add0~10\ = CARRY(( \phase1_gen|xin_reg\(1) ) + ( !\phase1_gen|xin_reg\(3) ) + ( \phase1_gen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(3),
	datad => \phase1_gen|ALT_INV_xin_reg\(1),
	cin => \phase1_gen|Add0~6\,
	sumout => \phase1_gen|Add0~9_sumout\,
	cout => \phase1_gen|Add0~10\);

-- Location: FF_X85_Y8_N7
\phase1_gen|w3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(3));

-- Location: LABCELL_X83_Y9_N9
\phase1_gen|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~13_sumout\ = SUM(( !\phase1_gen|w3\(3) ) + ( GND ) + ( \phase1_gen|Add3~10\ ))
-- \phase1_gen|Add3~14\ = CARRY(( !\phase1_gen|w3\(3) ) + ( GND ) + ( \phase1_gen|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(3),
	cin => \phase1_gen|Add3~10\,
	sumout => \phase1_gen|Add3~13_sumout\,
	cout => \phase1_gen|Add3~14\);

-- Location: FF_X83_Y9_N11
\phase1_gen|mul_out[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][3]~q\);

-- Location: FF_X83_Y8_N37
\phase1_gen|w9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|xin_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(1));

-- Location: LABCELL_X83_Y11_N45
\phase1_gen|mul_out[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][3]~feeder_combout\ = ( \phase1_gen|w9\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(1),
	combout => \phase1_gen|mul_out[4][3]~feeder_combout\);

-- Location: FF_X83_Y11_N47
\phase1_gen|mul_out[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][3]~q\);

-- Location: LABCELL_X81_Y11_N12
\phase1_gen|mul_out[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][3]~feeder_combout\ = ( \phase1_gen|w3\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(3),
	combout => \phase1_gen|mul_out[1][3]~feeder_combout\);

-- Location: FF_X81_Y11_N14
\phase1_gen|mul_out[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][3]~q\);

-- Location: MLABCELL_X84_Y8_N36
\phase1_gen|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~9_sumout\ = SUM(( !\phase1_gen|xin_reg\(3) ) + ( GND ) + ( \phase1_gen|Add2~6\ ))
-- \phase1_gen|Add2~10\ = CARRY(( !\phase1_gen|xin_reg\(3) ) + ( GND ) + ( \phase1_gen|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(3),
	cin => \phase1_gen|Add2~6\,
	sumout => \phase1_gen|Add2~9_sumout\,
	cout => \phase1_gen|Add2~10\);

-- Location: FF_X84_Y8_N37
\phase1_gen|w1_n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(3));

-- Location: MLABCELL_X82_Y10_N57
\phase1_gen|mul_out[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[0][3]~feeder_combout\ = ( \phase1_gen|w1_n\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w1_n\(3),
	combout => \phase1_gen|mul_out[0][3]~feeder_combout\);

-- Location: FF_X82_Y10_N59
\phase1_gen|mul_out[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[0][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][3]~q\);

-- Location: FF_X84_Y11_N47
\phase1_gen|shift_reg[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|mul_out[0][3]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][3]~q\);

-- Location: MLABCELL_X84_Y11_N9
\phase1_gen|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~13_sumout\ = SUM(( \phase1_gen|shift_reg[8][3]~q\ ) + ( \phase1_gen|mul_out[1][3]~q\ ) + ( \phase1_gen|Add11~10\ ))
-- \phase1_gen|Add11~14\ = CARRY(( \phase1_gen|shift_reg[8][3]~q\ ) + ( \phase1_gen|mul_out[1][3]~q\ ) + ( \phase1_gen|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][3]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[8][3]~q\,
	cin => \phase1_gen|Add11~10\,
	sumout => \phase1_gen|Add11~13_sumout\,
	cout => \phase1_gen|Add11~14\);

-- Location: FF_X84_Y11_N10
\phase1_gen|shift_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][3]~q\);

-- Location: LABCELL_X85_Y9_N9
\phase1_gen|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~13_sumout\ = SUM(( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|shift_reg[7][3]~q\ ) + ( \phase1_gen|Add10~10\ ))
-- \phase1_gen|Add10~14\ = CARRY(( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|shift_reg[7][3]~q\ ) + ( \phase1_gen|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][3]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[7][3]~q\,
	cin => \phase1_gen|Add10~10\,
	sumout => \phase1_gen|Add10~13_sumout\,
	cout => \phase1_gen|Add10~14\);

-- Location: FF_X85_Y9_N10
\phase1_gen|shift_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][3]~q\);

-- Location: MLABCELL_X84_Y9_N9
\phase1_gen|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~13_sumout\ = SUM(( \phase1_gen|shift_reg[6][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add9~10\ ))
-- \phase1_gen|Add9~14\ = CARRY(( \phase1_gen|shift_reg[6][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][3]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][3]~q\,
	cin => \phase1_gen|Add9~10\,
	sumout => \phase1_gen|Add9~13_sumout\,
	cout => \phase1_gen|Add9~14\);

-- Location: FF_X84_Y9_N10
\phase1_gen|shift_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][3]~q\);

-- Location: LABCELL_X83_Y11_N3
\phase1_gen|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~5_sumout\ = SUM(( \phase1_gen|shift_reg[5][3]~q\ ) + ( \phase1_gen|mul_out[4][3]~q\ ) + ( \phase1_gen|Add8~2\ ))
-- \phase1_gen|Add8~6\ = CARRY(( \phase1_gen|shift_reg[5][3]~q\ ) + ( \phase1_gen|mul_out[4][3]~q\ ) + ( \phase1_gen|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][3]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][3]~q\,
	cin => \phase1_gen|Add8~2\,
	sumout => \phase1_gen|Add8~5_sumout\,
	cout => \phase1_gen|Add8~6\);

-- Location: FF_X83_Y11_N4
\phase1_gen|shift_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][3]~q\);

-- Location: MLABCELL_X82_Y11_N3
\phase1_gen|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~5_sumout\ = SUM(( \phase1_gen|mul_out[4][3]~q\ ) + ( \phase1_gen|shift_reg[4][3]~q\ ) + ( \phase1_gen|Add7~2\ ))
-- \phase1_gen|Add7~6\ = CARRY(( \phase1_gen|mul_out[4][3]~q\ ) + ( \phase1_gen|shift_reg[4][3]~q\ ) + ( \phase1_gen|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][3]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[4][3]~q\,
	cin => \phase1_gen|Add7~2\,
	sumout => \phase1_gen|Add7~5_sumout\,
	cout => \phase1_gen|Add7~6\);

-- Location: FF_X82_Y11_N5
\phase1_gen|shift_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][3]~q\);

-- Location: MLABCELL_X82_Y9_N9
\phase1_gen|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~13_sumout\ = SUM(( \phase1_gen|shift_reg[3][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add6~10\ ))
-- \phase1_gen|Add6~14\ = CARRY(( \phase1_gen|shift_reg[3][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[2][3]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][3]~q\,
	cin => \phase1_gen|Add6~10\,
	sumout => \phase1_gen|Add6~13_sumout\,
	cout => \phase1_gen|Add6~14\);

-- Location: FF_X82_Y9_N11
\phase1_gen|shift_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][3]~q\);

-- Location: LABCELL_X81_Y9_N9
\phase1_gen|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~13_sumout\ = SUM(( \phase1_gen|shift_reg[2][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add5~10\ ))
-- \phase1_gen|Add5~14\ = CARRY(( \phase1_gen|shift_reg[2][3]~q\ ) + ( \phase1_gen|mul_out[2][3]~q\ ) + ( \phase1_gen|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][3]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][3]~q\,
	cin => \phase1_gen|Add5~10\,
	sumout => \phase1_gen|Add5~13_sumout\,
	cout => \phase1_gen|Add5~14\);

-- Location: FF_X81_Y9_N11
\phase1_gen|shift_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][3]~q\);

-- Location: MLABCELL_X82_Y10_N9
\phase1_gen|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~13_sumout\ = SUM(( \phase1_gen|mul_out[1][3]~q\ ) + ( \phase1_gen|shift_reg[1][3]~q\ ) + ( \phase1_gen|Add4~10\ ))
-- \phase1_gen|Add4~14\ = CARRY(( \phase1_gen|mul_out[1][3]~q\ ) + ( \phase1_gen|shift_reg[1][3]~q\ ) + ( \phase1_gen|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][3]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][3]~q\,
	cin => \phase1_gen|Add4~10\,
	sumout => \phase1_gen|Add4~13_sumout\,
	cout => \phase1_gen|Add4~14\);

-- Location: FF_X82_Y10_N10
\phase1_gen|shift_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][3]~q\);

-- Location: LABCELL_X83_Y10_N9
\phase1_gen|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~13_sumout\ = SUM(( \phase1_gen|mul_out[0][3]~q\ ) + ( \phase1_gen|shift_reg[0][3]~q\ ) + ( \phase1_gen|Add13~10\ ))
-- \phase1_gen|Add13~14\ = CARRY(( \phase1_gen|mul_out[0][3]~q\ ) + ( \phase1_gen|shift_reg[0][3]~q\ ) + ( \phase1_gen|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][3]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][3]~q\,
	cin => \phase1_gen|Add13~10\,
	sumout => \phase1_gen|Add13~13_sumout\,
	cout => \phase1_gen|Add13~14\);

-- Location: FF_X83_Y10_N10
\phase1_gen|xout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(3));

-- Location: LABCELL_X88_Y11_N0
\phase0_gen|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~1_sumout\ = SUM(( !\phase0_gen|w2[1]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \phase0_gen|Add2~2\ = CARRY(( !\phase0_gen|w2[1]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_w2[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \phase0_gen|Add2~1_sumout\,
	cout => \phase0_gen|Add2~2\);

-- Location: MLABCELL_X87_Y9_N42
\phase0_gen|mul_out[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[3][3]~feeder_combout\ = ( \phase0_gen|Add2~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_Add2~1_sumout\,
	combout => \phase0_gen|mul_out[3][3]~feeder_combout\);

-- Location: FF_X87_Y9_N44
\phase0_gen|mul_out[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[3][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][3]~q\);

-- Location: FF_X85_Y12_N43
\phase0_gen|w2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(3));

-- Location: FF_X87_Y11_N20
\phase0_gen|mul_out[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2\(3),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][3]~q\);

-- Location: MLABCELL_X84_Y12_N57
\xin_phase0[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[3]~feeder_combout\ = ( \xin[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[3]~input_o\,
	combout => \xin_phase0[3]~feeder_combout\);

-- Location: FF_X84_Y12_N59
\xin_phase0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(3));

-- Location: FF_X84_Y12_N26
\phase0_gen|xin_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(3),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(3));

-- Location: MLABCELL_X84_Y12_N36
\phase0_gen|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~9_sumout\ = SUM(( !\phase0_gen|xin_reg\(3) ) + ( GND ) + ( \phase0_gen|Add1~6\ ))
-- \phase0_gen|Add1~10\ = CARRY(( !\phase0_gen|xin_reg\(3) ) + ( GND ) + ( \phase0_gen|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(3),
	cin => \phase0_gen|Add1~6\,
	sumout => \phase0_gen|Add1~9_sumout\,
	cout => \phase0_gen|Add1~10\);

-- Location: FF_X84_Y12_N37
\phase0_gen|w1_n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(3));

-- Location: FF_X88_Y12_N11
\phase0_gen|mul_out[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w1_n\(3),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][3]~q\);

-- Location: FF_X88_Y12_N7
\phase0_gen|shift_reg[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|mul_out[0][3]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][3]~q\);

-- Location: LABCELL_X88_Y11_N33
\phase0_gen|shift_reg[8][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][3]~feeder_combout\ = ( \phase0_gen|shift_reg[9][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][3]~q\,
	combout => \phase0_gen|shift_reg[8][3]~feeder_combout\);

-- Location: FF_X88_Y11_N35
\phase0_gen|shift_reg[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][3]~q\);

-- Location: MLABCELL_X87_Y11_N36
\phase0_gen|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~9_sumout\ = SUM(( \phase0_gen|shift_reg[8][3]~q\ ) + ( \phase0_gen|mul_out[2][3]~q\ ) + ( \phase0_gen|Add11~6\ ))
-- \phase0_gen|Add11~10\ = CARRY(( \phase0_gen|shift_reg[8][3]~q\ ) + ( \phase0_gen|mul_out[2][3]~q\ ) + ( \phase0_gen|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[2][3]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[8][3]~q\,
	cin => \phase0_gen|Add11~6\,
	sumout => \phase0_gen|Add11~9_sumout\,
	cout => \phase0_gen|Add11~10\);

-- Location: FF_X87_Y11_N37
\phase0_gen|shift_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][3]~q\);

-- Location: MLABCELL_X87_Y9_N0
\phase0_gen|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~1_sumout\ = SUM(( \phase0_gen|shift_reg[7][3]~q\ ) + ( \phase0_gen|mul_out[3][3]~q\ ) + ( !VCC ))
-- \phase0_gen|Add10~2\ = CARRY(( \phase0_gen|shift_reg[7][3]~q\ ) + ( \phase0_gen|mul_out[3][3]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_mul_out[3][3]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[7][3]~q\,
	cin => GND,
	sumout => \phase0_gen|Add10~1_sumout\,
	cout => \phase0_gen|Add10~2\);

-- Location: FF_X87_Y9_N1
\phase0_gen|shift_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][3]~q\);

-- Location: LABCELL_X85_Y12_N6
\phase0_gen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~9_sumout\ = SUM(( !\phase0_gen|xin_reg\(3) ) + ( GND ) + ( \phase0_gen|Add0~6\ ))
-- \phase0_gen|Add0~10\ = CARRY(( !\phase0_gen|xin_reg\(3) ) + ( GND ) + ( \phase0_gen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(3),
	cin => \phase0_gen|Add0~6\,
	sumout => \phase0_gen|Add0~9_sumout\,
	cout => \phase0_gen|Add0~10\);

-- Location: FF_X85_Y12_N7
\phase0_gen|w15[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(3));

-- Location: MLABCELL_X87_Y9_N57
\phase0_gen|mul_out[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][3]~feeder_combout\ = ( \phase0_gen|w15\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(3),
	combout => \phase0_gen|mul_out[4][3]~feeder_combout\);

-- Location: FF_X87_Y9_N59
\phase0_gen|mul_out[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][3]~q\);

-- Location: LABCELL_X88_Y9_N9
\phase0_gen|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~13_sumout\ = SUM(( \phase0_gen|mul_out[4][3]~q\ ) + ( \phase0_gen|shift_reg[6][3]~q\ ) + ( \phase0_gen|Add9~10\ ))
-- \phase0_gen|Add9~14\ = CARRY(( \phase0_gen|mul_out[4][3]~q\ ) + ( \phase0_gen|shift_reg[6][3]~q\ ) + ( \phase0_gen|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[6][3]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][3]~q\,
	cin => \phase0_gen|Add9~10\,
	sumout => \phase0_gen|Add9~13_sumout\,
	cout => \phase0_gen|Add9~14\);

-- Location: FF_X88_Y9_N10
\phase0_gen|shift_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][3]~q\);

-- Location: MLABCELL_X87_Y10_N6
\phase0_gen|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~9_sumout\ = SUM(( \phase0_gen|shift_reg[5][3]~q\ ) + ( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|Add8~6\ ))
-- \phase0_gen|Add8~10\ = CARRY(( \phase0_gen|shift_reg[5][3]~q\ ) + ( \phase0_gen|mul_out[4][2]~q\ ) + ( \phase0_gen|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][2]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][3]~q\,
	cin => \phase0_gen|Add8~6\,
	sumout => \phase0_gen|Add8~9_sumout\,
	cout => \phase0_gen|Add8~10\);

-- Location: FF_X87_Y10_N7
\phase0_gen|shift_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][3]~q\);

-- Location: LABCELL_X88_Y10_N9
\phase0_gen|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~13_sumout\ = SUM(( \phase0_gen|mul_out[4][3]~q\ ) + ( \phase0_gen|shift_reg[4][3]~q\ ) + ( \phase0_gen|Add7~10\ ))
-- \phase0_gen|Add7~14\ = CARRY(( \phase0_gen|mul_out[4][3]~q\ ) + ( \phase0_gen|shift_reg[4][3]~q\ ) + ( \phase0_gen|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[4][3]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][3]~q\,
	cin => \phase0_gen|Add7~10\,
	sumout => \phase0_gen|Add7~13_sumout\,
	cout => \phase0_gen|Add7~14\);

-- Location: FF_X88_Y10_N11
\phase0_gen|shift_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][3]~q\);

-- Location: LABCELL_X88_Y13_N0
\phase0_gen|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~1_sumout\ = SUM(( \phase0_gen|shift_reg[3][3]~q\ ) + ( \phase0_gen|mul_out[3][3]~q\ ) + ( !VCC ))
-- \phase0_gen|Add6~2\ = CARRY(( \phase0_gen|shift_reg[3][3]~q\ ) + ( \phase0_gen|mul_out[3][3]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][3]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[3][3]~q\,
	cin => GND,
	sumout => \phase0_gen|Add6~1_sumout\,
	cout => \phase0_gen|Add6~2\);

-- Location: FF_X88_Y13_N2
\phase0_gen|shift_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][3]~q\);

-- Location: MLABCELL_X87_Y13_N6
\phase0_gen|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~9_sumout\ = SUM(( \phase0_gen|mul_out[2][3]~q\ ) + ( \phase0_gen|shift_reg[2][3]~q\ ) + ( \phase0_gen|Add5~6\ ))
-- \phase0_gen|Add5~10\ = CARRY(( \phase0_gen|mul_out[2][3]~q\ ) + ( \phase0_gen|shift_reg[2][3]~q\ ) + ( \phase0_gen|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][3]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][3]~q\,
	cin => \phase0_gen|Add5~6\,
	sumout => \phase0_gen|Add5~9_sumout\,
	cout => \phase0_gen|Add5~10\);

-- Location: FF_X87_Y13_N7
\phase0_gen|shift_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][3]~q\);

-- Location: LABCELL_X88_Y12_N51
\phase0_gen|shift_reg[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][3]~feeder_combout\ = ( \phase0_gen|shift_reg[1][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[1][3]~q\,
	combout => \phase0_gen|shift_reg[0][3]~feeder_combout\);

-- Location: FF_X88_Y12_N53
\phase0_gen|shift_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][3]~q\);

-- Location: MLABCELL_X87_Y12_N9
\phase0_gen|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~13_sumout\ = SUM(( \phase0_gen|mul_out[0][3]~q\ ) + ( \phase0_gen|shift_reg[0][3]~q\ ) + ( \phase0_gen|Add13~10\ ))
-- \phase0_gen|Add13~14\ = CARRY(( \phase0_gen|mul_out[0][3]~q\ ) + ( \phase0_gen|shift_reg[0][3]~q\ ) + ( \phase0_gen|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[0][3]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][3]~q\,
	cin => \phase0_gen|Add13~10\,
	sumout => \phase0_gen|Add13~13_sumout\,
	cout => \phase0_gen|Add13~14\);

-- Location: FF_X87_Y12_N10
\phase0_gen|xout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(3));

-- Location: MLABCELL_X84_Y10_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \phase0_gen|xout\(3) ) + ( \phase1_gen|xout\(3) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \phase0_gen|xout\(3) ) + ( \phase1_gen|xout\(3) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xout\(3),
	datac => \phase0_gen|ALT_INV_xout\(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X84_Y10_N10
\xout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[3]~reg0_q\);

-- Location: IOIBUF_X89_Y35_N78
\xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(4),
	o => \xin[4]~input_o\);

-- Location: LABCELL_X85_Y11_N6
\xin_phase1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase1[4]~feeder_combout\ = ( \xin[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[4]~input_o\,
	combout => \xin_phase1[4]~feeder_combout\);

-- Location: FF_X85_Y11_N8
\xin_phase1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase1[4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(4));

-- Location: LABCELL_X85_Y8_N42
\phase1_gen|xin_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xin_reg[4]~feeder_combout\ = ( xin_phase1(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase1(4),
	combout => \phase1_gen|xin_reg[4]~feeder_combout\);

-- Location: FF_X85_Y8_N43
\phase1_gen|xin_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|xin_reg[4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(4));

-- Location: LABCELL_X85_Y8_N9
\phase1_gen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~13_sumout\ = SUM(( !\phase1_gen|xin_reg\(4) ) + ( \phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add0~10\ ))
-- \phase1_gen|Add0~14\ = CARRY(( !\phase1_gen|xin_reg\(4) ) + ( \phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(2),
	datac => \phase1_gen|ALT_INV_xin_reg\(4),
	cin => \phase1_gen|Add0~10\,
	sumout => \phase1_gen|Add0~13_sumout\,
	cout => \phase1_gen|Add0~14\);

-- Location: FF_X85_Y8_N11
\phase1_gen|w3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(4));

-- Location: LABCELL_X83_Y10_N48
\phase1_gen|mul_out[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][4]~feeder_combout\ = ( \phase1_gen|w3\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(4),
	combout => \phase1_gen|mul_out[1][4]~feeder_combout\);

-- Location: FF_X83_Y10_N50
\phase1_gen|mul_out[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][4]~q\);

-- Location: LABCELL_X83_Y9_N12
\phase1_gen|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~17_sumout\ = SUM(( !\phase1_gen|w3\(4) ) + ( GND ) + ( \phase1_gen|Add3~14\ ))
-- \phase1_gen|Add3~18\ = CARRY(( !\phase1_gen|w3\(4) ) + ( GND ) + ( \phase1_gen|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(4),
	cin => \phase1_gen|Add3~14\,
	sumout => \phase1_gen|Add3~17_sumout\,
	cout => \phase1_gen|Add3~18\);

-- Location: FF_X83_Y9_N14
\phase1_gen|mul_out[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][4]~q\);

-- Location: FF_X85_Y8_N37
\phase1_gen|w9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|xin_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(2));

-- Location: FF_X82_Y11_N50
\phase1_gen|mul_out[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w9\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][4]~q\);

-- Location: MLABCELL_X84_Y8_N39
\phase1_gen|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~13_sumout\ = SUM(( !\phase1_gen|xin_reg\(4) ) + ( GND ) + ( \phase1_gen|Add2~10\ ))
-- \phase1_gen|Add2~14\ = CARRY(( !\phase1_gen|xin_reg\(4) ) + ( GND ) + ( \phase1_gen|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_xin_reg\(4),
	cin => \phase1_gen|Add2~10\,
	sumout => \phase1_gen|Add2~13_sumout\,
	cout => \phase1_gen|Add2~14\);

-- Location: FF_X84_Y8_N41
\phase1_gen|w1_n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(4));

-- Location: MLABCELL_X84_Y8_N15
\phase1_gen|mul_out[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[0][4]~feeder_combout\ = \phase1_gen|w1_n\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_w1_n\(4),
	combout => \phase1_gen|mul_out[0][4]~feeder_combout\);

-- Location: FF_X84_Y8_N17
\phase1_gen|mul_out[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[0][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][4]~q\);

-- Location: MLABCELL_X84_Y11_N48
\phase1_gen|shift_reg[8][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][4]~feeder_combout\ = ( \phase1_gen|mul_out[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][4]~q\,
	combout => \phase1_gen|shift_reg[8][4]~feeder_combout\);

-- Location: FF_X84_Y11_N50
\phase1_gen|shift_reg[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][4]~q\);

-- Location: MLABCELL_X84_Y11_N12
\phase1_gen|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~17_sumout\ = SUM(( \phase1_gen|mul_out[1][4]~q\ ) + ( \phase1_gen|shift_reg[8][4]~q\ ) + ( \phase1_gen|Add11~14\ ))
-- \phase1_gen|Add11~18\ = CARRY(( \phase1_gen|mul_out[1][4]~q\ ) + ( \phase1_gen|shift_reg[8][4]~q\ ) + ( \phase1_gen|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[8][4]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][4]~q\,
	cin => \phase1_gen|Add11~14\,
	sumout => \phase1_gen|Add11~17_sumout\,
	cout => \phase1_gen|Add11~18\);

-- Location: FF_X84_Y11_N13
\phase1_gen|shift_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][4]~q\);

-- Location: LABCELL_X85_Y9_N12
\phase1_gen|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~17_sumout\ = SUM(( \phase1_gen|shift_reg[7][4]~q\ ) + ( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|Add10~14\ ))
-- \phase1_gen|Add10~18\ = CARRY(( \phase1_gen|shift_reg[7][4]~q\ ) + ( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][4]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][4]~q\,
	cin => \phase1_gen|Add10~14\,
	sumout => \phase1_gen|Add10~17_sumout\,
	cout => \phase1_gen|Add10~18\);

-- Location: FF_X85_Y9_N14
\phase1_gen|shift_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][4]~q\);

-- Location: MLABCELL_X84_Y9_N12
\phase1_gen|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~17_sumout\ = SUM(( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|shift_reg[6][4]~q\ ) + ( \phase1_gen|Add9~14\ ))
-- \phase1_gen|Add9~18\ = CARRY(( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|shift_reg[6][4]~q\ ) + ( \phase1_gen|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[6][4]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][4]~q\,
	cin => \phase1_gen|Add9~14\,
	sumout => \phase1_gen|Add9~17_sumout\,
	cout => \phase1_gen|Add9~18\);

-- Location: FF_X84_Y9_N14
\phase1_gen|shift_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][4]~q\);

-- Location: LABCELL_X83_Y11_N6
\phase1_gen|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~9_sumout\ = SUM(( \phase1_gen|shift_reg[5][4]~q\ ) + ( \phase1_gen|mul_out[4][4]~q\ ) + ( \phase1_gen|Add8~6\ ))
-- \phase1_gen|Add8~10\ = CARRY(( \phase1_gen|shift_reg[5][4]~q\ ) + ( \phase1_gen|mul_out[4][4]~q\ ) + ( \phase1_gen|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][4]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[5][4]~q\,
	cin => \phase1_gen|Add8~6\,
	sumout => \phase1_gen|Add8~9_sumout\,
	cout => \phase1_gen|Add8~10\);

-- Location: FF_X83_Y11_N7
\phase1_gen|shift_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][4]~q\);

-- Location: MLABCELL_X82_Y11_N6
\phase1_gen|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~9_sumout\ = SUM(( \phase1_gen|shift_reg[4][4]~q\ ) + ( \phase1_gen|mul_out[4][4]~q\ ) + ( \phase1_gen|Add7~6\ ))
-- \phase1_gen|Add7~10\ = CARRY(( \phase1_gen|shift_reg[4][4]~q\ ) + ( \phase1_gen|mul_out[4][4]~q\ ) + ( \phase1_gen|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][4]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][4]~q\,
	cin => \phase1_gen|Add7~6\,
	sumout => \phase1_gen|Add7~9_sumout\,
	cout => \phase1_gen|Add7~10\);

-- Location: FF_X82_Y11_N7
\phase1_gen|shift_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][4]~q\);

-- Location: MLABCELL_X82_Y9_N12
\phase1_gen|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~17_sumout\ = SUM(( \phase1_gen|shift_reg[3][4]~q\ ) + ( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|Add6~14\ ))
-- \phase1_gen|Add6~18\ = CARRY(( \phase1_gen|shift_reg[3][4]~q\ ) + ( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][4]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][4]~q\,
	cin => \phase1_gen|Add6~14\,
	sumout => \phase1_gen|Add6~17_sumout\,
	cout => \phase1_gen|Add6~18\);

-- Location: FF_X82_Y9_N14
\phase1_gen|shift_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][4]~q\);

-- Location: LABCELL_X81_Y9_N12
\phase1_gen|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~17_sumout\ = SUM(( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|shift_reg[2][4]~q\ ) + ( \phase1_gen|Add5~14\ ))
-- \phase1_gen|Add5~18\ = CARRY(( \phase1_gen|mul_out[2][4]~q\ ) + ( \phase1_gen|shift_reg[2][4]~q\ ) + ( \phase1_gen|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[2][4]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][4]~q\,
	cin => \phase1_gen|Add5~14\,
	sumout => \phase1_gen|Add5~17_sumout\,
	cout => \phase1_gen|Add5~18\);

-- Location: FF_X81_Y9_N13
\phase1_gen|shift_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][4]~q\);

-- Location: MLABCELL_X82_Y10_N12
\phase1_gen|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~17_sumout\ = SUM(( \phase1_gen|shift_reg[1][4]~q\ ) + ( \phase1_gen|mul_out[1][4]~q\ ) + ( \phase1_gen|Add4~14\ ))
-- \phase1_gen|Add4~18\ = CARRY(( \phase1_gen|shift_reg[1][4]~q\ ) + ( \phase1_gen|mul_out[1][4]~q\ ) + ( \phase1_gen|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][4]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][4]~q\,
	cin => \phase1_gen|Add4~14\,
	sumout => \phase1_gen|Add4~17_sumout\,
	cout => \phase1_gen|Add4~18\);

-- Location: FF_X82_Y10_N13
\phase1_gen|shift_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][4]~q\);

-- Location: LABCELL_X83_Y10_N12
\phase1_gen|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~17_sumout\ = SUM(( \phase1_gen|mul_out[0][4]~q\ ) + ( \phase1_gen|shift_reg[0][4]~q\ ) + ( \phase1_gen|Add13~14\ ))
-- \phase1_gen|Add13~18\ = CARRY(( \phase1_gen|mul_out[0][4]~q\ ) + ( \phase1_gen|shift_reg[0][4]~q\ ) + ( \phase1_gen|Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][4]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][4]~q\,
	cin => \phase1_gen|Add13~14\,
	sumout => \phase1_gen|Add13~17_sumout\,
	cout => \phase1_gen|Add13~18\);

-- Location: FF_X83_Y10_N14
\phase1_gen|xout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(4));

-- Location: FF_X84_Y12_N10
\phase0_gen|w2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(4));

-- Location: FF_X88_Y11_N56
\phase0_gen|mul_out[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2\(4),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][4]~q\);

-- Location: LABCELL_X88_Y11_N3
\phase0_gen|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~5_sumout\ = SUM(( !\phase0_gen|w2\(2) ) + ( GND ) + ( \phase0_gen|Add2~2\ ))
-- \phase0_gen|Add2~6\ = CARRY(( !\phase0_gen|w2\(2) ) + ( GND ) + ( \phase0_gen|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_w2\(2),
	cin => \phase0_gen|Add2~2\,
	sumout => \phase0_gen|Add2~5_sumout\,
	cout => \phase0_gen|Add2~6\);

-- Location: FF_X88_Y11_N5
\phase0_gen|mul_out[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][4]~q\);

-- Location: MLABCELL_X84_Y12_N3
\xin_phase0[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[4]~feeder_combout\ = ( \xin[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[4]~input_o\,
	combout => \xin_phase0[4]~feeder_combout\);

-- Location: FF_X84_Y12_N5
\xin_phase0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(4));

-- Location: FF_X84_Y12_N17
\phase0_gen|xin_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(4),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(4));

-- Location: MLABCELL_X84_Y12_N39
\phase0_gen|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~13_sumout\ = SUM(( !\phase0_gen|xin_reg\(4) ) + ( GND ) + ( \phase0_gen|Add1~10\ ))
-- \phase0_gen|Add1~14\ = CARRY(( !\phase0_gen|xin_reg\(4) ) + ( GND ) + ( \phase0_gen|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(4),
	cin => \phase0_gen|Add1~10\,
	sumout => \phase0_gen|Add1~13_sumout\,
	cout => \phase0_gen|Add1~14\);

-- Location: FF_X84_Y12_N40
\phase0_gen|w1_n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(4));

-- Location: MLABCELL_X84_Y12_N12
\phase0_gen|mul_out[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][4]~feeder_combout\ = ( \phase0_gen|w1_n\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w1_n\(4),
	combout => \phase0_gen|mul_out[0][4]~feeder_combout\);

-- Location: FF_X84_Y12_N14
\phase0_gen|mul_out[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][4]~q\);

-- Location: LABCELL_X88_Y11_N30
\phase0_gen|shift_reg[9][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[9][4]~feeder_combout\ = ( \phase0_gen|mul_out[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_mul_out[0][4]~q\,
	combout => \phase0_gen|shift_reg[9][4]~feeder_combout\);

-- Location: FF_X88_Y11_N32
\phase0_gen|shift_reg[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[9][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][4]~q\);

-- Location: FF_X88_Y11_N59
\phase0_gen|shift_reg[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[9][4]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][4]~q\);

-- Location: MLABCELL_X87_Y11_N39
\phase0_gen|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~13_sumout\ = SUM(( \phase0_gen|shift_reg[8][4]~q\ ) + ( \phase0_gen|mul_out[2][4]~q\ ) + ( \phase0_gen|Add11~10\ ))
-- \phase0_gen|Add11~14\ = CARRY(( \phase0_gen|shift_reg[8][4]~q\ ) + ( \phase0_gen|mul_out[2][4]~q\ ) + ( \phase0_gen|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][4]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[8][4]~q\,
	cin => \phase0_gen|Add11~10\,
	sumout => \phase0_gen|Add11~13_sumout\,
	cout => \phase0_gen|Add11~14\);

-- Location: FF_X87_Y11_N41
\phase0_gen|shift_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][4]~q\);

-- Location: MLABCELL_X87_Y9_N3
\phase0_gen|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~5_sumout\ = SUM(( \phase0_gen|shift_reg[7][4]~q\ ) + ( \phase0_gen|mul_out[3][4]~q\ ) + ( \phase0_gen|Add10~2\ ))
-- \phase0_gen|Add10~6\ = CARRY(( \phase0_gen|shift_reg[7][4]~q\ ) + ( \phase0_gen|mul_out[3][4]~q\ ) + ( \phase0_gen|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][4]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][4]~q\,
	cin => \phase0_gen|Add10~2\,
	sumout => \phase0_gen|Add10~5_sumout\,
	cout => \phase0_gen|Add10~6\);

-- Location: FF_X87_Y9_N4
\phase0_gen|shift_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][4]~q\);

-- Location: LABCELL_X85_Y12_N9
\phase0_gen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~13_sumout\ = SUM(( \phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(4) ) + ( \phase0_gen|Add0~10\ ))
-- \phase0_gen|Add0~14\ = CARRY(( \phase0_gen|xin_reg\(0) ) + ( !\phase0_gen|xin_reg\(4) ) + ( \phase0_gen|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(4),
	datad => \phase0_gen|ALT_INV_xin_reg\(0),
	cin => \phase0_gen|Add0~10\,
	sumout => \phase0_gen|Add0~13_sumout\,
	cout => \phase0_gen|Add0~14\);

-- Location: FF_X85_Y12_N11
\phase0_gen|w15[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(4));

-- Location: LABCELL_X88_Y10_N54
\phase0_gen|mul_out[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][4]~feeder_combout\ = ( \phase0_gen|w15\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(4),
	combout => \phase0_gen|mul_out[4][4]~feeder_combout\);

-- Location: FF_X88_Y10_N56
\phase0_gen|mul_out[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][4]~q\);

-- Location: LABCELL_X88_Y9_N12
\phase0_gen|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~17_sumout\ = SUM(( \phase0_gen|mul_out[4][4]~q\ ) + ( \phase0_gen|shift_reg[6][4]~q\ ) + ( \phase0_gen|Add9~14\ ))
-- \phase0_gen|Add9~18\ = CARRY(( \phase0_gen|mul_out[4][4]~q\ ) + ( \phase0_gen|shift_reg[6][4]~q\ ) + ( \phase0_gen|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[6][4]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][4]~q\,
	cin => \phase0_gen|Add9~14\,
	sumout => \phase0_gen|Add9~17_sumout\,
	cout => \phase0_gen|Add9~18\);

-- Location: FF_X88_Y9_N14
\phase0_gen|shift_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][4]~q\);

-- Location: FF_X85_Y10_N47
\phase0_gen|w2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(1));

-- Location: LABCELL_X85_Y10_N0
\phase0_gen|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~1_sumout\ = SUM(( \phase0_gen|w2\(1) ) + ( \phase0_gen|w15\(3) ) + ( !VCC ))
-- \phase0_gen|Add3~2\ = CARRY(( \phase0_gen|w2\(1) ) + ( \phase0_gen|w15\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w15\(3),
	datad => \phase0_gen|ALT_INV_w2\(1),
	cin => GND,
	sumout => \phase0_gen|Add3~1_sumout\,
	cout => \phase0_gen|Add3~2\);

-- Location: FF_X85_Y10_N1
\phase0_gen|mul_out[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~1_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][4]~q\);

-- Location: MLABCELL_X87_Y10_N9
\phase0_gen|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~13_sumout\ = SUM(( \phase0_gen|mul_out[5][4]~q\ ) + ( \phase0_gen|shift_reg[5][4]~q\ ) + ( \phase0_gen|Add8~10\ ))
-- \phase0_gen|Add8~14\ = CARRY(( \phase0_gen|mul_out[5][4]~q\ ) + ( \phase0_gen|shift_reg[5][4]~q\ ) + ( \phase0_gen|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][4]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][4]~q\,
	cin => \phase0_gen|Add8~10\,
	sumout => \phase0_gen|Add8~13_sumout\,
	cout => \phase0_gen|Add8~14\);

-- Location: FF_X87_Y10_N10
\phase0_gen|shift_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][4]~q\);

-- Location: LABCELL_X88_Y10_N12
\phase0_gen|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~17_sumout\ = SUM(( \phase0_gen|mul_out[4][4]~q\ ) + ( \phase0_gen|shift_reg[4][4]~q\ ) + ( \phase0_gen|Add7~14\ ))
-- \phase0_gen|Add7~18\ = CARRY(( \phase0_gen|mul_out[4][4]~q\ ) + ( \phase0_gen|shift_reg[4][4]~q\ ) + ( \phase0_gen|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][4]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][4]~q\,
	cin => \phase0_gen|Add7~14\,
	sumout => \phase0_gen|Add7~17_sumout\,
	cout => \phase0_gen|Add7~18\);

-- Location: FF_X88_Y10_N13
\phase0_gen|shift_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][4]~q\);

-- Location: LABCELL_X88_Y13_N3
\phase0_gen|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~5_sumout\ = SUM(( \phase0_gen|shift_reg[3][4]~q\ ) + ( \phase0_gen|mul_out[3][4]~q\ ) + ( \phase0_gen|Add6~2\ ))
-- \phase0_gen|Add6~6\ = CARRY(( \phase0_gen|shift_reg[3][4]~q\ ) + ( \phase0_gen|mul_out[3][4]~q\ ) + ( \phase0_gen|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[3][4]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[3][4]~q\,
	cin => \phase0_gen|Add6~2\,
	sumout => \phase0_gen|Add6~5_sumout\,
	cout => \phase0_gen|Add6~6\);

-- Location: FF_X88_Y13_N5
\phase0_gen|shift_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][4]~q\);

-- Location: MLABCELL_X87_Y13_N9
\phase0_gen|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~13_sumout\ = SUM(( \phase0_gen|shift_reg[2][4]~q\ ) + ( \phase0_gen|mul_out[2][4]~q\ ) + ( \phase0_gen|Add5~10\ ))
-- \phase0_gen|Add5~14\ = CARRY(( \phase0_gen|shift_reg[2][4]~q\ ) + ( \phase0_gen|mul_out[2][4]~q\ ) + ( \phase0_gen|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][4]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[2][4]~q\,
	cin => \phase0_gen|Add5~10\,
	sumout => \phase0_gen|Add5~13_sumout\,
	cout => \phase0_gen|Add5~14\);

-- Location: FF_X87_Y13_N11
\phase0_gen|shift_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][4]~q\);

-- Location: FF_X87_Y12_N50
\phase0_gen|shift_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][4]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][4]~q\);

-- Location: MLABCELL_X87_Y12_N12
\phase0_gen|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~17_sumout\ = SUM(( \phase0_gen|mul_out[0][4]~q\ ) + ( \phase0_gen|shift_reg[0][4]~q\ ) + ( \phase0_gen|Add13~14\ ))
-- \phase0_gen|Add13~18\ = CARRY(( \phase0_gen|mul_out[0][4]~q\ ) + ( \phase0_gen|shift_reg[0][4]~q\ ) + ( \phase0_gen|Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[0][4]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][4]~q\,
	cin => \phase0_gen|Add13~14\,
	sumout => \phase0_gen|Add13~17_sumout\,
	cout => \phase0_gen|Add13~18\);

-- Location: FF_X87_Y12_N14
\phase0_gen|xout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(4));

-- Location: MLABCELL_X84_Y10_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \phase0_gen|xout\(4) ) + ( \phase1_gen|xout\(4) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \phase0_gen|xout\(4) ) + ( \phase1_gen|xout\(4) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(4),
	datad => \phase0_gen|ALT_INV_xout\(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X84_Y10_N13
\xout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[4]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N4
\xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(5),
	o => \xin[5]~input_o\);

-- Location: MLABCELL_X87_Y8_N33
\xin_phase1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase1[5]~feeder_combout\ = ( \xin[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[5]~input_o\,
	combout => \xin_phase1[5]~feeder_combout\);

-- Location: FF_X87_Y8_N35
\xin_phase1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase1[5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(5));

-- Location: FF_X87_Y8_N2
\phase1_gen|xin_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase1(5),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(5));

-- Location: LABCELL_X85_Y8_N12
\phase1_gen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~17_sumout\ = SUM(( !\phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|Add0~14\ ))
-- \phase1_gen|Add0~18\ = CARRY(( !\phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(3),
	datad => \phase1_gen|ALT_INV_xin_reg\(5),
	cin => \phase1_gen|Add0~14\,
	sumout => \phase1_gen|Add0~17_sumout\,
	cout => \phase1_gen|Add0~18\);

-- Location: FF_X85_Y8_N13
\phase1_gen|w3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(5));

-- Location: LABCELL_X83_Y9_N15
\phase1_gen|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~21_sumout\ = SUM(( !\phase1_gen|w3\(5) ) + ( GND ) + ( \phase1_gen|Add3~18\ ))
-- \phase1_gen|Add3~22\ = CARRY(( !\phase1_gen|w3\(5) ) + ( GND ) + ( \phase1_gen|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(5),
	cin => \phase1_gen|Add3~18\,
	sumout => \phase1_gen|Add3~21_sumout\,
	cout => \phase1_gen|Add3~22\);

-- Location: FF_X83_Y9_N17
\phase1_gen|mul_out[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][5]~q\);

-- Location: LABCELL_X83_Y8_N0
\phase1_gen|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~1_sumout\ = SUM(( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|xin_reg\(0) ) + ( !VCC ))
-- \phase1_gen|Add1~2\ = CARRY(( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|xin_reg\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(0),
	datad => \phase1_gen|ALT_INV_xin_reg\(3),
	cin => GND,
	sumout => \phase1_gen|Add1~1_sumout\,
	cout => \phase1_gen|Add1~2\);

-- Location: FF_X83_Y8_N1
\phase1_gen|w9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(3));

-- Location: FF_X82_Y11_N56
\phase1_gen|mul_out[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w9\(3),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][5]~q\);

-- Location: MLABCELL_X84_Y8_N42
\phase1_gen|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~17_sumout\ = SUM(( !\phase1_gen|xin_reg\(5) ) + ( GND ) + ( \phase1_gen|Add2~14\ ))
-- \phase1_gen|Add2~18\ = CARRY(( !\phase1_gen|xin_reg\(5) ) + ( GND ) + ( \phase1_gen|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(5),
	cin => \phase1_gen|Add2~14\,
	sumout => \phase1_gen|Add2~17_sumout\,
	cout => \phase1_gen|Add2~18\);

-- Location: FF_X84_Y8_N43
\phase1_gen|w1_n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(5));

-- Location: MLABCELL_X82_Y11_N42
\phase1_gen|mul_out[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[0][5]~feeder_combout\ = ( \phase1_gen|w1_n\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w1_n\(5),
	combout => \phase1_gen|mul_out[0][5]~feeder_combout\);

-- Location: FF_X82_Y11_N44
\phase1_gen|mul_out[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[0][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][5]~q\);

-- Location: LABCELL_X85_Y11_N15
\phase1_gen|shift_reg[8][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][5]~feeder_combout\ = ( \phase1_gen|mul_out[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][5]~q\,
	combout => \phase1_gen|shift_reg[8][5]~feeder_combout\);

-- Location: FF_X85_Y11_N17
\phase1_gen|shift_reg[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][5]~q\);

-- Location: FF_X83_Y9_N59
\phase1_gen|mul_out[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w3\(5),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][5]~q\);

-- Location: MLABCELL_X84_Y11_N15
\phase1_gen|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~21_sumout\ = SUM(( \phase1_gen|mul_out[1][5]~q\ ) + ( \phase1_gen|shift_reg[8][5]~q\ ) + ( \phase1_gen|Add11~18\ ))
-- \phase1_gen|Add11~22\ = CARRY(( \phase1_gen|mul_out[1][5]~q\ ) + ( \phase1_gen|shift_reg[8][5]~q\ ) + ( \phase1_gen|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[8][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][5]~q\,
	cin => \phase1_gen|Add11~18\,
	sumout => \phase1_gen|Add11~21_sumout\,
	cout => \phase1_gen|Add11~22\);

-- Location: FF_X84_Y11_N16
\phase1_gen|shift_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][5]~q\);

-- Location: LABCELL_X85_Y9_N15
\phase1_gen|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~21_sumout\ = SUM(( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|shift_reg[7][5]~q\ ) + ( \phase1_gen|Add10~18\ ))
-- \phase1_gen|Add10~22\ = CARRY(( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|shift_reg[7][5]~q\ ) + ( \phase1_gen|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][5]~q\,
	cin => \phase1_gen|Add10~18\,
	sumout => \phase1_gen|Add10~21_sumout\,
	cout => \phase1_gen|Add10~22\);

-- Location: FF_X85_Y9_N17
\phase1_gen|shift_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][5]~q\);

-- Location: MLABCELL_X84_Y9_N15
\phase1_gen|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~21_sumout\ = SUM(( \phase1_gen|shift_reg[6][5]~q\ ) + ( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|Add9~18\ ))
-- \phase1_gen|Add9~22\ = CARRY(( \phase1_gen|shift_reg[6][5]~q\ ) + ( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][5]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][5]~q\,
	cin => \phase1_gen|Add9~18\,
	sumout => \phase1_gen|Add9~21_sumout\,
	cout => \phase1_gen|Add9~22\);

-- Location: FF_X84_Y9_N16
\phase1_gen|shift_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][5]~q\);

-- Location: LABCELL_X83_Y11_N9
\phase1_gen|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~13_sumout\ = SUM(( \phase1_gen|mul_out[4][5]~q\ ) + ( \phase1_gen|shift_reg[5][5]~q\ ) + ( \phase1_gen|Add8~10\ ))
-- \phase1_gen|Add8~14\ = CARRY(( \phase1_gen|mul_out[4][5]~q\ ) + ( \phase1_gen|shift_reg[5][5]~q\ ) + ( \phase1_gen|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[5][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][5]~q\,
	cin => \phase1_gen|Add8~10\,
	sumout => \phase1_gen|Add8~13_sumout\,
	cout => \phase1_gen|Add8~14\);

-- Location: FF_X83_Y11_N11
\phase1_gen|shift_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][5]~q\);

-- Location: MLABCELL_X82_Y11_N9
\phase1_gen|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~13_sumout\ = SUM(( \phase1_gen|shift_reg[4][5]~q\ ) + ( \phase1_gen|mul_out[4][5]~q\ ) + ( \phase1_gen|Add7~10\ ))
-- \phase1_gen|Add7~14\ = CARRY(( \phase1_gen|shift_reg[4][5]~q\ ) + ( \phase1_gen|mul_out[4][5]~q\ ) + ( \phase1_gen|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][5]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][5]~q\,
	cin => \phase1_gen|Add7~10\,
	sumout => \phase1_gen|Add7~13_sumout\,
	cout => \phase1_gen|Add7~14\);

-- Location: FF_X82_Y11_N10
\phase1_gen|shift_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][5]~q\);

-- Location: MLABCELL_X82_Y9_N15
\phase1_gen|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~21_sumout\ = SUM(( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|shift_reg[3][5]~q\ ) + ( \phase1_gen|Add6~18\ ))
-- \phase1_gen|Add6~22\ = CARRY(( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|shift_reg[3][5]~q\ ) + ( \phase1_gen|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[3][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][5]~q\,
	cin => \phase1_gen|Add6~18\,
	sumout => \phase1_gen|Add6~21_sumout\,
	cout => \phase1_gen|Add6~22\);

-- Location: FF_X82_Y9_N17
\phase1_gen|shift_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][5]~q\);

-- Location: LABCELL_X81_Y9_N15
\phase1_gen|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~21_sumout\ = SUM(( \phase1_gen|shift_reg[2][5]~q\ ) + ( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|Add5~18\ ))
-- \phase1_gen|Add5~22\ = CARRY(( \phase1_gen|shift_reg[2][5]~q\ ) + ( \phase1_gen|mul_out[2][5]~q\ ) + ( \phase1_gen|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][5]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][5]~q\,
	cin => \phase1_gen|Add5~18\,
	sumout => \phase1_gen|Add5~21_sumout\,
	cout => \phase1_gen|Add5~22\);

-- Location: FF_X81_Y9_N16
\phase1_gen|shift_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][5]~q\);

-- Location: MLABCELL_X82_Y10_N15
\phase1_gen|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~21_sumout\ = SUM(( \phase1_gen|mul_out[1][5]~q\ ) + ( \phase1_gen|shift_reg[1][5]~q\ ) + ( \phase1_gen|Add4~18\ ))
-- \phase1_gen|Add4~22\ = CARRY(( \phase1_gen|mul_out[1][5]~q\ ) + ( \phase1_gen|shift_reg[1][5]~q\ ) + ( \phase1_gen|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][5]~q\,
	cin => \phase1_gen|Add4~18\,
	sumout => \phase1_gen|Add4~21_sumout\,
	cout => \phase1_gen|Add4~22\);

-- Location: FF_X82_Y10_N16
\phase1_gen|shift_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][5]~q\);

-- Location: LABCELL_X83_Y10_N15
\phase1_gen|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~21_sumout\ = SUM(( \phase1_gen|mul_out[0][5]~q\ ) + ( \phase1_gen|shift_reg[0][5]~q\ ) + ( \phase1_gen|Add13~18\ ))
-- \phase1_gen|Add13~22\ = CARRY(( \phase1_gen|mul_out[0][5]~q\ ) + ( \phase1_gen|shift_reg[0][5]~q\ ) + ( \phase1_gen|Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][5]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][5]~q\,
	cin => \phase1_gen|Add13~18\,
	sumout => \phase1_gen|Add13~21_sumout\,
	cout => \phase1_gen|Add13~22\);

-- Location: FF_X83_Y10_N16
\phase1_gen|xout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(5));

-- Location: MLABCELL_X84_Y10_N54
\xin_phase0[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[5]~feeder_combout\ = ( \xin[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[5]~input_o\,
	combout => \xin_phase0[5]~feeder_combout\);

-- Location: FF_X84_Y10_N56
\xin_phase0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(5));

-- Location: FF_X84_Y10_N53
\phase0_gen|xin_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(5),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(5));

-- Location: LABCELL_X85_Y12_N12
\phase0_gen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~17_sumout\ = SUM(( !\phase0_gen|xin_reg\(5) ) + ( \phase0_gen|xin_reg\(1) ) + ( \phase0_gen|Add0~14\ ))
-- \phase0_gen|Add0~18\ = CARRY(( !\phase0_gen|xin_reg\(5) ) + ( \phase0_gen|xin_reg\(1) ) + ( \phase0_gen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_xin_reg\(1),
	datac => \phase0_gen|ALT_INV_xin_reg\(5),
	cin => \phase0_gen|Add0~14\,
	sumout => \phase0_gen|Add0~17_sumout\,
	cout => \phase0_gen|Add0~18\);

-- Location: FF_X85_Y12_N13
\phase0_gen|w15[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(5));

-- Location: LABCELL_X88_Y10_N57
\phase0_gen|mul_out[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][5]~feeder_combout\ = ( \phase0_gen|w15\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(5),
	combout => \phase0_gen|mul_out[4][5]~feeder_combout\);

-- Location: FF_X88_Y10_N59
\phase0_gen|mul_out[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][5]~q\);

-- Location: LABCELL_X85_Y10_N3
\phase0_gen|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~5_sumout\ = SUM(( \phase0_gen|w15\(4) ) + ( \phase0_gen|w2\(2) ) + ( \phase0_gen|Add3~2\ ))
-- \phase0_gen|Add3~6\ = CARRY(( \phase0_gen|w15\(4) ) + ( \phase0_gen|w2\(2) ) + ( \phase0_gen|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(2),
	datad => \phase0_gen|ALT_INV_w15\(4),
	cin => \phase0_gen|Add3~2\,
	sumout => \phase0_gen|Add3~5_sumout\,
	cout => \phase0_gen|Add3~6\);

-- Location: FF_X85_Y10_N4
\phase0_gen|mul_out[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~5_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][5]~q\);

-- Location: MLABCELL_X84_Y12_N42
\phase0_gen|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~17_sumout\ = SUM(( !\phase0_gen|xin_reg\(5) ) + ( GND ) + ( \phase0_gen|Add1~14\ ))
-- \phase0_gen|Add1~18\ = CARRY(( !\phase0_gen|xin_reg\(5) ) + ( GND ) + ( \phase0_gen|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(5),
	cin => \phase0_gen|Add1~14\,
	sumout => \phase0_gen|Add1~17_sumout\,
	cout => \phase0_gen|Add1~18\);

-- Location: FF_X84_Y12_N43
\phase0_gen|w1_n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(5));

-- Location: LABCELL_X88_Y12_N21
\phase0_gen|mul_out[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][5]~feeder_combout\ = ( \phase0_gen|w1_n\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w1_n\(5),
	combout => \phase0_gen|mul_out[0][5]~feeder_combout\);

-- Location: FF_X88_Y12_N23
\phase0_gen|mul_out[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][5]~q\);

-- Location: FF_X88_Y12_N14
\phase0_gen|shift_reg[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|mul_out[0][5]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][5]~q\);

-- Location: FF_X87_Y11_N17
\phase0_gen|shift_reg[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[9][5]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][5]~q\);

-- Location: FF_X85_Y10_N40
\phase0_gen|w2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(5));

-- Location: FF_X87_Y11_N14
\phase0_gen|mul_out[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2\(5),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][5]~q\);

-- Location: MLABCELL_X87_Y11_N42
\phase0_gen|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~17_sumout\ = SUM(( \phase0_gen|shift_reg[8][5]~q\ ) + ( \phase0_gen|mul_out[2][5]~q\ ) + ( \phase0_gen|Add11~14\ ))
-- \phase0_gen|Add11~18\ = CARRY(( \phase0_gen|shift_reg[8][5]~q\ ) + ( \phase0_gen|mul_out[2][5]~q\ ) + ( \phase0_gen|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[8][5]~q\,
	dataf => \phase0_gen|ALT_INV_mul_out[2][5]~q\,
	cin => \phase0_gen|Add11~14\,
	sumout => \phase0_gen|Add11~17_sumout\,
	cout => \phase0_gen|Add11~18\);

-- Location: FF_X87_Y11_N44
\phase0_gen|shift_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][5]~q\);

-- Location: LABCELL_X88_Y11_N6
\phase0_gen|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~9_sumout\ = SUM(( !\phase0_gen|w2\(3) ) + ( GND ) + ( \phase0_gen|Add2~6\ ))
-- \phase0_gen|Add2~10\ = CARRY(( !\phase0_gen|w2\(3) ) + ( GND ) + ( \phase0_gen|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_w2\(3),
	cin => \phase0_gen|Add2~6\,
	sumout => \phase0_gen|Add2~9_sumout\,
	cout => \phase0_gen|Add2~10\);

-- Location: FF_X88_Y11_N8
\phase0_gen|mul_out[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][5]~q\);

-- Location: MLABCELL_X87_Y9_N6
\phase0_gen|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~9_sumout\ = SUM(( \phase0_gen|mul_out[3][5]~q\ ) + ( \phase0_gen|shift_reg[7][5]~q\ ) + ( \phase0_gen|Add10~6\ ))
-- \phase0_gen|Add10~10\ = CARRY(( \phase0_gen|mul_out[3][5]~q\ ) + ( \phase0_gen|shift_reg[7][5]~q\ ) + ( \phase0_gen|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[7][5]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][5]~q\,
	cin => \phase0_gen|Add10~6\,
	sumout => \phase0_gen|Add10~9_sumout\,
	cout => \phase0_gen|Add10~10\);

-- Location: FF_X87_Y9_N7
\phase0_gen|shift_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][5]~q\);

-- Location: LABCELL_X88_Y9_N15
\phase0_gen|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~21_sumout\ = SUM(( \phase0_gen|mul_out[4][5]~q\ ) + ( \phase0_gen|shift_reg[6][5]~q\ ) + ( \phase0_gen|Add9~18\ ))
-- \phase0_gen|Add9~22\ = CARRY(( \phase0_gen|mul_out[4][5]~q\ ) + ( \phase0_gen|shift_reg[6][5]~q\ ) + ( \phase0_gen|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[6][5]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][5]~q\,
	cin => \phase0_gen|Add9~18\,
	sumout => \phase0_gen|Add9~21_sumout\,
	cout => \phase0_gen|Add9~22\);

-- Location: FF_X88_Y9_N17
\phase0_gen|shift_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][5]~q\);

-- Location: MLABCELL_X87_Y10_N12
\phase0_gen|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~17_sumout\ = SUM(( \phase0_gen|shift_reg[5][5]~q\ ) + ( \phase0_gen|mul_out[5][5]~q\ ) + ( \phase0_gen|Add8~14\ ))
-- \phase0_gen|Add8~18\ = CARRY(( \phase0_gen|shift_reg[5][5]~q\ ) + ( \phase0_gen|mul_out[5][5]~q\ ) + ( \phase0_gen|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[5][5]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][5]~q\,
	cin => \phase0_gen|Add8~14\,
	sumout => \phase0_gen|Add8~17_sumout\,
	cout => \phase0_gen|Add8~18\);

-- Location: FF_X87_Y10_N13
\phase0_gen|shift_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][5]~q\);

-- Location: LABCELL_X88_Y10_N15
\phase0_gen|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~21_sumout\ = SUM(( \phase0_gen|shift_reg[4][5]~q\ ) + ( \phase0_gen|mul_out[4][5]~q\ ) + ( \phase0_gen|Add7~18\ ))
-- \phase0_gen|Add7~22\ = CARRY(( \phase0_gen|shift_reg[4][5]~q\ ) + ( \phase0_gen|mul_out[4][5]~q\ ) + ( \phase0_gen|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][5]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[4][5]~q\,
	cin => \phase0_gen|Add7~18\,
	sumout => \phase0_gen|Add7~21_sumout\,
	cout => \phase0_gen|Add7~22\);

-- Location: FF_X88_Y10_N17
\phase0_gen|shift_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][5]~q\);

-- Location: LABCELL_X88_Y13_N6
\phase0_gen|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~9_sumout\ = SUM(( \phase0_gen|mul_out[3][5]~q\ ) + ( \phase0_gen|shift_reg[3][5]~q\ ) + ( \phase0_gen|Add6~6\ ))
-- \phase0_gen|Add6~10\ = CARRY(( \phase0_gen|mul_out[3][5]~q\ ) + ( \phase0_gen|shift_reg[3][5]~q\ ) + ( \phase0_gen|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][5]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][5]~q\,
	cin => \phase0_gen|Add6~6\,
	sumout => \phase0_gen|Add6~9_sumout\,
	cout => \phase0_gen|Add6~10\);

-- Location: FF_X88_Y13_N8
\phase0_gen|shift_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][5]~q\);

-- Location: MLABCELL_X87_Y13_N12
\phase0_gen|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~17_sumout\ = SUM(( \phase0_gen|mul_out[2][5]~q\ ) + ( \phase0_gen|shift_reg[2][5]~q\ ) + ( \phase0_gen|Add5~14\ ))
-- \phase0_gen|Add5~18\ = CARRY(( \phase0_gen|mul_out[2][5]~q\ ) + ( \phase0_gen|shift_reg[2][5]~q\ ) + ( \phase0_gen|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][5]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][5]~q\,
	cin => \phase0_gen|Add5~14\,
	sumout => \phase0_gen|Add5~17_sumout\,
	cout => \phase0_gen|Add5~18\);

-- Location: FF_X87_Y13_N14
\phase0_gen|shift_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][5]~q\);

-- Location: FF_X88_Y12_N59
\phase0_gen|shift_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][5]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][5]~q\);

-- Location: MLABCELL_X87_Y12_N15
\phase0_gen|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~21_sumout\ = SUM(( \phase0_gen|mul_out[0][5]~q\ ) + ( \phase0_gen|shift_reg[0][5]~q\ ) + ( \phase0_gen|Add13~18\ ))
-- \phase0_gen|Add13~22\ = CARRY(( \phase0_gen|mul_out[0][5]~q\ ) + ( \phase0_gen|shift_reg[0][5]~q\ ) + ( \phase0_gen|Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[0][5]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[0][5]~q\,
	cin => \phase0_gen|Add13~18\,
	sumout => \phase0_gen|Add13~21_sumout\,
	cout => \phase0_gen|Add13~22\);

-- Location: FF_X87_Y12_N16
\phase0_gen|xout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(5));

-- Location: MLABCELL_X84_Y10_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \phase0_gen|xout\(5) ) + ( \phase1_gen|xout\(5) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \phase0_gen|xout\(5) ) + ( \phase1_gen|xout\(5) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(5),
	datad => \phase0_gen|ALT_INV_xout\(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X84_Y10_N16
\xout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[5]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N1
\xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(6),
	o => \xin[6]~input_o\);

-- Location: FF_X85_Y11_N28
\xin_phase1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xin[6]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(6));

-- Location: MLABCELL_X84_Y8_N12
\phase1_gen|xin_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|xin_reg[6]~feeder_combout\ = ( xin_phase1(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_xin_phase1(6),
	combout => \phase1_gen|xin_reg[6]~feeder_combout\);

-- Location: FF_X84_Y8_N14
\phase1_gen|xin_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|xin_reg[6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(6));

-- Location: LABCELL_X85_Y8_N15
\phase1_gen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~21_sumout\ = SUM(( \phase1_gen|xin_reg\(4) ) + ( !\phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add0~18\ ))
-- \phase1_gen|Add0~22\ = CARRY(( \phase1_gen|xin_reg\(4) ) + ( !\phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(6),
	datad => \phase1_gen|ALT_INV_xin_reg\(4),
	cin => \phase1_gen|Add0~18\,
	sumout => \phase1_gen|Add0~21_sumout\,
	cout => \phase1_gen|Add0~22\);

-- Location: FF_X85_Y8_N16
\phase1_gen|w3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(6));

-- Location: FF_X83_Y9_N47
\phase1_gen|mul_out[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w3\(6),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][6]~q\);

-- Location: LABCELL_X83_Y9_N18
\phase1_gen|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~25_sumout\ = SUM(( !\phase1_gen|w3\(6) ) + ( GND ) + ( \phase1_gen|Add3~22\ ))
-- \phase1_gen|Add3~26\ = CARRY(( !\phase1_gen|w3\(6) ) + ( GND ) + ( \phase1_gen|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(6),
	cin => \phase1_gen|Add3~22\,
	sumout => \phase1_gen|Add3~25_sumout\,
	cout => \phase1_gen|Add3~26\);

-- Location: FF_X83_Y9_N20
\phase1_gen|mul_out[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][6]~q\);

-- Location: LABCELL_X83_Y8_N3
\phase1_gen|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~5_sumout\ = SUM(( \phase1_gen|xin_reg\(4) ) + ( \phase1_gen|xin_reg\(1) ) + ( \phase1_gen|Add1~2\ ))
-- \phase1_gen|Add1~6\ = CARRY(( \phase1_gen|xin_reg\(4) ) + ( \phase1_gen|xin_reg\(1) ) + ( \phase1_gen|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(1),
	datad => \phase1_gen|ALT_INV_xin_reg\(4),
	cin => \phase1_gen|Add1~2\,
	sumout => \phase1_gen|Add1~5_sumout\,
	cout => \phase1_gen|Add1~6\);

-- Location: FF_X83_Y8_N4
\phase1_gen|w9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(4));

-- Location: LABCELL_X83_Y11_N48
\phase1_gen|mul_out[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][6]~feeder_combout\ = ( \phase1_gen|w9\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(4),
	combout => \phase1_gen|mul_out[4][6]~feeder_combout\);

-- Location: FF_X83_Y11_N50
\phase1_gen|mul_out[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][6]~q\);

-- Location: MLABCELL_X84_Y8_N45
\phase1_gen|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~21_sumout\ = SUM(( !\phase1_gen|xin_reg\(6) ) + ( GND ) + ( \phase1_gen|Add2~18\ ))
-- \phase1_gen|Add2~22\ = CARRY(( !\phase1_gen|xin_reg\(6) ) + ( GND ) + ( \phase1_gen|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(6),
	cin => \phase1_gen|Add2~18\,
	sumout => \phase1_gen|Add2~21_sumout\,
	cout => \phase1_gen|Add2~22\);

-- Location: FF_X84_Y8_N47
\phase1_gen|w1_n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(6));

-- Location: FF_X84_Y8_N8
\phase1_gen|mul_out[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w1_n\(6),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][6]~q\);

-- Location: LABCELL_X85_Y11_N30
\phase1_gen|shift_reg[8][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][6]~feeder_combout\ = ( \phase1_gen|mul_out[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][6]~q\,
	combout => \phase1_gen|shift_reg[8][6]~feeder_combout\);

-- Location: FF_X85_Y11_N32
\phase1_gen|shift_reg[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][6]~q\);

-- Location: MLABCELL_X84_Y11_N18
\phase1_gen|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~25_sumout\ = SUM(( \phase1_gen|mul_out[1][6]~q\ ) + ( \phase1_gen|shift_reg[8][6]~q\ ) + ( \phase1_gen|Add11~22\ ))
-- \phase1_gen|Add11~26\ = CARRY(( \phase1_gen|mul_out[1][6]~q\ ) + ( \phase1_gen|shift_reg[8][6]~q\ ) + ( \phase1_gen|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[8][6]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][6]~q\,
	cin => \phase1_gen|Add11~22\,
	sumout => \phase1_gen|Add11~25_sumout\,
	cout => \phase1_gen|Add11~26\);

-- Location: FF_X84_Y11_N19
\phase1_gen|shift_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][6]~q\);

-- Location: LABCELL_X85_Y9_N18
\phase1_gen|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~25_sumout\ = SUM(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[7][6]~q\ ) + ( \phase1_gen|Add10~22\ ))
-- \phase1_gen|Add10~26\ = CARRY(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[7][6]~q\ ) + ( \phase1_gen|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][6]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][6]~q\,
	cin => \phase1_gen|Add10~22\,
	sumout => \phase1_gen|Add10~25_sumout\,
	cout => \phase1_gen|Add10~26\);

-- Location: FF_X85_Y9_N20
\phase1_gen|shift_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][6]~q\);

-- Location: MLABCELL_X84_Y9_N18
\phase1_gen|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~25_sumout\ = SUM(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[6][6]~q\ ) + ( \phase1_gen|Add9~22\ ))
-- \phase1_gen|Add9~26\ = CARRY(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[6][6]~q\ ) + ( \phase1_gen|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_mul_out[2][6]~q\,
	dataf => \phase1_gen|ALT_INV_shift_reg[6][6]~q\,
	cin => \phase1_gen|Add9~22\,
	sumout => \phase1_gen|Add9~25_sumout\,
	cout => \phase1_gen|Add9~26\);

-- Location: FF_X84_Y9_N19
\phase1_gen|shift_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][6]~q\);

-- Location: LABCELL_X83_Y11_N12
\phase1_gen|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~17_sumout\ = SUM(( \phase1_gen|shift_reg[5][6]~q\ ) + ( \phase1_gen|mul_out[4][6]~q\ ) + ( \phase1_gen|Add8~14\ ))
-- \phase1_gen|Add8~18\ = CARRY(( \phase1_gen|shift_reg[5][6]~q\ ) + ( \phase1_gen|mul_out[4][6]~q\ ) + ( \phase1_gen|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][6]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][6]~q\,
	cin => \phase1_gen|Add8~14\,
	sumout => \phase1_gen|Add8~17_sumout\,
	cout => \phase1_gen|Add8~18\);

-- Location: FF_X83_Y11_N13
\phase1_gen|shift_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][6]~q\);

-- Location: MLABCELL_X82_Y11_N12
\phase1_gen|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~17_sumout\ = SUM(( \phase1_gen|mul_out[4][6]~q\ ) + ( \phase1_gen|shift_reg[4][6]~q\ ) + ( \phase1_gen|Add7~14\ ))
-- \phase1_gen|Add7~18\ = CARRY(( \phase1_gen|mul_out[4][6]~q\ ) + ( \phase1_gen|shift_reg[4][6]~q\ ) + ( \phase1_gen|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[4][6]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][6]~q\,
	cin => \phase1_gen|Add7~14\,
	sumout => \phase1_gen|Add7~17_sumout\,
	cout => \phase1_gen|Add7~18\);

-- Location: FF_X82_Y11_N14
\phase1_gen|shift_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][6]~q\);

-- Location: MLABCELL_X82_Y9_N18
\phase1_gen|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~25_sumout\ = SUM(( \phase1_gen|shift_reg[3][6]~q\ ) + ( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|Add6~22\ ))
-- \phase1_gen|Add6~26\ = CARRY(( \phase1_gen|shift_reg[3][6]~q\ ) + ( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][6]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][6]~q\,
	cin => \phase1_gen|Add6~22\,
	sumout => \phase1_gen|Add6~25_sumout\,
	cout => \phase1_gen|Add6~26\);

-- Location: FF_X82_Y9_N20
\phase1_gen|shift_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][6]~q\);

-- Location: LABCELL_X81_Y9_N18
\phase1_gen|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~25_sumout\ = SUM(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[2][6]~q\ ) + ( \phase1_gen|Add5~22\ ))
-- \phase1_gen|Add5~26\ = CARRY(( \phase1_gen|mul_out[2][6]~q\ ) + ( \phase1_gen|shift_reg[2][6]~q\ ) + ( \phase1_gen|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][6]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][6]~q\,
	cin => \phase1_gen|Add5~22\,
	sumout => \phase1_gen|Add5~25_sumout\,
	cout => \phase1_gen|Add5~26\);

-- Location: FF_X81_Y9_N19
\phase1_gen|shift_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][6]~q\);

-- Location: MLABCELL_X82_Y10_N18
\phase1_gen|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~25_sumout\ = SUM(( \phase1_gen|mul_out[1][6]~q\ ) + ( \phase1_gen|shift_reg[1][6]~q\ ) + ( \phase1_gen|Add4~22\ ))
-- \phase1_gen|Add4~26\ = CARRY(( \phase1_gen|mul_out[1][6]~q\ ) + ( \phase1_gen|shift_reg[1][6]~q\ ) + ( \phase1_gen|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[1][6]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[1][6]~q\,
	cin => \phase1_gen|Add4~22\,
	sumout => \phase1_gen|Add4~25_sumout\,
	cout => \phase1_gen|Add4~26\);

-- Location: FF_X82_Y10_N19
\phase1_gen|shift_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][6]~q\);

-- Location: LABCELL_X83_Y10_N18
\phase1_gen|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~25_sumout\ = SUM(( \phase1_gen|mul_out[0][6]~q\ ) + ( \phase1_gen|shift_reg[0][6]~q\ ) + ( \phase1_gen|Add13~22\ ))
-- \phase1_gen|Add13~26\ = CARRY(( \phase1_gen|mul_out[0][6]~q\ ) + ( \phase1_gen|shift_reg[0][6]~q\ ) + ( \phase1_gen|Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[0][6]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][6]~q\,
	cin => \phase1_gen|Add13~22\,
	sumout => \phase1_gen|Add13~25_sumout\,
	cout => \phase1_gen|Add13~26\);

-- Location: FF_X83_Y10_N19
\phase1_gen|xout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(6));

-- Location: LABCELL_X85_Y12_N57
\xin_phase0[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase0[6]~feeder_combout\ = ( \xin[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[6]~input_o\,
	combout => \xin_phase0[6]~feeder_combout\);

-- Location: FF_X85_Y12_N59
\xin_phase0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase0[6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(6));

-- Location: FF_X85_Y12_N41
\phase0_gen|xin_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(6),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(6));

-- Location: MLABCELL_X84_Y12_N45
\phase0_gen|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~21_sumout\ = SUM(( !\phase0_gen|xin_reg\(6) ) + ( GND ) + ( \phase0_gen|Add1~18\ ))
-- \phase0_gen|Add1~22\ = CARRY(( !\phase0_gen|xin_reg\(6) ) + ( GND ) + ( \phase0_gen|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(6),
	cin => \phase0_gen|Add1~18\,
	sumout => \phase0_gen|Add1~21_sumout\,
	cout => \phase0_gen|Add1~22\);

-- Location: FF_X84_Y12_N47
\phase0_gen|w1_n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(6));

-- Location: FF_X84_Y12_N20
\phase0_gen|mul_out[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w1_n\(6),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][6]~q\);

-- Location: LABCELL_X88_Y11_N9
\phase0_gen|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~13_sumout\ = SUM(( !\phase0_gen|w2\(4) ) + ( GND ) + ( \phase0_gen|Add2~10\ ))
-- \phase0_gen|Add2~14\ = CARRY(( !\phase0_gen|w2\(4) ) + ( GND ) + ( \phase0_gen|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_w2\(4),
	cin => \phase0_gen|Add2~10\,
	sumout => \phase0_gen|Add2~13_sumout\,
	cout => \phase0_gen|Add2~14\);

-- Location: FF_X88_Y11_N11
\phase0_gen|mul_out[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][6]~q\);

-- Location: LABCELL_X85_Y12_N15
\phase0_gen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~21_sumout\ = SUM(( \phase0_gen|xin_reg\(2) ) + ( !\phase0_gen|xin_reg\(6) ) + ( \phase0_gen|Add0~18\ ))
-- \phase0_gen|Add0~22\ = CARRY(( \phase0_gen|xin_reg\(2) ) + ( !\phase0_gen|xin_reg\(6) ) + ( \phase0_gen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(6),
	datad => \phase0_gen|ALT_INV_xin_reg\(2),
	cin => \phase0_gen|Add0~18\,
	sumout => \phase0_gen|Add0~21_sumout\,
	cout => \phase0_gen|Add0~22\);

-- Location: FF_X85_Y12_N17
\phase0_gen|w15[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(6));

-- Location: MLABCELL_X87_Y9_N51
\phase0_gen|mul_out[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][6]~feeder_combout\ = ( \phase0_gen|w15\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(6),
	combout => \phase0_gen|mul_out[4][6]~feeder_combout\);

-- Location: FF_X87_Y9_N53
\phase0_gen|mul_out[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][6]~q\);

-- Location: FF_X85_Y10_N58
\phase0_gen|w2[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2[6]~DUPLICATE_q\);

-- Location: FF_X88_Y11_N50
\phase0_gen|mul_out[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2[6]~DUPLICATE_q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][6]~q\);

-- Location: LABCELL_X88_Y13_N45
\phase0_gen|shift_reg[9][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[9][6]~feeder_combout\ = ( \phase0_gen|mul_out[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_mul_out[0][6]~q\,
	combout => \phase0_gen|shift_reg[9][6]~feeder_combout\);

-- Location: FF_X88_Y13_N46
\phase0_gen|shift_reg[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[9][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][6]~q\);

-- Location: LABCELL_X88_Y11_N39
\phase0_gen|shift_reg[8][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][6]~feeder_combout\ = ( \phase0_gen|shift_reg[9][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][6]~q\,
	combout => \phase0_gen|shift_reg[8][6]~feeder_combout\);

-- Location: FF_X88_Y11_N40
\phase0_gen|shift_reg[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][6]~q\);

-- Location: MLABCELL_X87_Y11_N45
\phase0_gen|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~21_sumout\ = SUM(( \phase0_gen|shift_reg[8][6]~q\ ) + ( \phase0_gen|mul_out[2][6]~q\ ) + ( \phase0_gen|Add11~18\ ))
-- \phase0_gen|Add11~22\ = CARRY(( \phase0_gen|shift_reg[8][6]~q\ ) + ( \phase0_gen|mul_out[2][6]~q\ ) + ( \phase0_gen|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][6]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[8][6]~q\,
	cin => \phase0_gen|Add11~18\,
	sumout => \phase0_gen|Add11~21_sumout\,
	cout => \phase0_gen|Add11~22\);

-- Location: FF_X87_Y11_N46
\phase0_gen|shift_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][6]~q\);

-- Location: MLABCELL_X87_Y9_N9
\phase0_gen|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~13_sumout\ = SUM(( \phase0_gen|shift_reg[7][6]~q\ ) + ( \phase0_gen|mul_out[3][6]~q\ ) + ( \phase0_gen|Add10~10\ ))
-- \phase0_gen|Add10~14\ = CARRY(( \phase0_gen|shift_reg[7][6]~q\ ) + ( \phase0_gen|mul_out[3][6]~q\ ) + ( \phase0_gen|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][6]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][6]~q\,
	cin => \phase0_gen|Add10~10\,
	sumout => \phase0_gen|Add10~13_sumout\,
	cout => \phase0_gen|Add10~14\);

-- Location: FF_X87_Y9_N10
\phase0_gen|shift_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][6]~q\);

-- Location: LABCELL_X88_Y9_N18
\phase0_gen|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~25_sumout\ = SUM(( \phase0_gen|mul_out[4][6]~q\ ) + ( \phase0_gen|shift_reg[6][6]~q\ ) + ( \phase0_gen|Add9~22\ ))
-- \phase0_gen|Add9~26\ = CARRY(( \phase0_gen|mul_out[4][6]~q\ ) + ( \phase0_gen|shift_reg[6][6]~q\ ) + ( \phase0_gen|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[6][6]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][6]~q\,
	cin => \phase0_gen|Add9~22\,
	sumout => \phase0_gen|Add9~25_sumout\,
	cout => \phase0_gen|Add9~26\);

-- Location: FF_X88_Y9_N19
\phase0_gen|shift_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][6]~q\);

-- Location: LABCELL_X85_Y10_N6
\phase0_gen|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~9_sumout\ = SUM(( \phase0_gen|w15\(5) ) + ( \phase0_gen|w2\(3) ) + ( \phase0_gen|Add3~6\ ))
-- \phase0_gen|Add3~10\ = CARRY(( \phase0_gen|w15\(5) ) + ( \phase0_gen|w2\(3) ) + ( \phase0_gen|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(3),
	datad => \phase0_gen|ALT_INV_w15\(5),
	cin => \phase0_gen|Add3~6\,
	sumout => \phase0_gen|Add3~9_sumout\,
	cout => \phase0_gen|Add3~10\);

-- Location: FF_X85_Y10_N8
\phase0_gen|mul_out[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~9_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][6]~q\);

-- Location: MLABCELL_X87_Y10_N15
\phase0_gen|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~21_sumout\ = SUM(( \phase0_gen|mul_out[5][6]~q\ ) + ( \phase0_gen|shift_reg[5][6]~q\ ) + ( \phase0_gen|Add8~18\ ))
-- \phase0_gen|Add8~22\ = CARRY(( \phase0_gen|mul_out[5][6]~q\ ) + ( \phase0_gen|shift_reg[5][6]~q\ ) + ( \phase0_gen|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][6]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][6]~q\,
	cin => \phase0_gen|Add8~18\,
	sumout => \phase0_gen|Add8~21_sumout\,
	cout => \phase0_gen|Add8~22\);

-- Location: FF_X87_Y10_N16
\phase0_gen|shift_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][6]~q\);

-- Location: LABCELL_X88_Y10_N18
\phase0_gen|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~25_sumout\ = SUM(( \phase0_gen|shift_reg[4][6]~q\ ) + ( \phase0_gen|mul_out[4][6]~q\ ) + ( \phase0_gen|Add7~22\ ))
-- \phase0_gen|Add7~26\ = CARRY(( \phase0_gen|shift_reg[4][6]~q\ ) + ( \phase0_gen|mul_out[4][6]~q\ ) + ( \phase0_gen|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][6]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[4][6]~q\,
	cin => \phase0_gen|Add7~22\,
	sumout => \phase0_gen|Add7~25_sumout\,
	cout => \phase0_gen|Add7~26\);

-- Location: FF_X88_Y10_N19
\phase0_gen|shift_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][6]~q\);

-- Location: LABCELL_X88_Y13_N9
\phase0_gen|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~13_sumout\ = SUM(( \phase0_gen|shift_reg[3][6]~q\ ) + ( \phase0_gen|mul_out[3][6]~q\ ) + ( \phase0_gen|Add6~10\ ))
-- \phase0_gen|Add6~14\ = CARRY(( \phase0_gen|shift_reg[3][6]~q\ ) + ( \phase0_gen|mul_out[3][6]~q\ ) + ( \phase0_gen|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][6]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[3][6]~q\,
	cin => \phase0_gen|Add6~10\,
	sumout => \phase0_gen|Add6~13_sumout\,
	cout => \phase0_gen|Add6~14\);

-- Location: FF_X88_Y13_N10
\phase0_gen|shift_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][6]~q\);

-- Location: MLABCELL_X87_Y13_N15
\phase0_gen|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~21_sumout\ = SUM(( \phase0_gen|mul_out[2][6]~q\ ) + ( \phase0_gen|shift_reg[2][6]~q\ ) + ( \phase0_gen|Add5~18\ ))
-- \phase0_gen|Add5~22\ = CARRY(( \phase0_gen|mul_out[2][6]~q\ ) + ( \phase0_gen|shift_reg[2][6]~q\ ) + ( \phase0_gen|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][6]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][6]~q\,
	cin => \phase0_gen|Add5~18\,
	sumout => \phase0_gen|Add5~21_sumout\,
	cout => \phase0_gen|Add5~22\);

-- Location: FF_X87_Y13_N16
\phase0_gen|shift_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][6]~q\);

-- Location: FF_X87_Y12_N55
\phase0_gen|shift_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][6]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][6]~q\);

-- Location: MLABCELL_X87_Y12_N18
\phase0_gen|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~25_sumout\ = SUM(( \phase0_gen|shift_reg[0][6]~q\ ) + ( \phase0_gen|mul_out[0][6]~q\ ) + ( \phase0_gen|Add13~22\ ))
-- \phase0_gen|Add13~26\ = CARRY(( \phase0_gen|shift_reg[0][6]~q\ ) + ( \phase0_gen|mul_out[0][6]~q\ ) + ( \phase0_gen|Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][6]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][6]~q\,
	cin => \phase0_gen|Add13~22\,
	sumout => \phase0_gen|Add13~25_sumout\,
	cout => \phase0_gen|Add13~26\);

-- Location: FF_X87_Y12_N19
\phase0_gen|xout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(6));

-- Location: MLABCELL_X84_Y10_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \phase0_gen|xout\(6) ) + ( \phase1_gen|xout\(6) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \phase0_gen|xout\(6) ) + ( \phase1_gen|xout\(6) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xout\(6),
	datad => \phase0_gen|ALT_INV_xout\(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X84_Y10_N20
\xout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[6]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N21
\xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(7),
	o => \xin[7]~input_o\);

-- Location: MLABCELL_X87_Y8_N24
\xin_phase1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_phase1[7]~feeder_combout\ = ( \xin[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[7]~input_o\,
	combout => \xin_phase1[7]~feeder_combout\);

-- Location: FF_X87_Y8_N26
\xin_phase1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_phase1[7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \ALT_INV_xout_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase1(7));

-- Location: FF_X87_Y8_N47
\phase1_gen|xin_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase1(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xin_reg\(7));

-- Location: MLABCELL_X84_Y8_N48
\phase1_gen|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~25_sumout\ = SUM(( !\phase1_gen|xin_reg\(7) ) + ( GND ) + ( \phase1_gen|Add2~22\ ))
-- \phase1_gen|Add2~26\ = CARRY(( !\phase1_gen|xin_reg\(7) ) + ( GND ) + ( \phase1_gen|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add2~22\,
	sumout => \phase1_gen|Add2~25_sumout\,
	cout => \phase1_gen|Add2~26\);

-- Location: FF_X84_Y8_N49
\phase1_gen|w1_n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(7));

-- Location: FF_X84_Y8_N26
\phase1_gen|mul_out[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w1_n\(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][7]~q\);

-- Location: LABCELL_X85_Y8_N18
\phase1_gen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~25_sumout\ = SUM(( \phase1_gen|xin_reg\(5) ) + ( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add0~22\ ))
-- \phase1_gen|Add0~26\ = CARRY(( \phase1_gen|xin_reg\(5) ) + ( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(7),
	datad => \phase1_gen|ALT_INV_xin_reg\(5),
	cin => \phase1_gen|Add0~22\,
	sumout => \phase1_gen|Add0~25_sumout\,
	cout => \phase1_gen|Add0~26\);

-- Location: FF_X85_Y8_N19
\phase1_gen|w3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(7));

-- Location: LABCELL_X85_Y11_N36
\phase1_gen|mul_out[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][7]~feeder_combout\ = ( \phase1_gen|w3\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(7),
	combout => \phase1_gen|mul_out[1][7]~feeder_combout\);

-- Location: FF_X85_Y11_N38
\phase1_gen|mul_out[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][7]~q\);

-- Location: LABCELL_X83_Y9_N21
\phase1_gen|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~29_sumout\ = SUM(( !\phase1_gen|w3\(7) ) + ( GND ) + ( \phase1_gen|Add3~26\ ))
-- \phase1_gen|Add3~30\ = CARRY(( !\phase1_gen|w3\(7) ) + ( GND ) + ( \phase1_gen|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_w3\(7),
	cin => \phase1_gen|Add3~26\,
	sumout => \phase1_gen|Add3~29_sumout\,
	cout => \phase1_gen|Add3~30\);

-- Location: FF_X83_Y9_N23
\phase1_gen|mul_out[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][7]~q\);

-- Location: LABCELL_X83_Y8_N6
\phase1_gen|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~9_sumout\ = SUM(( \phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add1~6\ ))
-- \phase1_gen|Add1~10\ = CARRY(( \phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(2) ) + ( \phase1_gen|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(2),
	datad => \phase1_gen|ALT_INV_xin_reg\(5),
	cin => \phase1_gen|Add1~6\,
	sumout => \phase1_gen|Add1~9_sumout\,
	cout => \phase1_gen|Add1~10\);

-- Location: FF_X83_Y8_N8
\phase1_gen|w9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(5));

-- Location: MLABCELL_X82_Y11_N51
\phase1_gen|mul_out[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][7]~feeder_combout\ = ( \phase1_gen|w9\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(5),
	combout => \phase1_gen|mul_out[4][7]~feeder_combout\);

-- Location: FF_X82_Y11_N53
\phase1_gen|mul_out[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][7]~q\);

-- Location: LABCELL_X83_Y9_N48
\phase1_gen|shift_reg[8][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][7]~feeder_combout\ = ( \phase1_gen|mul_out[0][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][7]~q\,
	combout => \phase1_gen|shift_reg[8][7]~feeder_combout\);

-- Location: FF_X83_Y9_N50
\phase1_gen|shift_reg[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][7]~q\);

-- Location: MLABCELL_X84_Y11_N21
\phase1_gen|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~29_sumout\ = SUM(( \phase1_gen|shift_reg[8][7]~q\ ) + ( \phase1_gen|mul_out[1][7]~q\ ) + ( \phase1_gen|Add11~26\ ))
-- \phase1_gen|Add11~30\ = CARRY(( \phase1_gen|shift_reg[8][7]~q\ ) + ( \phase1_gen|mul_out[1][7]~q\ ) + ( \phase1_gen|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[8][7]~q\,
	cin => \phase1_gen|Add11~26\,
	sumout => \phase1_gen|Add11~29_sumout\,
	cout => \phase1_gen|Add11~30\);

-- Location: FF_X84_Y11_N23
\phase1_gen|shift_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][7]~q\);

-- Location: LABCELL_X85_Y9_N21
\phase1_gen|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~29_sumout\ = SUM(( \phase1_gen|shift_reg[7][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add10~26\ ))
-- \phase1_gen|Add10~30\ = CARRY(( \phase1_gen|shift_reg[7][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][7]~q\,
	cin => \phase1_gen|Add10~26\,
	sumout => \phase1_gen|Add10~29_sumout\,
	cout => \phase1_gen|Add10~30\);

-- Location: FF_X85_Y9_N22
\phase1_gen|shift_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][7]~q\);

-- Location: MLABCELL_X84_Y9_N21
\phase1_gen|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~29_sumout\ = SUM(( \phase1_gen|shift_reg[6][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add9~26\ ))
-- \phase1_gen|Add9~30\ = CARRY(( \phase1_gen|shift_reg[6][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][7]~q\,
	cin => \phase1_gen|Add9~26\,
	sumout => \phase1_gen|Add9~29_sumout\,
	cout => \phase1_gen|Add9~30\);

-- Location: FF_X84_Y9_N22
\phase1_gen|shift_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][7]~q\);

-- Location: LABCELL_X83_Y11_N15
\phase1_gen|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~21_sumout\ = SUM(( \phase1_gen|shift_reg[5][7]~q\ ) + ( \phase1_gen|mul_out[4][7]~q\ ) + ( \phase1_gen|Add8~18\ ))
-- \phase1_gen|Add8~22\ = CARRY(( \phase1_gen|shift_reg[5][7]~q\ ) + ( \phase1_gen|mul_out[4][7]~q\ ) + ( \phase1_gen|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][7]~q\,
	cin => \phase1_gen|Add8~18\,
	sumout => \phase1_gen|Add8~21_sumout\,
	cout => \phase1_gen|Add8~22\);

-- Location: FF_X83_Y11_N17
\phase1_gen|shift_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][7]~q\);

-- Location: MLABCELL_X82_Y11_N15
\phase1_gen|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~21_sumout\ = SUM(( \phase1_gen|shift_reg[4][7]~q\ ) + ( \phase1_gen|mul_out[4][7]~q\ ) + ( \phase1_gen|Add7~18\ ))
-- \phase1_gen|Add7~22\ = CARRY(( \phase1_gen|shift_reg[4][7]~q\ ) + ( \phase1_gen|mul_out[4][7]~q\ ) + ( \phase1_gen|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][7]~q\,
	cin => \phase1_gen|Add7~18\,
	sumout => \phase1_gen|Add7~21_sumout\,
	cout => \phase1_gen|Add7~22\);

-- Location: FF_X82_Y11_N16
\phase1_gen|shift_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][7]~q\);

-- Location: MLABCELL_X82_Y9_N21
\phase1_gen|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~29_sumout\ = SUM(( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|shift_reg[3][7]~q\ ) + ( \phase1_gen|Add6~26\ ))
-- \phase1_gen|Add6~30\ = CARRY(( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|shift_reg[3][7]~q\ ) + ( \phase1_gen|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[3][7]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][7]~q\,
	cin => \phase1_gen|Add6~26\,
	sumout => \phase1_gen|Add6~29_sumout\,
	cout => \phase1_gen|Add6~30\);

-- Location: FF_X82_Y9_N23
\phase1_gen|shift_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][7]~q\);

-- Location: LABCELL_X81_Y9_N21
\phase1_gen|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~29_sumout\ = SUM(( \phase1_gen|shift_reg[2][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add5~26\ ))
-- \phase1_gen|Add5~30\ = CARRY(( \phase1_gen|shift_reg[2][7]~q\ ) + ( \phase1_gen|mul_out[2][7]~q\ ) + ( \phase1_gen|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][7]~q\,
	cin => \phase1_gen|Add5~26\,
	sumout => \phase1_gen|Add5~29_sumout\,
	cout => \phase1_gen|Add5~30\);

-- Location: FF_X81_Y9_N22
\phase1_gen|shift_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][7]~q\);

-- Location: MLABCELL_X82_Y10_N21
\phase1_gen|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~29_sumout\ = SUM(( \phase1_gen|shift_reg[1][7]~q\ ) + ( \phase1_gen|mul_out[1][7]~q\ ) + ( \phase1_gen|Add4~26\ ))
-- \phase1_gen|Add4~30\ = CARRY(( \phase1_gen|shift_reg[1][7]~q\ ) + ( \phase1_gen|mul_out[1][7]~q\ ) + ( \phase1_gen|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][7]~q\,
	cin => \phase1_gen|Add4~26\,
	sumout => \phase1_gen|Add4~29_sumout\,
	cout => \phase1_gen|Add4~30\);

-- Location: FF_X82_Y10_N22
\phase1_gen|shift_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][7]~q\);

-- Location: LABCELL_X83_Y10_N21
\phase1_gen|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~29_sumout\ = SUM(( \phase1_gen|shift_reg[0][7]~q\ ) + ( \phase1_gen|mul_out[0][7]~q\ ) + ( \phase1_gen|Add13~26\ ))
-- \phase1_gen|Add13~30\ = CARRY(( \phase1_gen|shift_reg[0][7]~q\ ) + ( \phase1_gen|mul_out[0][7]~q\ ) + ( \phase1_gen|Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[0][7]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[0][7]~q\,
	cin => \phase1_gen|Add13~26\,
	sumout => \phase1_gen|Add13~29_sumout\,
	cout => \phase1_gen|Add13~30\);

-- Location: FF_X83_Y10_N22
\phase1_gen|xout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(7));

-- Location: FF_X84_Y10_N59
\xin_phase0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xin[7]~input_o\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_phase0(7));

-- Location: FF_X84_Y10_N50
\phase0_gen|xin_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => xin_phase0(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xin_reg\(7));

-- Location: MLABCELL_X84_Y12_N48
\phase0_gen|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~25_sumout\ = SUM(( !\phase0_gen|xin_reg\(7) ) + ( GND ) + ( \phase0_gen|Add1~22\ ))
-- \phase0_gen|Add1~26\ = CARRY(( !\phase0_gen|xin_reg\(7) ) + ( GND ) + ( \phase0_gen|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add1~22\,
	sumout => \phase0_gen|Add1~25_sumout\,
	cout => \phase0_gen|Add1~26\);

-- Location: FF_X84_Y12_N50
\phase0_gen|w1_n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(7));

-- Location: MLABCELL_X84_Y12_N27
\phase0_gen|mul_out[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][7]~feeder_combout\ = \phase0_gen|w1_n\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_w1_n\(7),
	combout => \phase0_gen|mul_out[0][7]~feeder_combout\);

-- Location: FF_X84_Y12_N29
\phase0_gen|mul_out[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][7]~q\);

-- Location: LABCELL_X88_Y11_N12
\phase0_gen|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~17_sumout\ = SUM(( !\phase0_gen|w2\(5) ) + ( GND ) + ( \phase0_gen|Add2~14\ ))
-- \phase0_gen|Add2~18\ = CARRY(( !\phase0_gen|w2\(5) ) + ( GND ) + ( \phase0_gen|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_w2\(5),
	cin => \phase0_gen|Add2~14\,
	sumout => \phase0_gen|Add2~17_sumout\,
	cout => \phase0_gen|Add2~18\);

-- Location: FF_X88_Y11_N14
\phase0_gen|mul_out[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][7]~q\);

-- Location: LABCELL_X85_Y12_N18
\phase0_gen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~25_sumout\ = SUM(( \phase0_gen|xin_reg\(3) ) + ( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|Add0~22\ ))
-- \phase0_gen|Add0~26\ = CARRY(( \phase0_gen|xin_reg\(3) ) + ( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(7),
	datad => \phase0_gen|ALT_INV_xin_reg\(3),
	cin => \phase0_gen|Add0~22\,
	sumout => \phase0_gen|Add0~25_sumout\,
	cout => \phase0_gen|Add0~26\);

-- Location: FF_X85_Y12_N19
\phase0_gen|w15[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(7));

-- Location: FF_X88_Y10_N49
\phase0_gen|mul_out[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w15\(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][7]~q\);

-- Location: FF_X85_Y10_N44
\phase0_gen|w2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(7));

-- Location: FF_X87_Y11_N29
\phase0_gen|mul_out[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w2\(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][7]~q\);

-- Location: FF_X87_Y12_N37
\phase0_gen|shift_reg[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|mul_out[0][7]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][7]~q\);

-- Location: MLABCELL_X87_Y10_N54
\phase0_gen|shift_reg[8][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][7]~feeder_combout\ = ( \phase0_gen|shift_reg[9][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][7]~q\,
	combout => \phase0_gen|shift_reg[8][7]~feeder_combout\);

-- Location: FF_X87_Y10_N55
\phase0_gen|shift_reg[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][7]~q\);

-- Location: MLABCELL_X87_Y11_N48
\phase0_gen|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~25_sumout\ = SUM(( \phase0_gen|shift_reg[8][7]~q\ ) + ( \phase0_gen|mul_out[2][7]~q\ ) + ( \phase0_gen|Add11~22\ ))
-- \phase0_gen|Add11~26\ = CARRY(( \phase0_gen|shift_reg[8][7]~q\ ) + ( \phase0_gen|mul_out[2][7]~q\ ) + ( \phase0_gen|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][7]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[8][7]~q\,
	cin => \phase0_gen|Add11~22\,
	sumout => \phase0_gen|Add11~25_sumout\,
	cout => \phase0_gen|Add11~26\);

-- Location: FF_X87_Y11_N50
\phase0_gen|shift_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][7]~q\);

-- Location: MLABCELL_X87_Y9_N12
\phase0_gen|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~17_sumout\ = SUM(( \phase0_gen|shift_reg[7][7]~q\ ) + ( \phase0_gen|mul_out[3][7]~q\ ) + ( \phase0_gen|Add10~14\ ))
-- \phase0_gen|Add10~18\ = CARRY(( \phase0_gen|shift_reg[7][7]~q\ ) + ( \phase0_gen|mul_out[3][7]~q\ ) + ( \phase0_gen|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][7]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][7]~q\,
	cin => \phase0_gen|Add10~14\,
	sumout => \phase0_gen|Add10~17_sumout\,
	cout => \phase0_gen|Add10~18\);

-- Location: FF_X87_Y9_N13
\phase0_gen|shift_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][7]~q\);

-- Location: LABCELL_X88_Y9_N21
\phase0_gen|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~29_sumout\ = SUM(( \phase0_gen|mul_out[4][7]~q\ ) + ( \phase0_gen|shift_reg[6][7]~q\ ) + ( \phase0_gen|Add9~26\ ))
-- \phase0_gen|Add9~30\ = CARRY(( \phase0_gen|mul_out[4][7]~q\ ) + ( \phase0_gen|shift_reg[6][7]~q\ ) + ( \phase0_gen|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[6][7]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][7]~q\,
	cin => \phase0_gen|Add9~26\,
	sumout => \phase0_gen|Add9~29_sumout\,
	cout => \phase0_gen|Add9~30\);

-- Location: FF_X88_Y9_N23
\phase0_gen|shift_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][7]~q\);

-- Location: LABCELL_X85_Y10_N9
\phase0_gen|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~13_sumout\ = SUM(( \phase0_gen|w15\(6) ) + ( \phase0_gen|w2\(4) ) + ( \phase0_gen|Add3~10\ ))
-- \phase0_gen|Add3~14\ = CARRY(( \phase0_gen|w15\(6) ) + ( \phase0_gen|w2\(4) ) + ( \phase0_gen|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(4),
	datad => \phase0_gen|ALT_INV_w15\(6),
	cin => \phase0_gen|Add3~10\,
	sumout => \phase0_gen|Add3~13_sumout\,
	cout => \phase0_gen|Add3~14\);

-- Location: FF_X85_Y10_N10
\phase0_gen|mul_out[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~13_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][7]~q\);

-- Location: MLABCELL_X87_Y10_N18
\phase0_gen|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~25_sumout\ = SUM(( \phase0_gen|mul_out[5][7]~q\ ) + ( \phase0_gen|shift_reg[5][7]~q\ ) + ( \phase0_gen|Add8~22\ ))
-- \phase0_gen|Add8~26\ = CARRY(( \phase0_gen|mul_out[5][7]~q\ ) + ( \phase0_gen|shift_reg[5][7]~q\ ) + ( \phase0_gen|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][7]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][7]~q\,
	cin => \phase0_gen|Add8~22\,
	sumout => \phase0_gen|Add8~25_sumout\,
	cout => \phase0_gen|Add8~26\);

-- Location: FF_X87_Y10_N19
\phase0_gen|shift_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][7]~q\);

-- Location: LABCELL_X88_Y10_N21
\phase0_gen|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~29_sumout\ = SUM(( \phase0_gen|mul_out[4][7]~q\ ) + ( \phase0_gen|shift_reg[4][7]~q\ ) + ( \phase0_gen|Add7~26\ ))
-- \phase0_gen|Add7~30\ = CARRY(( \phase0_gen|mul_out[4][7]~q\ ) + ( \phase0_gen|shift_reg[4][7]~q\ ) + ( \phase0_gen|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_mul_out[4][7]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[4][7]~q\,
	cin => \phase0_gen|Add7~26\,
	sumout => \phase0_gen|Add7~29_sumout\,
	cout => \phase0_gen|Add7~30\);

-- Location: FF_X88_Y10_N22
\phase0_gen|shift_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][7]~q\);

-- Location: LABCELL_X88_Y13_N12
\phase0_gen|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~17_sumout\ = SUM(( \phase0_gen|shift_reg[3][7]~q\ ) + ( \phase0_gen|mul_out[3][7]~q\ ) + ( \phase0_gen|Add6~14\ ))
-- \phase0_gen|Add6~18\ = CARRY(( \phase0_gen|shift_reg[3][7]~q\ ) + ( \phase0_gen|mul_out[3][7]~q\ ) + ( \phase0_gen|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][7]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[3][7]~q\,
	cin => \phase0_gen|Add6~14\,
	sumout => \phase0_gen|Add6~17_sumout\,
	cout => \phase0_gen|Add6~18\);

-- Location: FF_X88_Y13_N14
\phase0_gen|shift_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][7]~q\);

-- Location: MLABCELL_X87_Y13_N18
\phase0_gen|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~25_sumout\ = SUM(( \phase0_gen|mul_out[2][7]~q\ ) + ( \phase0_gen|shift_reg[2][7]~q\ ) + ( \phase0_gen|Add5~22\ ))
-- \phase0_gen|Add5~26\ = CARRY(( \phase0_gen|mul_out[2][7]~q\ ) + ( \phase0_gen|shift_reg[2][7]~q\ ) + ( \phase0_gen|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[2][7]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][7]~q\,
	cin => \phase0_gen|Add5~22\,
	sumout => \phase0_gen|Add5~25_sumout\,
	cout => \phase0_gen|Add5~26\);

-- Location: FF_X87_Y13_N19
\phase0_gen|shift_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][7]~q\);

-- Location: LABCELL_X88_Y12_N27
\phase0_gen|shift_reg[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][7]~feeder_combout\ = ( \phase0_gen|shift_reg[1][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[1][7]~q\,
	combout => \phase0_gen|shift_reg[0][7]~feeder_combout\);

-- Location: FF_X88_Y12_N29
\phase0_gen|shift_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][7]~q\);

-- Location: MLABCELL_X87_Y12_N21
\phase0_gen|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~29_sumout\ = SUM(( \phase0_gen|shift_reg[0][7]~q\ ) + ( \phase0_gen|mul_out[0][7]~q\ ) + ( \phase0_gen|Add13~26\ ))
-- \phase0_gen|Add13~30\ = CARRY(( \phase0_gen|shift_reg[0][7]~q\ ) + ( \phase0_gen|mul_out[0][7]~q\ ) + ( \phase0_gen|Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][7]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][7]~q\,
	cin => \phase0_gen|Add13~26\,
	sumout => \phase0_gen|Add13~29_sumout\,
	cout => \phase0_gen|Add13~30\);

-- Location: FF_X87_Y12_N23
\phase0_gen|xout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(7));

-- Location: MLABCELL_X84_Y10_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \phase0_gen|xout\(7) ) + ( \phase1_gen|xout\(7) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \phase0_gen|xout\(7) ) + ( \phase1_gen|xout\(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xout\(7),
	datad => \phase0_gen|ALT_INV_xout\(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X84_Y10_N22
\xout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[7]~reg0_q\);

-- Location: MLABCELL_X84_Y8_N51
\phase1_gen|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add2~29_sumout\ = SUM(( !\phase1_gen|xin_reg\(7) ) + ( GND ) + ( \phase1_gen|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add2~26\,
	sumout => \phase1_gen|Add2~29_sumout\);

-- Location: FF_X84_Y8_N52
\phase1_gen|w1_n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w1_n\(8));

-- Location: FF_X83_Y10_N2
\phase1_gen|mul_out[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w1_n\(8),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[0][10]~q\);

-- Location: LABCELL_X85_Y8_N21
\phase1_gen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~29_sumout\ = SUM(( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add0~26\ ))
-- \phase1_gen|Add0~30\ = CARRY(( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(7),
	datac => \phase1_gen|ALT_INV_xin_reg\(6),
	cin => \phase1_gen|Add0~26\,
	sumout => \phase1_gen|Add0~29_sumout\,
	cout => \phase1_gen|Add0~30\);

-- Location: FF_X85_Y8_N23
\phase1_gen|w3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(8));

-- Location: LABCELL_X83_Y9_N24
\phase1_gen|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~33_sumout\ = SUM(( !\phase1_gen|w3\(8) ) + ( GND ) + ( \phase1_gen|Add3~30\ ))
-- \phase1_gen|Add3~34\ = CARRY(( !\phase1_gen|w3\(8) ) + ( GND ) + ( \phase1_gen|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_w3\(8),
	cin => \phase1_gen|Add3~30\,
	sumout => \phase1_gen|Add3~33_sumout\,
	cout => \phase1_gen|Add3~34\);

-- Location: FF_X83_Y9_N26
\phase1_gen|mul_out[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][8]~q\);

-- Location: LABCELL_X83_Y8_N9
\phase1_gen|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~13_sumout\ = SUM(( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add1~10\ ))
-- \phase1_gen|Add1~14\ = CARRY(( \phase1_gen|xin_reg\(3) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(6),
	datad => \phase1_gen|ALT_INV_xin_reg\(3),
	cin => \phase1_gen|Add1~10\,
	sumout => \phase1_gen|Add1~13_sumout\,
	cout => \phase1_gen|Add1~14\);

-- Location: FF_X83_Y8_N11
\phase1_gen|w9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(6));

-- Location: MLABCELL_X82_Y11_N57
\phase1_gen|mul_out[4][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][8]~feeder_combout\ = ( \phase1_gen|w9\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(6),
	combout => \phase1_gen|mul_out[4][8]~feeder_combout\);

-- Location: FF_X82_Y11_N59
\phase1_gen|mul_out[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][8]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][8]~q\);

-- Location: LABCELL_X83_Y11_N57
\phase1_gen|shift_reg[8][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[8][10]~feeder_combout\ = ( \phase1_gen|mul_out[0][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	combout => \phase1_gen|shift_reg[8][10]~feeder_combout\);

-- Location: FF_X83_Y11_N59
\phase1_gen|shift_reg[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[8][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[8][10]~q\);

-- Location: LABCELL_X83_Y11_N51
\phase1_gen|mul_out[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][8]~feeder_combout\ = ( \phase1_gen|w3\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(8),
	combout => \phase1_gen|mul_out[1][8]~feeder_combout\);

-- Location: FF_X83_Y11_N53
\phase1_gen|mul_out[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][8]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][8]~q\);

-- Location: MLABCELL_X84_Y11_N24
\phase1_gen|Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~33_sumout\ = SUM(( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|mul_out[1][8]~q\ ) + ( \phase1_gen|Add11~30\ ))
-- \phase1_gen|Add11~34\ = CARRY(( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|mul_out[1][8]~q\ ) + ( \phase1_gen|Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[8][10]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[1][8]~q\,
	cin => \phase1_gen|Add11~30\,
	sumout => \phase1_gen|Add11~33_sumout\,
	cout => \phase1_gen|Add11~34\);

-- Location: FF_X84_Y11_N25
\phase1_gen|shift_reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][8]~q\);

-- Location: LABCELL_X85_Y9_N24
\phase1_gen|Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~33_sumout\ = SUM(( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|shift_reg[7][8]~q\ ) + ( \phase1_gen|Add10~30\ ))
-- \phase1_gen|Add10~34\ = CARRY(( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|shift_reg[7][8]~q\ ) + ( \phase1_gen|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][8]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][8]~q\,
	cin => \phase1_gen|Add10~30\,
	sumout => \phase1_gen|Add10~33_sumout\,
	cout => \phase1_gen|Add10~34\);

-- Location: FF_X85_Y9_N25
\phase1_gen|shift_reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][8]~q\);

-- Location: MLABCELL_X84_Y9_N24
\phase1_gen|Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~33_sumout\ = SUM(( \phase1_gen|shift_reg[6][8]~q\ ) + ( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|Add9~30\ ))
-- \phase1_gen|Add9~34\ = CARRY(( \phase1_gen|shift_reg[6][8]~q\ ) + ( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[6][8]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[2][8]~q\,
	cin => \phase1_gen|Add9~30\,
	sumout => \phase1_gen|Add9~33_sumout\,
	cout => \phase1_gen|Add9~34\);

-- Location: FF_X84_Y9_N25
\phase1_gen|shift_reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][8]~q\);

-- Location: LABCELL_X83_Y11_N18
\phase1_gen|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~25_sumout\ = SUM(( \phase1_gen|shift_reg[5][8]~q\ ) + ( \phase1_gen|mul_out[4][8]~q\ ) + ( \phase1_gen|Add8~22\ ))
-- \phase1_gen|Add8~26\ = CARRY(( \phase1_gen|shift_reg[5][8]~q\ ) + ( \phase1_gen|mul_out[4][8]~q\ ) + ( \phase1_gen|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][8]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][8]~q\,
	cin => \phase1_gen|Add8~22\,
	sumout => \phase1_gen|Add8~25_sumout\,
	cout => \phase1_gen|Add8~26\);

-- Location: FF_X83_Y11_N20
\phase1_gen|shift_reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][8]~q\);

-- Location: MLABCELL_X82_Y11_N18
\phase1_gen|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~25_sumout\ = SUM(( \phase1_gen|mul_out[4][8]~q\ ) + ( \phase1_gen|shift_reg[4][8]~q\ ) + ( \phase1_gen|Add7~22\ ))
-- \phase1_gen|Add7~26\ = CARRY(( \phase1_gen|mul_out[4][8]~q\ ) + ( \phase1_gen|shift_reg[4][8]~q\ ) + ( \phase1_gen|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[4][8]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][8]~q\,
	cin => \phase1_gen|Add7~22\,
	sumout => \phase1_gen|Add7~25_sumout\,
	cout => \phase1_gen|Add7~26\);

-- Location: FF_X82_Y11_N19
\phase1_gen|shift_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][8]~q\);

-- Location: MLABCELL_X82_Y9_N24
\phase1_gen|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~33_sumout\ = SUM(( \phase1_gen|shift_reg[3][8]~q\ ) + ( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|Add6~30\ ))
-- \phase1_gen|Add6~34\ = CARRY(( \phase1_gen|shift_reg[3][8]~q\ ) + ( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][8]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][8]~q\,
	cin => \phase1_gen|Add6~30\,
	sumout => \phase1_gen|Add6~33_sumout\,
	cout => \phase1_gen|Add6~34\);

-- Location: FF_X82_Y9_N26
\phase1_gen|shift_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][8]~q\);

-- Location: LABCELL_X81_Y9_N24
\phase1_gen|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~33_sumout\ = SUM(( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|shift_reg[2][8]~q\ ) + ( \phase1_gen|Add5~30\ ))
-- \phase1_gen|Add5~34\ = CARRY(( \phase1_gen|mul_out[2][8]~q\ ) + ( \phase1_gen|shift_reg[2][8]~q\ ) + ( \phase1_gen|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[2][8]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[2][8]~q\,
	cin => \phase1_gen|Add5~30\,
	sumout => \phase1_gen|Add5~33_sumout\,
	cout => \phase1_gen|Add5~34\);

-- Location: FF_X81_Y9_N26
\phase1_gen|shift_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][8]~q\);

-- Location: MLABCELL_X82_Y10_N24
\phase1_gen|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~33_sumout\ = SUM(( \phase1_gen|mul_out[1][8]~q\ ) + ( \phase1_gen|shift_reg[1][8]~q\ ) + ( \phase1_gen|Add4~30\ ))
-- \phase1_gen|Add4~34\ = CARRY(( \phase1_gen|mul_out[1][8]~q\ ) + ( \phase1_gen|shift_reg[1][8]~q\ ) + ( \phase1_gen|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][8]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][8]~q\,
	cin => \phase1_gen|Add4~30\,
	sumout => \phase1_gen|Add4~33_sumout\,
	cout => \phase1_gen|Add4~34\);

-- Location: FF_X82_Y10_N25
\phase1_gen|shift_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][8]~q\);

-- Location: LABCELL_X83_Y10_N24
\phase1_gen|Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~33_sumout\ = SUM(( \phase1_gen|shift_reg[0][8]~q\ ) + ( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|Add13~30\ ))
-- \phase1_gen|Add13~34\ = CARRY(( \phase1_gen|shift_reg[0][8]~q\ ) + ( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[0][8]~q\,
	cin => \phase1_gen|Add13~30\,
	sumout => \phase1_gen|Add13~33_sumout\,
	cout => \phase1_gen|Add13~34\);

-- Location: FF_X83_Y10_N25
\phase1_gen|xout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(8));

-- Location: MLABCELL_X84_Y12_N51
\phase0_gen|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add1~29_sumout\ = SUM(( !\phase0_gen|xin_reg\(7) ) + ( GND ) + ( \phase0_gen|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add1~26\,
	sumout => \phase0_gen|Add1~29_sumout\);

-- Location: FF_X84_Y12_N52
\phase0_gen|w1_n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w1_n\(8));

-- Location: LABCELL_X88_Y12_N33
\phase0_gen|mul_out[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[0][10]~feeder_combout\ = ( \phase0_gen|w1_n\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w1_n\(8),
	combout => \phase0_gen|mul_out[0][10]~feeder_combout\);

-- Location: FF_X88_Y12_N35
\phase0_gen|mul_out[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[0][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[0][10]~q\);

-- Location: FF_X85_Y10_N56
\phase0_gen|w2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(8));

-- Location: LABCELL_X88_Y11_N45
\phase0_gen|mul_out[2][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[2][10]~feeder_combout\ = ( \phase0_gen|w2\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w2\(8),
	combout => \phase0_gen|mul_out[2][10]~feeder_combout\);

-- Location: FF_X88_Y11_N47
\phase0_gen|mul_out[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[2][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[2][10]~q\);

-- Location: LABCELL_X85_Y12_N21
\phase0_gen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~29_sumout\ = SUM(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(4) ) + ( \phase0_gen|Add0~26\ ))
-- \phase0_gen|Add0~30\ = CARRY(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(4) ) + ( \phase0_gen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(4),
	datad => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add0~26\,
	sumout => \phase0_gen|Add0~29_sumout\,
	cout => \phase0_gen|Add0~30\);

-- Location: FF_X85_Y12_N23
\phase0_gen|w15[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(8));

-- Location: LABCELL_X88_Y10_N51
\phase0_gen|mul_out[4][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][8]~feeder_combout\ = ( \phase0_gen|w15\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(8),
	combout => \phase0_gen|mul_out[4][8]~feeder_combout\);

-- Location: FF_X88_Y10_N52
\phase0_gen|mul_out[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][8]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][8]~q\);

-- Location: LABCELL_X85_Y10_N12
\phase0_gen|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~17_sumout\ = SUM(( \phase0_gen|w2\(5) ) + ( \phase0_gen|w15\(7) ) + ( \phase0_gen|Add3~14\ ))
-- \phase0_gen|Add3~18\ = CARRY(( \phase0_gen|w2\(5) ) + ( \phase0_gen|w15\(7) ) + ( \phase0_gen|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w15\(7),
	datad => \phase0_gen|ALT_INV_w2\(5),
	cin => \phase0_gen|Add3~14\,
	sumout => \phase0_gen|Add3~17_sumout\,
	cout => \phase0_gen|Add3~18\);

-- Location: FF_X85_Y10_N13
\phase0_gen|mul_out[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~17_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][8]~q\);

-- Location: LABCELL_X88_Y11_N15
\phase0_gen|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~21_sumout\ = SUM(( !\phase0_gen|w2[6]~DUPLICATE_q\ ) + ( GND ) + ( \phase0_gen|Add2~18\ ))
-- \phase0_gen|Add2~22\ = CARRY(( !\phase0_gen|w2[6]~DUPLICATE_q\ ) + ( GND ) + ( \phase0_gen|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_w2[6]~DUPLICATE_q\,
	cin => \phase0_gen|Add2~18\,
	sumout => \phase0_gen|Add2~21_sumout\,
	cout => \phase0_gen|Add2~22\);

-- Location: FF_X88_Y11_N17
\phase0_gen|mul_out[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][8]~q\);

-- Location: LABCELL_X88_Y12_N45
\phase0_gen|shift_reg[9][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[9][10]~feeder_combout\ = \phase0_gen|mul_out[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	combout => \phase0_gen|shift_reg[9][10]~feeder_combout\);

-- Location: FF_X88_Y12_N46
\phase0_gen|shift_reg[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[9][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[9][10]~q\);

-- Location: LABCELL_X88_Y11_N42
\phase0_gen|shift_reg[8][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[8][10]~feeder_combout\ = ( \phase0_gen|shift_reg[9][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[9][10]~q\,
	combout => \phase0_gen|shift_reg[8][10]~feeder_combout\);

-- Location: FF_X88_Y11_N44
\phase0_gen|shift_reg[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[8][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[8][10]~q\);

-- Location: MLABCELL_X87_Y11_N51
\phase0_gen|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~29_sumout\ = SUM(( \phase0_gen|shift_reg[8][10]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add11~26\ ))
-- \phase0_gen|Add11~30\ = CARRY(( \phase0_gen|shift_reg[8][10]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[8][10]~q\,
	cin => \phase0_gen|Add11~26\,
	sumout => \phase0_gen|Add11~29_sumout\,
	cout => \phase0_gen|Add11~30\);

-- Location: FF_X87_Y11_N52
\phase0_gen|shift_reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][8]~q\);

-- Location: MLABCELL_X87_Y9_N15
\phase0_gen|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~21_sumout\ = SUM(( \phase0_gen|shift_reg[7][8]~q\ ) + ( \phase0_gen|mul_out[3][8]~q\ ) + ( \phase0_gen|Add10~18\ ))
-- \phase0_gen|Add10~22\ = CARRY(( \phase0_gen|shift_reg[7][8]~q\ ) + ( \phase0_gen|mul_out[3][8]~q\ ) + ( \phase0_gen|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][8]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][8]~q\,
	cin => \phase0_gen|Add10~18\,
	sumout => \phase0_gen|Add10~21_sumout\,
	cout => \phase0_gen|Add10~22\);

-- Location: FF_X87_Y9_N16
\phase0_gen|shift_reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][8]~q\);

-- Location: LABCELL_X88_Y9_N24
\phase0_gen|Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~33_sumout\ = SUM(( \phase0_gen|mul_out[4][8]~q\ ) + ( \phase0_gen|shift_reg[6][8]~q\ ) + ( \phase0_gen|Add9~30\ ))
-- \phase0_gen|Add9~34\ = CARRY(( \phase0_gen|mul_out[4][8]~q\ ) + ( \phase0_gen|shift_reg[6][8]~q\ ) + ( \phase0_gen|Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[6][8]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][8]~q\,
	cin => \phase0_gen|Add9~30\,
	sumout => \phase0_gen|Add9~33_sumout\,
	cout => \phase0_gen|Add9~34\);

-- Location: FF_X88_Y9_N26
\phase0_gen|shift_reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][8]~q\);

-- Location: MLABCELL_X87_Y10_N21
\phase0_gen|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~29_sumout\ = SUM(( \phase0_gen|shift_reg[5][8]~q\ ) + ( \phase0_gen|mul_out[5][8]~q\ ) + ( \phase0_gen|Add8~26\ ))
-- \phase0_gen|Add8~30\ = CARRY(( \phase0_gen|shift_reg[5][8]~q\ ) + ( \phase0_gen|mul_out[5][8]~q\ ) + ( \phase0_gen|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[5][8]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][8]~q\,
	cin => \phase0_gen|Add8~26\,
	sumout => \phase0_gen|Add8~29_sumout\,
	cout => \phase0_gen|Add8~30\);

-- Location: FF_X87_Y10_N22
\phase0_gen|shift_reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][8]~q\);

-- Location: LABCELL_X88_Y10_N24
\phase0_gen|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~33_sumout\ = SUM(( \phase0_gen|shift_reg[4][8]~q\ ) + ( \phase0_gen|mul_out[4][8]~q\ ) + ( \phase0_gen|Add7~30\ ))
-- \phase0_gen|Add7~34\ = CARRY(( \phase0_gen|shift_reg[4][8]~q\ ) + ( \phase0_gen|mul_out[4][8]~q\ ) + ( \phase0_gen|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][8]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[4][8]~q\,
	cin => \phase0_gen|Add7~30\,
	sumout => \phase0_gen|Add7~33_sumout\,
	cout => \phase0_gen|Add7~34\);

-- Location: FF_X88_Y10_N26
\phase0_gen|shift_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][8]~q\);

-- Location: LABCELL_X88_Y13_N15
\phase0_gen|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~21_sumout\ = SUM(( \phase0_gen|mul_out[3][8]~q\ ) + ( \phase0_gen|shift_reg[3][8]~q\ ) + ( \phase0_gen|Add6~18\ ))
-- \phase0_gen|Add6~22\ = CARRY(( \phase0_gen|mul_out[3][8]~q\ ) + ( \phase0_gen|shift_reg[3][8]~q\ ) + ( \phase0_gen|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][8]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][8]~q\,
	cin => \phase0_gen|Add6~18\,
	sumout => \phase0_gen|Add6~21_sumout\,
	cout => \phase0_gen|Add6~22\);

-- Location: FF_X88_Y13_N17
\phase0_gen|shift_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][8]~q\);

-- Location: MLABCELL_X87_Y13_N21
\phase0_gen|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~29_sumout\ = SUM(( \phase0_gen|shift_reg[2][8]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~26\ ))
-- \phase0_gen|Add5~30\ = CARRY(( \phase0_gen|shift_reg[2][8]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[2][8]~q\,
	cin => \phase0_gen|Add5~26\,
	sumout => \phase0_gen|Add5~29_sumout\,
	cout => \phase0_gen|Add5~30\);

-- Location: FF_X87_Y13_N23
\phase0_gen|shift_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][8]~q\);

-- Location: MLABCELL_X87_Y12_N54
\phase0_gen|shift_reg[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][8]~feeder_combout\ = \phase0_gen|shift_reg[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[1][8]~q\,
	combout => \phase0_gen|shift_reg[0][8]~feeder_combout\);

-- Location: FF_X87_Y12_N56
\phase0_gen|shift_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][8]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][8]~q\);

-- Location: MLABCELL_X87_Y12_N24
\phase0_gen|Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~33_sumout\ = SUM(( \phase0_gen|shift_reg[0][8]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~30\ ))
-- \phase0_gen|Add13~34\ = CARRY(( \phase0_gen|shift_reg[0][8]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][8]~q\,
	cin => \phase0_gen|Add13~30\,
	sumout => \phase0_gen|Add13~33_sumout\,
	cout => \phase0_gen|Add13~34\);

-- Location: FF_X87_Y12_N26
\phase0_gen|xout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(8));

-- Location: MLABCELL_X84_Y10_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \phase0_gen|xout\(8) ) + ( \phase1_gen|xout\(8) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \phase0_gen|xout\(8) ) + ( \phase1_gen|xout\(8) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xout\(8),
	datad => \phase0_gen|ALT_INV_xout\(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X84_Y10_N25
\xout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[8]~reg0_q\);

-- Location: LABCELL_X85_Y8_N24
\phase1_gen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~33_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add0~30\ ))
-- \phase1_gen|Add0~34\ = CARRY(( \phase1_gen|xin_reg\(7) ) + ( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add0~30\,
	sumout => \phase1_gen|Add0~33_sumout\,
	cout => \phase1_gen|Add0~34\);

-- Location: FF_X85_Y8_N26
\phase1_gen|w3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(9));

-- Location: LABCELL_X83_Y9_N27
\phase1_gen|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~37_sumout\ = SUM(( !\phase1_gen|w3\(9) ) + ( GND ) + ( \phase1_gen|Add3~34\ ))
-- \phase1_gen|Add3~38\ = CARRY(( !\phase1_gen|w3\(9) ) + ( GND ) + ( \phase1_gen|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(9),
	cin => \phase1_gen|Add3~34\,
	sumout => \phase1_gen|Add3~37_sumout\,
	cout => \phase1_gen|Add3~38\);

-- Location: FF_X83_Y9_N29
\phase1_gen|mul_out[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][9]~q\);

-- Location: LABCELL_X83_Y8_N12
\phase1_gen|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~17_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(4) ) + ( \phase1_gen|Add1~14\ ))
-- \phase1_gen|Add1~18\ = CARRY(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(4) ) + ( \phase1_gen|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(4),
	datad => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add1~14\,
	sumout => \phase1_gen|Add1~17_sumout\,
	cout => \phase1_gen|Add1~18\);

-- Location: FF_X83_Y8_N13
\phase1_gen|w9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(7));

-- Location: MLABCELL_X82_Y11_N45
\phase1_gen|mul_out[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][9]~feeder_combout\ = ( \phase1_gen|w9\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(7),
	combout => \phase1_gen|mul_out[4][9]~feeder_combout\);

-- Location: FF_X82_Y11_N47
\phase1_gen|mul_out[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][9]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][9]~q\);

-- Location: MLABCELL_X84_Y11_N36
\phase1_gen|mul_out[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][9]~feeder_combout\ = ( \phase1_gen|w3\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(9),
	combout => \phase1_gen|mul_out[1][9]~feeder_combout\);

-- Location: FF_X84_Y11_N38
\phase1_gen|mul_out[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][9]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][9]~q\);

-- Location: MLABCELL_X84_Y11_N27
\phase1_gen|Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~37_sumout\ = SUM(( \phase1_gen|mul_out[1][9]~q\ ) + ( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|Add11~34\ ))
-- \phase1_gen|Add11~38\ = CARRY(( \phase1_gen|mul_out[1][9]~q\ ) + ( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[8][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][9]~q\,
	cin => \phase1_gen|Add11~34\,
	sumout => \phase1_gen|Add11~37_sumout\,
	cout => \phase1_gen|Add11~38\);

-- Location: FF_X84_Y11_N29
\phase1_gen|shift_reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][9]~q\);

-- Location: LABCELL_X85_Y9_N27
\phase1_gen|Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~37_sumout\ = SUM(( \phase1_gen|shift_reg[7][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add10~34\ ))
-- \phase1_gen|Add10~38\ = CARRY(( \phase1_gen|shift_reg[7][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][9]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][9]~q\,
	cin => \phase1_gen|Add10~34\,
	sumout => \phase1_gen|Add10~37_sumout\,
	cout => \phase1_gen|Add10~38\);

-- Location: FF_X85_Y9_N29
\phase1_gen|shift_reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][9]~q\);

-- Location: MLABCELL_X84_Y9_N27
\phase1_gen|Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~37_sumout\ = SUM(( \phase1_gen|shift_reg[6][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add9~34\ ))
-- \phase1_gen|Add9~38\ = CARRY(( \phase1_gen|shift_reg[6][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][9]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][9]~q\,
	cin => \phase1_gen|Add9~34\,
	sumout => \phase1_gen|Add9~37_sumout\,
	cout => \phase1_gen|Add9~38\);

-- Location: FF_X84_Y9_N29
\phase1_gen|shift_reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][9]~q\);

-- Location: LABCELL_X83_Y11_N21
\phase1_gen|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~29_sumout\ = SUM(( \phase1_gen|shift_reg[5][9]~q\ ) + ( \phase1_gen|mul_out[4][9]~q\ ) + ( \phase1_gen|Add8~26\ ))
-- \phase1_gen|Add8~30\ = CARRY(( \phase1_gen|shift_reg[5][9]~q\ ) + ( \phase1_gen|mul_out[4][9]~q\ ) + ( \phase1_gen|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][9]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][9]~q\,
	cin => \phase1_gen|Add8~26\,
	sumout => \phase1_gen|Add8~29_sumout\,
	cout => \phase1_gen|Add8~30\);

-- Location: FF_X83_Y11_N23
\phase1_gen|shift_reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][9]~q\);

-- Location: MLABCELL_X82_Y11_N21
\phase1_gen|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~29_sumout\ = SUM(( \phase1_gen|shift_reg[4][9]~q\ ) + ( \phase1_gen|mul_out[4][9]~q\ ) + ( \phase1_gen|Add7~26\ ))
-- \phase1_gen|Add7~30\ = CARRY(( \phase1_gen|shift_reg[4][9]~q\ ) + ( \phase1_gen|mul_out[4][9]~q\ ) + ( \phase1_gen|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][9]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][9]~q\,
	cin => \phase1_gen|Add7~26\,
	sumout => \phase1_gen|Add7~29_sumout\,
	cout => \phase1_gen|Add7~30\);

-- Location: FF_X82_Y11_N23
\phase1_gen|shift_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][9]~q\);

-- Location: MLABCELL_X82_Y9_N27
\phase1_gen|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~37_sumout\ = SUM(( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|shift_reg[3][9]~q\ ) + ( \phase1_gen|Add6~34\ ))
-- \phase1_gen|Add6~38\ = CARRY(( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|shift_reg[3][9]~q\ ) + ( \phase1_gen|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[3][9]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][9]~q\,
	cin => \phase1_gen|Add6~34\,
	sumout => \phase1_gen|Add6~37_sumout\,
	cout => \phase1_gen|Add6~38\);

-- Location: FF_X82_Y9_N29
\phase1_gen|shift_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][9]~q\);

-- Location: LABCELL_X81_Y9_N27
\phase1_gen|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~37_sumout\ = SUM(( \phase1_gen|shift_reg[2][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add5~34\ ))
-- \phase1_gen|Add5~38\ = CARRY(( \phase1_gen|shift_reg[2][9]~q\ ) + ( \phase1_gen|mul_out[2][9]~q\ ) + ( \phase1_gen|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][9]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[2][9]~q\,
	cin => \phase1_gen|Add5~34\,
	sumout => \phase1_gen|Add5~37_sumout\,
	cout => \phase1_gen|Add5~38\);

-- Location: FF_X81_Y9_N28
\phase1_gen|shift_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][9]~q\);

-- Location: MLABCELL_X82_Y10_N27
\phase1_gen|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~37_sumout\ = SUM(( \phase1_gen|mul_out[1][9]~q\ ) + ( \phase1_gen|shift_reg[1][9]~q\ ) + ( \phase1_gen|Add4~34\ ))
-- \phase1_gen|Add4~38\ = CARRY(( \phase1_gen|mul_out[1][9]~q\ ) + ( \phase1_gen|shift_reg[1][9]~q\ ) + ( \phase1_gen|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][9]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][9]~q\,
	cin => \phase1_gen|Add4~34\,
	sumout => \phase1_gen|Add4~37_sumout\,
	cout => \phase1_gen|Add4~38\);

-- Location: FF_X82_Y10_N28
\phase1_gen|shift_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][9]~q\);

-- Location: LABCELL_X83_Y10_N27
\phase1_gen|Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~37_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][9]~q\ ) + ( \phase1_gen|Add13~34\ ))
-- \phase1_gen|Add13~38\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][9]~q\ ) + ( \phase1_gen|Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][9]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~34\,
	sumout => \phase1_gen|Add13~37_sumout\,
	cout => \phase1_gen|Add13~38\);

-- Location: FF_X83_Y10_N28
\phase1_gen|xout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(9));

-- Location: LABCELL_X88_Y11_N18
\phase0_gen|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~25_sumout\ = SUM(( !\phase0_gen|w2\(7) ) + ( GND ) + ( \phase0_gen|Add2~22\ ))
-- \phase0_gen|Add2~26\ = CARRY(( !\phase0_gen|w2\(7) ) + ( GND ) + ( \phase0_gen|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(7),
	cin => \phase0_gen|Add2~22\,
	sumout => \phase0_gen|Add2~25_sumout\,
	cout => \phase0_gen|Add2~26\);

-- Location: FF_X88_Y11_N20
\phase0_gen|mul_out[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][9]~q\);

-- Location: MLABCELL_X87_Y11_N54
\phase0_gen|Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add11~33_sumout\ = SUM(( \phase0_gen|shift_reg[8][10]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[8][10]~q\,
	cin => \phase0_gen|Add11~30\,
	sumout => \phase0_gen|Add11~33_sumout\);

-- Location: FF_X87_Y11_N23
\phase0_gen|shift_reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][9]~q\);

-- Location: MLABCELL_X87_Y9_N18
\phase0_gen|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~25_sumout\ = SUM(( \phase0_gen|shift_reg[7][9]~q\ ) + ( \phase0_gen|mul_out[3][9]~q\ ) + ( \phase0_gen|Add10~22\ ))
-- \phase0_gen|Add10~26\ = CARRY(( \phase0_gen|shift_reg[7][9]~q\ ) + ( \phase0_gen|mul_out[3][9]~q\ ) + ( \phase0_gen|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][9]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][9]~q\,
	cin => \phase0_gen|Add10~22\,
	sumout => \phase0_gen|Add10~25_sumout\,
	cout => \phase0_gen|Add10~26\);

-- Location: FF_X87_Y9_N19
\phase0_gen|shift_reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][9]~q\);

-- Location: LABCELL_X85_Y12_N24
\phase0_gen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~33_sumout\ = SUM(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(5) ) + ( \phase0_gen|Add0~30\ ))
-- \phase0_gen|Add0~34\ = CARRY(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(5) ) + ( \phase0_gen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(5),
	datad => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add0~30\,
	sumout => \phase0_gen|Add0~33_sumout\,
	cout => \phase0_gen|Add0~34\);

-- Location: FF_X85_Y12_N25
\phase0_gen|w15[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(9));

-- Location: LABCELL_X88_Y12_N42
\phase0_gen|mul_out[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][9]~feeder_combout\ = ( \phase0_gen|w15\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(9),
	combout => \phase0_gen|mul_out[4][9]~feeder_combout\);

-- Location: FF_X88_Y12_N44
\phase0_gen|mul_out[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][9]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][9]~q\);

-- Location: LABCELL_X88_Y9_N27
\phase0_gen|Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~37_sumout\ = SUM(( \phase0_gen|mul_out[4][9]~q\ ) + ( \phase0_gen|shift_reg[6][9]~q\ ) + ( \phase0_gen|Add9~34\ ))
-- \phase0_gen|Add9~38\ = CARRY(( \phase0_gen|mul_out[4][9]~q\ ) + ( \phase0_gen|shift_reg[6][9]~q\ ) + ( \phase0_gen|Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[6][9]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][9]~q\,
	cin => \phase0_gen|Add9~34\,
	sumout => \phase0_gen|Add9~37_sumout\,
	cout => \phase0_gen|Add9~38\);

-- Location: FF_X88_Y9_N28
\phase0_gen|shift_reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][9]~q\);

-- Location: FF_X85_Y10_N59
\phase0_gen|w2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|xin_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w2\(6));

-- Location: LABCELL_X85_Y10_N15
\phase0_gen|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~21_sumout\ = SUM(( \phase0_gen|w15\(8) ) + ( \phase0_gen|w2\(6) ) + ( \phase0_gen|Add3~18\ ))
-- \phase0_gen|Add3~22\ = CARRY(( \phase0_gen|w15\(8) ) + ( \phase0_gen|w2\(6) ) + ( \phase0_gen|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(6),
	datad => \phase0_gen|ALT_INV_w15\(8),
	cin => \phase0_gen|Add3~18\,
	sumout => \phase0_gen|Add3~21_sumout\,
	cout => \phase0_gen|Add3~22\);

-- Location: FF_X85_Y10_N16
\phase0_gen|mul_out[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~21_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][9]~q\);

-- Location: MLABCELL_X87_Y10_N24
\phase0_gen|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~33_sumout\ = SUM(( \phase0_gen|mul_out[5][9]~q\ ) + ( \phase0_gen|shift_reg[5][9]~q\ ) + ( \phase0_gen|Add8~30\ ))
-- \phase0_gen|Add8~34\ = CARRY(( \phase0_gen|mul_out[5][9]~q\ ) + ( \phase0_gen|shift_reg[5][9]~q\ ) + ( \phase0_gen|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][9]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][9]~q\,
	cin => \phase0_gen|Add8~30\,
	sumout => \phase0_gen|Add8~33_sumout\,
	cout => \phase0_gen|Add8~34\);

-- Location: FF_X87_Y10_N25
\phase0_gen|shift_reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][9]~q\);

-- Location: LABCELL_X88_Y10_N27
\phase0_gen|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~37_sumout\ = SUM(( \phase0_gen|mul_out[4][9]~q\ ) + ( \phase0_gen|shift_reg[4][9]~q\ ) + ( \phase0_gen|Add7~34\ ))
-- \phase0_gen|Add7~38\ = CARRY(( \phase0_gen|mul_out[4][9]~q\ ) + ( \phase0_gen|shift_reg[4][9]~q\ ) + ( \phase0_gen|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][9]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][9]~q\,
	cin => \phase0_gen|Add7~34\,
	sumout => \phase0_gen|Add7~37_sumout\,
	cout => \phase0_gen|Add7~38\);

-- Location: FF_X88_Y10_N29
\phase0_gen|shift_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][9]~q\);

-- Location: LABCELL_X88_Y13_N18
\phase0_gen|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~25_sumout\ = SUM(( \phase0_gen|mul_out[3][9]~q\ ) + ( \phase0_gen|shift_reg[3][9]~q\ ) + ( \phase0_gen|Add6~22\ ))
-- \phase0_gen|Add6~26\ = CARRY(( \phase0_gen|mul_out[3][9]~q\ ) + ( \phase0_gen|shift_reg[3][9]~q\ ) + ( \phase0_gen|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[3][9]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][9]~q\,
	cin => \phase0_gen|Add6~22\,
	sumout => \phase0_gen|Add6~25_sumout\,
	cout => \phase0_gen|Add6~26\);

-- Location: FF_X88_Y13_N20
\phase0_gen|shift_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][9]~q\);

-- Location: MLABCELL_X87_Y13_N24
\phase0_gen|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~33_sumout\ = SUM(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][9]~q\ ) + ( \phase0_gen|Add5~30\ ))
-- \phase0_gen|Add5~34\ = CARRY(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][9]~q\ ) + ( \phase0_gen|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[2][9]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase0_gen|Add5~30\,
	sumout => \phase0_gen|Add5~33_sumout\,
	cout => \phase0_gen|Add5~34\);

-- Location: FF_X87_Y13_N25
\phase0_gen|shift_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][9]~q\);

-- Location: MLABCELL_X87_Y12_N48
\phase0_gen|shift_reg[0][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][9]~feeder_combout\ = ( \phase0_gen|shift_reg[1][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[1][9]~q\,
	combout => \phase0_gen|shift_reg[0][9]~feeder_combout\);

-- Location: FF_X87_Y12_N49
\phase0_gen|shift_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][9]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][9]~q\);

-- Location: MLABCELL_X87_Y12_N27
\phase0_gen|Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~37_sumout\ = SUM(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][9]~q\ ) + ( \phase0_gen|Add13~34\ ))
-- \phase0_gen|Add13~38\ = CARRY(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][9]~q\ ) + ( \phase0_gen|Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[0][9]~q\,
	cin => \phase0_gen|Add13~34\,
	sumout => \phase0_gen|Add13~37_sumout\,
	cout => \phase0_gen|Add13~38\);

-- Location: FF_X87_Y12_N28
\phase0_gen|xout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(9));

-- Location: MLABCELL_X84_Y10_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \phase0_gen|xout\(9) ) + ( \phase1_gen|xout\(9) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \phase0_gen|xout\(9) ) + ( \phase1_gen|xout\(9) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(9),
	datad => \phase0_gen|ALT_INV_xout\(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X84_Y10_N28
\xout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[9]~reg0_q\);

-- Location: LABCELL_X83_Y8_N15
\phase1_gen|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~21_sumout\ = SUM(( \phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add1~18\ ))
-- \phase1_gen|Add1~22\ = CARRY(( \phase1_gen|xin_reg\(5) ) + ( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(7),
	datad => \phase1_gen|ALT_INV_xin_reg\(5),
	cin => \phase1_gen|Add1~18\,
	sumout => \phase1_gen|Add1~21_sumout\,
	cout => \phase1_gen|Add1~22\);

-- Location: FF_X83_Y8_N17
\phase1_gen|w9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(8));

-- Location: FF_X83_Y8_N56
\phase1_gen|mul_out[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w9\(8),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][10]~q\);

-- Location: LABCELL_X85_Y8_N27
\phase1_gen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add0~37_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( !\phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add0~34\,
	sumout => \phase1_gen|Add0~37_sumout\);

-- Location: FF_X85_Y8_N28
\phase1_gen|w3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w3\(10));

-- Location: LABCELL_X83_Y10_N54
\phase1_gen|mul_out[1][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[1][10]~feeder_combout\ = ( \phase1_gen|w3\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w3\(10),
	combout => \phase1_gen|mul_out[1][10]~feeder_combout\);

-- Location: FF_X83_Y10_N56
\phase1_gen|mul_out[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[1][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[1][10]~q\);

-- Location: MLABCELL_X84_Y11_N30
\phase1_gen|Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~41_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|Add11~38\ ))
-- \phase1_gen|Add11~42\ = CARRY(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[8][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	cin => \phase1_gen|Add11~38\,
	sumout => \phase1_gen|Add11~41_sumout\,
	cout => \phase1_gen|Add11~42\);

-- Location: FF_X84_Y11_N31
\phase1_gen|shift_reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][10]~q\);

-- Location: LABCELL_X83_Y9_N30
\phase1_gen|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~41_sumout\ = SUM(( !\phase1_gen|w3\(10) ) + ( GND ) + ( \phase1_gen|Add3~38\ ))
-- \phase1_gen|Add3~42\ = CARRY(( !\phase1_gen|w3\(10) ) + ( GND ) + ( \phase1_gen|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase1_gen|ALT_INV_w3\(10),
	cin => \phase1_gen|Add3~38\,
	sumout => \phase1_gen|Add3~41_sumout\,
	cout => \phase1_gen|Add3~42\);

-- Location: FF_X83_Y9_N32
\phase1_gen|mul_out[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][10]~q\);

-- Location: LABCELL_X85_Y9_N30
\phase1_gen|Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~41_sumout\ = SUM(( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|shift_reg[7][10]~q\ ) + ( \phase1_gen|Add10~38\ ))
-- \phase1_gen|Add10~42\ = CARRY(( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|shift_reg[7][10]~q\ ) + ( \phase1_gen|Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase1_gen|Add10~38\,
	sumout => \phase1_gen|Add10~41_sumout\,
	cout => \phase1_gen|Add10~42\);

-- Location: FF_X85_Y9_N32
\phase1_gen|shift_reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][10]~q\);

-- Location: MLABCELL_X84_Y9_N30
\phase1_gen|Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~41_sumout\ = SUM(( \phase1_gen|shift_reg[6][10]~q\ ) + ( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|Add9~38\ ))
-- \phase1_gen|Add9~42\ = CARRY(( \phase1_gen|shift_reg[6][10]~q\ ) + ( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[6][10]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase1_gen|Add9~38\,
	sumout => \phase1_gen|Add9~41_sumout\,
	cout => \phase1_gen|Add9~42\);

-- Location: FF_X84_Y9_N32
\phase1_gen|shift_reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][10]~q\);

-- Location: LABCELL_X83_Y11_N24
\phase1_gen|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~33_sumout\ = SUM(( \phase1_gen|shift_reg[5][10]~q\ ) + ( \phase1_gen|mul_out[4][10]~q\ ) + ( \phase1_gen|Add8~30\ ))
-- \phase1_gen|Add8~34\ = CARRY(( \phase1_gen|shift_reg[5][10]~q\ ) + ( \phase1_gen|mul_out[4][10]~q\ ) + ( \phase1_gen|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][10]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][10]~q\,
	cin => \phase1_gen|Add8~30\,
	sumout => \phase1_gen|Add8~33_sumout\,
	cout => \phase1_gen|Add8~34\);

-- Location: FF_X83_Y11_N25
\phase1_gen|shift_reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][10]~q\);

-- Location: MLABCELL_X82_Y11_N24
\phase1_gen|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~33_sumout\ = SUM(( \phase1_gen|mul_out[4][10]~q\ ) + ( \phase1_gen|shift_reg[4][10]~q\ ) + ( \phase1_gen|Add7~30\ ))
-- \phase1_gen|Add7~34\ = CARRY(( \phase1_gen|mul_out[4][10]~q\ ) + ( \phase1_gen|shift_reg[4][10]~q\ ) + ( \phase1_gen|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[4][10]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[4][10]~q\,
	cin => \phase1_gen|Add7~30\,
	sumout => \phase1_gen|Add7~33_sumout\,
	cout => \phase1_gen|Add7~34\);

-- Location: FF_X82_Y11_N26
\phase1_gen|shift_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][10]~q\);

-- Location: MLABCELL_X82_Y9_N30
\phase1_gen|Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~41_sumout\ = SUM(( \phase1_gen|shift_reg[3][10]~q\ ) + ( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|Add6~38\ ))
-- \phase1_gen|Add6~42\ = CARRY(( \phase1_gen|shift_reg[3][10]~q\ ) + ( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[3][10]~q\,
	dataf => \phase1_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase1_gen|Add6~38\,
	sumout => \phase1_gen|Add6~41_sumout\,
	cout => \phase1_gen|Add6~42\);

-- Location: FF_X82_Y9_N32
\phase1_gen|shift_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][10]~q\);

-- Location: LABCELL_X81_Y9_N30
\phase1_gen|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~41_sumout\ = SUM(( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|shift_reg[2][10]~q\ ) + ( \phase1_gen|Add5~38\ ))
-- \phase1_gen|Add5~42\ = CARRY(( \phase1_gen|mul_out[2][10]~q\ ) + ( \phase1_gen|shift_reg[2][10]~q\ ) + ( \phase1_gen|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase1_gen|Add5~38\,
	sumout => \phase1_gen|Add5~41_sumout\,
	cout => \phase1_gen|Add5~42\);

-- Location: FF_X81_Y9_N31
\phase1_gen|shift_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][10]~q\);

-- Location: MLABCELL_X82_Y10_N30
\phase1_gen|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~41_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][10]~q\ ) + ( \phase1_gen|Add4~38\ ))
-- \phase1_gen|Add4~42\ = CARRY(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][10]~q\ ) + ( \phase1_gen|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	cin => \phase1_gen|Add4~38\,
	sumout => \phase1_gen|Add4~41_sumout\,
	cout => \phase1_gen|Add4~42\);

-- Location: FF_X82_Y10_N31
\phase1_gen|shift_reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][10]~q\);

-- Location: LABCELL_X83_Y10_N30
\phase1_gen|Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~41_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][10]~q\ ) + ( \phase1_gen|Add13~38\ ))
-- \phase1_gen|Add13~42\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][10]~q\ ) + ( \phase1_gen|Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][10]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~38\,
	sumout => \phase1_gen|Add13~41_sumout\,
	cout => \phase1_gen|Add13~42\);

-- Location: FF_X83_Y10_N31
\phase1_gen|xout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(10));

-- Location: LABCELL_X85_Y12_N27
\phase0_gen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~37_sumout\ = SUM(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(6) ) + ( \phase0_gen|Add0~34\ ))
-- \phase0_gen|Add0~38\ = CARRY(( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|xin_reg\(6) ) + ( \phase0_gen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_xin_reg\(6),
	datad => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add0~34\,
	sumout => \phase0_gen|Add0~37_sumout\,
	cout => \phase0_gen|Add0~38\);

-- Location: FF_X85_Y12_N28
\phase0_gen|w15[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(10));

-- Location: LABCELL_X88_Y9_N51
\phase0_gen|mul_out[4][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][10]~feeder_combout\ = \phase0_gen|w15\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w15\(10),
	combout => \phase0_gen|mul_out[4][10]~feeder_combout\);

-- Location: FF_X88_Y9_N53
\phase0_gen|mul_out[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][10]~q\);

-- Location: LABCELL_X88_Y11_N21
\phase0_gen|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~29_sumout\ = SUM(( !\phase0_gen|w2\(8) ) + ( GND ) + ( \phase0_gen|Add2~26\ ))
-- \phase0_gen|Add2~30\ = CARRY(( !\phase0_gen|w2\(8) ) + ( GND ) + ( \phase0_gen|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(8),
	cin => \phase0_gen|Add2~26\,
	sumout => \phase0_gen|Add2~29_sumout\,
	cout => \phase0_gen|Add2~30\);

-- Location: FF_X88_Y11_N23
\phase0_gen|mul_out[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][10]~q\);

-- Location: FF_X87_Y11_N5
\phase0_gen|shift_reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][10]~q\);

-- Location: MLABCELL_X87_Y9_N21
\phase0_gen|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~29_sumout\ = SUM(( \phase0_gen|shift_reg[7][10]~q\ ) + ( \phase0_gen|mul_out[3][10]~q\ ) + ( \phase0_gen|Add10~26\ ))
-- \phase0_gen|Add10~30\ = CARRY(( \phase0_gen|shift_reg[7][10]~q\ ) + ( \phase0_gen|mul_out[3][10]~q\ ) + ( \phase0_gen|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][10]~q\,
	cin => \phase0_gen|Add10~26\,
	sumout => \phase0_gen|Add10~29_sumout\,
	cout => \phase0_gen|Add10~30\);

-- Location: FF_X87_Y9_N22
\phase0_gen|shift_reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][10]~q\);

-- Location: LABCELL_X88_Y9_N30
\phase0_gen|Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~41_sumout\ = SUM(( \phase0_gen|shift_reg[6][10]~q\ ) + ( \phase0_gen|mul_out[4][10]~q\ ) + ( \phase0_gen|Add9~38\ ))
-- \phase0_gen|Add9~42\ = CARRY(( \phase0_gen|shift_reg[6][10]~q\ ) + ( \phase0_gen|mul_out[4][10]~q\ ) + ( \phase0_gen|Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[6][10]~q\,
	cin => \phase0_gen|Add9~38\,
	sumout => \phase0_gen|Add9~41_sumout\,
	cout => \phase0_gen|Add9~42\);

-- Location: FF_X88_Y9_N31
\phase0_gen|shift_reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][10]~q\);

-- Location: LABCELL_X85_Y10_N18
\phase0_gen|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~25_sumout\ = SUM(( \phase0_gen|w15\(9) ) + ( \phase0_gen|w2\(7) ) + ( \phase0_gen|Add3~22\ ))
-- \phase0_gen|Add3~26\ = CARRY(( \phase0_gen|w15\(9) ) + ( \phase0_gen|w2\(7) ) + ( \phase0_gen|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_w2\(7),
	datad => \phase0_gen|ALT_INV_w15\(9),
	cin => \phase0_gen|Add3~22\,
	sumout => \phase0_gen|Add3~25_sumout\,
	cout => \phase0_gen|Add3~26\);

-- Location: FF_X85_Y10_N19
\phase0_gen|mul_out[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~25_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][10]~q\);

-- Location: MLABCELL_X87_Y10_N27
\phase0_gen|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~37_sumout\ = SUM(( \phase0_gen|mul_out[5][10]~q\ ) + ( \phase0_gen|shift_reg[5][10]~q\ ) + ( \phase0_gen|Add8~34\ ))
-- \phase0_gen|Add8~38\ = CARRY(( \phase0_gen|mul_out[5][10]~q\ ) + ( \phase0_gen|shift_reg[5][10]~q\ ) + ( \phase0_gen|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[5][10]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][10]~q\,
	cin => \phase0_gen|Add8~34\,
	sumout => \phase0_gen|Add8~37_sumout\,
	cout => \phase0_gen|Add8~38\);

-- Location: FF_X87_Y10_N28
\phase0_gen|shift_reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][10]~q\);

-- Location: LABCELL_X88_Y10_N30
\phase0_gen|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~41_sumout\ = SUM(( \phase0_gen|mul_out[4][10]~q\ ) + ( \phase0_gen|shift_reg[4][10]~q\ ) + ( \phase0_gen|Add7~38\ ))
-- \phase0_gen|Add7~42\ = CARRY(( \phase0_gen|mul_out[4][10]~q\ ) + ( \phase0_gen|shift_reg[4][10]~q\ ) + ( \phase0_gen|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][10]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][10]~q\,
	cin => \phase0_gen|Add7~38\,
	sumout => \phase0_gen|Add7~41_sumout\,
	cout => \phase0_gen|Add7~42\);

-- Location: FF_X88_Y10_N31
\phase0_gen|shift_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][10]~q\);

-- Location: LABCELL_X88_Y13_N21
\phase0_gen|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~29_sumout\ = SUM(( \phase0_gen|mul_out[3][10]~q\ ) + ( \phase0_gen|shift_reg[3][10]~q\ ) + ( \phase0_gen|Add6~26\ ))
-- \phase0_gen|Add6~30\ = CARRY(( \phase0_gen|mul_out[3][10]~q\ ) + ( \phase0_gen|shift_reg[3][10]~q\ ) + ( \phase0_gen|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][10]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][10]~q\,
	cin => \phase0_gen|Add6~26\,
	sumout => \phase0_gen|Add6~29_sumout\,
	cout => \phase0_gen|Add6~30\);

-- Location: FF_X88_Y13_N23
\phase0_gen|shift_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][10]~q\);

-- Location: MLABCELL_X87_Y13_N27
\phase0_gen|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~37_sumout\ = SUM(( \phase0_gen|shift_reg[2][10]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~34\ ))
-- \phase0_gen|Add5~38\ = CARRY(( \phase0_gen|shift_reg[2][10]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[2][10]~q\,
	cin => \phase0_gen|Add5~34\,
	sumout => \phase0_gen|Add5~37_sumout\,
	cout => \phase0_gen|Add5~38\);

-- Location: FF_X87_Y13_N28
\phase0_gen|shift_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][10]~q\);

-- Location: MLABCELL_X87_Y12_N57
\phase0_gen|shift_reg[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][10]~feeder_combout\ = ( \phase0_gen|shift_reg[1][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[1][10]~q\,
	combout => \phase0_gen|shift_reg[0][10]~feeder_combout\);

-- Location: FF_X87_Y12_N58
\phase0_gen|shift_reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][10]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][10]~q\);

-- Location: MLABCELL_X87_Y12_N30
\phase0_gen|Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~41_sumout\ = SUM(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][10]~q\ ) + ( \phase0_gen|Add13~38\ ))
-- \phase0_gen|Add13~42\ = CARRY(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][10]~q\ ) + ( \phase0_gen|Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[0][10]~q\,
	cin => \phase0_gen|Add13~38\,
	sumout => \phase0_gen|Add13~41_sumout\,
	cout => \phase0_gen|Add13~42\);

-- Location: FF_X87_Y12_N31
\phase0_gen|xout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(10));

-- Location: MLABCELL_X84_Y10_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \phase0_gen|xout\(10) ) + ( \phase1_gen|xout\(10) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \phase0_gen|xout\(10) ) + ( \phase1_gen|xout\(10) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(10),
	datad => \phase0_gen|ALT_INV_xout\(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X84_Y10_N32
\xout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[10]~reg0_q\);

-- Location: LABCELL_X85_Y12_N30
\phase0_gen|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~41_sumout\ = SUM(( \phase0_gen|xin_reg\(7) ) + ( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|Add0~38\ ))
-- \phase0_gen|Add0~42\ = CARRY(( \phase0_gen|xin_reg\(7) ) + ( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add0~38\,
	sumout => \phase0_gen|Add0~41_sumout\,
	cout => \phase0_gen|Add0~42\);

-- Location: FF_X85_Y12_N32
\phase0_gen|w15[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(11));

-- Location: FF_X87_Y9_N56
\phase0_gen|mul_out[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|w15\(11),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][11]~q\);

-- Location: LABCELL_X88_Y11_N24
\phase0_gen|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add2~33_sumout\ = SUM(( !\phase0_gen|w2\(8) ) + ( GND ) + ( \phase0_gen|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_w2\(8),
	cin => \phase0_gen|Add2~30\,
	sumout => \phase0_gen|Add2~33_sumout\);

-- Location: FF_X88_Y11_N26
\phase0_gen|mul_out[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add2~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[3][11]~q\);

-- Location: FF_X87_Y11_N11
\phase0_gen|shift_reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][11]~q\);

-- Location: MLABCELL_X87_Y9_N24
\phase0_gen|Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~33_sumout\ = SUM(( \phase0_gen|shift_reg[7][11]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~30\ ))
-- \phase0_gen|Add10~34\ = CARRY(( \phase0_gen|shift_reg[7][11]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][11]~q\,
	cin => \phase0_gen|Add10~30\,
	sumout => \phase0_gen|Add10~33_sumout\,
	cout => \phase0_gen|Add10~34\);

-- Location: FF_X87_Y9_N25
\phase0_gen|shift_reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][11]~q\);

-- Location: LABCELL_X88_Y9_N33
\phase0_gen|Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~45_sumout\ = SUM(( \phase0_gen|mul_out[4][11]~q\ ) + ( \phase0_gen|shift_reg[6][11]~q\ ) + ( \phase0_gen|Add9~42\ ))
-- \phase0_gen|Add9~46\ = CARRY(( \phase0_gen|mul_out[4][11]~q\ ) + ( \phase0_gen|shift_reg[6][11]~q\ ) + ( \phase0_gen|Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[6][11]~q\,
	datac => \phase0_gen|ALT_INV_mul_out[4][11]~q\,
	cin => \phase0_gen|Add9~42\,
	sumout => \phase0_gen|Add9~45_sumout\,
	cout => \phase0_gen|Add9~46\);

-- Location: FF_X88_Y9_N35
\phase0_gen|shift_reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][11]~q\);

-- Location: LABCELL_X85_Y10_N21
\phase0_gen|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~29_sumout\ = SUM(( \phase0_gen|w2\(8) ) + ( \phase0_gen|w15\(10) ) + ( \phase0_gen|Add3~26\ ))
-- \phase0_gen|Add3~30\ = CARRY(( \phase0_gen|w2\(8) ) + ( \phase0_gen|w15\(10) ) + ( \phase0_gen|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w15\(10),
	datad => \phase0_gen|ALT_INV_w2\(8),
	cin => \phase0_gen|Add3~26\,
	sumout => \phase0_gen|Add3~29_sumout\,
	cout => \phase0_gen|Add3~30\);

-- Location: FF_X85_Y10_N22
\phase0_gen|mul_out[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~29_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][11]~q\);

-- Location: MLABCELL_X87_Y10_N30
\phase0_gen|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~41_sumout\ = SUM(( \phase0_gen|mul_out[5][11]~q\ ) + ( \phase0_gen|shift_reg[5][11]~q\ ) + ( \phase0_gen|Add8~38\ ))
-- \phase0_gen|Add8~42\ = CARRY(( \phase0_gen|mul_out[5][11]~q\ ) + ( \phase0_gen|shift_reg[5][11]~q\ ) + ( \phase0_gen|Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[5][11]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[5][11]~q\,
	cin => \phase0_gen|Add8~38\,
	sumout => \phase0_gen|Add8~41_sumout\,
	cout => \phase0_gen|Add8~42\);

-- Location: FF_X87_Y10_N31
\phase0_gen|shift_reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][11]~q\);

-- Location: LABCELL_X88_Y10_N33
\phase0_gen|Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~45_sumout\ = SUM(( \phase0_gen|mul_out[4][11]~q\ ) + ( \phase0_gen|shift_reg[4][11]~q\ ) + ( \phase0_gen|Add7~42\ ))
-- \phase0_gen|Add7~46\ = CARRY(( \phase0_gen|mul_out[4][11]~q\ ) + ( \phase0_gen|shift_reg[4][11]~q\ ) + ( \phase0_gen|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[4][11]~q\,
	dataf => \phase0_gen|ALT_INV_shift_reg[4][11]~q\,
	cin => \phase0_gen|Add7~42\,
	sumout => \phase0_gen|Add7~45_sumout\,
	cout => \phase0_gen|Add7~46\);

-- Location: FF_X88_Y10_N35
\phase0_gen|shift_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][11]~q\);

-- Location: LABCELL_X88_Y13_N24
\phase0_gen|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~33_sumout\ = SUM(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][11]~q\ ) + ( \phase0_gen|Add6~30\ ))
-- \phase0_gen|Add6~34\ = CARRY(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][11]~q\ ) + ( \phase0_gen|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][11]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	cin => \phase0_gen|Add6~30\,
	sumout => \phase0_gen|Add6~33_sumout\,
	cout => \phase0_gen|Add6~34\);

-- Location: FF_X88_Y13_N26
\phase0_gen|shift_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][11]~q\);

-- Location: MLABCELL_X87_Y13_N30
\phase0_gen|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~41_sumout\ = SUM(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][11]~q\ ) + ( \phase0_gen|Add5~38\ ))
-- \phase0_gen|Add5~42\ = CARRY(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][11]~q\ ) + ( \phase0_gen|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[2][11]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase0_gen|Add5~38\,
	sumout => \phase0_gen|Add5~41_sumout\,
	cout => \phase0_gen|Add5~42\);

-- Location: FF_X87_Y13_N31
\phase0_gen|shift_reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][11]~q\);

-- Location: MLABCELL_X87_Y12_N51
\phase0_gen|shift_reg[0][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][11]~feeder_combout\ = ( \phase0_gen|shift_reg[1][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_shift_reg[1][11]~q\,
	combout => \phase0_gen|shift_reg[0][11]~feeder_combout\);

-- Location: FF_X87_Y12_N52
\phase0_gen|shift_reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][11]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][11]~q\);

-- Location: MLABCELL_X87_Y12_N33
\phase0_gen|Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~45_sumout\ = SUM(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][11]~q\ ) + ( \phase0_gen|Add13~42\ ))
-- \phase0_gen|Add13~46\ = CARRY(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][11]~q\ ) + ( \phase0_gen|Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[0][11]~q\,
	cin => \phase0_gen|Add13~42\,
	sumout => \phase0_gen|Add13~45_sumout\,
	cout => \phase0_gen|Add13~46\);

-- Location: FF_X87_Y12_N34
\phase0_gen|xout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(11));

-- Location: LABCELL_X83_Y9_N33
\phase1_gen|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add3~45_sumout\ = SUM(( !\phase1_gen|w3\(10) ) + ( GND ) + ( \phase1_gen|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_w3\(10),
	cin => \phase1_gen|Add3~42\,
	sumout => \phase1_gen|Add3~45_sumout\);

-- Location: FF_X83_Y9_N35
\phase1_gen|mul_out[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add3~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[2][11]~q\);

-- Location: MLABCELL_X84_Y11_N33
\phase1_gen|Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add11~45_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[8][10]~q\ ) + ( \phase1_gen|Add11~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	dataf => \phase1_gen|ALT_INV_shift_reg[8][10]~q\,
	cin => \phase1_gen|Add11~42\,
	sumout => \phase1_gen|Add11~45_sumout\);

-- Location: MLABCELL_X84_Y11_N51
\phase1_gen|shift_reg[7][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[7][11]~feeder_combout\ = ( \phase1_gen|Add11~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add11~45_sumout\,
	combout => \phase1_gen|shift_reg[7][11]~feeder_combout\);

-- Location: FF_X84_Y11_N52
\phase1_gen|shift_reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[7][11]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][11]~q\);

-- Location: LABCELL_X85_Y9_N33
\phase1_gen|Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~45_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][11]~q\ ) + ( \phase1_gen|Add10~42\ ))
-- \phase1_gen|Add10~46\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][11]~q\ ) + ( \phase1_gen|Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][11]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add10~42\,
	sumout => \phase1_gen|Add10~45_sumout\,
	cout => \phase1_gen|Add10~46\);

-- Location: FF_X85_Y9_N34
\phase1_gen|shift_reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][11]~q\);

-- Location: MLABCELL_X84_Y9_N33
\phase1_gen|Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~45_sumout\ = SUM(( \phase1_gen|shift_reg[6][11]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~42\ ))
-- \phase1_gen|Add9~46\ = CARRY(( \phase1_gen|shift_reg[6][11]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][11]~q\,
	cin => \phase1_gen|Add9~42\,
	sumout => \phase1_gen|Add9~45_sumout\,
	cout => \phase1_gen|Add9~46\);

-- Location: FF_X84_Y9_N34
\phase1_gen|shift_reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][11]~q\);

-- Location: LABCELL_X83_Y8_N18
\phase1_gen|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~25_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add1~22\ ))
-- \phase1_gen|Add1~26\ = CARRY(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(6) ) + ( \phase1_gen|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(6),
	datad => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add1~22\,
	sumout => \phase1_gen|Add1~25_sumout\,
	cout => \phase1_gen|Add1~26\);

-- Location: FF_X83_Y8_N19
\phase1_gen|w9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(9));

-- Location: LABCELL_X81_Y11_N6
\phase1_gen|mul_out[4][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][11]~feeder_combout\ = ( \phase1_gen|w9\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(9),
	combout => \phase1_gen|mul_out[4][11]~feeder_combout\);

-- Location: FF_X81_Y11_N8
\phase1_gen|mul_out[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][11]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][11]~q\);

-- Location: LABCELL_X83_Y11_N27
\phase1_gen|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~37_sumout\ = SUM(( \phase1_gen|mul_out[4][11]~q\ ) + ( \phase1_gen|shift_reg[5][11]~q\ ) + ( \phase1_gen|Add8~34\ ))
-- \phase1_gen|Add8~38\ = CARRY(( \phase1_gen|mul_out[4][11]~q\ ) + ( \phase1_gen|shift_reg[5][11]~q\ ) + ( \phase1_gen|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[5][11]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][11]~q\,
	cin => \phase1_gen|Add8~34\,
	sumout => \phase1_gen|Add8~37_sumout\,
	cout => \phase1_gen|Add8~38\);

-- Location: FF_X83_Y11_N29
\phase1_gen|shift_reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][11]~q\);

-- Location: MLABCELL_X82_Y11_N27
\phase1_gen|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~37_sumout\ = SUM(( \phase1_gen|mul_out[4][11]~q\ ) + ( \phase1_gen|shift_reg[4][11]~q\ ) + ( \phase1_gen|Add7~34\ ))
-- \phase1_gen|Add7~38\ = CARRY(( \phase1_gen|mul_out[4][11]~q\ ) + ( \phase1_gen|shift_reg[4][11]~q\ ) + ( \phase1_gen|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[4][11]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][11]~q\,
	cin => \phase1_gen|Add7~34\,
	sumout => \phase1_gen|Add7~37_sumout\,
	cout => \phase1_gen|Add7~38\);

-- Location: FF_X82_Y11_N28
\phase1_gen|shift_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][11]~q\);

-- Location: MLABCELL_X82_Y9_N33
\phase1_gen|Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~45_sumout\ = SUM(( \phase1_gen|shift_reg[3][11]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~42\ ))
-- \phase1_gen|Add6~46\ = CARRY(( \phase1_gen|shift_reg[3][11]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[3][11]~q\,
	cin => \phase1_gen|Add6~42\,
	sumout => \phase1_gen|Add6~45_sumout\,
	cout => \phase1_gen|Add6~46\);

-- Location: FF_X82_Y9_N35
\phase1_gen|shift_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][11]~q\);

-- Location: LABCELL_X81_Y9_N33
\phase1_gen|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~45_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][11]~q\ ) + ( \phase1_gen|Add5~42\ ))
-- \phase1_gen|Add5~46\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][11]~q\ ) + ( \phase1_gen|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[2][11]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add5~42\,
	sumout => \phase1_gen|Add5~45_sumout\,
	cout => \phase1_gen|Add5~46\);

-- Location: FF_X81_Y9_N34
\phase1_gen|shift_reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][11]~q\);

-- Location: MLABCELL_X82_Y10_N33
\phase1_gen|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~45_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][11]~q\ ) + ( \phase1_gen|Add4~42\ ))
-- \phase1_gen|Add4~46\ = CARRY(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][11]~q\ ) + ( \phase1_gen|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[1][11]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	cin => \phase1_gen|Add4~42\,
	sumout => \phase1_gen|Add4~45_sumout\,
	cout => \phase1_gen|Add4~46\);

-- Location: FF_X82_Y10_N34
\phase1_gen|shift_reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][11]~q\);

-- Location: LABCELL_X83_Y10_N33
\phase1_gen|Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~45_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][11]~q\ ) + ( \phase1_gen|Add13~42\ ))
-- \phase1_gen|Add13~46\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][11]~q\ ) + ( \phase1_gen|Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][11]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~42\,
	sumout => \phase1_gen|Add13~45_sumout\,
	cout => \phase1_gen|Add13~46\);

-- Location: FF_X83_Y10_N34
\phase1_gen|xout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(11));

-- Location: MLABCELL_X84_Y10_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \phase0_gen|xout\(11) ) + ( \phase1_gen|xout\(11) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \phase0_gen|xout\(11) ) + ( \phase1_gen|xout\(11) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_xout\(11),
	datac => \phase1_gen|ALT_INV_xout\(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X84_Y10_N34
\xout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[11]~reg0_q\);

-- Location: LABCELL_X83_Y8_N21
\phase1_gen|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~29_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add1~26\ ))
-- \phase1_gen|Add1~30\ = CARRY(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add1~26\,
	sumout => \phase1_gen|Add1~29_sumout\,
	cout => \phase1_gen|Add1~30\);

-- Location: FF_X83_Y8_N22
\phase1_gen|w9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(10));

-- Location: LABCELL_X85_Y11_N51
\phase1_gen|mul_out[4][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|mul_out[4][12]~feeder_combout\ = ( \phase1_gen|w9\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_w9\(10),
	combout => \phase1_gen|mul_out[4][12]~feeder_combout\);

-- Location: FF_X85_Y11_N53
\phase1_gen|mul_out[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|mul_out[4][12]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][12]~q\);

-- Location: MLABCELL_X84_Y11_N57
\phase1_gen|shift_reg[7][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[7][12]~feeder_combout\ = ( \phase1_gen|Add11~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add11~45_sumout\,
	combout => \phase1_gen|shift_reg[7][12]~feeder_combout\);

-- Location: FF_X84_Y11_N58
\phase1_gen|shift_reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[7][12]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][12]~q\);

-- Location: LABCELL_X85_Y9_N36
\phase1_gen|Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~49_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][12]~q\ ) + ( \phase1_gen|Add10~46\ ))
-- \phase1_gen|Add10~50\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][12]~q\ ) + ( \phase1_gen|Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][12]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add10~46\,
	sumout => \phase1_gen|Add10~49_sumout\,
	cout => \phase1_gen|Add10~50\);

-- Location: FF_X85_Y9_N38
\phase1_gen|shift_reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][12]~q\);

-- Location: MLABCELL_X84_Y9_N36
\phase1_gen|Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~49_sumout\ = SUM(( \phase1_gen|shift_reg[6][12]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~46\ ))
-- \phase1_gen|Add9~50\ = CARRY(( \phase1_gen|shift_reg[6][12]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][12]~q\,
	cin => \phase1_gen|Add9~46\,
	sumout => \phase1_gen|Add9~49_sumout\,
	cout => \phase1_gen|Add9~50\);

-- Location: FF_X84_Y9_N38
\phase1_gen|shift_reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][12]~q\);

-- Location: LABCELL_X83_Y11_N30
\phase1_gen|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~41_sumout\ = SUM(( \phase1_gen|mul_out[4][12]~q\ ) + ( \phase1_gen|shift_reg[5][12]~q\ ) + ( \phase1_gen|Add8~38\ ))
-- \phase1_gen|Add8~42\ = CARRY(( \phase1_gen|mul_out[4][12]~q\ ) + ( \phase1_gen|shift_reg[5][12]~q\ ) + ( \phase1_gen|Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[5][12]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase1_gen|Add8~38\,
	sumout => \phase1_gen|Add8~41_sumout\,
	cout => \phase1_gen|Add8~42\);

-- Location: FF_X83_Y11_N31
\phase1_gen|shift_reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][12]~q\);

-- Location: MLABCELL_X82_Y11_N30
\phase1_gen|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~41_sumout\ = SUM(( \phase1_gen|shift_reg[4][12]~q\ ) + ( \phase1_gen|mul_out[4][12]~q\ ) + ( \phase1_gen|Add7~38\ ))
-- \phase1_gen|Add7~42\ = CARRY(( \phase1_gen|shift_reg[4][12]~q\ ) + ( \phase1_gen|mul_out[4][12]~q\ ) + ( \phase1_gen|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][12]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][12]~q\,
	cin => \phase1_gen|Add7~38\,
	sumout => \phase1_gen|Add7~41_sumout\,
	cout => \phase1_gen|Add7~42\);

-- Location: FF_X82_Y11_N32
\phase1_gen|shift_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][12]~q\);

-- Location: MLABCELL_X82_Y9_N36
\phase1_gen|Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~49_sumout\ = SUM(( \phase1_gen|shift_reg[3][12]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~46\ ))
-- \phase1_gen|Add6~50\ = CARRY(( \phase1_gen|shift_reg[3][12]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[3][12]~q\,
	cin => \phase1_gen|Add6~46\,
	sumout => \phase1_gen|Add6~49_sumout\,
	cout => \phase1_gen|Add6~50\);

-- Location: FF_X82_Y9_N38
\phase1_gen|shift_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][12]~q\);

-- Location: LABCELL_X81_Y9_N36
\phase1_gen|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~49_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][12]~q\ ) + ( \phase1_gen|Add5~46\ ))
-- \phase1_gen|Add5~50\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][12]~q\ ) + ( \phase1_gen|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][12]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add5~46\,
	sumout => \phase1_gen|Add5~49_sumout\,
	cout => \phase1_gen|Add5~50\);

-- Location: FF_X81_Y9_N38
\phase1_gen|shift_reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][12]~q\);

-- Location: MLABCELL_X82_Y10_N36
\phase1_gen|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~49_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][12]~q\ ) + ( \phase1_gen|Add4~46\ ))
-- \phase1_gen|Add4~50\ = CARRY(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][12]~q\ ) + ( \phase1_gen|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[1][12]~q\,
	cin => \phase1_gen|Add4~46\,
	sumout => \phase1_gen|Add4~49_sumout\,
	cout => \phase1_gen|Add4~50\);

-- Location: FF_X82_Y10_N37
\phase1_gen|shift_reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][12]~q\);

-- Location: LABCELL_X83_Y10_N36
\phase1_gen|Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~49_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][12]~q\ ) + ( \phase1_gen|Add13~46\ ))
-- \phase1_gen|Add13~50\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][12]~q\ ) + ( \phase1_gen|Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[0][12]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~46\,
	sumout => \phase1_gen|Add13~49_sumout\,
	cout => \phase1_gen|Add13~50\);

-- Location: FF_X83_Y10_N37
\phase1_gen|xout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(12));

-- Location: LABCELL_X85_Y12_N33
\phase0_gen|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add0~45_sumout\ = SUM(( \phase0_gen|xin_reg\(7) ) + ( !\phase0_gen|xin_reg\(7) ) + ( \phase0_gen|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_xin_reg\(7),
	cin => \phase0_gen|Add0~42\,
	sumout => \phase0_gen|Add0~45_sumout\);

-- Location: FF_X85_Y12_N34
\phase0_gen|w15[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|w15\(12));

-- Location: MLABCELL_X87_Y10_N51
\phase0_gen|mul_out[4][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|mul_out[4][12]~feeder_combout\ = ( \phase0_gen|w15\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase0_gen|ALT_INV_w15\(12),
	combout => \phase0_gen|mul_out[4][12]~feeder_combout\);

-- Location: FF_X87_Y10_N53
\phase0_gen|mul_out[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|mul_out[4][12]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[4][12]~q\);

-- Location: LABCELL_X85_Y10_N24
\phase0_gen|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~33_sumout\ = SUM(( \phase0_gen|w2\(8) ) + ( \phase0_gen|w15\(11) ) + ( \phase0_gen|Add3~30\ ))
-- \phase0_gen|Add3~34\ = CARRY(( \phase0_gen|w2\(8) ) + ( \phase0_gen|w15\(11) ) + ( \phase0_gen|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w15\(11),
	datad => \phase0_gen|ALT_INV_w2\(8),
	cin => \phase0_gen|Add3~30\,
	sumout => \phase0_gen|Add3~33_sumout\,
	cout => \phase0_gen|Add3~34\);

-- Location: FF_X85_Y10_N26
\phase0_gen|mul_out[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][12]~q\);

-- Location: FF_X87_Y11_N32
\phase0_gen|shift_reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][12]~q\);

-- Location: MLABCELL_X87_Y9_N27
\phase0_gen|Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~37_sumout\ = SUM(( \phase0_gen|shift_reg[7][12]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~34\ ))
-- \phase0_gen|Add10~38\ = CARRY(( \phase0_gen|shift_reg[7][12]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][12]~q\,
	cin => \phase0_gen|Add10~34\,
	sumout => \phase0_gen|Add10~37_sumout\,
	cout => \phase0_gen|Add10~38\);

-- Location: FF_X87_Y9_N28
\phase0_gen|shift_reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][12]~q\);

-- Location: LABCELL_X88_Y9_N36
\phase0_gen|Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~49_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][12]~q\ ) + ( \phase0_gen|Add9~46\ ))
-- \phase0_gen|Add9~50\ = CARRY(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][12]~q\ ) + ( \phase0_gen|Add9~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[6][12]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add9~46\,
	sumout => \phase0_gen|Add9~49_sumout\,
	cout => \phase0_gen|Add9~50\);

-- Location: FF_X88_Y9_N37
\phase0_gen|shift_reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][12]~q\);

-- Location: MLABCELL_X87_Y10_N33
\phase0_gen|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~45_sumout\ = SUM(( \phase0_gen|shift_reg[5][12]~q\ ) + ( \phase0_gen|mul_out[5][12]~q\ ) + ( \phase0_gen|Add8~42\ ))
-- \phase0_gen|Add8~46\ = CARRY(( \phase0_gen|shift_reg[5][12]~q\ ) + ( \phase0_gen|mul_out[5][12]~q\ ) + ( \phase0_gen|Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[5][12]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][12]~q\,
	cin => \phase0_gen|Add8~42\,
	sumout => \phase0_gen|Add8~45_sumout\,
	cout => \phase0_gen|Add8~46\);

-- Location: FF_X87_Y10_N34
\phase0_gen|shift_reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][12]~q\);

-- Location: LABCELL_X88_Y10_N36
\phase0_gen|Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~49_sumout\ = SUM(( \phase0_gen|shift_reg[4][12]~q\ ) + ( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|Add7~46\ ))
-- \phase0_gen|Add7~50\ = CARRY(( \phase0_gen|shift_reg[4][12]~q\ ) + ( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[4][12]~q\,
	cin => \phase0_gen|Add7~46\,
	sumout => \phase0_gen|Add7~49_sumout\,
	cout => \phase0_gen|Add7~50\);

-- Location: FF_X88_Y10_N37
\phase0_gen|shift_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][12]~q\);

-- Location: LABCELL_X88_Y13_N27
\phase0_gen|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~37_sumout\ = SUM(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][12]~q\ ) + ( \phase0_gen|Add6~34\ ))
-- \phase0_gen|Add6~38\ = CARRY(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][12]~q\ ) + ( \phase0_gen|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	dataf => \phase0_gen|ALT_INV_shift_reg[3][12]~q\,
	cin => \phase0_gen|Add6~34\,
	sumout => \phase0_gen|Add6~37_sumout\,
	cout => \phase0_gen|Add6~38\);

-- Location: FF_X88_Y13_N29
\phase0_gen|shift_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][12]~q\);

-- Location: MLABCELL_X87_Y13_N33
\phase0_gen|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~45_sumout\ = SUM(( \phase0_gen|shift_reg[2][12]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~42\ ))
-- \phase0_gen|Add5~46\ = CARRY(( \phase0_gen|shift_reg[2][12]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[2][12]~q\,
	cin => \phase0_gen|Add5~42\,
	sumout => \phase0_gen|Add5~45_sumout\,
	cout => \phase0_gen|Add5~46\);

-- Location: FF_X87_Y13_N35
\phase0_gen|shift_reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][12]~q\);

-- Location: FF_X87_Y12_N11
\phase0_gen|shift_reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][12]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][12]~q\);

-- Location: MLABCELL_X87_Y12_N36
\phase0_gen|Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~49_sumout\ = SUM(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][12]~q\ ) + ( \phase0_gen|Add13~46\ ))
-- \phase0_gen|Add13~50\ = CARRY(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][12]~q\ ) + ( \phase0_gen|Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[0][12]~q\,
	datac => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase0_gen|Add13~46\,
	sumout => \phase0_gen|Add13~49_sumout\,
	cout => \phase0_gen|Add13~50\);

-- Location: FF_X87_Y12_N38
\phase0_gen|xout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(12));

-- Location: MLABCELL_X84_Y10_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \phase0_gen|xout\(12) ) + ( \phase1_gen|xout\(12) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \phase0_gen|xout\(12) ) + ( \phase1_gen|xout\(12) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_xout\(12),
	datad => \phase0_gen|ALT_INV_xout\(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X84_Y10_N38
\xout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[12]~reg0_q\);

-- Location: LABCELL_X85_Y10_N27
\phase0_gen|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~37_sumout\ = SUM(( \phase0_gen|w15\(12) ) + ( \phase0_gen|w2\(8) ) + ( \phase0_gen|Add3~34\ ))
-- \phase0_gen|Add3~38\ = CARRY(( \phase0_gen|w15\(12) ) + ( \phase0_gen|w2\(8) ) + ( \phase0_gen|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_w2\(8),
	datad => \phase0_gen|ALT_INV_w15\(12),
	cin => \phase0_gen|Add3~34\,
	sumout => \phase0_gen|Add3~37_sumout\,
	cout => \phase0_gen|Add3~38\);

-- Location: FF_X85_Y10_N28
\phase0_gen|mul_out[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~37_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][13]~q\);

-- Location: FF_X87_Y11_N59
\phase0_gen|shift_reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][13]~q\);

-- Location: MLABCELL_X87_Y9_N30
\phase0_gen|Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~41_sumout\ = SUM(( \phase0_gen|shift_reg[7][13]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~38\ ))
-- \phase0_gen|Add10~42\ = CARRY(( \phase0_gen|shift_reg[7][13]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][13]~q\,
	cin => \phase0_gen|Add10~38\,
	sumout => \phase0_gen|Add10~41_sumout\,
	cout => \phase0_gen|Add10~42\);

-- Location: FF_X87_Y9_N31
\phase0_gen|shift_reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][13]~q\);

-- Location: LABCELL_X88_Y9_N39
\phase0_gen|Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~53_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][13]~q\ ) + ( \phase0_gen|Add9~50\ ))
-- \phase0_gen|Add9~54\ = CARRY(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][13]~q\ ) + ( \phase0_gen|Add9~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[6][13]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add9~50\,
	sumout => \phase0_gen|Add9~53_sumout\,
	cout => \phase0_gen|Add9~54\);

-- Location: FF_X88_Y9_N40
\phase0_gen|shift_reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][13]~q\);

-- Location: MLABCELL_X87_Y10_N36
\phase0_gen|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~49_sumout\ = SUM(( \phase0_gen|shift_reg[5][13]~q\ ) + ( \phase0_gen|mul_out[5][13]~q\ ) + ( \phase0_gen|Add8~46\ ))
-- \phase0_gen|Add8~50\ = CARRY(( \phase0_gen|shift_reg[5][13]~q\ ) + ( \phase0_gen|mul_out[5][13]~q\ ) + ( \phase0_gen|Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[5][13]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][13]~q\,
	cin => \phase0_gen|Add8~46\,
	sumout => \phase0_gen|Add8~49_sumout\,
	cout => \phase0_gen|Add8~50\);

-- Location: FF_X87_Y10_N37
\phase0_gen|shift_reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][13]~q\);

-- Location: LABCELL_X88_Y10_N39
\phase0_gen|Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~53_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[4][13]~q\ ) + ( \phase0_gen|Add7~50\ ))
-- \phase0_gen|Add7~54\ = CARRY(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[4][13]~q\ ) + ( \phase0_gen|Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[4][13]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add7~50\,
	sumout => \phase0_gen|Add7~53_sumout\,
	cout => \phase0_gen|Add7~54\);

-- Location: FF_X88_Y10_N41
\phase0_gen|shift_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][13]~q\);

-- Location: LABCELL_X88_Y13_N30
\phase0_gen|Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~41_sumout\ = SUM(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][13]~q\ ) + ( \phase0_gen|Add6~38\ ))
-- \phase0_gen|Add6~42\ = CARRY(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][13]~q\ ) + ( \phase0_gen|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][13]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	cin => \phase0_gen|Add6~38\,
	sumout => \phase0_gen|Add6~41_sumout\,
	cout => \phase0_gen|Add6~42\);

-- Location: FF_X88_Y13_N32
\phase0_gen|shift_reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][13]~q\);

-- Location: MLABCELL_X87_Y13_N36
\phase0_gen|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~49_sumout\ = SUM(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][13]~q\ ) + ( \phase0_gen|Add5~46\ ))
-- \phase0_gen|Add5~50\ = CARRY(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][13]~q\ ) + ( \phase0_gen|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][13]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase0_gen|Add5~46\,
	sumout => \phase0_gen|Add5~49_sumout\,
	cout => \phase0_gen|Add5~50\);

-- Location: FF_X87_Y13_N38
\phase0_gen|shift_reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][13]~q\);

-- Location: FF_X88_Y12_N17
\phase0_gen|shift_reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][13]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][13]~q\);

-- Location: MLABCELL_X87_Y12_N39
\phase0_gen|Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~53_sumout\ = SUM(( \phase0_gen|shift_reg[0][13]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~50\ ))
-- \phase0_gen|Add13~54\ = CARRY(( \phase0_gen|shift_reg[0][13]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][13]~q\,
	cin => \phase0_gen|Add13~50\,
	sumout => \phase0_gen|Add13~53_sumout\,
	cout => \phase0_gen|Add13~54\);

-- Location: FF_X87_Y12_N41
\phase0_gen|xout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(13));

-- Location: LABCELL_X83_Y8_N24
\phase1_gen|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add1~33_sumout\ = SUM(( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|xin_reg\(7) ) + ( \phase1_gen|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xin_reg\(7),
	cin => \phase1_gen|Add1~30\,
	sumout => \phase1_gen|Add1~33_sumout\);

-- Location: FF_X83_Y8_N26
\phase1_gen|w9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|w9\(11));

-- Location: FF_X83_Y11_N2
\phase1_gen|mul_out[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|w9\(11),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|mul_out[4][13]~q\);

-- Location: MLABCELL_X84_Y11_N42
\phase1_gen|shift_reg[7][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|shift_reg[7][13]~feeder_combout\ = ( \phase1_gen|Add11~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \phase1_gen|ALT_INV_Add11~45_sumout\,
	combout => \phase1_gen|shift_reg[7][13]~feeder_combout\);

-- Location: FF_X84_Y11_N43
\phase1_gen|shift_reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|shift_reg[7][13]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][13]~q\);

-- Location: LABCELL_X85_Y9_N39
\phase1_gen|Add10~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~53_sumout\ = SUM(( \phase1_gen|shift_reg[7][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add10~50\ ))
-- \phase1_gen|Add10~54\ = CARRY(( \phase1_gen|shift_reg[7][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][13]~q\,
	cin => \phase1_gen|Add10~50\,
	sumout => \phase1_gen|Add10~53_sumout\,
	cout => \phase1_gen|Add10~54\);

-- Location: FF_X85_Y9_N40
\phase1_gen|shift_reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][13]~q\);

-- Location: MLABCELL_X84_Y9_N39
\phase1_gen|Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~53_sumout\ = SUM(( \phase1_gen|shift_reg[6][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~50\ ))
-- \phase1_gen|Add9~54\ = CARRY(( \phase1_gen|shift_reg[6][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add9~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[6][13]~q\,
	cin => \phase1_gen|Add9~50\,
	sumout => \phase1_gen|Add9~53_sumout\,
	cout => \phase1_gen|Add9~54\);

-- Location: FF_X84_Y9_N40
\phase1_gen|shift_reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][13]~q\);

-- Location: LABCELL_X83_Y11_N33
\phase1_gen|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~45_sumout\ = SUM(( \phase1_gen|shift_reg[5][13]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add8~42\ ))
-- \phase1_gen|Add8~46\ = CARRY(( \phase1_gen|shift_reg[5][13]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][13]~q\,
	cin => \phase1_gen|Add8~42\,
	sumout => \phase1_gen|Add8~45_sumout\,
	cout => \phase1_gen|Add8~46\);

-- Location: FF_X83_Y11_N35
\phase1_gen|shift_reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][13]~q\);

-- Location: MLABCELL_X82_Y11_N33
\phase1_gen|Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~45_sumout\ = SUM(( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|shift_reg[4][13]~q\ ) + ( \phase1_gen|Add7~42\ ))
-- \phase1_gen|Add7~46\ = CARRY(( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|shift_reg[4][13]~q\ ) + ( \phase1_gen|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[4][13]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	cin => \phase1_gen|Add7~42\,
	sumout => \phase1_gen|Add7~45_sumout\,
	cout => \phase1_gen|Add7~46\);

-- Location: FF_X82_Y11_N34
\phase1_gen|shift_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][13]~q\);

-- Location: MLABCELL_X82_Y9_N39
\phase1_gen|Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~53_sumout\ = SUM(( \phase1_gen|shift_reg[3][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~50\ ))
-- \phase1_gen|Add6~54\ = CARRY(( \phase1_gen|shift_reg[3][13]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][13]~q\,
	cin => \phase1_gen|Add6~50\,
	sumout => \phase1_gen|Add6~53_sumout\,
	cout => \phase1_gen|Add6~54\);

-- Location: FF_X82_Y9_N40
\phase1_gen|shift_reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][13]~q\);

-- Location: LABCELL_X81_Y9_N39
\phase1_gen|Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~53_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][13]~q\ ) + ( \phase1_gen|Add5~50\ ))
-- \phase1_gen|Add5~54\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][13]~q\ ) + ( \phase1_gen|Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][13]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add5~50\,
	sumout => \phase1_gen|Add5~53_sumout\,
	cout => \phase1_gen|Add5~54\);

-- Location: FF_X81_Y9_N40
\phase1_gen|shift_reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][13]~q\);

-- Location: MLABCELL_X82_Y10_N39
\phase1_gen|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~53_sumout\ = SUM(( \phase1_gen|shift_reg[1][13]~q\ ) + ( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|Add4~50\ ))
-- \phase1_gen|Add4~54\ = CARRY(( \phase1_gen|shift_reg[1][13]~q\ ) + ( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][13]~q\,
	cin => \phase1_gen|Add4~50\,
	sumout => \phase1_gen|Add4~53_sumout\,
	cout => \phase1_gen|Add4~54\);

-- Location: FF_X82_Y10_N40
\phase1_gen|shift_reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][13]~q\);

-- Location: LABCELL_X83_Y10_N39
\phase1_gen|Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~53_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][13]~q\ ) + ( \phase1_gen|Add13~50\ ))
-- \phase1_gen|Add13~54\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][13]~q\ ) + ( \phase1_gen|Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[0][13]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~50\,
	sumout => \phase1_gen|Add13~53_sumout\,
	cout => \phase1_gen|Add13~54\);

-- Location: FF_X83_Y10_N40
\phase1_gen|xout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(13));

-- Location: MLABCELL_X84_Y10_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \phase0_gen|xout\(13) ) + ( \phase1_gen|xout\(13) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \phase0_gen|xout\(13) ) + ( \phase1_gen|xout\(13) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \phase0_gen|ALT_INV_xout\(13),
	dataf => \phase1_gen|ALT_INV_xout\(13),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X84_Y10_N40
\xout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[13]~reg0_q\);

-- Location: FF_X84_Y11_N1
\phase1_gen|shift_reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase1_gen|Add11~45_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][14]~q\);

-- Location: LABCELL_X85_Y9_N42
\phase1_gen|Add10~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~57_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][14]~q\ ) + ( \phase1_gen|Add10~54\ ))
-- \phase1_gen|Add10~58\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[7][14]~q\ ) + ( \phase1_gen|Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[7][14]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add10~54\,
	sumout => \phase1_gen|Add10~57_sumout\,
	cout => \phase1_gen|Add10~58\);

-- Location: FF_X85_Y9_N44
\phase1_gen|shift_reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][14]~q\);

-- Location: MLABCELL_X84_Y9_N42
\phase1_gen|Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~57_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[6][14]~q\ ) + ( \phase1_gen|Add9~54\ ))
-- \phase1_gen|Add9~58\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[6][14]~q\ ) + ( \phase1_gen|Add9~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[6][14]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add9~54\,
	sumout => \phase1_gen|Add9~57_sumout\,
	cout => \phase1_gen|Add9~58\);

-- Location: FF_X84_Y9_N44
\phase1_gen|shift_reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][14]~q\);

-- Location: LABCELL_X83_Y11_N36
\phase1_gen|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~49_sumout\ = SUM(( \phase1_gen|shift_reg[5][14]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add8~46\ ))
-- \phase1_gen|Add8~50\ = CARRY(( \phase1_gen|shift_reg[5][14]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][14]~q\,
	cin => \phase1_gen|Add8~46\,
	sumout => \phase1_gen|Add8~49_sumout\,
	cout => \phase1_gen|Add8~50\);

-- Location: FF_X83_Y11_N37
\phase1_gen|shift_reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][14]~q\);

-- Location: MLABCELL_X82_Y11_N36
\phase1_gen|Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~49_sumout\ = SUM(( \phase1_gen|shift_reg[4][14]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add7~46\ ))
-- \phase1_gen|Add7~50\ = CARRY(( \phase1_gen|shift_reg[4][14]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[4][14]~q\,
	cin => \phase1_gen|Add7~46\,
	sumout => \phase1_gen|Add7~49_sumout\,
	cout => \phase1_gen|Add7~50\);

-- Location: FF_X82_Y11_N37
\phase1_gen|shift_reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][14]~q\);

-- Location: MLABCELL_X82_Y9_N42
\phase1_gen|Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~57_sumout\ = SUM(( \phase1_gen|shift_reg[3][14]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~54\ ))
-- \phase1_gen|Add6~58\ = CARRY(( \phase1_gen|shift_reg[3][14]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[3][14]~q\,
	cin => \phase1_gen|Add6~54\,
	sumout => \phase1_gen|Add6~57_sumout\,
	cout => \phase1_gen|Add6~58\);

-- Location: FF_X82_Y9_N44
\phase1_gen|shift_reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][14]~q\);

-- Location: LABCELL_X81_Y9_N42
\phase1_gen|Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~57_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][14]~q\ ) + ( \phase1_gen|Add5~54\ ))
-- \phase1_gen|Add5~58\ = CARRY(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][14]~q\ ) + ( \phase1_gen|Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[2][14]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add5~54\,
	sumout => \phase1_gen|Add5~57_sumout\,
	cout => \phase1_gen|Add5~58\);

-- Location: FF_X81_Y9_N44
\phase1_gen|shift_reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][14]~q\);

-- Location: MLABCELL_X82_Y10_N42
\phase1_gen|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~57_sumout\ = SUM(( \phase1_gen|shift_reg[1][14]~q\ ) + ( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|Add4~54\ ))
-- \phase1_gen|Add4~58\ = CARRY(( \phase1_gen|shift_reg[1][14]~q\ ) + ( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[1][14]~q\,
	cin => \phase1_gen|Add4~54\,
	sumout => \phase1_gen|Add4~57_sumout\,
	cout => \phase1_gen|Add4~58\);

-- Location: FF_X82_Y10_N43
\phase1_gen|shift_reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][14]~q\);

-- Location: LABCELL_X83_Y10_N42
\phase1_gen|Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~57_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][14]~q\ ) + ( \phase1_gen|Add13~54\ ))
-- \phase1_gen|Add13~58\ = CARRY(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][14]~q\ ) + ( \phase1_gen|Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_shift_reg[0][14]~q\,
	datac => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~54\,
	sumout => \phase1_gen|Add13~57_sumout\,
	cout => \phase1_gen|Add13~58\);

-- Location: FF_X83_Y10_N43
\phase1_gen|xout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(14));

-- Location: LABCELL_X85_Y10_N30
\phase0_gen|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add3~41_sumout\ = SUM(( \phase0_gen|w15\(12) ) + ( \phase0_gen|w2\(8) ) + ( \phase0_gen|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_w2\(8),
	datad => \phase0_gen|ALT_INV_w15\(12),
	cin => \phase0_gen|Add3~38\,
	sumout => \phase0_gen|Add3~41_sumout\);

-- Location: FF_X85_Y10_N32
\phase0_gen|mul_out[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add3~41_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|mul_out[5][14]~q\);

-- Location: FF_X87_Y11_N26
\phase0_gen|shift_reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][14]~q\);

-- Location: MLABCELL_X87_Y9_N33
\phase0_gen|Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~45_sumout\ = SUM(( \phase0_gen|shift_reg[7][14]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~42\ ))
-- \phase0_gen|Add10~46\ = CARRY(( \phase0_gen|shift_reg[7][14]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[7][14]~q\,
	cin => \phase0_gen|Add10~42\,
	sumout => \phase0_gen|Add10~45_sumout\,
	cout => \phase0_gen|Add10~46\);

-- Location: FF_X87_Y9_N34
\phase0_gen|shift_reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][14]~q\);

-- Location: LABCELL_X88_Y9_N42
\phase0_gen|Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~57_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][14]~q\ ) + ( \phase0_gen|Add9~54\ ))
-- \phase0_gen|Add9~58\ = CARRY(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][14]~q\ ) + ( \phase0_gen|Add9~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[6][14]~q\,
	datac => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add9~54\,
	sumout => \phase0_gen|Add9~57_sumout\,
	cout => \phase0_gen|Add9~58\);

-- Location: FF_X88_Y9_N44
\phase0_gen|shift_reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][14]~q\);

-- Location: MLABCELL_X87_Y10_N39
\phase0_gen|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~53_sumout\ = SUM(( \phase0_gen|shift_reg[5][14]~q\ ) + ( \phase0_gen|mul_out[5][14]~q\ ) + ( \phase0_gen|Add8~50\ ))
-- \phase0_gen|Add8~54\ = CARRY(( \phase0_gen|shift_reg[5][14]~q\ ) + ( \phase0_gen|mul_out[5][14]~q\ ) + ( \phase0_gen|Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[5][14]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[5][14]~q\,
	cin => \phase0_gen|Add8~50\,
	sumout => \phase0_gen|Add8~53_sumout\,
	cout => \phase0_gen|Add8~54\);

-- Location: FF_X87_Y10_N40
\phase0_gen|shift_reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][14]~q\);

-- Location: LABCELL_X88_Y10_N42
\phase0_gen|Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~57_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[4][14]~q\ ) + ( \phase0_gen|Add7~54\ ))
-- \phase0_gen|Add7~58\ = CARRY(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[4][14]~q\ ) + ( \phase0_gen|Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][14]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add7~54\,
	sumout => \phase0_gen|Add7~57_sumout\,
	cout => \phase0_gen|Add7~58\);

-- Location: FF_X88_Y10_N44
\phase0_gen|shift_reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][14]~q\);

-- Location: LABCELL_X88_Y13_N33
\phase0_gen|Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~45_sumout\ = SUM(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][14]~q\ ) + ( \phase0_gen|Add6~42\ ))
-- \phase0_gen|Add6~46\ = CARRY(( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|shift_reg[3][14]~q\ ) + ( \phase0_gen|Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[3][14]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	cin => \phase0_gen|Add6~42\,
	sumout => \phase0_gen|Add6~45_sumout\,
	cout => \phase0_gen|Add6~46\);

-- Location: FF_X88_Y13_N34
\phase0_gen|shift_reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][14]~q\);

-- Location: MLABCELL_X87_Y13_N39
\phase0_gen|Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~53_sumout\ = SUM(( \phase0_gen|shift_reg[2][14]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~50\ ))
-- \phase0_gen|Add5~54\ = CARRY(( \phase0_gen|shift_reg[2][14]~q\ ) + ( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[2][14]~q\,
	cin => \phase0_gen|Add5~50\,
	sumout => \phase0_gen|Add5~53_sumout\,
	cout => \phase0_gen|Add5~54\);

-- Location: FF_X87_Y13_N40
\phase0_gen|shift_reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][14]~q\);

-- Location: FF_X87_Y12_N40
\phase0_gen|shift_reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \phase0_gen|shift_reg[1][14]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][14]~q\);

-- Location: MLABCELL_X87_Y12_N42
\phase0_gen|Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~57_sumout\ = SUM(( \phase0_gen|shift_reg[0][14]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~54\ ))
-- \phase0_gen|Add13~58\ = CARRY(( \phase0_gen|shift_reg[0][14]~q\ ) + ( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[0][14]~q\,
	cin => \phase0_gen|Add13~54\,
	sumout => \phase0_gen|Add13~57_sumout\,
	cout => \phase0_gen|Add13~58\);

-- Location: FF_X87_Y12_N44
\phase0_gen|xout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(14));

-- Location: MLABCELL_X84_Y10_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \phase0_gen|xout\(14) ) + ( \phase1_gen|xout\(14) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \phase0_gen|xout\(14) ) + ( \phase1_gen|xout\(14) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_xout\(14),
	datac => \phase0_gen|ALT_INV_xout\(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X84_Y10_N43
\xout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[14]~reg0_q\);

-- Location: FF_X87_Y11_N55
\phase0_gen|shift_reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add11~33_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[7][15]~q\);

-- Location: MLABCELL_X87_Y9_N36
\phase0_gen|Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add10~49_sumout\ = SUM(( \phase0_gen|shift_reg[7][15]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[7][15]~q\,
	cin => \phase0_gen|Add10~46\,
	sumout => \phase0_gen|Add10~49_sumout\);

-- Location: FF_X87_Y9_N37
\phase0_gen|shift_reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add10~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[6][15]~q\);

-- Location: LABCELL_X88_Y9_N45
\phase0_gen|Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add9~61_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[6][15]~q\ ) + ( \phase0_gen|Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_shift_reg[6][15]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add9~58\,
	sumout => \phase0_gen|Add9~61_sumout\);

-- Location: FF_X88_Y9_N47
\phase0_gen|shift_reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add9~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[5][15]~q\);

-- Location: MLABCELL_X87_Y10_N42
\phase0_gen|Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add8~57_sumout\ = SUM(( \phase0_gen|mul_out[5][14]~q\ ) + ( \phase0_gen|shift_reg[5][15]~q\ ) + ( \phase0_gen|Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[5][15]~q\,
	datac => \phase0_gen|ALT_INV_mul_out[5][14]~q\,
	cin => \phase0_gen|Add8~54\,
	sumout => \phase0_gen|Add8~57_sumout\);

-- Location: FF_X87_Y10_N43
\phase0_gen|shift_reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add8~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[4][15]~q\);

-- Location: LABCELL_X88_Y10_N45
\phase0_gen|Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add7~61_sumout\ = SUM(( \phase0_gen|mul_out[4][12]~q\ ) + ( \phase0_gen|shift_reg[4][15]~q\ ) + ( \phase0_gen|Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[4][15]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[4][12]~q\,
	cin => \phase0_gen|Add7~58\,
	sumout => \phase0_gen|Add7~61_sumout\);

-- Location: FF_X88_Y10_N46
\phase0_gen|shift_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add7~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[3][15]~q\);

-- Location: LABCELL_X88_Y13_N36
\phase0_gen|Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add6~49_sumout\ = SUM(( \phase0_gen|shift_reg[3][15]~q\ ) + ( \phase0_gen|mul_out[3][11]~q\ ) + ( \phase0_gen|Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_mul_out[3][11]~q\,
	datad => \phase0_gen|ALT_INV_shift_reg[3][15]~q\,
	cin => \phase0_gen|Add6~46\,
	sumout => \phase0_gen|Add6~49_sumout\);

-- Location: FF_X88_Y13_N37
\phase0_gen|shift_reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add6~49_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[2][15]~q\);

-- Location: MLABCELL_X87_Y13_N42
\phase0_gen|Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add5~57_sumout\ = SUM(( \phase0_gen|mul_out[2][10]~q\ ) + ( \phase0_gen|shift_reg[2][15]~q\ ) + ( \phase0_gen|Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase0_gen|ALT_INV_shift_reg[2][15]~q\,
	datad => \phase0_gen|ALT_INV_mul_out[2][10]~q\,
	cin => \phase0_gen|Add5~54\,
	sumout => \phase0_gen|Add5~57_sumout\);

-- Location: FF_X87_Y13_N44
\phase0_gen|shift_reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add5~57_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[1][15]~q\);

-- Location: MLABCELL_X87_Y13_N48
\phase0_gen|shift_reg[0][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|shift_reg[0][15]~feeder_combout\ = \phase0_gen|shift_reg[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase0_gen|ALT_INV_shift_reg[1][15]~q\,
	combout => \phase0_gen|shift_reg[0][15]~feeder_combout\);

-- Location: FF_X87_Y13_N49
\phase0_gen|shift_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|shift_reg[0][15]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|shift_reg[0][15]~q\);

-- Location: MLABCELL_X87_Y12_N45
\phase0_gen|Add13~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase0_gen|Add13~61_sumout\ = SUM(( \phase0_gen|mul_out[0][10]~q\ ) + ( \phase0_gen|shift_reg[0][15]~q\ ) + ( \phase0_gen|Add13~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_mul_out[0][10]~q\,
	datac => \phase0_gen|ALT_INV_shift_reg[0][15]~q\,
	cin => \phase0_gen|Add13~58\,
	sumout => \phase0_gen|Add13~61_sumout\);

-- Location: FF_X87_Y12_N46
\phase0_gen|xout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase0_gen|Add13~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase0_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase0_gen|xout\(15));

-- Location: FF_X84_Y11_N34
\phase1_gen|shift_reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add11~45_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[7][15]~q\);

-- Location: LABCELL_X85_Y9_N45
\phase1_gen|Add10~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add10~61_sumout\ = SUM(( \phase1_gen|shift_reg[7][15]~q\ ) + ( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[7][15]~q\,
	cin => \phase1_gen|Add10~58\,
	sumout => \phase1_gen|Add10~61_sumout\);

-- Location: FF_X85_Y9_N47
\phase1_gen|shift_reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add10~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[6][15]~q\);

-- Location: MLABCELL_X84_Y9_N45
\phase1_gen|Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add9~61_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[6][15]~q\ ) + ( \phase1_gen|Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	dataf => \phase1_gen|ALT_INV_shift_reg[6][15]~q\,
	cin => \phase1_gen|Add9~58\,
	sumout => \phase1_gen|Add9~61_sumout\);

-- Location: FF_X84_Y9_N46
\phase1_gen|shift_reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add9~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[5][15]~q\);

-- Location: LABCELL_X83_Y11_N39
\phase1_gen|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add8~53_sumout\ = SUM(( \phase1_gen|shift_reg[5][15]~q\ ) + ( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	datad => \phase1_gen|ALT_INV_shift_reg[5][15]~q\,
	cin => \phase1_gen|Add8~50\,
	sumout => \phase1_gen|Add8~53_sumout\);

-- Location: FF_X83_Y11_N40
\phase1_gen|shift_reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add8~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[4][15]~q\);

-- Location: MLABCELL_X82_Y11_N39
\phase1_gen|Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add7~53_sumout\ = SUM(( \phase1_gen|mul_out[4][13]~q\ ) + ( \phase1_gen|shift_reg[4][15]~q\ ) + ( \phase1_gen|Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[4][15]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[4][13]~q\,
	cin => \phase1_gen|Add7~50\,
	sumout => \phase1_gen|Add7~53_sumout\);

-- Location: FF_X82_Y11_N41
\phase1_gen|shift_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add7~53_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[3][15]~q\);

-- Location: MLABCELL_X82_Y9_N45
\phase1_gen|Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add6~61_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[3][15]~q\ ) + ( \phase1_gen|Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	dataf => \phase1_gen|ALT_INV_shift_reg[3][15]~q\,
	cin => \phase1_gen|Add6~58\,
	sumout => \phase1_gen|Add6~61_sumout\);

-- Location: FF_X82_Y9_N46
\phase1_gen|shift_reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add6~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[2][15]~q\);

-- Location: LABCELL_X81_Y9_N45
\phase1_gen|Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add5~61_sumout\ = SUM(( \phase1_gen|mul_out[2][11]~q\ ) + ( \phase1_gen|shift_reg[2][15]~q\ ) + ( \phase1_gen|Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \phase1_gen|ALT_INV_shift_reg[2][15]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[2][11]~q\,
	cin => \phase1_gen|Add5~58\,
	sumout => \phase1_gen|Add5~61_sumout\);

-- Location: FF_X81_Y9_N47
\phase1_gen|shift_reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add5~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[1][15]~q\);

-- Location: MLABCELL_X82_Y10_N45
\phase1_gen|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add4~61_sumout\ = SUM(( \phase1_gen|mul_out[1][10]~q\ ) + ( \phase1_gen|shift_reg[1][15]~q\ ) + ( \phase1_gen|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \phase1_gen|ALT_INV_mul_out[1][10]~q\,
	datac => \phase1_gen|ALT_INV_shift_reg[1][15]~q\,
	cin => \phase1_gen|Add4~58\,
	sumout => \phase1_gen|Add4~61_sumout\);

-- Location: FF_X82_Y10_N46
\phase1_gen|shift_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add4~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|shift_reg[0][15]~q\);

-- Location: LABCELL_X83_Y10_N45
\phase1_gen|Add13~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \phase1_gen|Add13~61_sumout\ = SUM(( \phase1_gen|mul_out[0][10]~q\ ) + ( \phase1_gen|shift_reg[0][15]~q\ ) + ( \phase1_gen|Add13~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase1_gen|ALT_INV_shift_reg[0][15]~q\,
	datad => \phase1_gen|ALT_INV_mul_out[0][10]~q\,
	cin => \phase1_gen|Add13~58\,
	sumout => \phase1_gen|Add13~61_sumout\);

-- Location: FF_X83_Y10_N46
\phase1_gen|xout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \phase1_gen|Add13~61_sumout\,
	sclr => \rst~input_o\,
	ena => \phase1_gen|xout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase1_gen|xout\(15));

-- Location: MLABCELL_X84_Y10_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \phase0_gen|xout\(15) ) + ( \phase1_gen|xout\(15) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \phase0_gen|ALT_INV_xout\(15),
	dataf => \phase1_gen|ALT_INV_xout\(15),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: FF_X84_Y10_N46
\xout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[15]~reg0_q\);

-- Location: MLABCELL_X87_Y7_N27
\xout_en~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xout_en~reg0feeder_combout\ = ( \xout_en~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xout_en~0_combout\,
	combout => \xout_en~reg0feeder_combout\);

-- Location: FF_X87_Y7_N28
\xout_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xout_en~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout_en~reg0_q\);

-- Location: LABCELL_X64_Y49_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


