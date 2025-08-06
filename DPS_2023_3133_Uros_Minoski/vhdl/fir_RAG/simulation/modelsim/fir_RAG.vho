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

-- DATE "08/06/2025 19:00:10"

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

ENTITY 	fir_phase1_RAG IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	xin_en : IN std_logic;
	xin : IN std_logic_vector(7 DOWNTO 0);
	xout : OUT std_logic_vector(15 DOWNTO 0)
	);
END fir_phase1_RAG;

-- Design Ports Information
-- xout[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[9]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[10]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[13]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[14]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xout[15]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin_en	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xin[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_phase1_RAG IS
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
SIGNAL ww_xin_en : std_logic;
SIGNAL ww_xin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_xout : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \xin[0]~input_o\ : std_logic;
SIGNAL \xin_reg[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \xin_en~input_o\ : std_logic;
SIGNAL \xout[0]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \shift_reg[1][0]~q\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \shift_reg[2][0]~q\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \shift_reg[3][0]~q\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \shift_reg[4][0]~q\ : std_logic;
SIGNAL \shift_reg[5][0]~q\ : std_logic;
SIGNAL \shift_reg[6][0]~q\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \shift_reg[7][0]~q\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \shift_reg[8][0]~q\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \shift_reg[9][0]~q\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \xout[0]~reg0_q\ : std_logic;
SIGNAL \xin[1]~input_o\ : std_logic;
SIGNAL \xin_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \shift_reg[1][1]~q\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \shift_reg[2][1]~q\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \shift_reg[3][1]~q\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \shift_reg[4][1]~q\ : std_logic;
SIGNAL \shift_reg[5][1]~q\ : std_logic;
SIGNAL \shift_reg[6][1]~q\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \shift_reg[7][1]~q\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \shift_reg[8][1]~q\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \shift_reg[9][1]~q\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \xout[1]~reg0_q\ : std_logic;
SIGNAL \xin[2]~input_o\ : std_logic;
SIGNAL \xin_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add2~42_cout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \shift_reg[1][2]~q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \shift_reg[2][2]~q\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \shift_reg[3][2]~q\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \shift_reg[4][2]~q\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \shift_reg[5][2]~q\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \shift_reg[6][2]~q\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \shift_reg[7][2]~q\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \shift_reg[8][2]~q\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \shift_reg[9][2]~q\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \xout[2]~reg0_q\ : std_logic;
SIGNAL \xin[3]~input_o\ : std_logic;
SIGNAL \xin_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \shift_reg[1][3]~q\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \shift_reg[2][3]~q\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \shift_reg[3][3]~q\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \shift_reg[4][3]~q\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \shift_reg[5][3]~q\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \shift_reg[6][3]~q\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \shift_reg[7][3]~q\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \shift_reg[8][3]~q\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \shift_reg[9][3]~q\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \xout[3]~reg0_q\ : std_logic;
SIGNAL \xin[4]~input_o\ : std_logic;
SIGNAL \xin_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \shift_reg[1][4]~q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \shift_reg[2][4]~q\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \shift_reg[3][4]~q\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \shift_reg[4][4]~q\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \shift_reg[5][4]~q\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \shift_reg[6][4]~q\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \shift_reg[7][4]~q\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \shift_reg[8][4]~q\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \shift_reg[9][4]~q\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \xout[4]~reg0_q\ : std_logic;
SIGNAL \xin[5]~input_o\ : std_logic;
SIGNAL \xin_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \shift_reg[1][5]~q\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \shift_reg[2][5]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \shift_reg[3][5]~q\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \shift_reg[4][5]~q\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \shift_reg[5][5]~q\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \shift_reg[6][5]~q\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \shift_reg[7][5]~q\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \shift_reg[8][5]~q\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \shift_reg[9][5]~q\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \xout[5]~reg0_q\ : std_logic;
SIGNAL \xin[6]~input_o\ : std_logic;
SIGNAL \xin_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \shift_reg[1][6]~q\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \shift_reg[2][6]~q\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \shift_reg[3][6]~q\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \shift_reg[4][6]~q\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \shift_reg[5][6]~q\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \shift_reg[6][6]~q\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \shift_reg[7][6]~q\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \shift_reg[8][6]~q\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \shift_reg[9][6]~q\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \xout[6]~reg0_q\ : std_logic;
SIGNAL \xin[7]~input_o\ : std_logic;
SIGNAL \xin_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \shift_reg[1][7]~q\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \shift_reg[2][7]~q\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \shift_reg[3][7]~q\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \shift_reg[4][7]~q\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \shift_reg[5][7]~q\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \shift_reg[6][7]~q\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \shift_reg[7][7]~q\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \shift_reg[8][7]~q\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \shift_reg[9][7]~q\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \xout[7]~reg0_q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \shift_reg[1][10]~q\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \shift_reg[2][8]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \shift_reg[3][8]~q\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \shift_reg[4][8]~q\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \shift_reg[5][8]~q\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \shift_reg[6][8]~q\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \shift_reg[7][8]~q\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \shift_reg[8][8]~q\ : std_logic;
SIGNAL \Add12~30\ : std_logic;
SIGNAL \Add12~33_sumout\ : std_logic;
SIGNAL \shift_reg[9][8]~q\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~33_sumout\ : std_logic;
SIGNAL \xout[8]~reg0_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \shift_reg[2][9]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \shift_reg[3][9]~q\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \shift_reg[4][9]~q\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \shift_reg[5][9]~q\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \shift_reg[6][9]~q\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~37_sumout\ : std_logic;
SIGNAL \shift_reg[7][9]~q\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \shift_reg[8][9]~q\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~37_sumout\ : std_logic;
SIGNAL \shift_reg[9][9]~q\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~37_sumout\ : std_logic;
SIGNAL \xout[9]~reg0_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \shift_reg[2][10]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \shift_reg[3][10]~q\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \shift_reg[4][10]~q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \shift_reg[5][10]~q\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \shift_reg[6][10]~q\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~41_sumout\ : std_logic;
SIGNAL \shift_reg[7][10]~q\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \shift_reg[8][10]~q\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~41_sumout\ : std_logic;
SIGNAL \shift_reg[9][10]~q\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~41_sumout\ : std_logic;
SIGNAL \xout[10]~reg0_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \shift_reg[2][11]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[2][11]~q\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \shift_reg[3][11]~q\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \shift_reg[4][11]~q\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \shift_reg[5][11]~q\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \shift_reg[6][11]~q\ : std_logic;
SIGNAL \Add10~42\ : std_logic;
SIGNAL \Add10~45_sumout\ : std_logic;
SIGNAL \shift_reg[7][11]~q\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~45_sumout\ : std_logic;
SIGNAL \shift_reg[8][11]~q\ : std_logic;
SIGNAL \Add12~42\ : std_logic;
SIGNAL \Add12~45_sumout\ : std_logic;
SIGNAL \shift_reg[9][11]~q\ : std_logic;
SIGNAL \Add13~42\ : std_logic;
SIGNAL \Add13~45_sumout\ : std_logic;
SIGNAL \xout[11]~reg0_q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \shift_reg[2][12]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[2][12]~q\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \shift_reg[3][12]~q\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \shift_reg[4][12]~q\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \shift_reg[5][12]~q\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \shift_reg[6][12]~q\ : std_logic;
SIGNAL \Add10~46\ : std_logic;
SIGNAL \Add10~49_sumout\ : std_logic;
SIGNAL \shift_reg[7][12]~q\ : std_logic;
SIGNAL \Add11~46\ : std_logic;
SIGNAL \Add11~49_sumout\ : std_logic;
SIGNAL \shift_reg[8][12]~q\ : std_logic;
SIGNAL \Add12~46\ : std_logic;
SIGNAL \Add12~49_sumout\ : std_logic;
SIGNAL \shift_reg[9][12]~q\ : std_logic;
SIGNAL \Add13~46\ : std_logic;
SIGNAL \Add13~49_sumout\ : std_logic;
SIGNAL \xout[12]~reg0_q\ : std_logic;
SIGNAL \shift_reg[2][13]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[2][13]~q\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \shift_reg[3][13]~q\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \shift_reg[4][13]~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \shift_reg[5][13]~q\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~45_sumout\ : std_logic;
SIGNAL \shift_reg[6][13]~q\ : std_logic;
SIGNAL \Add10~50\ : std_logic;
SIGNAL \Add10~53_sumout\ : std_logic;
SIGNAL \shift_reg[7][13]~q\ : std_logic;
SIGNAL \Add11~50\ : std_logic;
SIGNAL \Add11~53_sumout\ : std_logic;
SIGNAL \shift_reg[8][13]~q\ : std_logic;
SIGNAL \Add12~50\ : std_logic;
SIGNAL \Add12~53_sumout\ : std_logic;
SIGNAL \shift_reg[9][13]~q\ : std_logic;
SIGNAL \Add13~50\ : std_logic;
SIGNAL \Add13~53_sumout\ : std_logic;
SIGNAL \xout[13]~reg0_q\ : std_logic;
SIGNAL \shift_reg[2][14]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[2][14]~q\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \shift_reg[3][14]~q\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \shift_reg[4][14]~q\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \shift_reg[5][14]~q\ : std_logic;
SIGNAL \Add9~46\ : std_logic;
SIGNAL \Add9~49_sumout\ : std_logic;
SIGNAL \shift_reg[6][14]~q\ : std_logic;
SIGNAL \Add10~54\ : std_logic;
SIGNAL \Add10~57_sumout\ : std_logic;
SIGNAL \shift_reg[7][14]~q\ : std_logic;
SIGNAL \Add11~54\ : std_logic;
SIGNAL \Add11~57_sumout\ : std_logic;
SIGNAL \shift_reg[8][14]~q\ : std_logic;
SIGNAL \Add12~54\ : std_logic;
SIGNAL \Add12~57_sumout\ : std_logic;
SIGNAL \shift_reg[9][14]~q\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~57_sumout\ : std_logic;
SIGNAL \xout[14]~reg0_q\ : std_logic;
SIGNAL \shift_reg[2][15]~q\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \shift_reg[3][15]~q\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~61_sumout\ : std_logic;
SIGNAL \shift_reg[4][15]~q\ : std_logic;
SIGNAL \Add8~50\ : std_logic;
SIGNAL \Add8~53_sumout\ : std_logic;
SIGNAL \shift_reg[5][15]~q\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~53_sumout\ : std_logic;
SIGNAL \shift_reg[6][15]~q\ : std_logic;
SIGNAL \Add10~58\ : std_logic;
SIGNAL \Add10~61_sumout\ : std_logic;
SIGNAL \shift_reg[7][15]~q\ : std_logic;
SIGNAL \Add11~58\ : std_logic;
SIGNAL \Add11~61_sumout\ : std_logic;
SIGNAL \shift_reg[8][15]~q\ : std_logic;
SIGNAL \Add12~58\ : std_logic;
SIGNAL \Add12~61_sumout\ : std_logic;
SIGNAL \shift_reg[9][15]~q\ : std_logic;
SIGNAL \Add13~58\ : std_logic;
SIGNAL \Add13~61_sumout\ : std_logic;
SIGNAL \xout[15]~reg0_q\ : std_logic;
SIGNAL xin_reg : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][10]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][7]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL ALT_INV_xin_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_shift_reg[9][15]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][14]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][13]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][12]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][11]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][10]~q\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][8]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][7]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][3]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][1]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_shift_reg[9][0]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_xin_en <= xin_en;
ww_xin <= xin;
xout <= ww_xout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_shift_reg[1][10]~q\ <= NOT \shift_reg[1][10]~q\;
\ALT_INV_shift_reg[1][7]~q\ <= NOT \shift_reg[1][7]~q\;
\ALT_INV_shift_reg[1][6]~q\ <= NOT \shift_reg[1][6]~q\;
\ALT_INV_shift_reg[1][5]~q\ <= NOT \shift_reg[1][5]~q\;
\ALT_INV_shift_reg[1][4]~q\ <= NOT \shift_reg[1][4]~q\;
\ALT_INV_shift_reg[1][3]~q\ <= NOT \shift_reg[1][3]~q\;
\ALT_INV_shift_reg[1][2]~q\ <= NOT \shift_reg[1][2]~q\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_shift_reg[2][15]~q\ <= NOT \shift_reg[2][15]~q\;
\ALT_INV_shift_reg[2][14]~q\ <= NOT \shift_reg[2][14]~q\;
\ALT_INV_shift_reg[2][13]~q\ <= NOT \shift_reg[2][13]~q\;
\ALT_INV_shift_reg[2][12]~q\ <= NOT \shift_reg[2][12]~q\;
\ALT_INV_shift_reg[2][11]~q\ <= NOT \shift_reg[2][11]~q\;
\ALT_INV_shift_reg[2][10]~q\ <= NOT \shift_reg[2][10]~q\;
\ALT_INV_shift_reg[2][9]~q\ <= NOT \shift_reg[2][9]~q\;
\ALT_INV_shift_reg[2][8]~q\ <= NOT \shift_reg[2][8]~q\;
\ALT_INV_shift_reg[2][7]~q\ <= NOT \shift_reg[2][7]~q\;
\ALT_INV_shift_reg[2][6]~q\ <= NOT \shift_reg[2][6]~q\;
\ALT_INV_shift_reg[2][5]~q\ <= NOT \shift_reg[2][5]~q\;
\ALT_INV_shift_reg[2][4]~q\ <= NOT \shift_reg[2][4]~q\;
\ALT_INV_shift_reg[2][3]~q\ <= NOT \shift_reg[2][3]~q\;
\ALT_INV_shift_reg[2][2]~q\ <= NOT \shift_reg[2][2]~q\;
\ALT_INV_shift_reg[1][1]~q\ <= NOT \shift_reg[1][1]~q\;
\ALT_INV_shift_reg[1][0]~q\ <= NOT \shift_reg[1][0]~q\;
\ALT_INV_shift_reg[3][15]~q\ <= NOT \shift_reg[3][15]~q\;
\ALT_INV_shift_reg[3][14]~q\ <= NOT \shift_reg[3][14]~q\;
\ALT_INV_shift_reg[3][13]~q\ <= NOT \shift_reg[3][13]~q\;
\ALT_INV_shift_reg[3][12]~q\ <= NOT \shift_reg[3][12]~q\;
\ALT_INV_shift_reg[3][11]~q\ <= NOT \shift_reg[3][11]~q\;
\ALT_INV_shift_reg[3][10]~q\ <= NOT \shift_reg[3][10]~q\;
\ALT_INV_shift_reg[3][9]~q\ <= NOT \shift_reg[3][9]~q\;
\ALT_INV_shift_reg[3][8]~q\ <= NOT \shift_reg[3][8]~q\;
\ALT_INV_shift_reg[3][7]~q\ <= NOT \shift_reg[3][7]~q\;
\ALT_INV_shift_reg[3][6]~q\ <= NOT \shift_reg[3][6]~q\;
\ALT_INV_shift_reg[3][5]~q\ <= NOT \shift_reg[3][5]~q\;
\ALT_INV_shift_reg[3][4]~q\ <= NOT \shift_reg[3][4]~q\;
\ALT_INV_shift_reg[3][3]~q\ <= NOT \shift_reg[3][3]~q\;
\ALT_INV_shift_reg[3][2]~q\ <= NOT \shift_reg[3][2]~q\;
\ALT_INV_shift_reg[2][1]~q\ <= NOT \shift_reg[2][1]~q\;
\ALT_INV_shift_reg[2][0]~q\ <= NOT \shift_reg[2][0]~q\;
\ALT_INV_shift_reg[4][15]~q\ <= NOT \shift_reg[4][15]~q\;
\ALT_INV_shift_reg[4][14]~q\ <= NOT \shift_reg[4][14]~q\;
\ALT_INV_shift_reg[4][13]~q\ <= NOT \shift_reg[4][13]~q\;
\ALT_INV_shift_reg[4][12]~q\ <= NOT \shift_reg[4][12]~q\;
\ALT_INV_shift_reg[4][11]~q\ <= NOT \shift_reg[4][11]~q\;
\ALT_INV_shift_reg[4][10]~q\ <= NOT \shift_reg[4][10]~q\;
\ALT_INV_shift_reg[4][9]~q\ <= NOT \shift_reg[4][9]~q\;
\ALT_INV_shift_reg[4][8]~q\ <= NOT \shift_reg[4][8]~q\;
\ALT_INV_shift_reg[4][7]~q\ <= NOT \shift_reg[4][7]~q\;
\ALT_INV_shift_reg[4][6]~q\ <= NOT \shift_reg[4][6]~q\;
\ALT_INV_shift_reg[4][5]~q\ <= NOT \shift_reg[4][5]~q\;
\ALT_INV_shift_reg[4][4]~q\ <= NOT \shift_reg[4][4]~q\;
\ALT_INV_shift_reg[4][3]~q\ <= NOT \shift_reg[4][3]~q\;
\ALT_INV_shift_reg[4][2]~q\ <= NOT \shift_reg[4][2]~q\;
\ALT_INV_shift_reg[3][1]~q\ <= NOT \shift_reg[3][1]~q\;
\ALT_INV_shift_reg[3][0]~q\ <= NOT \shift_reg[3][0]~q\;
\ALT_INV_shift_reg[5][15]~q\ <= NOT \shift_reg[5][15]~q\;
\ALT_INV_shift_reg[5][14]~q\ <= NOT \shift_reg[5][14]~q\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_shift_reg[5][13]~q\ <= NOT \shift_reg[5][13]~q\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_shift_reg[5][12]~q\ <= NOT \shift_reg[5][12]~q\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_shift_reg[5][11]~q\ <= NOT \shift_reg[5][11]~q\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_shift_reg[5][10]~q\ <= NOT \shift_reg[5][10]~q\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_shift_reg[5][9]~q\ <= NOT \shift_reg[5][9]~q\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_shift_reg[5][8]~q\ <= NOT \shift_reg[5][8]~q\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_shift_reg[5][7]~q\ <= NOT \shift_reg[5][7]~q\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_shift_reg[5][6]~q\ <= NOT \shift_reg[5][6]~q\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_shift_reg[5][5]~q\ <= NOT \shift_reg[5][5]~q\;
\ALT_INV_shift_reg[5][4]~q\ <= NOT \shift_reg[5][4]~q\;
\ALT_INV_shift_reg[5][3]~q\ <= NOT \shift_reg[5][3]~q\;
\ALT_INV_shift_reg[5][2]~q\ <= NOT \shift_reg[5][2]~q\;
\ALT_INV_shift_reg[6][15]~q\ <= NOT \shift_reg[6][15]~q\;
\ALT_INV_shift_reg[6][14]~q\ <= NOT \shift_reg[6][14]~q\;
\ALT_INV_shift_reg[6][13]~q\ <= NOT \shift_reg[6][13]~q\;
\ALT_INV_shift_reg[6][12]~q\ <= NOT \shift_reg[6][12]~q\;
\ALT_INV_shift_reg[6][11]~q\ <= NOT \shift_reg[6][11]~q\;
\ALT_INV_shift_reg[6][10]~q\ <= NOT \shift_reg[6][10]~q\;
\ALT_INV_shift_reg[6][9]~q\ <= NOT \shift_reg[6][9]~q\;
\ALT_INV_shift_reg[6][8]~q\ <= NOT \shift_reg[6][8]~q\;
\ALT_INV_shift_reg[6][7]~q\ <= NOT \shift_reg[6][7]~q\;
\ALT_INV_shift_reg[6][6]~q\ <= NOT \shift_reg[6][6]~q\;
\ALT_INV_shift_reg[6][5]~q\ <= NOT \shift_reg[6][5]~q\;
\ALT_INV_shift_reg[6][4]~q\ <= NOT \shift_reg[6][4]~q\;
\ALT_INV_shift_reg[6][3]~q\ <= NOT \shift_reg[6][3]~q\;
\ALT_INV_shift_reg[6][2]~q\ <= NOT \shift_reg[6][2]~q\;
\ALT_INV_shift_reg[6][1]~q\ <= NOT \shift_reg[6][1]~q\;
\ALT_INV_shift_reg[6][0]~q\ <= NOT \shift_reg[6][0]~q\;
\ALT_INV_shift_reg[7][15]~q\ <= NOT \shift_reg[7][15]~q\;
\ALT_INV_shift_reg[7][14]~q\ <= NOT \shift_reg[7][14]~q\;
\ALT_INV_shift_reg[7][13]~q\ <= NOT \shift_reg[7][13]~q\;
\ALT_INV_shift_reg[7][12]~q\ <= NOT \shift_reg[7][12]~q\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_shift_reg[7][11]~q\ <= NOT \shift_reg[7][11]~q\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_shift_reg[7][10]~q\ <= NOT \shift_reg[7][10]~q\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_shift_reg[7][9]~q\ <= NOT \shift_reg[7][9]~q\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_shift_reg[7][8]~q\ <= NOT \shift_reg[7][8]~q\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_shift_reg[7][7]~q\ <= NOT \shift_reg[7][7]~q\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_shift_reg[7][6]~q\ <= NOT \shift_reg[7][6]~q\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_shift_reg[7][5]~q\ <= NOT \shift_reg[7][5]~q\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_shift_reg[7][4]~q\ <= NOT \shift_reg[7][4]~q\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_shift_reg[7][3]~q\ <= NOT \shift_reg[7][3]~q\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_shift_reg[7][2]~q\ <= NOT \shift_reg[7][2]~q\;
\ALT_INV_shift_reg[7][1]~q\ <= NOT \shift_reg[7][1]~q\;
\ALT_INV_shift_reg[7][0]~q\ <= NOT \shift_reg[7][0]~q\;
\ALT_INV_shift_reg[8][15]~q\ <= NOT \shift_reg[8][15]~q\;
\ALT_INV_shift_reg[8][14]~q\ <= NOT \shift_reg[8][14]~q\;
\ALT_INV_shift_reg[8][13]~q\ <= NOT \shift_reg[8][13]~q\;
\ALT_INV_shift_reg[8][12]~q\ <= NOT \shift_reg[8][12]~q\;
\ALT_INV_shift_reg[8][11]~q\ <= NOT \shift_reg[8][11]~q\;
\ALT_INV_shift_reg[8][10]~q\ <= NOT \shift_reg[8][10]~q\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_shift_reg[8][9]~q\ <= NOT \shift_reg[8][9]~q\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_shift_reg[8][8]~q\ <= NOT \shift_reg[8][8]~q\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_shift_reg[8][7]~q\ <= NOT \shift_reg[8][7]~q\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_shift_reg[8][6]~q\ <= NOT \shift_reg[8][6]~q\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_shift_reg[8][5]~q\ <= NOT \shift_reg[8][5]~q\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_shift_reg[8][4]~q\ <= NOT \shift_reg[8][4]~q\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_shift_reg[8][3]~q\ <= NOT \shift_reg[8][3]~q\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_shift_reg[8][2]~q\ <= NOT \shift_reg[8][2]~q\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_shift_reg[8][1]~q\ <= NOT \shift_reg[8][1]~q\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_shift_reg[8][0]~q\ <= NOT \shift_reg[8][0]~q\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
ALT_INV_xin_reg(7) <= NOT xin_reg(7);
ALT_INV_xin_reg(6) <= NOT xin_reg(6);
ALT_INV_xin_reg(5) <= NOT xin_reg(5);
ALT_INV_xin_reg(4) <= NOT xin_reg(4);
ALT_INV_xin_reg(3) <= NOT xin_reg(3);
ALT_INV_xin_reg(2) <= NOT xin_reg(2);
ALT_INV_xin_reg(1) <= NOT xin_reg(1);
ALT_INV_xin_reg(0) <= NOT xin_reg(0);
\ALT_INV_shift_reg[9][15]~q\ <= NOT \shift_reg[9][15]~q\;
\ALT_INV_shift_reg[9][14]~q\ <= NOT \shift_reg[9][14]~q\;
\ALT_INV_shift_reg[9][13]~q\ <= NOT \shift_reg[9][13]~q\;
\ALT_INV_shift_reg[9][12]~q\ <= NOT \shift_reg[9][12]~q\;
\ALT_INV_shift_reg[9][11]~q\ <= NOT \shift_reg[9][11]~q\;
\ALT_INV_shift_reg[9][10]~q\ <= NOT \shift_reg[9][10]~q\;
\ALT_INV_shift_reg[9][9]~q\ <= NOT \shift_reg[9][9]~q\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_shift_reg[9][8]~q\ <= NOT \shift_reg[9][8]~q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_shift_reg[9][7]~q\ <= NOT \shift_reg[9][7]~q\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_shift_reg[9][6]~q\ <= NOT \shift_reg[9][6]~q\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_shift_reg[9][5]~q\ <= NOT \shift_reg[9][5]~q\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_shift_reg[9][4]~q\ <= NOT \shift_reg[9][4]~q\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_shift_reg[9][3]~q\ <= NOT \shift_reg[9][3]~q\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_shift_reg[9][2]~q\ <= NOT \shift_reg[9][2]~q\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_shift_reg[9][1]~q\ <= NOT \shift_reg[9][1]~q\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_shift_reg[9][0]~q\ <= NOT \shift_reg[9][0]~q\;

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X89_Y6_N5
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

-- Location: IOOBUF_X89_Y9_N39
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

-- Location: IOOBUF_X89_Y9_N5
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOIBUF_X89_Y36_N21
\xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(0),
	o => \xin[0]~input_o\);

-- Location: MLABCELL_X82_Y20_N36
\xin_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[0]~feeder_combout\ = ( \xin[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[0]~input_o\,
	combout => \xin_reg[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y9_N21
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\xin_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin_en,
	o => \xin_en~input_o\);

-- Location: MLABCELL_X84_Y20_N54
\xout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xout[0]~0_combout\ = ( \rst~input_o\ ) # ( !\rst~input_o\ & ( \xin_en~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_xin_en~input_o\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \xout[0]~0_combout\);

-- Location: FF_X82_Y20_N38
\xin_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[0]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(0));

-- Location: LABCELL_X83_Y21_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !xin_reg(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !xin_reg(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X82_Y20_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !xin_reg(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !xin_reg(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X83_Y21_N32
\shift_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][0]~q\);

-- Location: MLABCELL_X82_Y21_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \Add1~1_sumout\ ) + ( \shift_reg[1][0]~q\ ) + ( !VCC ))
-- \Add5~2\ = CARRY(( \Add1~1_sumout\ ) + ( \shift_reg[1][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_shift_reg[1][0]~q\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X82_Y21_N1
\shift_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][0]~q\);

-- Location: MLABCELL_X84_Y19_N0
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( \shift_reg[2][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( \shift_reg[2][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(0),
	datad => \ALT_INV_shift_reg[2][0]~q\,
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X84_Y19_N2
\shift_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][0]~q\);

-- Location: LABCELL_X83_Y19_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \shift_reg[3][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \shift_reg[3][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(0),
	datad => \ALT_INV_shift_reg[3][0]~q\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X83_Y19_N2
\shift_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][0]~q\);

-- Location: FF_X83_Y19_N59
\shift_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shift_reg[4][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][0]~q\);

-- Location: FF_X84_Y20_N53
\shift_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shift_reg[5][0]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][0]~q\);

-- Location: MLABCELL_X84_Y20_N0
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( xin_reg(0) ) + ( \shift_reg[6][0]~q\ ) + ( !VCC ))
-- \Add10~2\ = CARRY(( xin_reg(0) ) + ( \shift_reg[6][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[6][0]~q\,
	datad => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: FF_X84_Y20_N1
\shift_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][0]~q\);

-- Location: LABCELL_X85_Y20_N0
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( \shift_reg[7][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))
-- \Add11~2\ = CARRY(( \shift_reg[7][0]~q\ ) + ( xin_reg(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[7][0]~q\,
	datac => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: FF_X85_Y20_N1
\shift_reg[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][0]~q\);

-- Location: LABCELL_X85_Y21_N0
\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( \shift_reg[8][0]~q\ ) + ( \Add1~1_sumout\ ) + ( !VCC ))
-- \Add12~2\ = CARRY(( \shift_reg[8][0]~q\ ) + ( \Add1~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_shift_reg[8][0]~q\,
	cin => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\);

-- Location: FF_X85_Y21_N2
\shift_reg[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][0]~q\);

-- Location: MLABCELL_X84_Y21_N0
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( \shift_reg[9][0]~q\ ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( \shift_reg[9][0]~q\ ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_shift_reg[9][0]~q\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

-- Location: FF_X84_Y21_N1
\xout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[0]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N78
\xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(1),
	o => \xin[1]~input_o\);

-- Location: MLABCELL_X82_Y20_N45
\xin_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[1]~feeder_combout\ = ( \xin[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[1]~input_o\,
	combout => \xin_reg[1]~feeder_combout\);

-- Location: FF_X82_Y20_N47
\xin_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[1]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(1));

-- Location: LABCELL_X83_Y21_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !xin_reg(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !xin_reg(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X82_Y20_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !xin_reg(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !xin_reg(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X83_Y21_N35
\shift_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][1]~q\);

-- Location: MLABCELL_X82_Y21_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \shift_reg[1][1]~q\ ) + ( \Add1~5_sumout\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \shift_reg[1][1]~q\ ) + ( \Add1~5_sumout\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_shift_reg[1][1]~q\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X82_Y21_N4
\shift_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][1]~q\);

-- Location: MLABCELL_X84_Y19_N3
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( \shift_reg[2][1]~q\ ) + ( xin_reg(1) ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( \shift_reg[2][1]~q\ ) + ( xin_reg(1) ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shift_reg[2][1]~q\,
	dataf => ALT_INV_xin_reg(1),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X84_Y19_N5
\shift_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][1]~q\);

-- Location: LABCELL_X83_Y19_N3
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \shift_reg[3][1]~q\ ) + ( xin_reg(1) ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \shift_reg[3][1]~q\ ) + ( xin_reg(1) ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(1),
	datad => \ALT_INV_shift_reg[3][1]~q\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X83_Y19_N5
\shift_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][1]~q\);

-- Location: FF_X83_Y19_N56
\shift_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shift_reg[4][1]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][1]~q\);

-- Location: FF_X83_Y19_N49
\shift_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shift_reg[5][1]~q\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][1]~q\);

-- Location: MLABCELL_X84_Y20_N3
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( \shift_reg[6][1]~q\ ) + ( xin_reg(1) ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( \shift_reg[6][1]~q\ ) + ( xin_reg(1) ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(1),
	datac => \ALT_INV_shift_reg[6][1]~q\,
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: FF_X84_Y20_N4
\shift_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][1]~q\);

-- Location: LABCELL_X85_Y20_N3
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( xin_reg(1) ) + ( \shift_reg[7][1]~q\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( xin_reg(1) ) + ( \shift_reg[7][1]~q\ ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][1]~q\,
	datad => ALT_INV_xin_reg(1),
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: FF_X85_Y20_N4
\shift_reg[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][1]~q\);

-- Location: LABCELL_X85_Y21_N3
\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( \Add1~5_sumout\ ) + ( \shift_reg[8][1]~q\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( \Add1~5_sumout\ ) + ( \shift_reg[8][1]~q\ ) + ( \Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[8][1]~q\,
	datad => \ALT_INV_Add1~5_sumout\,
	cin => \Add12~2\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

-- Location: FF_X85_Y21_N5
\shift_reg[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][1]~q\);

-- Location: MLABCELL_X84_Y21_N3
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( \shift_reg[9][1]~q\ ) + ( \Add0~5_sumout\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( \shift_reg[9][1]~q\ ) + ( \Add0~5_sumout\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_shift_reg[9][1]~q\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: FF_X84_Y21_N4
\xout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[1]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N61
\xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(2),
	o => \xin[2]~input_o\);

-- Location: MLABCELL_X82_Y20_N54
\xin_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[2]~feeder_combout\ = ( \xin[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[2]~input_o\,
	combout => \xin_reg[2]~feeder_combout\);

-- Location: FF_X82_Y20_N56
\xin_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[2]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(2));

-- Location: LABCELL_X83_Y21_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !xin_reg(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !xin_reg(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X82_Y20_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( xin_reg(0) ) + ( !xin_reg(2) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( xin_reg(0) ) + ( !xin_reg(2) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(2),
	datad => ALT_INV_xin_reg(0),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X83_Y20_N0
\Add2~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~42_cout\ = CARRY(( !\Add1~5_sumout\ ) + ( !\Add1~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	cin => GND,
	cout => \Add2~42_cout\);

-- Location: LABCELL_X83_Y20_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\Add1~9_sumout\ ) + ( GND ) + ( \Add2~42_cout\ ))
-- \Add2~2\ = CARRY(( !\Add1~9_sumout\ ) + ( GND ) + ( \Add2~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Add2~42_cout\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X83_Y21_N38
\shift_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][2]~q\);

-- Location: MLABCELL_X82_Y21_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \shift_reg[1][2]~q\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \Add1~9_sumout\ ) + ( \shift_reg[1][2]~q\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[1][2]~q\,
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X82_Y21_N7
\shift_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][2]~q\);

-- Location: MLABCELL_X84_Y19_N6
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( \shift_reg[2][2]~q\ ) + ( \Add2~1_sumout\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( \shift_reg[2][2]~q\ ) + ( \Add2~1_sumout\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~1_sumout\,
	datad => \ALT_INV_shift_reg[2][2]~q\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X84_Y19_N7
\shift_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][2]~q\);

-- Location: LABCELL_X83_Y19_N6
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \shift_reg[3][2]~q\ ) + ( \Add2~1_sumout\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \shift_reg[3][2]~q\ ) + ( \Add2~1_sumout\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[3][2]~q\,
	datac => \ALT_INV_Add2~1_sumout\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X83_Y19_N7
\shift_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][2]~q\);

-- Location: MLABCELL_X82_Y19_N0
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( \shift_reg[4][2]~q\ ) + ( xin_reg(0) ) + ( !VCC ))
-- \Add8~2\ = CARRY(( \shift_reg[4][2]~q\ ) + ( xin_reg(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[4][2]~q\,
	datac => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X82_Y19_N2
\shift_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][2]~q\);

-- Location: LABCELL_X80_Y20_N0
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( xin_reg(0) ) + ( \shift_reg[5][2]~q\ ) + ( !VCC ))
-- \Add9~2\ = CARRY(( xin_reg(0) ) + ( \shift_reg[5][2]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[5][2]~q\,
	datad => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: FF_X80_Y20_N1
\shift_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~1_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][2]~q\);

-- Location: MLABCELL_X84_Y20_N6
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \shift_reg[6][2]~q\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( \Add2~1_sumout\ ) + ( \shift_reg[6][2]~q\ ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_shift_reg[6][2]~q\,
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X84_Y20_N7
\shift_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][2]~q\);

-- Location: LABCELL_X85_Y20_N6
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \shift_reg[7][2]~q\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( \Add2~1_sumout\ ) + ( \shift_reg[7][2]~q\ ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][2]~q\,
	datad => \ALT_INV_Add2~1_sumout\,
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: FF_X85_Y20_N7
\shift_reg[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][2]~q\);

-- Location: LABCELL_X85_Y21_N6
\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \shift_reg[8][2]~q\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( \Add1~9_sumout\ ) + ( \shift_reg[8][2]~q\ ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[8][2]~q\,
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

-- Location: FF_X85_Y21_N8
\shift_reg[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][2]~q\);

-- Location: MLABCELL_X84_Y21_N6
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( \shift_reg[9][2]~q\ ) + ( \Add0~9_sumout\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( \shift_reg[9][2]~q\ ) + ( \Add0~9_sumout\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_shift_reg[9][2]~q\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: FF_X84_Y21_N7
\xout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[2]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N44
\xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(3),
	o => \xin[3]~input_o\);

-- Location: MLABCELL_X82_Y20_N39
\xin_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[3]~feeder_combout\ = ( \xin[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[3]~input_o\,
	combout => \xin_reg[3]~feeder_combout\);

-- Location: FF_X82_Y20_N41
\xin_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[3]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(3));

-- Location: LABCELL_X83_Y21_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !xin_reg(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !xin_reg(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X82_Y20_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( xin_reg(1) ) + ( !xin_reg(3) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( xin_reg(1) ) + ( !xin_reg(3) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(3),
	datad => ALT_INV_xin_reg(1),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X83_Y20_N6
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\Add1~13_sumout\ ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\Add1~13_sumout\ ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X83_Y21_N41
\shift_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][3]~q\);

-- Location: MLABCELL_X82_Y21_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \shift_reg[1][3]~q\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \Add1~13_sumout\ ) + ( \shift_reg[1][3]~q\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[1][3]~q\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X82_Y21_N10
\shift_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][3]~q\);

-- Location: MLABCELL_X84_Y19_N9
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( \Add2~5_sumout\ ) + ( \shift_reg[2][3]~q\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( \Add2~5_sumout\ ) + ( \shift_reg[2][3]~q\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][3]~q\,
	datad => \ALT_INV_Add2~5_sumout\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X84_Y19_N10
\shift_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][3]~q\);

-- Location: LABCELL_X83_Y19_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \Add2~5_sumout\ ) + ( \shift_reg[3][3]~q\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( \Add2~5_sumout\ ) + ( \shift_reg[3][3]~q\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_shift_reg[3][3]~q\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X83_Y19_N11
\shift_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][3]~q\);

-- Location: MLABCELL_X82_Y19_N3
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( \shift_reg[4][3]~q\ ) + ( xin_reg(1) ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( \shift_reg[4][3]~q\ ) + ( xin_reg(1) ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(1),
	datad => \ALT_INV_shift_reg[4][3]~q\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X82_Y19_N4
\shift_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][3]~q\);

-- Location: LABCELL_X80_Y20_N3
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( \shift_reg[5][3]~q\ ) + ( xin_reg(1) ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( \shift_reg[5][3]~q\ ) + ( xin_reg(1) ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(1),
	datad => \ALT_INV_shift_reg[5][3]~q\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: FF_X80_Y20_N4
\shift_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~5_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][3]~q\);

-- Location: MLABCELL_X84_Y20_N9
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( \Add2~5_sumout\ ) + ( \shift_reg[6][3]~q\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( \Add2~5_sumout\ ) + ( \shift_reg[6][3]~q\ ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[6][3]~q\,
	datad => \ALT_INV_Add2~5_sumout\,
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X84_Y20_N10
\shift_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][3]~q\);

-- Location: LABCELL_X85_Y20_N9
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( \Add2~5_sumout\ ) + ( \shift_reg[7][3]~q\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( \Add2~5_sumout\ ) + ( \shift_reg[7][3]~q\ ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][3]~q\,
	datad => \ALT_INV_Add2~5_sumout\,
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: FF_X85_Y20_N11
\shift_reg[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][3]~q\);

-- Location: LABCELL_X85_Y21_N9
\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \shift_reg[8][3]~q\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( \Add1~13_sumout\ ) + ( \shift_reg[8][3]~q\ ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[8][3]~q\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

-- Location: FF_X85_Y21_N10
\shift_reg[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][3]~q\);

-- Location: MLABCELL_X84_Y21_N9
\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( \shift_reg[9][3]~q\ ) + ( \Add0~13_sumout\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( \shift_reg[9][3]~q\ ) + ( \Add0~13_sumout\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_shift_reg[9][3]~q\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

-- Location: FF_X84_Y21_N10
\xout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[3]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N4
\xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(4),
	o => \xin[4]~input_o\);

-- Location: MLABCELL_X82_Y20_N42
\xin_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[4]~feeder_combout\ = ( \xin[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[4]~input_o\,
	combout => \xin_reg[4]~feeder_combout\);

-- Location: FF_X82_Y20_N44
\xin_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[4]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(4));

-- Location: MLABCELL_X82_Y20_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !xin_reg(4) ) + ( xin_reg(2) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !xin_reg(4) ) + ( xin_reg(2) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_xin_reg(4),
	datac => ALT_INV_xin_reg(2),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X83_Y20_N9
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\Add1~17_sumout\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\Add1~17_sumout\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~17_sumout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X83_Y21_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !xin_reg(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !xin_reg(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X83_Y21_N44
\shift_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][4]~q\);

-- Location: MLABCELL_X82_Y21_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \Add1~17_sumout\ ) + ( \shift_reg[1][4]~q\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \Add1~17_sumout\ ) + ( \shift_reg[1][4]~q\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~17_sumout\,
	datac => \ALT_INV_shift_reg[1][4]~q\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X82_Y21_N14
\shift_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][4]~q\);

-- Location: MLABCELL_X84_Y19_N12
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \shift_reg[2][4]~q\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( \Add2~9_sumout\ ) + ( \shift_reg[2][4]~q\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[2][4]~q\,
	datad => \ALT_INV_Add2~9_sumout\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X84_Y19_N14
\shift_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][4]~q\);

-- Location: LABCELL_X83_Y19_N12
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \shift_reg[3][4]~q\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \Add2~9_sumout\ ) + ( \shift_reg[3][4]~q\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[3][4]~q\,
	datad => \ALT_INV_Add2~9_sumout\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X83_Y19_N14
\shift_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][4]~q\);

-- Location: MLABCELL_X82_Y19_N6
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( \shift_reg[4][4]~q\ ) + ( xin_reg(2) ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( \shift_reg[4][4]~q\ ) + ( xin_reg(2) ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[4][4]~q\,
	dataf => ALT_INV_xin_reg(2),
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X82_Y19_N7
\shift_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][4]~q\);

-- Location: LABCELL_X80_Y20_N6
\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( \shift_reg[5][4]~q\ ) + ( xin_reg(2) ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( \shift_reg[5][4]~q\ ) + ( xin_reg(2) ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_xin_reg(2),
	datad => \ALT_INV_shift_reg[5][4]~q\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: FF_X80_Y20_N7
\shift_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~9_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][4]~q\);

-- Location: MLABCELL_X84_Y20_N12
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \shift_reg[6][4]~q\ ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( \Add2~9_sumout\ ) + ( \shift_reg[6][4]~q\ ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[6][4]~q\,
	datad => \ALT_INV_Add2~9_sumout\,
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X84_Y20_N13
\shift_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][4]~q\);

-- Location: LABCELL_X85_Y20_N12
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \shift_reg[7][4]~q\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( \Add2~9_sumout\ ) + ( \shift_reg[7][4]~q\ ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_shift_reg[7][4]~q\,
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: FF_X85_Y20_N13
\shift_reg[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][4]~q\);

-- Location: LABCELL_X85_Y21_N12
\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( \shift_reg[8][4]~q\ ) + ( \Add1~17_sumout\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( \shift_reg[8][4]~q\ ) + ( \Add1~17_sumout\ ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_shift_reg[8][4]~q\,
	cin => \Add12~14\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

-- Location: FF_X85_Y21_N14
\shift_reg[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][4]~q\);

-- Location: MLABCELL_X84_Y21_N12
\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( \Add0~17_sumout\ ) + ( \shift_reg[9][4]~q\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( \Add0~17_sumout\ ) + ( \shift_reg[9][4]~q\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[9][4]~q\,
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

-- Location: FF_X84_Y21_N13
\xout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[4]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N21
\xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(5),
	o => \xin[5]~input_o\);

-- Location: MLABCELL_X82_Y20_N48
\xin_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[5]~feeder_combout\ = ( \xin[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[5]~input_o\,
	combout => \xin_reg[5]~feeder_combout\);

-- Location: FF_X82_Y20_N50
\xin_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[5]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(5));

-- Location: LABCELL_X83_Y21_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !xin_reg(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !xin_reg(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X82_Y20_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !xin_reg(5) ) + ( xin_reg(3) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !xin_reg(5) ) + ( xin_reg(3) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(5),
	datac => ALT_INV_xin_reg(3),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X81_Y20_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( xin_reg(0) ) + ( xin_reg(3) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( xin_reg(0) ) + ( xin_reg(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(3),
	datad => ALT_INV_xin_reg(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X83_Y21_N47
\shift_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][5]~q\);

-- Location: MLABCELL_X82_Y21_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \shift_reg[1][5]~q\ ) + ( \Add1~21_sumout\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \shift_reg[1][5]~q\ ) + ( \Add1~21_sumout\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[1][5]~q\,
	dataf => \ALT_INV_Add1~21_sumout\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X82_Y21_N16
\shift_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][5]~q\);

-- Location: LABCELL_X83_Y20_N12
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\Add1~21_sumout\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\Add1~21_sumout\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X84_Y19_N15
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \Add2~13_sumout\ ) + ( \shift_reg[2][5]~q\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( \Add2~13_sumout\ ) + ( \shift_reg[2][5]~q\ ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][5]~q\,
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X84_Y19_N17
\shift_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][5]~q\);

-- Location: LABCELL_X83_Y19_N15
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \Add2~13_sumout\ ) + ( \shift_reg[3][5]~q\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( \Add2~13_sumout\ ) + ( \shift_reg[3][5]~q\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[3][5]~q\,
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X83_Y19_N17
\shift_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][5]~q\);

-- Location: MLABCELL_X82_Y19_N9
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( \shift_reg[4][5]~q\ ) + ( \Add3~1_sumout\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( \shift_reg[4][5]~q\ ) + ( \Add3~1_sumout\ ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_shift_reg[4][5]~q\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X82_Y19_N11
\shift_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][5]~q\);

-- Location: LABCELL_X80_Y20_N9
\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( \Add3~1_sumout\ ) + ( \shift_reg[5][5]~q\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( \Add3~1_sumout\ ) + ( \shift_reg[5][5]~q\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[5][5]~q\,
	datad => \ALT_INV_Add3~1_sumout\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: FF_X80_Y20_N10
\shift_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~13_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][5]~q\);

-- Location: MLABCELL_X84_Y20_N15
\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( \Add2~13_sumout\ ) + ( \shift_reg[6][5]~q\ ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( \Add2~13_sumout\ ) + ( \shift_reg[6][5]~q\ ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[6][5]~q\,
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X84_Y20_N16
\shift_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][5]~q\);

-- Location: LABCELL_X85_Y20_N15
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( \shift_reg[7][5]~q\ ) + ( \Add2~13_sumout\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( \shift_reg[7][5]~q\ ) + ( \Add2~13_sumout\ ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[7][5]~q\,
	datac => \ALT_INV_Add2~13_sumout\,
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: FF_X85_Y20_N17
\shift_reg[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][5]~q\);

-- Location: LABCELL_X85_Y21_N15
\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( \Add1~21_sumout\ ) + ( \shift_reg[8][5]~q\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( \Add1~21_sumout\ ) + ( \shift_reg[8][5]~q\ ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	datac => \ALT_INV_shift_reg[8][5]~q\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

-- Location: FF_X85_Y21_N17
\shift_reg[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][5]~q\);

-- Location: MLABCELL_X84_Y21_N15
\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( \shift_reg[9][5]~q\ ) + ( \Add0~21_sumout\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( \shift_reg[9][5]~q\ ) + ( \Add0~21_sumout\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_shift_reg[9][5]~q\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

-- Location: FF_X84_Y21_N17
\xout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[5]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N52
\xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(6),
	o => \xin[6]~input_o\);

-- Location: MLABCELL_X82_Y20_N57
\xin_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[6]~feeder_combout\ = ( \xin[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[6]~input_o\,
	combout => \xin_reg[6]~feeder_combout\);

-- Location: FF_X82_Y20_N59
\xin_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[6]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(6));

-- Location: MLABCELL_X82_Y20_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !xin_reg(6) ) + ( xin_reg(4) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !xin_reg(6) ) + ( xin_reg(4) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_xin_reg(4),
	datad => ALT_INV_xin_reg(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X83_Y20_N15
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\Add1~25_sumout\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\Add1~25_sumout\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~25_sumout\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X81_Y20_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( xin_reg(4) ) + ( xin_reg(1) ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( xin_reg(4) ) + ( xin_reg(1) ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(1),
	datad => ALT_INV_xin_reg(4),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X83_Y21_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !xin_reg(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !xin_reg(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X83_Y21_N50
\shift_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][6]~q\);

-- Location: MLABCELL_X82_Y21_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \shift_reg[1][6]~q\ ) + ( \Add1~25_sumout\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \shift_reg[1][6]~q\ ) + ( \Add1~25_sumout\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[1][6]~q\,
	dataf => \ALT_INV_Add1~25_sumout\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X82_Y21_N19
\shift_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][6]~q\);

-- Location: MLABCELL_X84_Y19_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \shift_reg[2][6]~q\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( \Add2~17_sumout\ ) + ( \shift_reg[2][6]~q\ ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[2][6]~q\,
	datad => \ALT_INV_Add2~17_sumout\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X84_Y19_N19
\shift_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][6]~q\);

-- Location: LABCELL_X83_Y19_N18
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \shift_reg[3][6]~q\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( \Add2~17_sumout\ ) + ( \shift_reg[3][6]~q\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][6]~q\,
	datad => \ALT_INV_Add2~17_sumout\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X83_Y19_N19
\shift_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][6]~q\);

-- Location: MLABCELL_X82_Y19_N12
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( \shift_reg[4][6]~q\ ) + ( \Add3~5_sumout\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( \shift_reg[4][6]~q\ ) + ( \Add3~5_sumout\ ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[4][6]~q\,
	datac => \ALT_INV_Add3~5_sumout\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X82_Y19_N13
\shift_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][6]~q\);

-- Location: LABCELL_X80_Y20_N12
\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( \shift_reg[5][6]~q\ ) + ( \Add3~5_sumout\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( \shift_reg[5][6]~q\ ) + ( \Add3~5_sumout\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_shift_reg[5][6]~q\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: FF_X80_Y20_N13
\shift_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~17_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][6]~q\);

-- Location: MLABCELL_X84_Y20_N18
\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( \shift_reg[6][6]~q\ ) + ( \Add2~17_sumout\ ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( \shift_reg[6][6]~q\ ) + ( \Add2~17_sumout\ ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~17_sumout\,
	datac => \ALT_INV_shift_reg[6][6]~q\,
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: FF_X84_Y20_N19
\shift_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][6]~q\);

-- Location: LABCELL_X85_Y20_N18
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \shift_reg[7][6]~q\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( \Add2~17_sumout\ ) + ( \shift_reg[7][6]~q\ ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[7][6]~q\,
	datad => \ALT_INV_Add2~17_sumout\,
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: FF_X85_Y20_N19
\shift_reg[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][6]~q\);

-- Location: LABCELL_X85_Y21_N18
\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \shift_reg[8][6]~q\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( \Add1~25_sumout\ ) + ( \shift_reg[8][6]~q\ ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[8][6]~q\,
	datad => \ALT_INV_Add1~25_sumout\,
	cin => \Add12~22\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\);

-- Location: FF_X85_Y21_N20
\shift_reg[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][6]~q\);

-- Location: MLABCELL_X84_Y21_N18
\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( \Add0~25_sumout\ ) + ( \shift_reg[9][6]~q\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( \Add0~25_sumout\ ) + ( \shift_reg[9][6]~q\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[9][6]~q\,
	datad => \ALT_INV_Add0~25_sumout\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

-- Location: FF_X84_Y21_N19
\xout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[6]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N35
\xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xin(7),
	o => \xin[7]~input_o\);

-- Location: MLABCELL_X82_Y20_N51
\xin_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \xin_reg[7]~feeder_combout\ = ( \xin[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_xin[7]~input_o\,
	combout => \xin_reg[7]~feeder_combout\);

-- Location: FF_X82_Y20_N53
\xin_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xin_reg[7]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xin_reg(7));

-- Location: LABCELL_X83_Y21_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !xin_reg(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !xin_reg(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X82_Y20_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( xin_reg(5) ) + ( !xin_reg(7) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( xin_reg(5) ) + ( !xin_reg(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	datad => ALT_INV_xin_reg(5),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X83_Y20_N18
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\Add1~29_sumout\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\Add1~29_sumout\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~29_sumout\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X81_Y20_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( xin_reg(2) ) + ( xin_reg(5) ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( xin_reg(2) ) + ( xin_reg(5) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_xin_reg(5),
	datad => ALT_INV_xin_reg(2),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X83_Y21_N53
\shift_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][7]~q\);

-- Location: MLABCELL_X82_Y21_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \Add1~29_sumout\ ) + ( \shift_reg[1][7]~q\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \Add1~29_sumout\ ) + ( \shift_reg[1][7]~q\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_shift_reg[1][7]~q\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X82_Y21_N23
\shift_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][7]~q\);

-- Location: MLABCELL_X84_Y19_N21
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \shift_reg[2][7]~q\ ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( \Add2~21_sumout\ ) + ( \shift_reg[2][7]~q\ ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_shift_reg[2][7]~q\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X84_Y19_N22
\shift_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][7]~q\);

-- Location: LABCELL_X83_Y19_N21
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \shift_reg[3][7]~q\ ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( \Add2~21_sumout\ ) + ( \shift_reg[3][7]~q\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][7]~q\,
	datad => \ALT_INV_Add2~21_sumout\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X83_Y19_N23
\shift_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][7]~q\);

-- Location: MLABCELL_X82_Y19_N15
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( \shift_reg[4][7]~q\ ) + ( \Add3~9_sumout\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( \shift_reg[4][7]~q\ ) + ( \Add3~9_sumout\ ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_shift_reg[4][7]~q\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X82_Y19_N16
\shift_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][7]~q\);

-- Location: LABCELL_X80_Y20_N15
\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( \Add3~9_sumout\ ) + ( \shift_reg[5][7]~q\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( \Add3~9_sumout\ ) + ( \shift_reg[5][7]~q\ ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[5][7]~q\,
	datad => \ALT_INV_Add3~9_sumout\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: FF_X80_Y20_N16
\shift_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~21_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][7]~q\);

-- Location: MLABCELL_X84_Y20_N21
\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \shift_reg[6][7]~q\ ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( \Add2~21_sumout\ ) + ( \shift_reg[6][7]~q\ ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	dataf => \ALT_INV_shift_reg[6][7]~q\,
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: FF_X84_Y20_N22
\shift_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][7]~q\);

-- Location: LABCELL_X85_Y20_N21
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \shift_reg[7][7]~q\ ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( \Add2~21_sumout\ ) + ( \shift_reg[7][7]~q\ ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[7][7]~q\,
	datad => \ALT_INV_Add2~21_sumout\,
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: FF_X85_Y20_N22
\shift_reg[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][7]~q\);

-- Location: LABCELL_X85_Y21_N21
\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( \Add1~29_sumout\ ) + ( \shift_reg[8][7]~q\ ) + ( \Add12~26\ ))
-- \Add12~30\ = CARRY(( \Add1~29_sumout\ ) + ( \shift_reg[8][7]~q\ ) + ( \Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[8][7]~q\,
	datac => \ALT_INV_Add1~29_sumout\,
	cin => \Add12~26\,
	sumout => \Add12~29_sumout\,
	cout => \Add12~30\);

-- Location: FF_X85_Y21_N23
\shift_reg[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][7]~q\);

-- Location: MLABCELL_X84_Y21_N21
\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( \shift_reg[9][7]~q\ ) + ( \Add0~29_sumout\ ) + ( \Add13~26\ ))
-- \Add13~30\ = CARRY(( \shift_reg[9][7]~q\ ) + ( \Add0~29_sumout\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_shift_reg[9][7]~q\,
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\,
	cout => \Add13~30\);

-- Location: FF_X84_Y21_N23
\xout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[7]~reg0_q\);

-- Location: LABCELL_X81_Y20_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( xin_reg(6) ) + ( xin_reg(3) ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( xin_reg(6) ) + ( xin_reg(3) ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(3),
	datac => ALT_INV_xin_reg(6),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X82_Y20_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( xin_reg(6) ) + ( !xin_reg(7) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( xin_reg(6) ) + ( !xin_reg(7) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(7),
	datad => ALT_INV_xin_reg(6),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X83_Y21_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !xin_reg(7) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_xin_reg(7),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X83_Y21_N2
\shift_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[1][10]~q\);

-- Location: MLABCELL_X82_Y21_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \shift_reg[1][10]~q\ ) + ( \Add1~33_sumout\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( \shift_reg[1][10]~q\ ) + ( \Add1~33_sumout\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_shift_reg[1][10]~q\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X82_Y21_N25
\shift_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][8]~q\);

-- Location: LABCELL_X83_Y20_N21
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\Add1~33_sumout\ ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\Add1~33_sumout\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X84_Y19_N24
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \shift_reg[2][8]~q\ ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( \Add2~25_sumout\ ) + ( \shift_reg[2][8]~q\ ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[2][8]~q\,
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X84_Y19_N26
\shift_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][8]~q\);

-- Location: LABCELL_X83_Y19_N24
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \shift_reg[3][8]~q\ ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \Add2~25_sumout\ ) + ( \shift_reg[3][8]~q\ ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[3][8]~q\,
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: FF_X83_Y19_N26
\shift_reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][8]~q\);

-- Location: MLABCELL_X82_Y19_N18
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( \Add3~13_sumout\ ) + ( \shift_reg[4][8]~q\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( \Add3~13_sumout\ ) + ( \shift_reg[4][8]~q\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[4][8]~q\,
	datad => \ALT_INV_Add3~13_sumout\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X82_Y19_N19
\shift_reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][8]~q\);

-- Location: LABCELL_X80_Y20_N18
\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( \shift_reg[5][8]~q\ ) + ( \Add3~13_sumout\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( \shift_reg[5][8]~q\ ) + ( \Add3~13_sumout\ ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_shift_reg[5][8]~q\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: FF_X80_Y20_N19
\shift_reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~25_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][8]~q\);

-- Location: MLABCELL_X84_Y20_N24
\Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \shift_reg[6][8]~q\ ) + ( \Add10~30\ ))
-- \Add10~34\ = CARRY(( \Add2~25_sumout\ ) + ( \shift_reg[6][8]~q\ ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[6][8]~q\,
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\,
	cout => \Add10~34\);

-- Location: FF_X84_Y20_N25
\shift_reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][8]~q\);

-- Location: LABCELL_X85_Y20_N24
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \shift_reg[7][8]~q\ ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( \Add2~25_sumout\ ) + ( \shift_reg[7][8]~q\ ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[7][8]~q\,
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\);

-- Location: FF_X85_Y20_N26
\shift_reg[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][8]~q\);

-- Location: LABCELL_X85_Y21_N24
\Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~33_sumout\ = SUM(( \Add1~33_sumout\ ) + ( \shift_reg[8][8]~q\ ) + ( \Add12~30\ ))
-- \Add12~34\ = CARRY(( \Add1~33_sumout\ ) + ( \shift_reg[8][8]~q\ ) + ( \Add12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[8][8]~q\,
	datad => \ALT_INV_Add1~33_sumout\,
	cin => \Add12~30\,
	sumout => \Add12~33_sumout\,
	cout => \Add12~34\);

-- Location: FF_X85_Y21_N26
\shift_reg[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][8]~q\);

-- Location: MLABCELL_X84_Y21_N24
\Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~33_sumout\ = SUM(( \shift_reg[9][8]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~30\ ))
-- \Add13~34\ = CARRY(( \shift_reg[9][8]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[9][8]~q\,
	datac => \ALT_INV_Add0~33_sumout\,
	cin => \Add13~30\,
	sumout => \Add13~33_sumout\,
	cout => \Add13~34\);

-- Location: FF_X84_Y21_N25
\xout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[8]~reg0_q\);

-- Location: MLABCELL_X82_Y20_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( xin_reg(7) ) + ( !xin_reg(7) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( xin_reg(7) ) + ( !xin_reg(7) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X81_Y20_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( xin_reg(4) ) + ( xin_reg(7) ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( xin_reg(4) ) + ( xin_reg(7) ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(7),
	datad => ALT_INV_xin_reg(4),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X82_Y21_N27
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \shift_reg[1][10]~q\ ) + ( \Add1~37_sumout\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( \shift_reg[1][10]~q\ ) + ( \Add1~37_sumout\ ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_shift_reg[1][10]~q\,
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X82_Y21_N28
\shift_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][9]~q\);

-- Location: LABCELL_X83_Y20_N24
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !\Add1~37_sumout\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !\Add1~37_sumout\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~37_sumout\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X84_Y19_N27
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( \shift_reg[2][9]~q\ ) + ( \Add2~29_sumout\ ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( \shift_reg[2][9]~q\ ) + ( \Add2~29_sumout\ ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[2][9]~q\,
	datac => \ALT_INV_Add2~29_sumout\,
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: FF_X84_Y19_N28
\shift_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][9]~q\);

-- Location: LABCELL_X83_Y19_N27
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \Add2~29_sumout\ ) + ( \shift_reg[3][9]~q\ ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( \Add2~29_sumout\ ) + ( \shift_reg[3][9]~q\ ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][9]~q\,
	datad => \ALT_INV_Add2~29_sumout\,
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: FF_X83_Y19_N28
\shift_reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][9]~q\);

-- Location: MLABCELL_X82_Y19_N21
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( \shift_reg[4][9]~q\ ) + ( \Add3~17_sumout\ ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( \shift_reg[4][9]~q\ ) + ( \Add3~17_sumout\ ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_shift_reg[4][9]~q\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X82_Y19_N22
\shift_reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][9]~q\);

-- Location: LABCELL_X80_Y20_N21
\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( \shift_reg[5][9]~q\ ) + ( \Add3~17_sumout\ ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( \shift_reg[5][9]~q\ ) + ( \Add3~17_sumout\ ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_shift_reg[5][9]~q\,
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\);

-- Location: FF_X80_Y20_N22
\shift_reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~29_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][9]~q\);

-- Location: MLABCELL_X84_Y20_N27
\Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~37_sumout\ = SUM(( \shift_reg[6][9]~q\ ) + ( \Add2~29_sumout\ ) + ( \Add10~34\ ))
-- \Add10~38\ = CARRY(( \shift_reg[6][9]~q\ ) + ( \Add2~29_sumout\ ) + ( \Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[6][9]~q\,
	datac => \ALT_INV_Add2~29_sumout\,
	cin => \Add10~34\,
	sumout => \Add10~37_sumout\,
	cout => \Add10~38\);

-- Location: FF_X84_Y20_N28
\shift_reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][9]~q\);

-- Location: LABCELL_X85_Y20_N27
\Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( \Add2~29_sumout\ ) + ( \shift_reg[7][9]~q\ ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( \Add2~29_sumout\ ) + ( \shift_reg[7][9]~q\ ) + ( \Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][9]~q\,
	datad => \ALT_INV_Add2~29_sumout\,
	cin => \Add11~34\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\);

-- Location: FF_X85_Y20_N28
\shift_reg[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][9]~q\);

-- Location: LABCELL_X85_Y21_N27
\Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~37_sumout\ = SUM(( \shift_reg[8][9]~q\ ) + ( \Add1~37_sumout\ ) + ( \Add12~34\ ))
-- \Add12~38\ = CARRY(( \shift_reg[8][9]~q\ ) + ( \Add1~37_sumout\ ) + ( \Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_shift_reg[8][9]~q\,
	cin => \Add12~34\,
	sumout => \Add12~37_sumout\,
	cout => \Add12~38\);

-- Location: FF_X85_Y21_N28
\shift_reg[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][9]~q\);

-- Location: MLABCELL_X84_Y21_N27
\Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~37_sumout\ = SUM(( \shift_reg[9][9]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~34\ ))
-- \Add13~38\ = CARRY(( \shift_reg[9][9]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_shift_reg[9][9]~q\,
	cin => \Add13~34\,
	sumout => \Add13~37_sumout\,
	cout => \Add13~38\);

-- Location: FF_X84_Y21_N28
\xout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[9]~reg0_q\);

-- Location: MLABCELL_X82_Y20_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( xin_reg(7) ) + ( !xin_reg(7) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( xin_reg(7) ) + ( !xin_reg(7) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: MLABCELL_X82_Y21_N30
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[1][10]~q\ ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( \Add1~41_sumout\ ) + ( \shift_reg[1][10]~q\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[1][10]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X82_Y21_N31
\shift_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][10]~q\);

-- Location: LABCELL_X83_Y20_N27
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !\Add1~41_sumout\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !\Add1~41_sumout\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X84_Y19_N30
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \shift_reg[2][10]~q\ ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( \Add2~33_sumout\ ) + ( \shift_reg[2][10]~q\ ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][10]~q\,
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: FF_X84_Y19_N32
\shift_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][10]~q\);

-- Location: LABCELL_X83_Y19_N30
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \shift_reg[3][10]~q\ ) + ( \Add7~38\ ))
-- \Add7~42\ = CARRY(( \Add2~33_sumout\ ) + ( \shift_reg[3][10]~q\ ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][10]~q\,
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: FF_X83_Y19_N31
\shift_reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][10]~q\);

-- Location: LABCELL_X81_Y20_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( xin_reg(7) ) + ( xin_reg(5) ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( xin_reg(7) ) + ( xin_reg(5) ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	datac => ALT_INV_xin_reg(5),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X82_Y19_N24
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( \Add3~21_sumout\ ) + ( \shift_reg[4][10]~q\ ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( \Add3~21_sumout\ ) + ( \shift_reg[4][10]~q\ ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[4][10]~q\,
	datad => \ALT_INV_Add3~21_sumout\,
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X82_Y19_N25
\shift_reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][10]~q\);

-- Location: LABCELL_X80_Y20_N24
\Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( \Add3~21_sumout\ ) + ( \shift_reg[5][10]~q\ ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( \Add3~21_sumout\ ) + ( \shift_reg[5][10]~q\ ) + ( \Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[5][10]~q\,
	datad => \ALT_INV_Add3~21_sumout\,
	cin => \Add9~30\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: FF_X80_Y20_N26
\shift_reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~33_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][10]~q\);

-- Location: MLABCELL_X84_Y20_N30
\Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~41_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \shift_reg[6][10]~q\ ) + ( \Add10~38\ ))
-- \Add10~42\ = CARRY(( \Add2~33_sumout\ ) + ( \shift_reg[6][10]~q\ ) + ( \Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[6][10]~q\,
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add10~38\,
	sumout => \Add10~41_sumout\,
	cout => \Add10~42\);

-- Location: FF_X84_Y20_N31
\shift_reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][10]~q\);

-- Location: LABCELL_X85_Y20_N30
\Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \shift_reg[7][10]~q\ ) + ( \Add11~38\ ))
-- \Add11~42\ = CARRY(( \Add2~33_sumout\ ) + ( \shift_reg[7][10]~q\ ) + ( \Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][10]~q\,
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Add11~38\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\);

-- Location: FF_X85_Y20_N31
\shift_reg[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][10]~q\);

-- Location: LABCELL_X85_Y21_N30
\Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~41_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[8][10]~q\ ) + ( \Add12~38\ ))
-- \Add12~42\ = CARRY(( \Add1~41_sumout\ ) + ( \shift_reg[8][10]~q\ ) + ( \Add12~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[8][10]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~38\,
	sumout => \Add12~41_sumout\,
	cout => \Add12~42\);

-- Location: FF_X85_Y21_N32
\shift_reg[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][10]~q\);

-- Location: MLABCELL_X84_Y21_N30
\Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~41_sumout\ = SUM(( \shift_reg[9][10]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~38\ ))
-- \Add13~42\ = CARRY(( \shift_reg[9][10]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_shift_reg[9][10]~q\,
	cin => \Add13~38\,
	sumout => \Add13~41_sumout\,
	cout => \Add13~42\);

-- Location: FF_X84_Y21_N31
\xout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[10]~reg0_q\);

-- Location: LABCELL_X83_Y20_N30
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( !\Add1~41_sumout\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\);

-- Location: LABCELL_X81_Y20_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( xin_reg(6) ) + ( xin_reg(7) ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( xin_reg(6) ) + ( xin_reg(7) ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	datad => ALT_INV_xin_reg(6),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X82_Y20_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( xin_reg(7) ) + ( !xin_reg(7) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\);

-- Location: MLABCELL_X82_Y21_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \Add1~45_sumout\ ) + ( \shift_reg[1][10]~q\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[1][10]~q\,
	datac => \ALT_INV_Add1~45_sumout\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\);

-- Location: MLABCELL_X82_Y21_N36
\shift_reg[2][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_reg[2][11]~feeder_combout\ = ( \Add5~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \shift_reg[2][11]~feeder_combout\);

-- Location: FF_X82_Y21_N37
\shift_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift_reg[2][11]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][11]~q\);

-- Location: MLABCELL_X84_Y19_N33
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[2][11]~q\ ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[2][11]~q\ ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[2][11]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\);

-- Location: FF_X84_Y19_N34
\shift_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][11]~q\);

-- Location: LABCELL_X83_Y19_N33
\Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[3][11]~q\ ) + ( \Add7~42\ ))
-- \Add7~46\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[3][11]~q\ ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][11]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add7~42\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: FF_X83_Y19_N35
\shift_reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][11]~q\);

-- Location: MLABCELL_X82_Y19_N27
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( \shift_reg[4][11]~q\ ) + ( \Add3~25_sumout\ ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( \shift_reg[4][11]~q\ ) + ( \Add3~25_sumout\ ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[4][11]~q\,
	datac => \ALT_INV_Add3~25_sumout\,
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X82_Y19_N29
\shift_reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][11]~q\);

-- Location: LABCELL_X80_Y20_N27
\Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( \shift_reg[5][11]~q\ ) + ( \Add3~25_sumout\ ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( \shift_reg[5][11]~q\ ) + ( \Add3~25_sumout\ ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_shift_reg[5][11]~q\,
	cin => \Add9~34\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\);

-- Location: FF_X80_Y20_N28
\shift_reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~37_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][11]~q\);

-- Location: MLABCELL_X84_Y20_N33
\Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~45_sumout\ = SUM(( \shift_reg[6][11]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~42\ ))
-- \Add10~46\ = CARRY(( \shift_reg[6][11]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~37_sumout\,
	datac => \ALT_INV_shift_reg[6][11]~q\,
	cin => \Add10~42\,
	sumout => \Add10~45_sumout\,
	cout => \Add10~46\);

-- Location: FF_X84_Y20_N34
\shift_reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][11]~q\);

-- Location: LABCELL_X85_Y20_N33
\Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~45_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[7][11]~q\ ) + ( \Add11~42\ ))
-- \Add11~46\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[7][11]~q\ ) + ( \Add11~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][11]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add11~42\,
	sumout => \Add11~45_sumout\,
	cout => \Add11~46\);

-- Location: FF_X85_Y20_N34
\shift_reg[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][11]~q\);

-- Location: LABCELL_X85_Y21_N33
\Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~45_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[8][11]~q\ ) + ( \Add12~42\ ))
-- \Add12~46\ = CARRY(( \Add1~41_sumout\ ) + ( \shift_reg[8][11]~q\ ) + ( \Add12~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[8][11]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~42\,
	sumout => \Add12~45_sumout\,
	cout => \Add12~46\);

-- Location: FF_X85_Y21_N35
\shift_reg[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][11]~q\);

-- Location: MLABCELL_X84_Y21_N33
\Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~45_sumout\ = SUM(( \Add0~33_sumout\ ) + ( \shift_reg[9][11]~q\ ) + ( \Add13~42\ ))
-- \Add13~46\ = CARRY(( \Add0~33_sumout\ ) + ( \shift_reg[9][11]~q\ ) + ( \Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_shift_reg[9][11]~q\,
	cin => \Add13~42\,
	sumout => \Add13~45_sumout\,
	cout => \Add13~46\);

-- Location: FF_X84_Y21_N34
\xout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[11]~reg0_q\);

-- Location: LABCELL_X81_Y20_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( xin_reg(7) ) + ( xin_reg(7) ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( xin_reg(7) ) + ( xin_reg(7) ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xin_reg(7),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X82_Y21_N39
\shift_reg[2][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_reg[2][12]~feeder_combout\ = ( \Add5~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \shift_reg[2][12]~feeder_combout\);

-- Location: FF_X82_Y21_N40
\shift_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift_reg[2][12]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][12]~q\);

-- Location: MLABCELL_X84_Y19_N36
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[2][12]~q\ ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[2][12]~q\ ) + ( \Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][12]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add6~46\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: FF_X84_Y19_N37
\shift_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][12]~q\);

-- Location: LABCELL_X83_Y19_N36
\Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[3][12]~q\ ) + ( \Add7~46\ ))
-- \Add7~50\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[3][12]~q\ ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[3][12]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add7~46\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: FF_X83_Y19_N38
\shift_reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][12]~q\);

-- Location: MLABCELL_X82_Y19_N30
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( \Add3~29_sumout\ ) + ( \shift_reg[4][12]~q\ ) + ( \Add8~38\ ))
-- \Add8~42\ = CARRY(( \Add3~29_sumout\ ) + ( \shift_reg[4][12]~q\ ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[4][12]~q\,
	datad => \ALT_INV_Add3~29_sumout\,
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: FF_X82_Y19_N31
\shift_reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][12]~q\);

-- Location: LABCELL_X80_Y20_N30
\Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( \shift_reg[5][12]~q\ ) + ( \Add3~29_sumout\ ) + ( \Add9~38\ ))
-- \Add9~42\ = CARRY(( \shift_reg[5][12]~q\ ) + ( \Add3~29_sumout\ ) + ( \Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_shift_reg[5][12]~q\,
	cin => \Add9~38\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\);

-- Location: FF_X80_Y20_N31
\shift_reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~41_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][12]~q\);

-- Location: MLABCELL_X84_Y20_N36
\Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~49_sumout\ = SUM(( \shift_reg[6][12]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~46\ ))
-- \Add10~50\ = CARRY(( \shift_reg[6][12]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~37_sumout\,
	datad => \ALT_INV_shift_reg[6][12]~q\,
	cin => \Add10~46\,
	sumout => \Add10~49_sumout\,
	cout => \Add10~50\);

-- Location: FF_X84_Y20_N37
\shift_reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][12]~q\);

-- Location: LABCELL_X85_Y20_N36
\Add11~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~49_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[7][12]~q\ ) + ( \Add11~46\ ))
-- \Add11~50\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[7][12]~q\ ) + ( \Add11~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[7][12]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add11~46\,
	sumout => \Add11~49_sumout\,
	cout => \Add11~50\);

-- Location: FF_X85_Y20_N37
\shift_reg[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][12]~q\);

-- Location: LABCELL_X85_Y21_N36
\Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~49_sumout\ = SUM(( \shift_reg[8][12]~q\ ) + ( \Add1~41_sumout\ ) + ( \Add12~46\ ))
-- \Add12~50\ = CARRY(( \shift_reg[8][12]~q\ ) + ( \Add1~41_sumout\ ) + ( \Add12~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~41_sumout\,
	datad => \ALT_INV_shift_reg[8][12]~q\,
	cin => \Add12~46\,
	sumout => \Add12~49_sumout\,
	cout => \Add12~50\);

-- Location: FF_X85_Y21_N37
\shift_reg[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][12]~q\);

-- Location: MLABCELL_X84_Y21_N36
\Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~49_sumout\ = SUM(( \shift_reg[9][12]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~46\ ))
-- \Add13~50\ = CARRY(( \shift_reg[9][12]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[9][12]~q\,
	datac => \ALT_INV_Add0~33_sumout\,
	cin => \Add13~46\,
	sumout => \Add13~49_sumout\,
	cout => \Add13~50\);

-- Location: FF_X84_Y21_N37
\xout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[12]~reg0_q\);

-- Location: MLABCELL_X82_Y21_N42
\shift_reg[2][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_reg[2][13]~feeder_combout\ = ( \Add5~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \shift_reg[2][13]~feeder_combout\);

-- Location: FF_X82_Y21_N43
\shift_reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift_reg[2][13]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][13]~q\);

-- Location: MLABCELL_X84_Y19_N39
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( \shift_reg[2][13]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( \shift_reg[2][13]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~37_sumout\,
	datad => \ALT_INV_shift_reg[2][13]~q\,
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: FF_X84_Y19_N40
\shift_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][13]~q\);

-- Location: LABCELL_X83_Y19_N39
\Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[3][13]~q\ ) + ( \Add7~50\ ))
-- \Add7~54\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[3][13]~q\ ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[3][13]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add7~50\,
	sumout => \Add7~53_sumout\,
	cout => \Add7~54\);

-- Location: FF_X83_Y19_N40
\shift_reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][13]~q\);

-- Location: LABCELL_X81_Y20_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( xin_reg(7) ) + ( xin_reg(7) ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xin_reg(7),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\);

-- Location: MLABCELL_X82_Y19_N33
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( \Add3~33_sumout\ ) + ( \shift_reg[4][13]~q\ ) + ( \Add8~42\ ))
-- \Add8~46\ = CARRY(( \Add3~33_sumout\ ) + ( \shift_reg[4][13]~q\ ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[4][13]~q\,
	datad => \ALT_INV_Add3~33_sumout\,
	cin => \Add8~42\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: FF_X82_Y19_N34
\shift_reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][13]~q\);

-- Location: LABCELL_X80_Y20_N33
\Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~45_sumout\ = SUM(( \shift_reg[5][13]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add9~42\ ))
-- \Add9~46\ = CARRY(( \shift_reg[5][13]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[5][13]~q\,
	datac => \ALT_INV_Add3~33_sumout\,
	cin => \Add9~42\,
	sumout => \Add9~45_sumout\,
	cout => \Add9~46\);

-- Location: FF_X80_Y20_N34
\shift_reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][13]~q\);

-- Location: MLABCELL_X84_Y20_N39
\Add10~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~53_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[6][13]~q\ ) + ( \Add10~50\ ))
-- \Add10~54\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[6][13]~q\ ) + ( \Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_shift_reg[6][13]~q\,
	cin => \Add10~50\,
	sumout => \Add10~53_sumout\,
	cout => \Add10~54\);

-- Location: FF_X84_Y20_N40
\shift_reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][13]~q\);

-- Location: LABCELL_X85_Y20_N39
\Add11~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~53_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[7][13]~q\ ) + ( \Add11~50\ ))
-- \Add11~54\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[7][13]~q\ ) + ( \Add11~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[7][13]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add11~50\,
	sumout => \Add11~53_sumout\,
	cout => \Add11~54\);

-- Location: FF_X85_Y20_N40
\shift_reg[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][13]~q\);

-- Location: LABCELL_X85_Y21_N39
\Add12~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~53_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[8][13]~q\ ) + ( \Add12~50\ ))
-- \Add12~54\ = CARRY(( \Add1~41_sumout\ ) + ( \shift_reg[8][13]~q\ ) + ( \Add12~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[8][13]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~50\,
	sumout => \Add12~53_sumout\,
	cout => \Add12~54\);

-- Location: FF_X85_Y21_N40
\shift_reg[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][13]~q\);

-- Location: MLABCELL_X84_Y21_N39
\Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~53_sumout\ = SUM(( \shift_reg[9][13]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~50\ ))
-- \Add13~54\ = CARRY(( \shift_reg[9][13]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_shift_reg[9][13]~q\,
	cin => \Add13~50\,
	sumout => \Add13~53_sumout\,
	cout => \Add13~54\);

-- Location: FF_X84_Y21_N40
\xout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[13]~reg0_q\);

-- Location: MLABCELL_X82_Y21_N45
\shift_reg[2][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_reg[2][14]~feeder_combout\ = ( \Add5~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \shift_reg[2][14]~feeder_combout\);

-- Location: FF_X82_Y21_N46
\shift_reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift_reg[2][14]~feeder_combout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][14]~q\);

-- Location: MLABCELL_X84_Y19_N42
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[2][14]~q\ ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[2][14]~q\ ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][14]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add6~54\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: FF_X84_Y19_N44
\shift_reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][14]~q\);

-- Location: LABCELL_X83_Y19_N42
\Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[3][14]~q\ ) + ( \Add7~54\ ))
-- \Add7~58\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[3][14]~q\ ) + ( \Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[3][14]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add7~54\,
	sumout => \Add7~57_sumout\,
	cout => \Add7~58\);

-- Location: FF_X83_Y19_N43
\shift_reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][14]~q\);

-- Location: MLABCELL_X82_Y19_N36
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( \shift_reg[4][14]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add8~46\ ))
-- \Add8~50\ = CARRY(( \shift_reg[4][14]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[4][14]~q\,
	datac => \ALT_INV_Add3~33_sumout\,
	cin => \Add8~46\,
	sumout => \Add8~49_sumout\,
	cout => \Add8~50\);

-- Location: FF_X82_Y19_N37
\shift_reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][14]~q\);

-- Location: LABCELL_X80_Y20_N36
\Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~49_sumout\ = SUM(( \shift_reg[5][14]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add9~46\ ))
-- \Add9~50\ = CARRY(( \shift_reg[5][14]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add9~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~33_sumout\,
	datac => \ALT_INV_shift_reg[5][14]~q\,
	cin => \Add9~46\,
	sumout => \Add9~49_sumout\,
	cout => \Add9~50\);

-- Location: FF_X80_Y20_N37
\shift_reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~49_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][14]~q\);

-- Location: MLABCELL_X84_Y20_N42
\Add10~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~57_sumout\ = SUM(( \shift_reg[6][14]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~54\ ))
-- \Add10~58\ = CARRY(( \shift_reg[6][14]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~37_sumout\,
	datad => \ALT_INV_shift_reg[6][14]~q\,
	cin => \Add10~54\,
	sumout => \Add10~57_sumout\,
	cout => \Add10~58\);

-- Location: FF_X84_Y20_N43
\shift_reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][14]~q\);

-- Location: LABCELL_X85_Y20_N42
\Add11~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~57_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[7][14]~q\ ) + ( \Add11~54\ ))
-- \Add11~58\ = CARRY(( \Add2~37_sumout\ ) + ( \shift_reg[7][14]~q\ ) + ( \Add11~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[7][14]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add11~54\,
	sumout => \Add11~57_sumout\,
	cout => \Add11~58\);

-- Location: FF_X85_Y20_N44
\shift_reg[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][14]~q\);

-- Location: LABCELL_X85_Y21_N42
\Add12~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~57_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[8][14]~q\ ) + ( \Add12~54\ ))
-- \Add12~58\ = CARRY(( \Add1~41_sumout\ ) + ( \shift_reg[8][14]~q\ ) + ( \Add12~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[8][14]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~54\,
	sumout => \Add12~57_sumout\,
	cout => \Add12~58\);

-- Location: FF_X85_Y21_N44
\shift_reg[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][14]~q\);

-- Location: MLABCELL_X84_Y21_N42
\Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~57_sumout\ = SUM(( \shift_reg[9][14]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~54\ ))
-- \Add13~58\ = CARRY(( \shift_reg[9][14]~q\ ) + ( \Add0~33_sumout\ ) + ( \Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shift_reg[9][14]~q\,
	datac => \ALT_INV_Add0~33_sumout\,
	cin => \Add13~54\,
	sumout => \Add13~57_sumout\,
	cout => \Add13~58\);

-- Location: FF_X84_Y21_N44
\xout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~57_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[14]~reg0_q\);

-- Location: FF_X82_Y21_N34
\shift_reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~45_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[2][15]~q\);

-- Location: MLABCELL_X84_Y19_N45
\Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[2][15]~q\ ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[2][15]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add6~58\,
	sumout => \Add6~61_sumout\);

-- Location: FF_X84_Y19_N47
\shift_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[3][15]~q\);

-- Location: LABCELL_X83_Y19_N45
\Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~61_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[3][15]~q\ ) + ( \Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[3][15]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add7~58\,
	sumout => \Add7~61_sumout\);

-- Location: FF_X83_Y19_N46
\shift_reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[4][15]~q\);

-- Location: MLABCELL_X82_Y19_N39
\Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~53_sumout\ = SUM(( \Add3~33_sumout\ ) + ( \shift_reg[4][15]~q\ ) + ( \Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[4][15]~q\,
	datad => \ALT_INV_Add3~33_sumout\,
	cin => \Add8~50\,
	sumout => \Add8~53_sumout\);

-- Location: FF_X82_Y19_N40
\shift_reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[5][15]~q\);

-- Location: LABCELL_X80_Y20_N39
\Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~53_sumout\ = SUM(( \shift_reg[5][15]~q\ ) + ( \Add3~33_sumout\ ) + ( \Add9~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~33_sumout\,
	datac => \ALT_INV_shift_reg[5][15]~q\,
	cin => \Add9~50\,
	sumout => \Add9~53_sumout\);

-- Location: FF_X80_Y20_N40
\shift_reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~53_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[6][15]~q\);

-- Location: MLABCELL_X84_Y20_N45
\Add10~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~61_sumout\ = SUM(( \shift_reg[6][15]~q\ ) + ( \Add2~37_sumout\ ) + ( \Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~37_sumout\,
	datac => \ALT_INV_shift_reg[6][15]~q\,
	cin => \Add10~58\,
	sumout => \Add10~61_sumout\);

-- Location: FF_X84_Y20_N46
\shift_reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[7][15]~q\);

-- Location: LABCELL_X85_Y20_N45
\Add11~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~61_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \shift_reg[7][15]~q\ ) + ( \Add11~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shift_reg[7][15]~q\,
	datad => \ALT_INV_Add2~37_sumout\,
	cin => \Add11~58\,
	sumout => \Add11~61_sumout\);

-- Location: FF_X85_Y20_N46
\shift_reg[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[8][15]~q\);

-- Location: LABCELL_X85_Y21_N45
\Add12~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~61_sumout\ = SUM(( \Add1~41_sumout\ ) + ( \shift_reg[8][15]~q\ ) + ( \Add12~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shift_reg[8][15]~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	cin => \Add12~58\,
	sumout => \Add12~61_sumout\);

-- Location: FF_X85_Y21_N47
\shift_reg[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_reg[9][15]~q\);

-- Location: MLABCELL_X84_Y21_N45
\Add13~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~61_sumout\ = SUM(( \Add0~33_sumout\ ) + ( \shift_reg[9][15]~q\ ) + ( \Add13~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_shift_reg[9][15]~q\,
	cin => \Add13~58\,
	sumout => \Add13~61_sumout\);

-- Location: FF_X84_Y21_N46
\xout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~61_sumout\,
	sclr => \rst~input_o\,
	ena => \xout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xout[15]~reg0_q\);

-- Location: LABCELL_X19_Y69_N0
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


