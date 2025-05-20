-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/31/2024 09:19:55"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	FIR_Decimate_rag IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Din : IN std_logic_vector(7 DOWNTO 0);
	Dout : OUT std_logic_vector(15 DOWNTO 0)
	);
END FIR_Decimate_rag;

-- Design Ports Information
-- Dout[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[9]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[10]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[11]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[12]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[13]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[14]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[15]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIR_Decimate_rag IS
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
SIGNAL ww_Din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dout : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \Din0_reg[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add21~125_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add21~62\ : std_logic;
SIGNAL \Add21~57_sumout\ : std_logic;
SIGNAL \Add21~58\ : std_logic;
SIGNAL \Add21~53_sumout\ : std_logic;
SIGNAL \phase_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~54\ : std_logic;
SIGNAL \Add21~49_sumout\ : std_logic;
SIGNAL \Add21~50\ : std_logic;
SIGNAL \Add21~117_sumout\ : std_logic;
SIGNAL \phase_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~118\ : std_logic;
SIGNAL \Add21~113_sumout\ : std_logic;
SIGNAL \Add21~114\ : std_logic;
SIGNAL \Add21~109_sumout\ : std_logic;
SIGNAL \Add21~110\ : std_logic;
SIGNAL \Add21~105_sumout\ : std_logic;
SIGNAL \Add21~106\ : std_logic;
SIGNAL \Add21~101_sumout\ : std_logic;
SIGNAL \Add21~102\ : std_logic;
SIGNAL \Add21~97_sumout\ : std_logic;
SIGNAL \Add21~98\ : std_logic;
SIGNAL \Add21~93_sumout\ : std_logic;
SIGNAL \Add21~94\ : std_logic;
SIGNAL \Add21~89_sumout\ : std_logic;
SIGNAL \Add21~90\ : std_logic;
SIGNAL \Add21~85_sumout\ : std_logic;
SIGNAL \Add21~86\ : std_logic;
SIGNAL \Add21~81_sumout\ : std_logic;
SIGNAL \Add21~82\ : std_logic;
SIGNAL \Add21~77_sumout\ : std_logic;
SIGNAL \Add21~78\ : std_logic;
SIGNAL \Add21~73_sumout\ : std_logic;
SIGNAL \Add21~74\ : std_logic;
SIGNAL \Add21~121_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \phase_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~126\ : std_logic;
SIGNAL \Add21~21_sumout\ : std_logic;
SIGNAL \phase_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~22\ : std_logic;
SIGNAL \Add21~17_sumout\ : std_logic;
SIGNAL \Add21~18\ : std_logic;
SIGNAL \Add21~13_sumout\ : std_logic;
SIGNAL \Add21~14\ : std_logic;
SIGNAL \Add21~9_sumout\ : std_logic;
SIGNAL \phase_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~10\ : std_logic;
SIGNAL \Add21~5_sumout\ : std_logic;
SIGNAL \phase_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~6\ : std_logic;
SIGNAL \Add21~1_sumout\ : std_logic;
SIGNAL \phase_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~2\ : std_logic;
SIGNAL \Add21~45_sumout\ : std_logic;
SIGNAL \phase_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~46\ : std_logic;
SIGNAL \Add21~41_sumout\ : std_logic;
SIGNAL \phase_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~42\ : std_logic;
SIGNAL \Add21~37_sumout\ : std_logic;
SIGNAL \phase_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~38\ : std_logic;
SIGNAL \Add21~33_sumout\ : std_logic;
SIGNAL \Add21~34\ : std_logic;
SIGNAL \Add21~29_sumout\ : std_logic;
SIGNAL \phase_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~30\ : std_logic;
SIGNAL \Add21~25_sumout\ : std_logic;
SIGNAL \phase_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~26\ : std_logic;
SIGNAL \Add21~69_sumout\ : std_logic;
SIGNAL \Add21~70\ : std_logic;
SIGNAL \Add21~65_sumout\ : std_logic;
SIGNAL \phase_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add21~66\ : std_logic;
SIGNAL \Add21~61_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \w64_0[6]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][0]~q\ : std_logic;
SIGNAL \w61_0[0]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][0]~q\ : std_logic;
SIGNAL \multipliers_out0_reg[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \adders_in0_reg[0][0]~q\ : std_logic;
SIGNAL \adders_out0[0][0]~q\ : std_logic;
SIGNAL \adders_in0_reg[1][0]~q\ : std_logic;
SIGNAL \adders_out0[1][0]~q\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][0]~q\ : std_logic;
SIGNAL \adders_out0[2][0]~q\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][0]~q\ : std_logic;
SIGNAL \adders_out0[3][0]~q\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][0]~q\ : std_logic;
SIGNAL \adders_out0[4][0]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][0]~q\ : std_logic;
SIGNAL \adders_in0_reg[5][0]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[5][0]~q\ : std_logic;
SIGNAL \adders_out0[5][0]~q\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][0]~q\ : std_logic;
SIGNAL \adders_out0[6][0]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][0]~q\ : std_logic;
SIGNAL \adders_in0_reg[7][0]~q\ : std_logic;
SIGNAL \adders_out0[7][0]~q\ : std_logic;
SIGNAL \Dout[0]~reg0_q\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \w64_0[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][1]~q\ : std_logic;
SIGNAL \w3_0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][1]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][1]~q\ : std_logic;
SIGNAL \adders_out0[0][1]~q\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][1]~q\ : std_logic;
SIGNAL \adders_out0[1][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][1]~q\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][1]~q\ : std_logic;
SIGNAL \adders_out0[2][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][1]~q\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][1]~q\ : std_logic;
SIGNAL \adders_out0[3][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][1]~q\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][1]~q\ : std_logic;
SIGNAL \adders_out0[4][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][1]~q\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][1]~q\ : std_logic;
SIGNAL \adders_out0[5][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][1]~q\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][1]~q\ : std_logic;
SIGNAL \adders_out0[6][1]~q\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][1]~q\ : std_logic;
SIGNAL \adders_out0[7][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][1]~q\ : std_logic;
SIGNAL \Din1_reg[0]~feeder_combout\ : std_logic;
SIGNAL \w4_1[2]~feeder_combout\ : std_logic;
SIGNAL \w2n_1[1]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][1]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][1]~q\ : std_logic;
SIGNAL \adders_out1[0][1]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[0][1]~q\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][1]~q\ : std_logic;
SIGNAL \adders_out1[1][1]~q\ : std_logic;
SIGNAL \adders_in1_reg[2][1]~q\ : std_logic;
SIGNAL \adders_out1[2][1]~q\ : std_logic;
SIGNAL \adders_in1_reg[3][1]~q\ : std_logic;
SIGNAL \adders_out1[3][1]~q\ : std_logic;
SIGNAL \adders_in1_reg[4][1]~feeder_combout\ : std_logic;
SIGNAL \adders_in1_reg[4][1]~q\ : std_logic;
SIGNAL \adders_out1[4][1]~q\ : std_logic;
SIGNAL \adders_in1_reg[5][1]~q\ : std_logic;
SIGNAL \adders_out1[5][1]~q\ : std_logic;
SIGNAL \Add19~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][1]~q\ : std_logic;
SIGNAL \adders_out1[6][1]~q\ : std_logic;
SIGNAL \Add20~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][1]~q\ : std_logic;
SIGNAL \adders_out1[7][1]~q\ : std_logic;
SIGNAL \y1[1]~feeder_combout\ : std_logic;
SIGNAL \Add22~1_sumout\ : std_logic;
SIGNAL \Dout[1]~reg0_q\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][2]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \adders_in1_reg[0][2]~q\ : std_logic;
SIGNAL \adders_out1[0][2]~q\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][2]~q\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][2]~q\ : std_logic;
SIGNAL \adders_out1[1][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][2]~q\ : std_logic;
SIGNAL \Add15~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][2]~q\ : std_logic;
SIGNAL \adders_out1[2][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][2]~q\ : std_logic;
SIGNAL \adders_in1_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \adders_in1_reg[3][2]~q\ : std_logic;
SIGNAL \adders_out1[3][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][2]~q\ : std_logic;
SIGNAL \adders_in1_reg[4][2]~q\ : std_logic;
SIGNAL \adders_out1[4][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][2]~q\ : std_logic;
SIGNAL \Add18~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][2]~q\ : std_logic;
SIGNAL \adders_out1[5][2]~q\ : std_logic;
SIGNAL \Add19~2\ : std_logic;
SIGNAL \Add19~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][2]~q\ : std_logic;
SIGNAL \adders_out1[6][2]~q\ : std_logic;
SIGNAL \Add20~2\ : std_logic;
SIGNAL \Add20~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][2]~q\ : std_logic;
SIGNAL \adders_out1[7][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][2]~q\ : std_logic;
SIGNAL \y1[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][2]~q\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \w64_0[8]~feeder_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][2]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[0][2]~q\ : std_logic;
SIGNAL \adders_out0[0][2]~q\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][2]~q\ : std_logic;
SIGNAL \adders_out0[1][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][2]~q\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][2]~q\ : std_logic;
SIGNAL \adders_out0[2][2]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][2]~q\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][2]~q\ : std_logic;
SIGNAL \adders_out0[3][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][2]~q\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][2]~q\ : std_logic;
SIGNAL \adders_out0[4][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][2]~q\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][2]~q\ : std_logic;
SIGNAL \adders_out0[5][2]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][2]~q\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][2]~q\ : std_logic;
SIGNAL \adders_out0[6][2]~q\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][2]~q\ : std_logic;
SIGNAL \adders_out0[7][2]~q\ : std_logic;
SIGNAL \y0[2]~feeder_combout\ : std_logic;
SIGNAL \Add22~2\ : std_logic;
SIGNAL \Add22~5_sumout\ : std_logic;
SIGNAL \Dout[2]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][3]~q\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \w64_0[9]~feeder_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][3]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][3]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[0][3]~q\ : std_logic;
SIGNAL \adders_out0[0][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[0][3]~q\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][3]~q\ : std_logic;
SIGNAL \adders_out0[1][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][3]~q\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][3]~q\ : std_logic;
SIGNAL \adders_out0[2][3]~q\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][3]~q\ : std_logic;
SIGNAL \adders_out0[3][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][3]~q\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][3]~q\ : std_logic;
SIGNAL \adders_out0[4][3]~q\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][3]~q\ : std_logic;
SIGNAL \adders_out0[5][3]~q\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][3]~q\ : std_logic;
SIGNAL \adders_out0[6][3]~q\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][3]~q\ : std_logic;
SIGNAL \adders_out0[7][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][3]~q\ : std_logic;
SIGNAL \y0[3]~feeder_combout\ : std_logic;
SIGNAL \w4_1[4]~feeder_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][3]~q\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][3]~q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][3]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][3]~q\ : std_logic;
SIGNAL \adders_out1[0][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[0][3]~q\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][3]~q\ : std_logic;
SIGNAL \adders_out1[1][3]~q\ : std_logic;
SIGNAL \Add15~2\ : std_logic;
SIGNAL \Add15~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][3]~q\ : std_logic;
SIGNAL \adders_out1[2][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][3]~q\ : std_logic;
SIGNAL \Add16~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][3]~q\ : std_logic;
SIGNAL \adders_out1[3][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][3]~q\ : std_logic;
SIGNAL \Add17~1_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][3]~q\ : std_logic;
SIGNAL \adders_out1[4][3]~q\ : std_logic;
SIGNAL \Add18~2\ : std_logic;
SIGNAL \Add18~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][3]~q\ : std_logic;
SIGNAL \adders_out1[5][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][3]~q\ : std_logic;
SIGNAL \Add19~6\ : std_logic;
SIGNAL \Add19~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][3]~q\ : std_logic;
SIGNAL \adders_out1[6][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][3]~q\ : std_logic;
SIGNAL \Add20~6\ : std_logic;
SIGNAL \Add20~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][3]~q\ : std_logic;
SIGNAL \adders_out1[7][3]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][3]~q\ : std_logic;
SIGNAL \Add22~6\ : std_logic;
SIGNAL \Add22~9_sumout\ : std_logic;
SIGNAL \Dout[3]~reg0_q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][4]~q\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][4]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][4]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \adders_in1_reg[0][4]~q\ : std_logic;
SIGNAL \adders_out1[0][4]~q\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][4]~q\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][4]~q\ : std_logic;
SIGNAL \adders_out1[1][4]~q\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][4]~q\ : std_logic;
SIGNAL \adders_out1[2][4]~q\ : std_logic;
SIGNAL \Add16~2\ : std_logic;
SIGNAL \Add16~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][4]~q\ : std_logic;
SIGNAL \adders_out1[3][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][4]~q\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~5_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][4]~q\ : std_logic;
SIGNAL \adders_out1[4][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][4]~q\ : std_logic;
SIGNAL \Add18~6\ : std_logic;
SIGNAL \Add18~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][4]~q\ : std_logic;
SIGNAL \adders_out1[5][4]~q\ : std_logic;
SIGNAL \Add19~10\ : std_logic;
SIGNAL \Add19~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][4]~q\ : std_logic;
SIGNAL \adders_out1[6][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][4]~q\ : std_logic;
SIGNAL \Add20~10\ : std_logic;
SIGNAL \Add20~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][4]~q\ : std_logic;
SIGNAL \adders_out1[7][4]~q\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \w64_0[10]~feeder_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][4]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][4]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][4]~q\ : std_logic;
SIGNAL \adders_out0[0][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[0][4]~q\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][4]~q\ : std_logic;
SIGNAL \adders_out0[1][4]~q\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][4]~q\ : std_logic;
SIGNAL \adders_out0[2][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][4]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][4]~q\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][4]~q\ : std_logic;
SIGNAL \adders_out0[3][4]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][4]~q\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][4]~q\ : std_logic;
SIGNAL \adders_out0[4][4]~q\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][4]~q\ : std_logic;
SIGNAL \adders_out0[5][4]~q\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][4]~q\ : std_logic;
SIGNAL \adders_out0[6][4]~q\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][4]~q\ : std_logic;
SIGNAL \adders_out0[7][4]~q\ : std_logic;
SIGNAL \y0[4]~feeder_combout\ : std_logic;
SIGNAL \Add22~10\ : std_logic;
SIGNAL \Add22~13_sumout\ : std_logic;
SIGNAL \Dout[4]~reg0_q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][5]~q\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][5]~q\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][5]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][5]~q\ : std_logic;
SIGNAL \adders_out1[0][5]~q\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][5]~q\ : std_logic;
SIGNAL \adders_out1[1][5]~q\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][5]~q\ : std_logic;
SIGNAL \adders_out1[2][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][5]~q\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add16~6\ : std_logic;
SIGNAL \Add16~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][5]~q\ : std_logic;
SIGNAL \adders_out1[3][5]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[3][5]~q\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~9_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][5]~q\ : std_logic;
SIGNAL \adders_out1[4][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][5]~q\ : std_logic;
SIGNAL \Add18~10\ : std_logic;
SIGNAL \Add18~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][5]~q\ : std_logic;
SIGNAL \adders_out1[5][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][5]~q\ : std_logic;
SIGNAL \Add19~14\ : std_logic;
SIGNAL \Add19~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][5]~q\ : std_logic;
SIGNAL \adders_out1[6][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][5]~q\ : std_logic;
SIGNAL \Add20~14\ : std_logic;
SIGNAL \Add20~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][5]~q\ : std_logic;
SIGNAL \adders_out1[7][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][5]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][5]~q\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Din0_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \w3_0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][5]~q\ : std_logic;
SIGNAL \multipliers_out0_reg[0][5]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[0][5]~q\ : std_logic;
SIGNAL \adders_out0[0][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[0][5]~q\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][5]~q\ : std_logic;
SIGNAL \adders_out0[1][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][5]~q\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][5]~q\ : std_logic;
SIGNAL \adders_out0[2][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][5]~q\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][5]~q\ : std_logic;
SIGNAL \adders_out0[3][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][5]~q\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][5]~q\ : std_logic;
SIGNAL \adders_out0[4][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][5]~q\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][5]~q\ : std_logic;
SIGNAL \adders_out0[5][5]~q\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][5]~q\ : std_logic;
SIGNAL \adders_out0[6][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][5]~q\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][5]~q\ : std_logic;
SIGNAL \adders_out0[7][5]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][5]~q\ : std_logic;
SIGNAL \Add22~14\ : std_logic;
SIGNAL \Add22~17_sumout\ : std_logic;
SIGNAL \Dout[5]~reg0_q\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \w64_0[12]~feeder_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][6]~q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][6]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[0][6]~q\ : std_logic;
SIGNAL \adders_out0[0][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[0][6]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][6]~q\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][6]~q\ : std_logic;
SIGNAL \adders_out0[1][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][6]~q\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][6]~q\ : std_logic;
SIGNAL \adders_out0[2][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][6]~q\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][6]~q\ : std_logic;
SIGNAL \adders_out0[3][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][6]~q\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][6]~q\ : std_logic;
SIGNAL \adders_out0[4][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][6]~q\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][6]~q\ : std_logic;
SIGNAL \adders_out0[5][6]~q\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][6]~q\ : std_logic;
SIGNAL \adders_out0[6][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][6]~q\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][6]~q\ : std_logic;
SIGNAL \adders_out0[7][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][6]~q\ : std_logic;
SIGNAL \Din1_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][6]~q\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][6]~q\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][6]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \adders_in1_reg[0][6]~q\ : std_logic;
SIGNAL \adders_out1[0][6]~q\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][6]~q\ : std_logic;
SIGNAL \adders_out1[1][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][6]~q\ : std_logic;
SIGNAL \Add15~14\ : std_logic;
SIGNAL \Add15~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][6]~q\ : std_logic;
SIGNAL \adders_out1[2][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][6]~q\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][6]~q\ : std_logic;
SIGNAL \Add16~10\ : std_logic;
SIGNAL \Add16~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][6]~q\ : std_logic;
SIGNAL \adders_out1[3][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][6]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~13_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][6]~q\ : std_logic;
SIGNAL \adders_out1[4][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][6]~q\ : std_logic;
SIGNAL \Add18~14\ : std_logic;
SIGNAL \Add18~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][6]~q\ : std_logic;
SIGNAL \adders_out1[5][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][6]~q\ : std_logic;
SIGNAL \Add19~18\ : std_logic;
SIGNAL \Add19~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][6]~q\ : std_logic;
SIGNAL \adders_out1[6][6]~q\ : std_logic;
SIGNAL \Add20~18\ : std_logic;
SIGNAL \Add20~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][6]~q\ : std_logic;
SIGNAL \adders_out1[7][6]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][6]~q\ : std_logic;
SIGNAL \Add22~18\ : std_logic;
SIGNAL \Add22~21_sumout\ : std_logic;
SIGNAL \Dout[6]~reg0_q\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][7]~q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][7]~q\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][7]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][7]~q\ : std_logic;
SIGNAL \adders_out1[0][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[0][7]~q\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][7]~q\ : std_logic;
SIGNAL \adders_out1[1][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][7]~q\ : std_logic;
SIGNAL \Add15~18\ : std_logic;
SIGNAL \Add15~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][7]~q\ : std_logic;
SIGNAL \adders_out1[2][7]~q\ : std_logic;
SIGNAL \Add16~14\ : std_logic;
SIGNAL \Add16~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][7]~q\ : std_logic;
SIGNAL \adders_out1[3][7]~q\ : std_logic;
SIGNAL \Add17~14\ : std_logic;
SIGNAL \Add17~17_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][7]~q\ : std_logic;
SIGNAL \adders_out1[4][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][7]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[2][7]~q\ : std_logic;
SIGNAL \Add18~18\ : std_logic;
SIGNAL \Add18~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][7]~q\ : std_logic;
SIGNAL \adders_out1[5][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][7]~q\ : std_logic;
SIGNAL \Add19~22\ : std_logic;
SIGNAL \Add19~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][7]~q\ : std_logic;
SIGNAL \adders_out1[6][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][7]~q\ : std_logic;
SIGNAL \Add20~22\ : std_logic;
SIGNAL \Add20~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][7]~q\ : std_logic;
SIGNAL \adders_out1[7][7]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][7]~q\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][7]~q\ : std_logic;
SIGNAL \multipliers_out0_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \adders_in0_reg[0][7]~q\ : std_logic;
SIGNAL \adders_out0[0][7]~q\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][7]~q\ : std_logic;
SIGNAL \adders_out0[1][7]~q\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][7]~q\ : std_logic;
SIGNAL \adders_out0[2][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][7]~q\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][7]~q\ : std_logic;
SIGNAL \adders_out0[3][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][7]~q\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][7]~q\ : std_logic;
SIGNAL \adders_out0[4][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][7]~q\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][7]~q\ : std_logic;
SIGNAL \adders_out0[5][7]~q\ : std_logic;
SIGNAL \multipliers_out0_reg[0][7]~q\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][7]~q\ : std_logic;
SIGNAL \adders_out0[6][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][7]~q\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][7]~q\ : std_logic;
SIGNAL \adders_out0[7][7]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][7]~q\ : std_logic;
SIGNAL \y0[7]~feeder_combout\ : std_logic;
SIGNAL \Add22~22\ : std_logic;
SIGNAL \Add22~25_sumout\ : std_logic;
SIGNAL \Dout[7]~reg0_q\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][8]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[2][8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][8]~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][8]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][8]~q\ : std_logic;
SIGNAL \adders_out1[0][8]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[0][8]~q\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][8]~q\ : std_logic;
SIGNAL \adders_out1[1][8]~q\ : std_logic;
SIGNAL \Add15~22\ : std_logic;
SIGNAL \Add15~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][8]~q\ : std_logic;
SIGNAL \adders_out1[2][8]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][8]~q\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][8]~q\ : std_logic;
SIGNAL \Add16~18\ : std_logic;
SIGNAL \Add16~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][8]~q\ : std_logic;
SIGNAL \adders_out1[3][8]~q\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~21_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][8]~q\ : std_logic;
SIGNAL \adders_out1[4][8]~q\ : std_logic;
SIGNAL \Add18~22\ : std_logic;
SIGNAL \Add18~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][8]~q\ : std_logic;
SIGNAL \adders_out1[5][8]~q\ : std_logic;
SIGNAL \Add19~26\ : std_logic;
SIGNAL \Add19~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][8]~q\ : std_logic;
SIGNAL \adders_out1[6][8]~q\ : std_logic;
SIGNAL \Add20~26\ : std_logic;
SIGNAL \Add20~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][8]~q\ : std_logic;
SIGNAL \adders_out1[7][8]~q\ : std_logic;
SIGNAL \y1[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][8]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][8]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][8]~q\ : std_logic;
SIGNAL \multipliers_out0_reg[0][8]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \adders_in0_reg[0][8]~q\ : std_logic;
SIGNAL \adders_out0[0][8]~q\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][8]~q\ : std_logic;
SIGNAL \adders_out0[1][8]~q\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][8]~q\ : std_logic;
SIGNAL \adders_out0[2][8]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][8]~q\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][8]~q\ : std_logic;
SIGNAL \adders_out0[3][8]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][8]~q\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][8]~q\ : std_logic;
SIGNAL \adders_out0[4][8]~q\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][8]~q\ : std_logic;
SIGNAL \adders_out0[5][8]~q\ : std_logic;
SIGNAL \Add12~30\ : std_logic;
SIGNAL \Add12~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][8]~q\ : std_logic;
SIGNAL \adders_out0[6][8]~q\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][8]~q\ : std_logic;
SIGNAL \adders_out0[7][8]~q\ : std_logic;
SIGNAL \y0[8]~feeder_combout\ : std_logic;
SIGNAL \Add22~26\ : std_logic;
SIGNAL \Add22~29_sumout\ : std_logic;
SIGNAL \Dout[8]~reg0_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][9]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][15]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[1][15]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][9]~q\ : std_logic;
SIGNAL \adders_out0[0][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[0][9]~q\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][9]~q\ : std_logic;
SIGNAL \adders_out0[1][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][9]~q\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][9]~q\ : std_logic;
SIGNAL \adders_out0[2][9]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][9]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][9]~q\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][9]~q\ : std_logic;
SIGNAL \adders_out0[3][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][9]~q\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][9]~q\ : std_logic;
SIGNAL \adders_out0[4][9]~q\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][9]~q\ : std_logic;
SIGNAL \adders_out0[5][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][9]~q\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][9]~q\ : std_logic;
SIGNAL \adders_out0[6][9]~q\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~33_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][9]~q\ : std_logic;
SIGNAL \adders_out0[7][9]~q\ : std_logic;
SIGNAL \y0[9]~feeder_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][9]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][9]~q\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][9]~q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[0][15]~q\ : std_logic;
SIGNAL \adders_in1_reg[0][9]~feeder_combout\ : std_logic;
SIGNAL \adders_in1_reg[0][9]~q\ : std_logic;
SIGNAL \adders_out1[0][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[0][15]~q\ : std_logic;
SIGNAL \Add14~30\ : std_logic;
SIGNAL \Add14~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][9]~q\ : std_logic;
SIGNAL \adders_out1[1][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][9]~q\ : std_logic;
SIGNAL \Add15~26\ : std_logic;
SIGNAL \Add15~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][9]~q\ : std_logic;
SIGNAL \adders_out1[2][9]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[3][9]~q\ : std_logic;
SIGNAL \Add16~22\ : std_logic;
SIGNAL \Add16~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][9]~q\ : std_logic;
SIGNAL \adders_out1[3][9]~q\ : std_logic;
SIGNAL \Add17~22\ : std_logic;
SIGNAL \Add17~25_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][9]~q\ : std_logic;
SIGNAL \adders_out1[4][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][9]~q\ : std_logic;
SIGNAL \Add18~26\ : std_logic;
SIGNAL \Add18~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][9]~q\ : std_logic;
SIGNAL \adders_out1[5][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][9]~q\ : std_logic;
SIGNAL \Add19~30\ : std_logic;
SIGNAL \Add19~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][9]~q\ : std_logic;
SIGNAL \adders_out1[6][9]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][9]~q\ : std_logic;
SIGNAL \Add20~30\ : std_logic;
SIGNAL \Add20~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][9]~q\ : std_logic;
SIGNAL \adders_out1[7][9]~q\ : std_logic;
SIGNAL \Add22~30\ : std_logic;
SIGNAL \Add22~33_sumout\ : std_logic;
SIGNAL \Dout[9]~reg0_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[0][15]~q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][10]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][10]~q\ : std_logic;
SIGNAL \adders_in0_reg[0][10]~q\ : std_logic;
SIGNAL \adders_out0[0][15]~q\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][10]~q\ : std_logic;
SIGNAL \adders_out0[1][10]~q\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][10]~q\ : std_logic;
SIGNAL \adders_out0[2][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][10]~q\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][10]~q\ : std_logic;
SIGNAL \adders_out0[3][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][10]~q\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][10]~q\ : std_logic;
SIGNAL \adders_out0[4][10]~q\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][10]~q\ : std_logic;
SIGNAL \adders_out0[5][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][10]~q\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][10]~q\ : std_logic;
SIGNAL \adders_out0[6][10]~q\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~37_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][10]~q\ : std_logic;
SIGNAL \adders_out0[7][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][10]~q\ : std_logic;
SIGNAL \y0[10]~feeder_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][10]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][10]~q\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][10]~q\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][10]~q\ : std_logic;
SIGNAL \Add14~34\ : std_logic;
SIGNAL \Add14~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][10]~q\ : std_logic;
SIGNAL \adders_out1[1][10]~q\ : std_logic;
SIGNAL \Add15~30\ : std_logic;
SIGNAL \Add15~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][10]~q\ : std_logic;
SIGNAL \adders_out1[2][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][10]~q\ : std_logic;
SIGNAL \Add16~26\ : std_logic;
SIGNAL \Add16~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][10]~q\ : std_logic;
SIGNAL \adders_out1[3][10]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][10]~q\ : std_logic;
SIGNAL \Add17~26\ : std_logic;
SIGNAL \Add17~29_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][10]~q\ : std_logic;
SIGNAL \adders_out1[4][10]~q\ : std_logic;
SIGNAL \Add18~30\ : std_logic;
SIGNAL \Add18~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][10]~q\ : std_logic;
SIGNAL \adders_out1[5][10]~q\ : std_logic;
SIGNAL \Add19~34\ : std_logic;
SIGNAL \Add19~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][10]~q\ : std_logic;
SIGNAL \adders_out1[6][10]~q\ : std_logic;
SIGNAL \Add20~34\ : std_logic;
SIGNAL \Add20~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][10]~q\ : std_logic;
SIGNAL \adders_out1[7][10]~q\ : std_logic;
SIGNAL \y1[10]~feeder_combout\ : std_logic;
SIGNAL \Add22~34\ : std_logic;
SIGNAL \Add22~37_sumout\ : std_logic;
SIGNAL \Dout[10]~reg0_q\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[1][15]~q\ : std_logic;
SIGNAL \Add14~38\ : std_logic;
SIGNAL \Add14~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][11]~q\ : std_logic;
SIGNAL \adders_out1[1][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][11]~q\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][11]~q\ : std_logic;
SIGNAL \Add15~34\ : std_logic;
SIGNAL \Add15~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][11]~q\ : std_logic;
SIGNAL \adders_out1[2][11]~q\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][11]~q\ : std_logic;
SIGNAL \Add16~30\ : std_logic;
SIGNAL \Add16~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][11]~q\ : std_logic;
SIGNAL \adders_out1[3][11]~q\ : std_logic;
SIGNAL \Add17~30\ : std_logic;
SIGNAL \Add17~33_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][11]~q\ : std_logic;
SIGNAL \adders_out1[4][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][11]~q\ : std_logic;
SIGNAL \Add18~34\ : std_logic;
SIGNAL \Add18~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][11]~q\ : std_logic;
SIGNAL \adders_out1[5][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][11]~q\ : std_logic;
SIGNAL \Add19~38\ : std_logic;
SIGNAL \Add19~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][11]~q\ : std_logic;
SIGNAL \adders_out1[6][11]~q\ : std_logic;
SIGNAL \Add20~38\ : std_logic;
SIGNAL \Add20~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][11]~q\ : std_logic;
SIGNAL \adders_out1[7][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][11]~q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][11]~q\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[1][11]~q\ : std_logic;
SIGNAL \adders_out0[1][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[1][15]~q\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][11]~q\ : std_logic;
SIGNAL \adders_out0[2][11]~q\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][11]~q\ : std_logic;
SIGNAL \adders_out0[3][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][11]~q\ : std_logic;
SIGNAL \Add10~42\ : std_logic;
SIGNAL \Add10~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][11]~q\ : std_logic;
SIGNAL \adders_out0[4][11]~q\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][11]~q\ : std_logic;
SIGNAL \adders_out0[5][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][11]~q\ : std_logic;
SIGNAL \Add12~42\ : std_logic;
SIGNAL \Add12~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][11]~q\ : std_logic;
SIGNAL \adders_out0[6][11]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][11]~q\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~41_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][11]~q\ : std_logic;
SIGNAL \adders_out0[7][11]~q\ : std_logic;
SIGNAL \Add22~38\ : std_logic;
SIGNAL \Add22~41_sumout\ : std_logic;
SIGNAL \Dout[11]~reg0_q\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][12]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][12]~q\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][12]~q\ : std_logic;
SIGNAL \Add14~42\ : std_logic;
SIGNAL \Add14~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[1][12]~q\ : std_logic;
SIGNAL \adders_out1[1][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[1][15]~q\ : std_logic;
SIGNAL \Add15~38\ : std_logic;
SIGNAL \Add15~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][12]~q\ : std_logic;
SIGNAL \adders_out1[2][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[2][12]~q\ : std_logic;
SIGNAL \Add16~34\ : std_logic;
SIGNAL \Add16~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][12]~q\ : std_logic;
SIGNAL \adders_out1[3][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][12]~q\ : std_logic;
SIGNAL \Add17~34\ : std_logic;
SIGNAL \Add17~37_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][12]~q\ : std_logic;
SIGNAL \adders_out1[4][12]~q\ : std_logic;
SIGNAL \Add18~38\ : std_logic;
SIGNAL \Add18~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][12]~q\ : std_logic;
SIGNAL \adders_out1[5][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][12]~q\ : std_logic;
SIGNAL \Add19~42\ : std_logic;
SIGNAL \Add19~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][12]~q\ : std_logic;
SIGNAL \adders_out1[6][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][12]~q\ : std_logic;
SIGNAL \Add20~42\ : std_logic;
SIGNAL \Add20~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][12]~q\ : std_logic;
SIGNAL \adders_out1[7][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][12]~q\ : std_logic;
SIGNAL \y1[12]~feeder_combout\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[2][12]~q\ : std_logic;
SIGNAL \adders_out0[2][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[2][15]~q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][12]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][12]~q\ : std_logic;
SIGNAL \Add9~46\ : std_logic;
SIGNAL \Add9~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][12]~q\ : std_logic;
SIGNAL \adders_out0[3][12]~q\ : std_logic;
SIGNAL \Add10~46\ : std_logic;
SIGNAL \Add10~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][12]~q\ : std_logic;
SIGNAL \adders_out0[4][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][12]~q\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][12]~q\ : std_logic;
SIGNAL \adders_out0[5][12]~q\ : std_logic;
SIGNAL \Add12~46\ : std_logic;
SIGNAL \Add12~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][12]~q\ : std_logic;
SIGNAL \adders_out0[6][12]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][12]~q\ : std_logic;
SIGNAL \Add13~42\ : std_logic;
SIGNAL \Add13~45_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][12]~q\ : std_logic;
SIGNAL \adders_out0[7][12]~q\ : std_logic;
SIGNAL \y0[12]~feeder_combout\ : std_logic;
SIGNAL \Add22~42\ : std_logic;
SIGNAL \Add22~45_sumout\ : std_logic;
SIGNAL \Dout[12]~reg0_q\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[2][15]~q\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \multipliers_out1_reg[3][15]~q\ : std_logic;
SIGNAL \multipliers_out1_reg[2][15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add15~42\ : std_logic;
SIGNAL \Add15~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][13]~q\ : std_logic;
SIGNAL \adders_out1[2][13]~q\ : std_logic;
SIGNAL \Add16~38\ : std_logic;
SIGNAL \Add16~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][13]~q\ : std_logic;
SIGNAL \adders_out1[3][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][13]~q\ : std_logic;
SIGNAL \Add17~38\ : std_logic;
SIGNAL \Add17~41_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][13]~q\ : std_logic;
SIGNAL \adders_out1[4][13]~q\ : std_logic;
SIGNAL \Add18~42\ : std_logic;
SIGNAL \Add18~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][13]~q\ : std_logic;
SIGNAL \adders_out1[5][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[5][13]~q\ : std_logic;
SIGNAL \Add19~46\ : std_logic;
SIGNAL \Add19~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][13]~q\ : std_logic;
SIGNAL \adders_out1[6][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][13]~q\ : std_logic;
SIGNAL \Add20~46\ : std_logic;
SIGNAL \Add20~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][13]~q\ : std_logic;
SIGNAL \adders_out1[7][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][13]~q\ : std_logic;
SIGNAL \y1[13]~feeder_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][13]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][13]~q\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~53_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][13]~q\ : std_logic;
SIGNAL \adders_out0[3][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][13]~q\ : std_logic;
SIGNAL \Add10~50\ : std_logic;
SIGNAL \Add10~53_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][13]~q\ : std_logic;
SIGNAL \adders_out0[4][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][13]~q\ : std_logic;
SIGNAL \Add11~46\ : std_logic;
SIGNAL \Add11~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][13]~q\ : std_logic;
SIGNAL \adders_out0[5][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][13]~q\ : std_logic;
SIGNAL \Add12~50\ : std_logic;
SIGNAL \Add12~53_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][13]~q\ : std_logic;
SIGNAL \adders_out0[6][13]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][13]~q\ : std_logic;
SIGNAL \Add13~46\ : std_logic;
SIGNAL \Add13~49_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][13]~q\ : std_logic;
SIGNAL \adders_out0[7][13]~q\ : std_logic;
SIGNAL \Add22~46\ : std_logic;
SIGNAL \Add22~49_sumout\ : std_logic;
SIGNAL \Dout[13]~reg0_q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][15]~feeder_combout\ : std_logic;
SIGNAL \multipliers_out0_reg[3][15]~q\ : std_logic;
SIGNAL \Add9~54\ : std_logic;
SIGNAL \Add9~57_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][14]~q\ : std_logic;
SIGNAL \adders_out0[3][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][14]~q\ : std_logic;
SIGNAL \Add10~54\ : std_logic;
SIGNAL \Add10~57_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][14]~q\ : std_logic;
SIGNAL \adders_out0[4][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[4][14]~q\ : std_logic;
SIGNAL \Add11~50\ : std_logic;
SIGNAL \Add11~53_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][14]~q\ : std_logic;
SIGNAL \adders_out0[5][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[5][14]~q\ : std_logic;
SIGNAL \Add12~54\ : std_logic;
SIGNAL \Add12~57_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][14]~q\ : std_logic;
SIGNAL \adders_out0[6][14]~q\ : std_logic;
SIGNAL \Add13~50\ : std_logic;
SIGNAL \Add13~53_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][14]~q\ : std_logic;
SIGNAL \adders_out0[7][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][14]~q\ : std_logic;
SIGNAL \y0[14]~feeder_combout\ : std_logic;
SIGNAL \Add15~46\ : std_logic;
SIGNAL \Add15~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[2][14]~q\ : std_logic;
SIGNAL \adders_out1[2][15]~q\ : std_logic;
SIGNAL \Add16~42\ : std_logic;
SIGNAL \Add16~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][14]~q\ : std_logic;
SIGNAL \adders_out1[3][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][14]~q\ : std_logic;
SIGNAL \Add17~42\ : std_logic;
SIGNAL \Add17~45_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][14]~q\ : std_logic;
SIGNAL \adders_out1[4][14]~q\ : std_logic;
SIGNAL \Add18~46\ : std_logic;
SIGNAL \Add18~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][14]~q\ : std_logic;
SIGNAL \adders_out1[5][14]~q\ : std_logic;
SIGNAL \Add19~50\ : std_logic;
SIGNAL \Add19~53_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][14]~q\ : std_logic;
SIGNAL \adders_out1[6][14]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[6][14]~q\ : std_logic;
SIGNAL \Add20~50\ : std_logic;
SIGNAL \Add20~53_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][14]~q\ : std_logic;
SIGNAL \adders_out1[7][14]~q\ : std_logic;
SIGNAL \y1[14]~feeder_combout\ : std_logic;
SIGNAL \Add22~50\ : std_logic;
SIGNAL \Add22~53_sumout\ : std_logic;
SIGNAL \Dout[14]~reg0_q\ : std_logic;
SIGNAL \Add9~58\ : std_logic;
SIGNAL \Add9~61_sumout\ : std_logic;
SIGNAL \adders_in0_reg[3][15]~q\ : std_logic;
SIGNAL \adders_out0[3][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[3][15]~q\ : std_logic;
SIGNAL \Add10~58\ : std_logic;
SIGNAL \Add10~61_sumout\ : std_logic;
SIGNAL \adders_in0_reg[4][15]~q\ : std_logic;
SIGNAL \adders_out0[4][15]~q\ : std_logic;
SIGNAL \Add11~54\ : std_logic;
SIGNAL \Add11~57_sumout\ : std_logic;
SIGNAL \adders_in0_reg[5][15]~q\ : std_logic;
SIGNAL \adders_out0[5][15]~q\ : std_logic;
SIGNAL \Add12~58\ : std_logic;
SIGNAL \Add12~61_sumout\ : std_logic;
SIGNAL \adders_in0_reg[6][15]~q\ : std_logic;
SIGNAL \adders_out0[6][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[6][15]~q\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~57_sumout\ : std_logic;
SIGNAL \adders_in0_reg[7][15]~q\ : std_logic;
SIGNAL \adders_out0[7][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out0[7][15]~q\ : std_logic;
SIGNAL \y0[15]~feeder_combout\ : std_logic;
SIGNAL \Add16~46\ : std_logic;
SIGNAL \Add16~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[3][15]~q\ : std_logic;
SIGNAL \adders_out1[3][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[3][15]~q\ : std_logic;
SIGNAL \Add17~46\ : std_logic;
SIGNAL \Add17~49_sumout\ : std_logic;
SIGNAL \adders_in1_reg[4][15]~q\ : std_logic;
SIGNAL \adders_out1[4][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[4][15]~q\ : std_logic;
SIGNAL \Add18~50\ : std_logic;
SIGNAL \Add18~53_sumout\ : std_logic;
SIGNAL \adders_in1_reg[5][15]~q\ : std_logic;
SIGNAL \adders_out1[5][15]~q\ : std_logic;
SIGNAL \Add19~54\ : std_logic;
SIGNAL \Add19~57_sumout\ : std_logic;
SIGNAL \adders_in1_reg[6][15]~q\ : std_logic;
SIGNAL \adders_out1[6][15]~q\ : std_logic;
SIGNAL \Add20~54\ : std_logic;
SIGNAL \Add20~57_sumout\ : std_logic;
SIGNAL \adders_in1_reg[7][15]~q\ : std_logic;
SIGNAL \adders_out1[7][15]~feeder_combout\ : std_logic;
SIGNAL \adders_out1[7][15]~q\ : std_logic;
SIGNAL \y1[15]~feeder_combout\ : std_logic;
SIGNAL \Add22~54\ : std_logic;
SIGNAL \Add22~57_sumout\ : std_logic;
SIGNAL \Dout[15]~reg0_q\ : std_logic;
SIGNAL w64_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL phase_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL Din1_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL w2n_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL y0 : std_logic_vector(15 DOWNTO 0);
SIGNAL w2n_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL y1 : std_logic_vector(15 DOWNTO 0);
SIGNAL w3_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL w4_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL Din0_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL w3_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL w61_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL w5_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_w5_1 : std_logic_vector(9 DOWNTO 1);
SIGNAL \ALT_INV_adders_in0_reg[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][1]~q\ : std_logic;
SIGNAL ALT_INV_w61_0 : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_adders_out0[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][11]~q\ : std_logic;
SIGNAL ALT_INV_w3_1 : std_logic_vector(10 DOWNTO 1);
SIGNAL \ALT_INV_adders_in0_reg[5][10]~q\ : std_logic;
SIGNAL ALT_INV_w3_0 : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_adders_in0_reg[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][9]~q\ : std_logic;
SIGNAL ALT_INV_Din0_reg : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_adders_in1_reg[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[5][3]~q\ : std_logic;
SIGNAL ALT_INV_Din1_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_adders_in0_reg[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][8]~q\ : std_logic;
SIGNAL ALT_INV_w64_0 : std_logic_vector(13 DOWNTO 6);
SIGNAL \ALT_INV_adders_out1[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][8]~q\ : std_logic;
SIGNAL ALT_INV_w4_1 : std_logic_vector(9 DOWNTO 2);
SIGNAL \ALT_INV_adders_out0[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][11]~q\ : std_logic;
SIGNAL ALT_INV_w2n_0 : std_logic_vector(9 DOWNTO 2);
SIGNAL \ALT_INV_adders_in1_reg[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][7]~q\ : std_logic;
SIGNAL ALT_INV_w2n_1 : std_logic_vector(7 DOWNTO 1);
SIGNAL \ALT_INV_adders_in0_reg[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[7][1]~q\ : std_logic;
SIGNAL ALT_INV_y0 : std_logic_vector(15 DOWNTO 1);
SIGNAL ALT_INV_y1 : std_logic_vector(15 DOWNTO 1);
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_phase_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_multipliers_out1_reg[3][9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[3][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out1_reg[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_w3_0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_w3_0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_phase_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_Din[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Din[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out1[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_multipliers_out0_reg[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_adders_out0[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in0_reg[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_adders_in1_reg[3][10]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_Din <= Din;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_w5_1(7) <= NOT w5_1(7);
\ALT_INV_adders_in0_reg[3][9]~q\ <= NOT \adders_in0_reg[3][9]~q\;
\ALT_INV_adders_in0_reg[3][8]~q\ <= NOT \adders_in0_reg[3][8]~q\;
\ALT_INV_adders_in0_reg[3][7]~q\ <= NOT \adders_in0_reg[3][7]~q\;
\ALT_INV_adders_in0_reg[3][6]~q\ <= NOT \adders_in0_reg[3][6]~q\;
\ALT_INV_adders_in1_reg[3][6]~q\ <= NOT \adders_in1_reg[3][6]~q\;
ALT_INV_w5_1(3) <= NOT w5_1(3);
\ALT_INV_adders_in0_reg[3][5]~q\ <= NOT \adders_in0_reg[3][5]~q\;
ALT_INV_w5_1(2) <= NOT w5_1(2);
\ALT_INV_adders_in0_reg[3][4]~q\ <= NOT \adders_in0_reg[3][4]~q\;
\ALT_INV_adders_in1_reg[3][4]~q\ <= NOT \adders_in1_reg[3][4]~q\;
ALT_INV_w5_1(1) <= NOT w5_1(1);
\ALT_INV_adders_in0_reg[3][3]~q\ <= NOT \adders_in0_reg[3][3]~q\;
\ALT_INV_adders_in1_reg[3][3]~q\ <= NOT \adders_in1_reg[3][3]~q\;
\ALT_INV_adders_in0_reg[3][2]~q\ <= NOT \adders_in0_reg[3][2]~q\;
\ALT_INV_adders_out1[2][2]~q\ <= NOT \adders_out1[2][2]~q\;
\ALT_INV_adders_in0_reg[3][1]~q\ <= NOT \adders_in0_reg[3][1]~q\;
ALT_INV_w61_0(0) <= NOT w61_0(0);
\ALT_INV_adders_out0[3][15]~q\ <= NOT \adders_out0[3][15]~q\;
\ALT_INV_adders_out1[3][15]~q\ <= NOT \adders_out1[3][15]~q\;
\ALT_INV_adders_out0[3][14]~q\ <= NOT \adders_out0[3][14]~q\;
\ALT_INV_adders_out1[3][14]~q\ <= NOT \adders_out1[3][14]~q\;
\ALT_INV_adders_out0[3][13]~q\ <= NOT \adders_out0[3][13]~q\;
\ALT_INV_adders_out1[3][13]~q\ <= NOT \adders_out1[3][13]~q\;
\ALT_INV_multipliers_out1_reg[3][15]~q\ <= NOT \multipliers_out1_reg[3][15]~q\;
\ALT_INV_adders_out0[3][12]~q\ <= NOT \adders_out0[3][12]~q\;
\ALT_INV_adders_out1[3][12]~q\ <= NOT \adders_out1[3][12]~q\;
\ALT_INV_multipliers_out1_reg[3][12]~q\ <= NOT \multipliers_out1_reg[3][12]~q\;
\ALT_INV_adders_out0[3][11]~q\ <= NOT \adders_out0[3][11]~q\;
\ALT_INV_adders_out1[3][11]~q\ <= NOT \adders_out1[3][11]~q\;
\ALT_INV_multipliers_out1_reg[3][11]~q\ <= NOT \multipliers_out1_reg[3][11]~q\;
\ALT_INV_adders_out0[3][10]~q\ <= NOT \adders_out0[3][10]~q\;
\ALT_INV_adders_out1[3][10]~q\ <= NOT \adders_out1[3][10]~q\;
\ALT_INV_multipliers_out1_reg[3][10]~q\ <= NOT \multipliers_out1_reg[3][10]~q\;
\ALT_INV_adders_out0[3][9]~q\ <= NOT \adders_out0[3][9]~q\;
\ALT_INV_adders_out1[3][9]~q\ <= NOT \adders_out1[3][9]~q\;
\ALT_INV_multipliers_out1_reg[3][9]~q\ <= NOT \multipliers_out1_reg[3][9]~q\;
\ALT_INV_adders_out0[3][8]~q\ <= NOT \adders_out0[3][8]~q\;
\ALT_INV_adders_out1[3][8]~q\ <= NOT \adders_out1[3][8]~q\;
\ALT_INV_multipliers_out1_reg[3][8]~q\ <= NOT \multipliers_out1_reg[3][8]~q\;
\ALT_INV_adders_out0[3][7]~q\ <= NOT \adders_out0[3][7]~q\;
\ALT_INV_adders_out1[3][7]~q\ <= NOT \adders_out1[3][7]~q\;
\ALT_INV_multipliers_out1_reg[3][7]~q\ <= NOT \multipliers_out1_reg[3][7]~q\;
\ALT_INV_adders_out0[3][6]~q\ <= NOT \adders_out0[3][6]~q\;
\ALT_INV_adders_out1[3][6]~q\ <= NOT \adders_out1[3][6]~q\;
\ALT_INV_multipliers_out1_reg[3][6]~q\ <= NOT \multipliers_out1_reg[3][6]~q\;
\ALT_INV_adders_out0[3][5]~q\ <= NOT \adders_out0[3][5]~q\;
\ALT_INV_adders_out1[3][5]~q\ <= NOT \adders_out1[3][5]~q\;
\ALT_INV_multipliers_out1_reg[3][5]~q\ <= NOT \multipliers_out1_reg[3][5]~q\;
\ALT_INV_adders_out0[3][4]~q\ <= NOT \adders_out0[3][4]~q\;
\ALT_INV_adders_out1[3][4]~q\ <= NOT \adders_out1[3][4]~q\;
\ALT_INV_multipliers_out1_reg[3][4]~q\ <= NOT \multipliers_out1_reg[3][4]~q\;
\ALT_INV_adders_out0[3][3]~q\ <= NOT \adders_out0[3][3]~q\;
\ALT_INV_adders_out1[3][3]~q\ <= NOT \adders_out1[3][3]~q\;
\ALT_INV_adders_out0[3][2]~q\ <= NOT \adders_out0[3][2]~q\;
\ALT_INV_adders_in1_reg[3][2]~q\ <= NOT \adders_in1_reg[3][2]~q\;
\ALT_INV_adders_out0[3][1]~q\ <= NOT \adders_out0[3][1]~q\;
\ALT_INV_adders_out0[2][0]~q\ <= NOT \adders_out0[2][0]~q\;
\ALT_INV_multipliers_out0_reg[3][0]~q\ <= NOT \multipliers_out0_reg[3][0]~q\;
\ALT_INV_adders_in1_reg[4][15]~q\ <= NOT \adders_in1_reg[4][15]~q\;
\ALT_INV_adders_in0_reg[4][14]~q\ <= NOT \adders_in0_reg[4][14]~q\;
\ALT_INV_adders_in0_reg[4][13]~q\ <= NOT \adders_in0_reg[4][13]~q\;
\ALT_INV_adders_in0_reg[4][12]~q\ <= NOT \adders_in0_reg[4][12]~q\;
\ALT_INV_adders_in1_reg[4][11]~q\ <= NOT \adders_in1_reg[4][11]~q\;
\ALT_INV_adders_in1_reg[4][9]~q\ <= NOT \adders_in1_reg[4][9]~q\;
\ALT_INV_adders_in0_reg[4][7]~q\ <= NOT \adders_in0_reg[4][7]~q\;
\ALT_INV_adders_in1_reg[4][7]~q\ <= NOT \adders_in1_reg[4][7]~q\;
\ALT_INV_adders_in0_reg[4][6]~q\ <= NOT \adders_in0_reg[4][6]~q\;
\ALT_INV_adders_in1_reg[4][6]~q\ <= NOT \adders_in1_reg[4][6]~q\;
\ALT_INV_adders_in0_reg[4][5]~q\ <= NOT \adders_in0_reg[4][5]~q\;
\ALT_INV_adders_in1_reg[4][5]~q\ <= NOT \adders_in1_reg[4][5]~q\;
\ALT_INV_adders_in1_reg[4][4]~q\ <= NOT \adders_in1_reg[4][4]~q\;
\ALT_INV_adders_in0_reg[4][2]~q\ <= NOT \adders_in0_reg[4][2]~q\;
\ALT_INV_adders_in1_reg[4][2]~q\ <= NOT \adders_in1_reg[4][2]~q\;
\ALT_INV_adders_in0_reg[4][1]~q\ <= NOT \adders_in0_reg[4][1]~q\;
\ALT_INV_adders_out1[3][1]~q\ <= NOT \adders_out1[3][1]~q\;
\ALT_INV_adders_out0[4][15]~q\ <= NOT \adders_out0[4][15]~q\;
\ALT_INV_adders_out1[4][15]~q\ <= NOT \adders_out1[4][15]~q\;
\ALT_INV_adders_out0[4][14]~q\ <= NOT \adders_out0[4][14]~q\;
\ALT_INV_adders_out1[4][14]~q\ <= NOT \adders_out1[4][14]~q\;
\ALT_INV_adders_out0[4][13]~q\ <= NOT \adders_out0[4][13]~q\;
\ALT_INV_adders_out1[4][13]~q\ <= NOT \adders_out1[4][13]~q\;
\ALT_INV_multipliers_out1_reg[2][15]~q\ <= NOT \multipliers_out1_reg[2][15]~q\;
\ALT_INV_adders_out0[4][12]~q\ <= NOT \adders_out0[4][12]~q\;
\ALT_INV_adders_out1[4][12]~q\ <= NOT \adders_out1[4][12]~q\;
\ALT_INV_multipliers_out1_reg[2][12]~q\ <= NOT \multipliers_out1_reg[2][12]~q\;
\ALT_INV_adders_out0[4][11]~q\ <= NOT \adders_out0[4][11]~q\;
\ALT_INV_adders_out1[4][11]~q\ <= NOT \adders_out1[4][11]~q\;
\ALT_INV_multipliers_out1_reg[2][11]~q\ <= NOT \multipliers_out1_reg[2][11]~q\;
\ALT_INV_adders_out0[4][10]~q\ <= NOT \adders_out0[4][10]~q\;
\ALT_INV_adders_out1[4][10]~q\ <= NOT \adders_out1[4][10]~q\;
\ALT_INV_multipliers_out1_reg[2][10]~q\ <= NOT \multipliers_out1_reg[2][10]~q\;
\ALT_INV_adders_out0[4][9]~q\ <= NOT \adders_out0[4][9]~q\;
\ALT_INV_adders_out1[4][9]~q\ <= NOT \adders_out1[4][9]~q\;
\ALT_INV_multipliers_out1_reg[2][9]~q\ <= NOT \multipliers_out1_reg[2][9]~q\;
\ALT_INV_adders_out0[4][8]~q\ <= NOT \adders_out0[4][8]~q\;
\ALT_INV_adders_out1[4][8]~q\ <= NOT \adders_out1[4][8]~q\;
\ALT_INV_multipliers_out1_reg[2][8]~q\ <= NOT \multipliers_out1_reg[2][8]~q\;
\ALT_INV_adders_out0[4][7]~q\ <= NOT \adders_out0[4][7]~q\;
\ALT_INV_adders_out1[4][7]~q\ <= NOT \adders_out1[4][7]~q\;
\ALT_INV_multipliers_out1_reg[2][7]~q\ <= NOT \multipliers_out1_reg[2][7]~q\;
\ALT_INV_adders_out0[4][6]~q\ <= NOT \adders_out0[4][6]~q\;
\ALT_INV_adders_out1[4][6]~q\ <= NOT \adders_out1[4][6]~q\;
\ALT_INV_multipliers_out1_reg[2][6]~q\ <= NOT \multipliers_out1_reg[2][6]~q\;
\ALT_INV_adders_out0[4][5]~q\ <= NOT \adders_out0[4][5]~q\;
\ALT_INV_adders_out1[4][5]~q\ <= NOT \adders_out1[4][5]~q\;
\ALT_INV_multipliers_out1_reg[2][5]~q\ <= NOT \multipliers_out1_reg[2][5]~q\;
\ALT_INV_adders_out0[4][4]~q\ <= NOT \adders_out0[4][4]~q\;
\ALT_INV_adders_out1[4][4]~q\ <= NOT \adders_out1[4][4]~q\;
\ALT_INV_multipliers_out1_reg[2][4]~q\ <= NOT \multipliers_out1_reg[2][4]~q\;
\ALT_INV_adders_out0[4][3]~q\ <= NOT \adders_out0[4][3]~q\;
\ALT_INV_adders_out1[4][3]~q\ <= NOT \adders_out1[4][3]~q\;
\ALT_INV_multipliers_out1_reg[2][3]~q\ <= NOT \multipliers_out1_reg[2][3]~q\;
\ALT_INV_adders_out0[4][2]~q\ <= NOT \adders_out0[4][2]~q\;
\ALT_INV_adders_out1[4][2]~q\ <= NOT \adders_out1[4][2]~q\;
\ALT_INV_adders_out0[4][1]~q\ <= NOT \adders_out0[4][1]~q\;
\ALT_INV_adders_out0[3][0]~q\ <= NOT \adders_out0[3][0]~q\;
\ALT_INV_adders_in0_reg[5][14]~q\ <= NOT \adders_in0_reg[5][14]~q\;
\ALT_INV_adders_in0_reg[5][13]~q\ <= NOT \adders_in0_reg[5][13]~q\;
\ALT_INV_adders_in1_reg[5][13]~q\ <= NOT \adders_in1_reg[5][13]~q\;
\ALT_INV_adders_in1_reg[5][12]~q\ <= NOT \adders_in1_reg[5][12]~q\;
\ALT_INV_adders_in0_reg[5][11]~q\ <= NOT \adders_in0_reg[5][11]~q\;
\ALT_INV_adders_in1_reg[5][11]~q\ <= NOT \adders_in1_reg[5][11]~q\;
ALT_INV_w3_1(10) <= NOT w3_1(10);
\ALT_INV_adders_in0_reg[5][10]~q\ <= NOT \adders_in0_reg[5][10]~q\;
ALT_INV_w3_0(10) <= NOT w3_0(10);
ALT_INV_w3_1(9) <= NOT w3_1(9);
\ALT_INV_adders_in0_reg[5][9]~q\ <= NOT \adders_in0_reg[5][9]~q\;
ALT_INV_w3_0(9) <= NOT w3_0(9);
\ALT_INV_adders_in1_reg[5][9]~q\ <= NOT \adders_in1_reg[5][9]~q\;
ALT_INV_w3_1(8) <= NOT w3_1(8);
ALT_INV_w3_0(8) <= NOT w3_0(8);
ALT_INV_w3_1(7) <= NOT w3_1(7);
ALT_INV_w3_0(7) <= NOT w3_0(7);
ALT_INV_Din0_reg(6) <= NOT Din0_reg(6);
\ALT_INV_adders_in1_reg[5][7]~q\ <= NOT \adders_in1_reg[5][7]~q\;
ALT_INV_w3_1(6) <= NOT w3_1(6);
ALT_INV_w3_0(6) <= NOT w3_0(6);
\ALT_INV_adders_in1_reg[5][6]~q\ <= NOT \adders_in1_reg[5][6]~q\;
ALT_INV_w3_1(5) <= NOT w3_1(5);
ALT_INV_Din0_reg(4) <= NOT Din0_reg(4);
\ALT_INV_adders_in1_reg[5][5]~q\ <= NOT \adders_in1_reg[5][5]~q\;
ALT_INV_w3_1(4) <= NOT w3_1(4);
ALT_INV_w3_0(4) <= NOT w3_0(4);
ALT_INV_Din0_reg(3) <= NOT Din0_reg(3);
ALT_INV_w3_1(3) <= NOT w3_1(3);
ALT_INV_w3_0(3) <= NOT w3_0(3);
ALT_INV_Din0_reg(2) <= NOT Din0_reg(2);
\ALT_INV_adders_in1_reg[5][3]~q\ <= NOT \adders_in1_reg[5][3]~q\;
ALT_INV_w3_1(2) <= NOT w3_1(2);
ALT_INV_Din1_reg(2) <= NOT Din1_reg(2);
\ALT_INV_adders_in0_reg[5][2]~q\ <= NOT \adders_in0_reg[5][2]~q\;
ALT_INV_w3_0(2) <= NOT w3_0(2);
ALT_INV_Din0_reg(1) <= NOT Din0_reg(1);
ALT_INV_w3_1(1) <= NOT w3_1(1);
\ALT_INV_adders_in0_reg[5][1]~q\ <= NOT \adders_in0_reg[5][1]~q\;
ALT_INV_w3_0(1) <= NOT w3_0(1);
\ALT_INV_adders_in0_reg[4][0]~q\ <= NOT \adders_in0_reg[4][0]~q\;
\ALT_INV_adders_out0[5][15]~q\ <= NOT \adders_out0[5][15]~q\;
\ALT_INV_adders_out1[5][15]~q\ <= NOT \adders_out1[5][15]~q\;
\ALT_INV_adders_out0[5][14]~q\ <= NOT \adders_out0[5][14]~q\;
\ALT_INV_adders_out1[5][14]~q\ <= NOT \adders_out1[5][14]~q\;
\ALT_INV_adders_out0[5][13]~q\ <= NOT \adders_out0[5][13]~q\;
\ALT_INV_adders_out1[5][13]~q\ <= NOT \adders_out1[5][13]~q\;
\ALT_INV_adders_out0[5][12]~q\ <= NOT \adders_out0[5][12]~q\;
\ALT_INV_adders_out1[5][12]~q\ <= NOT \adders_out1[5][12]~q\;
\ALT_INV_adders_out0[5][11]~q\ <= NOT \adders_out0[5][11]~q\;
\ALT_INV_adders_out1[5][11]~q\ <= NOT \adders_out1[5][11]~q\;
\ALT_INV_multipliers_out1_reg[1][15]~q\ <= NOT \multipliers_out1_reg[1][15]~q\;
\ALT_INV_adders_out0[5][10]~q\ <= NOT \adders_out0[5][10]~q\;
\ALT_INV_multipliers_out0_reg[0][15]~q\ <= NOT \multipliers_out0_reg[0][15]~q\;
\ALT_INV_adders_out1[5][10]~q\ <= NOT \adders_out1[5][10]~q\;
\ALT_INV_multipliers_out1_reg[1][10]~q\ <= NOT \multipliers_out1_reg[1][10]~q\;
\ALT_INV_adders_out0[5][9]~q\ <= NOT \adders_out0[5][9]~q\;
\ALT_INV_multipliers_out0_reg[0][9]~q\ <= NOT \multipliers_out0_reg[0][9]~q\;
\ALT_INV_adders_out1[5][9]~q\ <= NOT \adders_out1[5][9]~q\;
\ALT_INV_multipliers_out1_reg[1][9]~q\ <= NOT \multipliers_out1_reg[1][9]~q\;
\ALT_INV_adders_out0[5][8]~q\ <= NOT \adders_out0[5][8]~q\;
\ALT_INV_multipliers_out0_reg[0][8]~q\ <= NOT \multipliers_out0_reg[0][8]~q\;
ALT_INV_w64_0(13) <= NOT w64_0(13);
\ALT_INV_adders_out1[5][8]~q\ <= NOT \adders_out1[5][8]~q\;
\ALT_INV_multipliers_out1_reg[1][8]~q\ <= NOT \multipliers_out1_reg[1][8]~q\;
ALT_INV_w4_1(9) <= NOT w4_1(9);
\ALT_INV_adders_out0[5][7]~q\ <= NOT \adders_out0[5][7]~q\;
\ALT_INV_multipliers_out0_reg[0][7]~q\ <= NOT \multipliers_out0_reg[0][7]~q\;
ALT_INV_w64_0(12) <= NOT w64_0(12);
\ALT_INV_adders_out1[5][7]~q\ <= NOT \adders_out1[5][7]~q\;
\ALT_INV_multipliers_out1_reg[1][7]~q\ <= NOT \multipliers_out1_reg[1][7]~q\;
ALT_INV_w4_1(8) <= NOT w4_1(8);
\ALT_INV_adders_out0[5][6]~q\ <= NOT \adders_out0[5][6]~q\;
\ALT_INV_multipliers_out0_reg[0][6]~q\ <= NOT \multipliers_out0_reg[0][6]~q\;
ALT_INV_w64_0(11) <= NOT w64_0(11);
\ALT_INV_adders_out1[5][6]~q\ <= NOT \adders_out1[5][6]~q\;
\ALT_INV_multipliers_out1_reg[1][6]~q\ <= NOT \multipliers_out1_reg[1][6]~q\;
ALT_INV_w4_1(7) <= NOT w4_1(7);
\ALT_INV_adders_out0[5][5]~q\ <= NOT \adders_out0[5][5]~q\;
\ALT_INV_multipliers_out0_reg[0][5]~q\ <= NOT \multipliers_out0_reg[0][5]~q\;
ALT_INV_w64_0(10) <= NOT w64_0(10);
\ALT_INV_adders_out1[5][5]~q\ <= NOT \adders_out1[5][5]~q\;
\ALT_INV_multipliers_out1_reg[1][5]~q\ <= NOT \multipliers_out1_reg[1][5]~q\;
ALT_INV_w4_1(6) <= NOT w4_1(6);
\ALT_INV_adders_out0[5][4]~q\ <= NOT \adders_out0[5][4]~q\;
\ALT_INV_multipliers_out0_reg[0][4]~q\ <= NOT \multipliers_out0_reg[0][4]~q\;
ALT_INV_w64_0(9) <= NOT w64_0(9);
\ALT_INV_adders_out1[5][4]~q\ <= NOT \adders_out1[5][4]~q\;
\ALT_INV_multipliers_out1_reg[1][4]~q\ <= NOT \multipliers_out1_reg[1][4]~q\;
ALT_INV_w4_1(5) <= NOT w4_1(5);
\ALT_INV_adders_out0[5][3]~q\ <= NOT \adders_out0[5][3]~q\;
\ALT_INV_multipliers_out0_reg[0][3]~q\ <= NOT \multipliers_out0_reg[0][3]~q\;
ALT_INV_w64_0(8) <= NOT w64_0(8);
\ALT_INV_adders_out1[5][3]~q\ <= NOT \adders_out1[5][3]~q\;
\ALT_INV_multipliers_out1_reg[1][3]~q\ <= NOT \multipliers_out1_reg[1][3]~q\;
ALT_INV_w4_1(4) <= NOT w4_1(4);
\ALT_INV_adders_out0[5][2]~q\ <= NOT \adders_out0[5][2]~q\;
\ALT_INV_multipliers_out0_reg[0][2]~q\ <= NOT \multipliers_out0_reg[0][2]~q\;
ALT_INV_w64_0(7) <= NOT w64_0(7);
\ALT_INV_adders_out1[5][2]~q\ <= NOT \adders_out1[5][2]~q\;
\ALT_INV_multipliers_out1_reg[1][2]~q\ <= NOT \multipliers_out1_reg[1][2]~q\;
ALT_INV_w4_1(3) <= NOT w4_1(3);
\ALT_INV_adders_out0[5][1]~q\ <= NOT \adders_out0[5][1]~q\;
\ALT_INV_multipliers_out0_reg[0][1]~q\ <= NOT \multipliers_out0_reg[0][1]~q\;
ALT_INV_Din0_reg(0) <= NOT Din0_reg(0);
\ALT_INV_adders_out1[5][1]~q\ <= NOT \adders_out1[5][1]~q\;
ALT_INV_Din1_reg(0) <= NOT Din1_reg(0);
\ALT_INV_adders_out0[4][0]~q\ <= NOT \adders_out0[4][0]~q\;
ALT_INV_w64_0(6) <= NOT w64_0(6);
ALT_INV_w4_1(2) <= NOT w4_1(2);
\ALT_INV_adders_in0_reg[6][15]~q\ <= NOT \adders_in0_reg[6][15]~q\;
\ALT_INV_adders_in1_reg[6][14]~q\ <= NOT \adders_in1_reg[6][14]~q\;
\ALT_INV_adders_in0_reg[6][13]~q\ <= NOT \adders_in0_reg[6][13]~q\;
\ALT_INV_adders_in1_reg[6][13]~q\ <= NOT \adders_in1_reg[6][13]~q\;
\ALT_INV_adders_in0_reg[6][12]~q\ <= NOT \adders_in0_reg[6][12]~q\;
\ALT_INV_adders_in1_reg[6][12]~q\ <= NOT \adders_in1_reg[6][12]~q\;
\ALT_INV_adders_in0_reg[6][11]~q\ <= NOT \adders_in0_reg[6][11]~q\;
ALT_INV_w2n_0(9) <= NOT w2n_0(9);
\ALT_INV_adders_in1_reg[6][9]~q\ <= NOT \adders_in1_reg[6][9]~q\;
\ALT_INV_adders_in0_reg[6][7]~q\ <= NOT \adders_in0_reg[6][7]~q\;
ALT_INV_w2n_0(7) <= NOT w2n_0(7);
\ALT_INV_adders_in1_reg[6][7]~q\ <= NOT \adders_in1_reg[6][7]~q\;
ALT_INV_w2n_1(7) <= NOT w2n_1(7);
\ALT_INV_adders_in0_reg[6][6]~q\ <= NOT \adders_in0_reg[6][6]~q\;
ALT_INV_w2n_0(6) <= NOT w2n_0(6);
ALT_INV_w2n_1(6) <= NOT w2n_1(6);
\ALT_INV_adders_in0_reg[6][5]~q\ <= NOT \adders_in0_reg[6][5]~q\;
\ALT_INV_adders_in1_reg[6][5]~q\ <= NOT \adders_in1_reg[6][5]~q\;
\ALT_INV_adders_in1_reg[6][4]~q\ <= NOT \adders_in1_reg[6][4]~q\;
ALT_INV_w2n_0(3) <= NOT w2n_0(3);
\ALT_INV_adders_in1_reg[6][3]~q\ <= NOT \adders_in1_reg[6][3]~q\;
ALT_INV_w2n_1(3) <= NOT w2n_1(3);
ALT_INV_w2n_0(2) <= NOT w2n_0(2);
ALT_INV_w3_0(0) <= NOT w3_0(0);
ALT_INV_w2n_1(1) <= NOT w2n_1(1);
\ALT_INV_adders_out0[5][0]~q\ <= NOT \adders_out0[5][0]~q\;
\ALT_INV_adders_out0[6][15]~q\ <= NOT \adders_out0[6][15]~q\;
\ALT_INV_adders_out1[6][15]~q\ <= NOT \adders_out1[6][15]~q\;
\ALT_INV_adders_out0[6][14]~q\ <= NOT \adders_out0[6][14]~q\;
\ALT_INV_adders_out1[6][14]~q\ <= NOT \adders_out1[6][14]~q\;
\ALT_INV_adders_out0[6][13]~q\ <= NOT \adders_out0[6][13]~q\;
\ALT_INV_adders_out1[6][13]~q\ <= NOT \adders_out1[6][13]~q\;
\ALT_INV_adders_out0[6][12]~q\ <= NOT \adders_out0[6][12]~q\;
\ALT_INV_adders_out1[6][12]~q\ <= NOT \adders_out1[6][12]~q\;
\ALT_INV_adders_out0[6][11]~q\ <= NOT \adders_out0[6][11]~q\;
\ALT_INV_adders_out1[6][11]~q\ <= NOT \adders_out1[6][11]~q\;
\ALT_INV_adders_out0[6][10]~q\ <= NOT \adders_out0[6][10]~q\;
\ALT_INV_adders_out1[6][10]~q\ <= NOT \adders_out1[6][10]~q\;
\ALT_INV_adders_out0[6][9]~q\ <= NOT \adders_out0[6][9]~q\;
\ALT_INV_multipliers_out0_reg[1][15]~q\ <= NOT \multipliers_out0_reg[1][15]~q\;
\ALT_INV_adders_out1[6][9]~q\ <= NOT \adders_out1[6][9]~q\;
\ALT_INV_multipliers_out1_reg[0][15]~q\ <= NOT \multipliers_out1_reg[0][15]~q\;
\ALT_INV_adders_out0[6][8]~q\ <= NOT \adders_out0[6][8]~q\;
\ALT_INV_multipliers_out0_reg[1][8]~q\ <= NOT \multipliers_out0_reg[1][8]~q\;
\ALT_INV_adders_out1[6][8]~q\ <= NOT \adders_out1[6][8]~q\;
\ALT_INV_multipliers_out1_reg[0][8]~q\ <= NOT \multipliers_out1_reg[0][8]~q\;
\ALT_INV_adders_out0[6][7]~q\ <= NOT \adders_out0[6][7]~q\;
\ALT_INV_multipliers_out0_reg[1][7]~q\ <= NOT \multipliers_out0_reg[1][7]~q\;
\ALT_INV_adders_out1[6][7]~q\ <= NOT \adders_out1[6][7]~q\;
\ALT_INV_multipliers_out1_reg[0][7]~q\ <= NOT \multipliers_out1_reg[0][7]~q\;
\ALT_INV_adders_out0[6][6]~q\ <= NOT \adders_out0[6][6]~q\;
\ALT_INV_multipliers_out0_reg[1][6]~q\ <= NOT \multipliers_out0_reg[1][6]~q\;
\ALT_INV_adders_out1[6][6]~q\ <= NOT \adders_out1[6][6]~q\;
\ALT_INV_multipliers_out1_reg[0][6]~q\ <= NOT \multipliers_out1_reg[0][6]~q\;
\ALT_INV_adders_out0[6][5]~q\ <= NOT \adders_out0[6][5]~q\;
\ALT_INV_multipliers_out0_reg[1][5]~q\ <= NOT \multipliers_out0_reg[1][5]~q\;
\ALT_INV_adders_out1[6][5]~q\ <= NOT \adders_out1[6][5]~q\;
\ALT_INV_multipliers_out1_reg[0][5]~q\ <= NOT \multipliers_out1_reg[0][5]~q\;
\ALT_INV_adders_out0[6][4]~q\ <= NOT \adders_out0[6][4]~q\;
\ALT_INV_multipliers_out0_reg[1][4]~q\ <= NOT \multipliers_out0_reg[1][4]~q\;
\ALT_INV_adders_out1[6][4]~q\ <= NOT \adders_out1[6][4]~q\;
\ALT_INV_multipliers_out1_reg[0][4]~q\ <= NOT \multipliers_out1_reg[0][4]~q\;
\ALT_INV_adders_out0[6][3]~q\ <= NOT \adders_out0[6][3]~q\;
\ALT_INV_multipliers_out0_reg[1][3]~q\ <= NOT \multipliers_out0_reg[1][3]~q\;
\ALT_INV_adders_out1[6][3]~q\ <= NOT \adders_out1[6][3]~q\;
\ALT_INV_multipliers_out1_reg[0][3]~q\ <= NOT \multipliers_out1_reg[0][3]~q\;
\ALT_INV_adders_out0[6][2]~q\ <= NOT \adders_out0[6][2]~q\;
\ALT_INV_multipliers_out0_reg[1][2]~q\ <= NOT \multipliers_out0_reg[1][2]~q\;
\ALT_INV_adders_out1[6][2]~q\ <= NOT \adders_out1[6][2]~q\;
\ALT_INV_multipliers_out1_reg[0][2]~q\ <= NOT \multipliers_out1_reg[0][2]~q\;
\ALT_INV_adders_out0[6][1]~q\ <= NOT \adders_out0[6][1]~q\;
\ALT_INV_multipliers_out0_reg[0][0]~q\ <= NOT \multipliers_out0_reg[0][0]~q\;
\ALT_INV_adders_out1[6][1]~q\ <= NOT \adders_out1[6][1]~q\;
\ALT_INV_multipliers_out1_reg[0][1]~q\ <= NOT \multipliers_out1_reg[0][1]~q\;
\ALT_INV_adders_in0_reg[6][0]~q\ <= NOT \adders_in0_reg[6][0]~q\;
\ALT_INV_adders_in0_reg[7][15]~q\ <= NOT \adders_in0_reg[7][15]~q\;
\ALT_INV_adders_in1_reg[7][15]~q\ <= NOT \adders_in1_reg[7][15]~q\;
\ALT_INV_adders_in0_reg[7][14]~q\ <= NOT \adders_in0_reg[7][14]~q\;
\ALT_INV_adders_in1_reg[7][13]~q\ <= NOT \adders_in1_reg[7][13]~q\;
\ALT_INV_adders_in1_reg[7][12]~q\ <= NOT \adders_in1_reg[7][12]~q\;
\ALT_INV_adders_in1_reg[7][11]~q\ <= NOT \adders_in1_reg[7][11]~q\;
\ALT_INV_adders_in0_reg[7][10]~q\ <= NOT \adders_in0_reg[7][10]~q\;
\ALT_INV_adders_in0_reg[7][7]~q\ <= NOT \adders_in0_reg[7][7]~q\;
\ALT_INV_adders_in0_reg[7][6]~q\ <= NOT \adders_in0_reg[7][6]~q\;
\ALT_INV_adders_in1_reg[7][6]~q\ <= NOT \adders_in1_reg[7][6]~q\;
\ALT_INV_adders_in0_reg[7][5]~q\ <= NOT \adders_in0_reg[7][5]~q\;
\ALT_INV_adders_in1_reg[7][5]~q\ <= NOT \adders_in1_reg[7][5]~q\;
\ALT_INV_adders_in0_reg[7][3]~q\ <= NOT \adders_in0_reg[7][3]~q\;
\ALT_INV_adders_in1_reg[7][3]~q\ <= NOT \adders_in1_reg[7][3]~q\;
\ALT_INV_adders_in1_reg[7][2]~q\ <= NOT \adders_in1_reg[7][2]~q\;
\ALT_INV_adders_in0_reg[7][1]~q\ <= NOT \adders_in0_reg[7][1]~q\;
\ALT_INV_adders_out0[7][15]~q\ <= NOT \adders_out0[7][15]~q\;
\ALT_INV_adders_out1[7][15]~q\ <= NOT \adders_out1[7][15]~q\;
\ALT_INV_adders_out0[7][14]~q\ <= NOT \adders_out0[7][14]~q\;
\ALT_INV_adders_out1[7][14]~q\ <= NOT \adders_out1[7][14]~q\;
\ALT_INV_adders_out1[7][13]~q\ <= NOT \adders_out1[7][13]~q\;
\ALT_INV_adders_out0[7][12]~q\ <= NOT \adders_out0[7][12]~q\;
\ALT_INV_adders_out1[7][12]~q\ <= NOT \adders_out1[7][12]~q\;
\ALT_INV_adders_out0[7][10]~q\ <= NOT \adders_out0[7][10]~q\;
\ALT_INV_adders_out1[7][10]~q\ <= NOT \adders_out1[7][10]~q\;
\ALT_INV_adders_out0[7][9]~q\ <= NOT \adders_out0[7][9]~q\;
\ALT_INV_adders_out0[7][8]~q\ <= NOT \adders_out0[7][8]~q\;
\ALT_INV_adders_out1[7][8]~q\ <= NOT \adders_out1[7][8]~q\;
\ALT_INV_adders_out0[7][7]~q\ <= NOT \adders_out0[7][7]~q\;
\ALT_INV_adders_out0[7][4]~q\ <= NOT \adders_out0[7][4]~q\;
\ALT_INV_adders_out0[7][3]~q\ <= NOT \adders_out0[7][3]~q\;
\ALT_INV_adders_out0[7][2]~q\ <= NOT \adders_out0[7][2]~q\;
\ALT_INV_adders_out1[7][2]~q\ <= NOT \adders_out1[7][2]~q\;
\ALT_INV_adders_out1[7][1]~q\ <= NOT \adders_out1[7][1]~q\;
ALT_INV_y0(15) <= NOT y0(15);
ALT_INV_y1(15) <= NOT y1(15);
ALT_INV_y0(14) <= NOT y0(14);
ALT_INV_y1(14) <= NOT y1(14);
ALT_INV_y0(13) <= NOT y0(13);
ALT_INV_y1(13) <= NOT y1(13);
ALT_INV_y0(12) <= NOT y0(12);
ALT_INV_y1(12) <= NOT y1(12);
ALT_INV_y0(11) <= NOT y0(11);
ALT_INV_y1(11) <= NOT y1(11);
ALT_INV_y0(10) <= NOT y0(10);
ALT_INV_y1(10) <= NOT y1(10);
ALT_INV_y0(9) <= NOT y0(9);
ALT_INV_y1(9) <= NOT y1(9);
ALT_INV_y0(8) <= NOT y0(8);
ALT_INV_y1(8) <= NOT y1(8);
ALT_INV_y0(7) <= NOT y0(7);
ALT_INV_y1(7) <= NOT y1(7);
ALT_INV_y0(6) <= NOT y0(6);
ALT_INV_y1(6) <= NOT y1(6);
ALT_INV_y0(5) <= NOT y0(5);
ALT_INV_y1(5) <= NOT y1(5);
ALT_INV_y0(4) <= NOT y0(4);
ALT_INV_y1(4) <= NOT y1(4);
ALT_INV_y0(3) <= NOT y0(3);
ALT_INV_y1(3) <= NOT y1(3);
ALT_INV_y0(2) <= NOT y0(2);
ALT_INV_y1(2) <= NOT y1(2);
ALT_INV_y0(1) <= NOT y0(1);
ALT_INV_y1(1) <= NOT y1(1);
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_phase_counter(0) <= NOT phase_counter(0);
ALT_INV_phase_counter(31) <= NOT phase_counter(31);
ALT_INV_phase_counter(19) <= NOT phase_counter(19);
ALT_INV_phase_counter(20) <= NOT phase_counter(20);
ALT_INV_phase_counter(21) <= NOT phase_counter(21);
ALT_INV_phase_counter(22) <= NOT phase_counter(22);
ALT_INV_phase_counter(23) <= NOT phase_counter(23);
ALT_INV_phase_counter(24) <= NOT phase_counter(24);
ALT_INV_phase_counter(25) <= NOT phase_counter(25);
ALT_INV_phase_counter(26) <= NOT phase_counter(26);
ALT_INV_phase_counter(27) <= NOT phase_counter(27);
ALT_INV_phase_counter(28) <= NOT phase_counter(28);
ALT_INV_phase_counter(29) <= NOT phase_counter(29);
ALT_INV_phase_counter(30) <= NOT phase_counter(30);
ALT_INV_phase_counter(13) <= NOT phase_counter(13);
ALT_INV_phase_counter(14) <= NOT phase_counter(14);
ALT_INV_phase_counter(15) <= NOT phase_counter(15);
ALT_INV_phase_counter(16) <= NOT phase_counter(16);
ALT_INV_phase_counter(17) <= NOT phase_counter(17);
ALT_INV_phase_counter(18) <= NOT phase_counter(18);
ALT_INV_phase_counter(7) <= NOT phase_counter(7);
ALT_INV_phase_counter(8) <= NOT phase_counter(8);
ALT_INV_phase_counter(9) <= NOT phase_counter(9);
ALT_INV_phase_counter(10) <= NOT phase_counter(10);
ALT_INV_phase_counter(11) <= NOT phase_counter(11);
ALT_INV_phase_counter(12) <= NOT phase_counter(12);
ALT_INV_phase_counter(1) <= NOT phase_counter(1);
ALT_INV_phase_counter(2) <= NOT phase_counter(2);
ALT_INV_phase_counter(3) <= NOT phase_counter(3);
ALT_INV_phase_counter(4) <= NOT phase_counter(4);
ALT_INV_phase_counter(5) <= NOT phase_counter(5);
ALT_INV_phase_counter(6) <= NOT phase_counter(6);
\ALT_INV_multipliers_out1_reg[3][9]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[3][9]~DUPLICATE_q\;
\ALT_INV_multipliers_out1_reg[3][6]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[3][6]~DUPLICATE_q\;
\ALT_INV_multipliers_out1_reg[3][5]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[3][5]~DUPLICATE_q\;
\ALT_INV_multipliers_out1_reg[2][15]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[2][15]~DUPLICATE_q\;
\ALT_INV_multipliers_out1_reg[2][8]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[2][8]~DUPLICATE_q\;
\ALT_INV_multipliers_out1_reg[2][7]~DUPLICATE_q\ <= NOT \multipliers_out1_reg[2][7]~DUPLICATE_q\;
\ALT_INV_w3_0[5]~DUPLICATE_q\ <= NOT \w3_0[5]~DUPLICATE_q\;
\ALT_INV_multipliers_out0_reg[0][7]~DUPLICATE_q\ <= NOT \multipliers_out0_reg[0][7]~DUPLICATE_q\;
\ALT_INV_w3_0[0]~DUPLICATE_q\ <= NOT \w3_0[0]~DUPLICATE_q\;
\ALT_INV_multipliers_out0_reg[0][0]~DUPLICATE_q\ <= NOT \multipliers_out0_reg[0][0]~DUPLICATE_q\;
\ALT_INV_phase_counter[0]~DUPLICATE_q\ <= NOT \phase_counter[0]~DUPLICATE_q\;
\ALT_INV_phase_counter[19]~DUPLICATE_q\ <= NOT \phase_counter[19]~DUPLICATE_q\;
\ALT_INV_phase_counter[14]~DUPLICATE_q\ <= NOT \phase_counter[14]~DUPLICATE_q\;
\ALT_INV_phase_counter[17]~DUPLICATE_q\ <= NOT \phase_counter[17]~DUPLICATE_q\;
\ALT_INV_phase_counter[7]~DUPLICATE_q\ <= NOT \phase_counter[7]~DUPLICATE_q\;
\ALT_INV_phase_counter[8]~DUPLICATE_q\ <= NOT \phase_counter[8]~DUPLICATE_q\;
\ALT_INV_phase_counter[9]~DUPLICATE_q\ <= NOT \phase_counter[9]~DUPLICATE_q\;
\ALT_INV_phase_counter[11]~DUPLICATE_q\ <= NOT \phase_counter[11]~DUPLICATE_q\;
\ALT_INV_phase_counter[12]~DUPLICATE_q\ <= NOT \phase_counter[12]~DUPLICATE_q\;
\ALT_INV_phase_counter[1]~DUPLICATE_q\ <= NOT \phase_counter[1]~DUPLICATE_q\;
\ALT_INV_phase_counter[4]~DUPLICATE_q\ <= NOT \phase_counter[4]~DUPLICATE_q\;
\ALT_INV_phase_counter[5]~DUPLICATE_q\ <= NOT \phase_counter[5]~DUPLICATE_q\;
\ALT_INV_phase_counter[6]~DUPLICATE_q\ <= NOT \phase_counter[6]~DUPLICATE_q\;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
\ALT_INV_Din[5]~input_o\ <= NOT \Din[5]~input_o\;
\ALT_INV_Din[0]~input_o\ <= NOT \Din[0]~input_o\;
\ALT_INV_adders_in0_reg[0][9]~q\ <= NOT \adders_in0_reg[0][9]~q\;
\ALT_INV_adders_in1_reg[0][9]~q\ <= NOT \adders_in1_reg[0][9]~q\;
\ALT_INV_adders_in1_reg[0][8]~q\ <= NOT \adders_in1_reg[0][8]~q\;
\ALT_INV_adders_in1_reg[0][7]~q\ <= NOT \adders_in1_reg[0][7]~q\;
\ALT_INV_adders_in0_reg[0][6]~q\ <= NOT \adders_in0_reg[0][6]~q\;
\ALT_INV_adders_in0_reg[0][5]~q\ <= NOT \adders_in0_reg[0][5]~q\;
\ALT_INV_adders_in0_reg[0][4]~q\ <= NOT \adders_in0_reg[0][4]~q\;
\ALT_INV_adders_in0_reg[0][3]~q\ <= NOT \adders_in0_reg[0][3]~q\;
\ALT_INV_adders_in1_reg[0][3]~q\ <= NOT \adders_in1_reg[0][3]~q\;
\ALT_INV_adders_out0[0][15]~q\ <= NOT \adders_out0[0][15]~q\;
\ALT_INV_adders_out0[0][9]~q\ <= NOT \adders_out0[0][9]~q\;
\ALT_INV_adders_out1[0][15]~q\ <= NOT \adders_out1[0][15]~q\;
\ALT_INV_adders_out0[0][8]~q\ <= NOT \adders_out0[0][8]~q\;
\ALT_INV_adders_out1[0][8]~q\ <= NOT \adders_out1[0][8]~q\;
\ALT_INV_adders_out0[0][7]~q\ <= NOT \adders_out0[0][7]~q\;
\ALT_INV_adders_out1[0][7]~q\ <= NOT \adders_out1[0][7]~q\;
\ALT_INV_adders_out0[0][6]~q\ <= NOT \adders_out0[0][6]~q\;
\ALT_INV_adders_out1[0][6]~q\ <= NOT \adders_out1[0][6]~q\;
\ALT_INV_adders_out0[0][5]~q\ <= NOT \adders_out0[0][5]~q\;
\ALT_INV_adders_out1[0][5]~q\ <= NOT \adders_out1[0][5]~q\;
\ALT_INV_adders_out0[0][4]~q\ <= NOT \adders_out0[0][4]~q\;
\ALT_INV_adders_out1[0][4]~q\ <= NOT \adders_out1[0][4]~q\;
\ALT_INV_adders_out0[0][3]~q\ <= NOT \adders_out0[0][3]~q\;
\ALT_INV_adders_out1[0][3]~q\ <= NOT \adders_out1[0][3]~q\;
\ALT_INV_adders_out0[0][2]~q\ <= NOT \adders_out0[0][2]~q\;
\ALT_INV_adders_out0[0][1]~q\ <= NOT \adders_out0[0][1]~q\;
\ALT_INV_adders_in1_reg[1][12]~q\ <= NOT \adders_in1_reg[1][12]~q\;
\ALT_INV_adders_in0_reg[1][11]~q\ <= NOT \adders_in0_reg[1][11]~q\;
\ALT_INV_adders_in1_reg[1][11]~q\ <= NOT \adders_in1_reg[1][11]~q\;
\ALT_INV_adders_in0_reg[1][9]~q\ <= NOT \adders_in0_reg[1][9]~q\;
\ALT_INV_adders_in1_reg[1][9]~q\ <= NOT \adders_in1_reg[1][9]~q\;
\ALT_INV_adders_in1_reg[1][7]~q\ <= NOT \adders_in1_reg[1][7]~q\;
\ALT_INV_adders_in0_reg[1][6]~q\ <= NOT \adders_in0_reg[1][6]~q\;
\ALT_INV_adders_in1_reg[1][6]~q\ <= NOT \adders_in1_reg[1][6]~q\;
\ALT_INV_adders_in0_reg[1][5]~q\ <= NOT \adders_in0_reg[1][5]~q\;
\ALT_INV_adders_in0_reg[1][3]~q\ <= NOT \adders_in0_reg[1][3]~q\;
\ALT_INV_adders_in0_reg[1][2]~q\ <= NOT \adders_in0_reg[1][2]~q\;
\ALT_INV_adders_out1[0][2]~q\ <= NOT \adders_out1[0][2]~q\;
\ALT_INV_adders_in0_reg[1][1]~q\ <= NOT \adders_in0_reg[1][1]~q\;
\ALT_INV_adders_out1[1][15]~q\ <= NOT \adders_out1[1][15]~q\;
\ALT_INV_adders_out0[1][15]~q\ <= NOT \adders_out0[1][15]~q\;
\ALT_INV_adders_out1[1][11]~q\ <= NOT \adders_out1[1][11]~q\;
\ALT_INV_adders_out0[1][10]~q\ <= NOT \adders_out0[1][10]~q\;
\ALT_INV_adders_out1[1][10]~q\ <= NOT \adders_out1[1][10]~q\;
\ALT_INV_adders_out0[1][9]~q\ <= NOT \adders_out0[1][9]~q\;
\ALT_INV_adders_out1[1][9]~q\ <= NOT \adders_out1[1][9]~q\;
\ALT_INV_adders_out0[1][8]~q\ <= NOT \adders_out0[1][8]~q\;
\ALT_INV_adders_out1[1][8]~q\ <= NOT \adders_out1[1][8]~q\;
\ALT_INV_adders_out0[1][7]~q\ <= NOT \adders_out0[1][7]~q\;
\ALT_INV_adders_out1[1][7]~q\ <= NOT \adders_out1[1][7]~q\;
\ALT_INV_adders_out0[1][6]~q\ <= NOT \adders_out0[1][6]~q\;
\ALT_INV_adders_out1[1][6]~q\ <= NOT \adders_out1[1][6]~q\;
\ALT_INV_adders_out0[1][5]~q\ <= NOT \adders_out0[1][5]~q\;
\ALT_INV_adders_out1[1][5]~q\ <= NOT \adders_out1[1][5]~q\;
\ALT_INV_adders_out0[1][4]~q\ <= NOT \adders_out0[1][4]~q\;
\ALT_INV_adders_out1[1][4]~q\ <= NOT \adders_out1[1][4]~q\;
\ALT_INV_adders_out0[1][3]~q\ <= NOT \adders_out0[1][3]~q\;
\ALT_INV_adders_out1[1][3]~q\ <= NOT \adders_out1[1][3]~q\;
\ALT_INV_adders_out0[1][2]~q\ <= NOT \adders_out0[1][2]~q\;
\ALT_INV_adders_out0[1][1]~q\ <= NOT \adders_out0[1][1]~q\;
\ALT_INV_adders_in1_reg[0][1]~q\ <= NOT \adders_in1_reg[0][1]~q\;
\ALT_INV_adders_in1_reg[1][2]~q\ <= NOT \adders_in1_reg[1][2]~q\;
\ALT_INV_adders_out1[0][1]~q\ <= NOT \adders_out1[0][1]~q\;
ALT_INV_w61_0(14) <= NOT w61_0(14);
ALT_INV_w61_0(13) <= NOT w61_0(13);
\ALT_INV_adders_in0_reg[2][12]~q\ <= NOT \adders_in0_reg[2][12]~q\;
ALT_INV_w61_0(12) <= NOT w61_0(12);
\ALT_INV_adders_in1_reg[2][12]~q\ <= NOT \adders_in1_reg[2][12]~q\;
\ALT_INV_adders_in0_reg[2][10]~q\ <= NOT \adders_in0_reg[2][10]~q\;
ALT_INV_w61_0(10) <= NOT w61_0(10);
\ALT_INV_adders_in1_reg[2][10]~q\ <= NOT \adders_in1_reg[2][10]~q\;
ALT_INV_w61_0(9) <= NOT w61_0(9);
\ALT_INV_adders_in0_reg[2][8]~q\ <= NOT \adders_in0_reg[2][8]~q\;
ALT_INV_w61_0(8) <= NOT w61_0(8);
\ALT_INV_adders_in1_reg[2][8]~q\ <= NOT \adders_in1_reg[2][8]~q\;
\ALT_INV_adders_in0_reg[2][7]~q\ <= NOT \adders_in0_reg[2][7]~q\;
\ALT_INV_adders_in0_reg[2][6]~q\ <= NOT \adders_in0_reg[2][6]~q\;
\ALT_INV_adders_in1_reg[2][6]~q\ <= NOT \adders_in1_reg[2][6]~q\;
\ALT_INV_adders_in0_reg[2][5]~q\ <= NOT \adders_in0_reg[2][5]~q\;
ALT_INV_w61_0(5) <= NOT w61_0(5);
\ALT_INV_adders_in1_reg[2][5]~q\ <= NOT \adders_in1_reg[2][5]~q\;
\ALT_INV_adders_in0_reg[2][4]~q\ <= NOT \adders_in0_reg[2][4]~q\;
ALT_INV_w61_0(4) <= NOT w61_0(4);
ALT_INV_w61_0(3) <= NOT w61_0(3);
\ALT_INV_adders_in1_reg[2][3]~q\ <= NOT \adders_in1_reg[2][3]~q\;
\ALT_INV_adders_out1[1][2]~q\ <= NOT \adders_out1[1][2]~q\;
\ALT_INV_adders_in0_reg[2][1]~q\ <= NOT \adders_in0_reg[2][1]~q\;
ALT_INV_w61_0(1) <= NOT w61_0(1);
\ALT_INV_multipliers_out0_reg[3][15]~q\ <= NOT \multipliers_out0_reg[3][15]~q\;
\ALT_INV_adders_out1[2][15]~q\ <= NOT \adders_out1[2][15]~q\;
\ALT_INV_multipliers_out0_reg[3][13]~q\ <= NOT \multipliers_out0_reg[3][13]~q\;
\ALT_INV_adders_out1[2][13]~q\ <= NOT \adders_out1[2][13]~q\;
\ALT_INV_adders_out0[2][15]~q\ <= NOT \adders_out0[2][15]~q\;
\ALT_INV_multipliers_out0_reg[3][12]~q\ <= NOT \multipliers_out0_reg[3][12]~q\;
\ALT_INV_adders_out1[2][12]~q\ <= NOT \adders_out1[2][12]~q\;
\ALT_INV_adders_out0[2][11]~q\ <= NOT \adders_out0[2][11]~q\;
\ALT_INV_multipliers_out0_reg[3][11]~q\ <= NOT \multipliers_out0_reg[3][11]~q\;
\ALT_INV_adders_out1[2][11]~q\ <= NOT \adders_out1[2][11]~q\;
\ALT_INV_adders_out0[2][10]~q\ <= NOT \adders_out0[2][10]~q\;
\ALT_INV_multipliers_out0_reg[3][10]~q\ <= NOT \multipliers_out0_reg[3][10]~q\;
\ALT_INV_adders_out1[2][10]~q\ <= NOT \adders_out1[2][10]~q\;
\ALT_INV_adders_out0[2][9]~q\ <= NOT \adders_out0[2][9]~q\;
\ALT_INV_multipliers_out0_reg[3][9]~q\ <= NOT \multipliers_out0_reg[3][9]~q\;
\ALT_INV_adders_out1[2][9]~q\ <= NOT \adders_out1[2][9]~q\;
\ALT_INV_adders_out0[2][8]~q\ <= NOT \adders_out0[2][8]~q\;
\ALT_INV_multipliers_out0_reg[3][8]~q\ <= NOT \multipliers_out0_reg[3][8]~q\;
\ALT_INV_adders_out1[2][8]~q\ <= NOT \adders_out1[2][8]~q\;
\ALT_INV_adders_out0[2][7]~q\ <= NOT \adders_out0[2][7]~q\;
\ALT_INV_multipliers_out0_reg[3][7]~q\ <= NOT \multipliers_out0_reg[3][7]~q\;
\ALT_INV_adders_out1[2][7]~q\ <= NOT \adders_out1[2][7]~q\;
\ALT_INV_adders_out0[2][6]~q\ <= NOT \adders_out0[2][6]~q\;
\ALT_INV_multipliers_out0_reg[3][6]~q\ <= NOT \multipliers_out0_reg[3][6]~q\;
\ALT_INV_adders_out1[2][6]~q\ <= NOT \adders_out1[2][6]~q\;
\ALT_INV_adders_out0[2][5]~q\ <= NOT \adders_out0[2][5]~q\;
\ALT_INV_multipliers_out0_reg[3][5]~q\ <= NOT \multipliers_out0_reg[3][5]~q\;
\ALT_INV_adders_out1[2][5]~q\ <= NOT \adders_out1[2][5]~q\;
\ALT_INV_adders_out0[2][4]~q\ <= NOT \adders_out0[2][4]~q\;
\ALT_INV_multipliers_out0_reg[3][4]~q\ <= NOT \multipliers_out0_reg[3][4]~q\;
\ALT_INV_adders_out1[2][4]~q\ <= NOT \adders_out1[2][4]~q\;
\ALT_INV_adders_out0[2][3]~q\ <= NOT \adders_out0[2][3]~q\;
\ALT_INV_multipliers_out0_reg[3][3]~q\ <= NOT \multipliers_out0_reg[3][3]~q\;
\ALT_INV_adders_out1[2][3]~q\ <= NOT \adders_out1[2][3]~q\;
\ALT_INV_adders_out0[2][2]~q\ <= NOT \adders_out0[2][2]~q\;
\ALT_INV_multipliers_out0_reg[3][2]~q\ <= NOT \multipliers_out0_reg[3][2]~q\;
\ALT_INV_adders_out0[2][1]~q\ <= NOT \adders_out0[2][1]~q\;
\ALT_INV_multipliers_out0_reg[3][1]~q\ <= NOT \multipliers_out0_reg[3][1]~q\;
\ALT_INV_adders_out0[1][0]~q\ <= NOT \adders_out0[1][0]~q\;
\ALT_INV_adders_in1_reg[2][2]~q\ <= NOT \adders_in1_reg[2][2]~q\;
\ALT_INV_adders_in0_reg[3][15]~q\ <= NOT \adders_in0_reg[3][15]~q\;
\ALT_INV_adders_in1_reg[3][15]~q\ <= NOT \adders_in1_reg[3][15]~q\;
\ALT_INV_adders_in0_reg[3][14]~q\ <= NOT \adders_in0_reg[3][14]~q\;
\ALT_INV_adders_in1_reg[3][14]~q\ <= NOT \adders_in1_reg[3][14]~q\;
\ALT_INV_adders_in0_reg[3][13]~q\ <= NOT \adders_in0_reg[3][13]~q\;
\ALT_INV_adders_in1_reg[3][13]~q\ <= NOT \adders_in1_reg[3][13]~q\;
\ALT_INV_adders_in1_reg[3][12]~q\ <= NOT \adders_in1_reg[3][12]~q\;
ALT_INV_w5_1(9) <= NOT w5_1(9);
\ALT_INV_adders_in0_reg[3][11]~q\ <= NOT \adders_in0_reg[3][11]~q\;
\ALT_INV_adders_in0_reg[3][10]~q\ <= NOT \adders_in0_reg[3][10]~q\;
\ALT_INV_adders_in1_reg[3][10]~q\ <= NOT \adders_in1_reg[3][10]~q\;

-- Location: IOOBUF_X89_Y25_N56
\Dout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(0));

-- Location: IOOBUF_X89_Y20_N62
\Dout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(1));

-- Location: IOOBUF_X89_Y16_N22
\Dout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(2));

-- Location: IOOBUF_X80_Y0_N53
\Dout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(3));

-- Location: IOOBUF_X89_Y15_N56
\Dout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(4));

-- Location: IOOBUF_X89_Y21_N5
\Dout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(5));

-- Location: IOOBUF_X40_Y81_N36
\Dout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(6));

-- Location: IOOBUF_X89_Y21_N39
\Dout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(7));

-- Location: IOOBUF_X89_Y23_N39
\Dout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(8));

-- Location: IOOBUF_X89_Y23_N56
\Dout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(9));

-- Location: IOOBUF_X89_Y20_N79
\Dout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(10));

-- Location: IOOBUF_X89_Y25_N39
\Dout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(11));

-- Location: IOOBUF_X80_Y0_N36
\Dout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(12));

-- Location: IOOBUF_X89_Y16_N56
\Dout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(13));

-- Location: IOOBUF_X89_Y16_N39
\Dout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(14));

-- Location: IOOBUF_X89_Y23_N22
\Dout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dout[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Dout(15));

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: IOIBUF_X89_Y20_N44
\Din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: MLABCELL_X82_Y32_N27
\Din0_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Din0_reg[0]~feeder_combout\ = ( \Din[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Din[0]~input_o\,
	combout => \Din0_reg[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y23_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G8
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: MLABCELL_X82_Y34_N0
\Add21~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~125_sumout\ = SUM(( \phase_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add21~126\ = CARRY(( \phase_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add21~125_sumout\,
	cout => \Add21~126\);

-- Location: LABCELL_X81_Y35_N12
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X82_Y34_N19
\phase_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~1_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(6));

-- Location: FF_X82_Y34_N13
\phase_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(4));

-- Location: FF_X82_Y34_N16
\phase_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(5));

-- Location: FF_X82_Y34_N4
\phase_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(1));

-- Location: LABCELL_X83_Y34_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !phase_counter(3) & ( !phase_counter(1) & ( (!phase_counter(2) & (!phase_counter(6) & (!phase_counter(4) & !phase_counter(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(2),
	datab => ALT_INV_phase_counter(6),
	datac => ALT_INV_phase_counter(4),
	datad => ALT_INV_phase_counter(5),
	datae => ALT_INV_phase_counter(3),
	dataf => ALT_INV_phase_counter(1),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X82_Y34_N45
\Add21~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~61_sumout\ = SUM(( phase_counter(15) ) + ( VCC ) + ( \Add21~66\ ))
-- \Add21~62\ = CARRY(( phase_counter(15) ) + ( VCC ) + ( \Add21~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_phase_counter(15),
	cin => \Add21~66\,
	sumout => \Add21~61_sumout\,
	cout => \Add21~62\);

-- Location: MLABCELL_X82_Y34_N48
\Add21~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~57_sumout\ = SUM(( phase_counter(16) ) + ( VCC ) + ( \Add21~62\ ))
-- \Add21~58\ = CARRY(( phase_counter(16) ) + ( VCC ) + ( \Add21~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(16),
	cin => \Add21~62\,
	sumout => \Add21~57_sumout\,
	cout => \Add21~58\);

-- Location: FF_X82_Y34_N50
\phase_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~57_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(16));

-- Location: MLABCELL_X82_Y34_N51
\Add21~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~53_sumout\ = SUM(( \phase_counter[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~58\ ))
-- \Add21~54\ = CARRY(( \phase_counter[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[17]~DUPLICATE_q\,
	cin => \Add21~58\,
	sumout => \Add21~53_sumout\,
	cout => \Add21~54\);

-- Location: FF_X82_Y34_N52
\phase_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~53_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[17]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N54
\Add21~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~49_sumout\ = SUM(( phase_counter(18) ) + ( VCC ) + ( \Add21~54\ ))
-- \Add21~50\ = CARRY(( phase_counter(18) ) + ( VCC ) + ( \Add21~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(18),
	cin => \Add21~54\,
	sumout => \Add21~49_sumout\,
	cout => \Add21~50\);

-- Location: FF_X82_Y34_N56
\phase_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~49_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(18));

-- Location: MLABCELL_X82_Y34_N57
\Add21~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~117_sumout\ = SUM(( \phase_counter[19]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~50\ ))
-- \Add21~118\ = CARRY(( \phase_counter[19]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_phase_counter[19]~DUPLICATE_q\,
	cin => \Add21~50\,
	sumout => \Add21~117_sumout\,
	cout => \Add21~118\);

-- Location: FF_X82_Y34_N59
\phase_counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~117_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[19]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y33_N0
\Add21~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~113_sumout\ = SUM(( phase_counter(20) ) + ( VCC ) + ( \Add21~118\ ))
-- \Add21~114\ = CARRY(( phase_counter(20) ) + ( VCC ) + ( \Add21~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(20),
	cin => \Add21~118\,
	sumout => \Add21~113_sumout\,
	cout => \Add21~114\);

-- Location: FF_X82_Y33_N2
\phase_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~113_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(20));

-- Location: MLABCELL_X82_Y33_N3
\Add21~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~109_sumout\ = SUM(( phase_counter(21) ) + ( VCC ) + ( \Add21~114\ ))
-- \Add21~110\ = CARRY(( phase_counter(21) ) + ( VCC ) + ( \Add21~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(21),
	cin => \Add21~114\,
	sumout => \Add21~109_sumout\,
	cout => \Add21~110\);

-- Location: FF_X82_Y33_N5
\phase_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~109_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(21));

-- Location: MLABCELL_X82_Y33_N6
\Add21~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~105_sumout\ = SUM(( phase_counter(22) ) + ( VCC ) + ( \Add21~110\ ))
-- \Add21~106\ = CARRY(( phase_counter(22) ) + ( VCC ) + ( \Add21~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_phase_counter(22),
	cin => \Add21~110\,
	sumout => \Add21~105_sumout\,
	cout => \Add21~106\);

-- Location: FF_X82_Y33_N8
\phase_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~105_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(22));

-- Location: MLABCELL_X82_Y33_N9
\Add21~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~101_sumout\ = SUM(( phase_counter(23) ) + ( VCC ) + ( \Add21~106\ ))
-- \Add21~102\ = CARRY(( phase_counter(23) ) + ( VCC ) + ( \Add21~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(23),
	cin => \Add21~106\,
	sumout => \Add21~101_sumout\,
	cout => \Add21~102\);

-- Location: FF_X82_Y33_N10
\phase_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~101_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(23));

-- Location: MLABCELL_X82_Y33_N12
\Add21~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~97_sumout\ = SUM(( phase_counter(24) ) + ( VCC ) + ( \Add21~102\ ))
-- \Add21~98\ = CARRY(( phase_counter(24) ) + ( VCC ) + ( \Add21~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_phase_counter(24),
	cin => \Add21~102\,
	sumout => \Add21~97_sumout\,
	cout => \Add21~98\);

-- Location: FF_X82_Y33_N14
\phase_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~97_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(24));

-- Location: MLABCELL_X82_Y33_N15
\Add21~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~93_sumout\ = SUM(( phase_counter(25) ) + ( VCC ) + ( \Add21~98\ ))
-- \Add21~94\ = CARRY(( phase_counter(25) ) + ( VCC ) + ( \Add21~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(25),
	cin => \Add21~98\,
	sumout => \Add21~93_sumout\,
	cout => \Add21~94\);

-- Location: FF_X82_Y33_N17
\phase_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~93_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(25));

-- Location: MLABCELL_X82_Y33_N18
\Add21~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~89_sumout\ = SUM(( phase_counter(26) ) + ( VCC ) + ( \Add21~94\ ))
-- \Add21~90\ = CARRY(( phase_counter(26) ) + ( VCC ) + ( \Add21~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(26),
	cin => \Add21~94\,
	sumout => \Add21~89_sumout\,
	cout => \Add21~90\);

-- Location: FF_X82_Y33_N20
\phase_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~89_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(26));

-- Location: MLABCELL_X82_Y33_N21
\Add21~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~85_sumout\ = SUM(( phase_counter(27) ) + ( VCC ) + ( \Add21~90\ ))
-- \Add21~86\ = CARRY(( phase_counter(27) ) + ( VCC ) + ( \Add21~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(27),
	cin => \Add21~90\,
	sumout => \Add21~85_sumout\,
	cout => \Add21~86\);

-- Location: FF_X82_Y33_N23
\phase_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~85_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(27));

-- Location: MLABCELL_X82_Y33_N24
\Add21~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~81_sumout\ = SUM(( phase_counter(28) ) + ( VCC ) + ( \Add21~86\ ))
-- \Add21~82\ = CARRY(( phase_counter(28) ) + ( VCC ) + ( \Add21~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(28),
	cin => \Add21~86\,
	sumout => \Add21~81_sumout\,
	cout => \Add21~82\);

-- Location: FF_X82_Y33_N26
\phase_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~81_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(28));

-- Location: MLABCELL_X82_Y33_N27
\Add21~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~77_sumout\ = SUM(( phase_counter(29) ) + ( VCC ) + ( \Add21~82\ ))
-- \Add21~78\ = CARRY(( phase_counter(29) ) + ( VCC ) + ( \Add21~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(29),
	cin => \Add21~82\,
	sumout => \Add21~77_sumout\,
	cout => \Add21~78\);

-- Location: FF_X82_Y33_N29
\phase_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~77_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(29));

-- Location: MLABCELL_X82_Y33_N30
\Add21~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~73_sumout\ = SUM(( phase_counter(30) ) + ( VCC ) + ( \Add21~78\ ))
-- \Add21~74\ = CARRY(( phase_counter(30) ) + ( VCC ) + ( \Add21~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_phase_counter(30),
	cin => \Add21~78\,
	sumout => \Add21~73_sumout\,
	cout => \Add21~74\);

-- Location: FF_X82_Y33_N32
\phase_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~73_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(30));

-- Location: MLABCELL_X82_Y33_N33
\Add21~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~121_sumout\ = SUM(( phase_counter(31) ) + ( VCC ) + ( \Add21~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(31),
	cin => \Add21~74\,
	sumout => \Add21~121_sumout\);

-- Location: FF_X82_Y33_N35
\phase_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~121_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(31));

-- Location: FF_X82_Y34_N37
\phase_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(12));

-- Location: FF_X82_Y34_N34
\phase_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(11));

-- Location: FF_X82_Y34_N25
\phase_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(8));

-- Location: FF_X82_Y34_N28
\phase_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~37_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(9));

-- Location: FF_X82_Y34_N22
\phase_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~45_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(7));

-- Location: LABCELL_X83_Y34_N57
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !phase_counter(7) & ( !phase_counter(10) & ( (!phase_counter(12) & (!phase_counter(11) & (!phase_counter(8) & !phase_counter(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(12),
	datab => ALT_INV_phase_counter(11),
	datac => ALT_INV_phase_counter(8),
	datad => ALT_INV_phase_counter(9),
	datae => ALT_INV_phase_counter(7),
	dataf => ALT_INV_phase_counter(10),
	combout => \Equal0~1_combout\);

-- Location: FF_X82_Y34_N58
\phase_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~117_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(19));

-- Location: MLABCELL_X82_Y33_N54
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !phase_counter(23) & ( !phase_counter(19) & ( (!phase_counter(21) & (!phase_counter(22) & (!phase_counter(20) & !phase_counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(21),
	datab => ALT_INV_phase_counter(22),
	datac => ALT_INV_phase_counter(20),
	datad => ALT_INV_phase_counter(24),
	datae => ALT_INV_phase_counter(23),
	dataf => ALT_INV_phase_counter(19),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X82_Y33_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !phase_counter(27) & ( !phase_counter(26) & ( (!phase_counter(29) & (!phase_counter(25) & (!phase_counter(28) & !phase_counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(29),
	datab => ALT_INV_phase_counter(25),
	datac => ALT_INV_phase_counter(28),
	datad => ALT_INV_phase_counter(30),
	datae => ALT_INV_phase_counter(27),
	dataf => ALT_INV_phase_counter(26),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X83_Y34_N12
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \Equal0~3_combout\ & ( (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X83_Y34_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \Equal0~7_combout\ & ( ((\Equal0~0_combout\ & !\phase_counter[0]~DUPLICATE_q\)) # (phase_counter(31)) ) ) # ( !\Equal0~7_combout\ & ( phase_counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_phase_counter(31),
	datad => \ALT_INV_phase_counter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X82_Y34_N2
\phase_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~125_sumout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N3
\Add21~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~21_sumout\ = SUM(( \phase_counter[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~126\ ))
-- \Add21~22\ = CARRY(( \phase_counter[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[1]~DUPLICATE_q\,
	cin => \Add21~126\,
	sumout => \Add21~21_sumout\,
	cout => \Add21~22\);

-- Location: FF_X82_Y34_N5
\phase_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N6
\Add21~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~17_sumout\ = SUM(( phase_counter(2) ) + ( VCC ) + ( \Add21~22\ ))
-- \Add21~18\ = CARRY(( phase_counter(2) ) + ( VCC ) + ( \Add21~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_phase_counter(2),
	cin => \Add21~22\,
	sumout => \Add21~17_sumout\,
	cout => \Add21~18\);

-- Location: FF_X82_Y34_N7
\phase_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~17_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(2));

-- Location: MLABCELL_X82_Y34_N9
\Add21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~13_sumout\ = SUM(( phase_counter(3) ) + ( VCC ) + ( \Add21~18\ ))
-- \Add21~14\ = CARRY(( phase_counter(3) ) + ( VCC ) + ( \Add21~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(3),
	cin => \Add21~18\,
	sumout => \Add21~13_sumout\,
	cout => \Add21~14\);

-- Location: FF_X82_Y34_N11
\phase_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~13_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(3));

-- Location: MLABCELL_X82_Y34_N12
\Add21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~9_sumout\ = SUM(( \phase_counter[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~14\ ))
-- \Add21~10\ = CARRY(( \phase_counter[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_phase_counter[4]~DUPLICATE_q\,
	cin => \Add21~14\,
	sumout => \Add21~9_sumout\,
	cout => \Add21~10\);

-- Location: FF_X82_Y34_N14
\phase_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[4]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N15
\Add21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~5_sumout\ = SUM(( \phase_counter[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~10\ ))
-- \Add21~6\ = CARRY(( \phase_counter[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_phase_counter[5]~DUPLICATE_q\,
	cin => \Add21~10\,
	sumout => \Add21~5_sumout\,
	cout => \Add21~6\);

-- Location: FF_X82_Y34_N17
\phase_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N18
\Add21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~1_sumout\ = SUM(( \phase_counter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~6\ ))
-- \Add21~2\ = CARRY(( \phase_counter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_phase_counter[6]~DUPLICATE_q\,
	cin => \Add21~6\,
	sumout => \Add21~1_sumout\,
	cout => \Add21~2\);

-- Location: FF_X82_Y34_N20
\phase_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~1_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[6]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N21
\Add21~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~45_sumout\ = SUM(( \phase_counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~2\ ))
-- \Add21~46\ = CARRY(( \phase_counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[7]~DUPLICATE_q\,
	cin => \Add21~2\,
	sumout => \Add21~45_sumout\,
	cout => \Add21~46\);

-- Location: FF_X82_Y34_N23
\phase_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~45_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[7]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N24
\Add21~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~41_sumout\ = SUM(( \phase_counter[8]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~46\ ))
-- \Add21~42\ = CARRY(( \phase_counter[8]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_phase_counter[8]~DUPLICATE_q\,
	cin => \Add21~46\,
	sumout => \Add21~41_sumout\,
	cout => \Add21~42\);

-- Location: FF_X82_Y34_N26
\phase_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[8]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N27
\Add21~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~37_sumout\ = SUM(( \phase_counter[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~42\ ))
-- \Add21~38\ = CARRY(( \phase_counter[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[9]~DUPLICATE_q\,
	cin => \Add21~42\,
	sumout => \Add21~37_sumout\,
	cout => \Add21~38\);

-- Location: FF_X82_Y34_N29
\phase_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~37_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[9]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N30
\Add21~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~33_sumout\ = SUM(( phase_counter(10) ) + ( VCC ) + ( \Add21~38\ ))
-- \Add21~34\ = CARRY(( phase_counter(10) ) + ( VCC ) + ( \Add21~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(10),
	cin => \Add21~38\,
	sumout => \Add21~33_sumout\,
	cout => \Add21~34\);

-- Location: FF_X82_Y34_N31
\phase_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(10));

-- Location: MLABCELL_X82_Y34_N33
\Add21~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~29_sumout\ = SUM(( \phase_counter[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~34\ ))
-- \Add21~30\ = CARRY(( \phase_counter[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_phase_counter[11]~DUPLICATE_q\,
	cin => \Add21~34\,
	sumout => \Add21~29_sumout\,
	cout => \Add21~30\);

-- Location: FF_X82_Y34_N35
\phase_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[11]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N36
\Add21~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~25_sumout\ = SUM(( \phase_counter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~30\ ))
-- \Add21~26\ = CARRY(( \phase_counter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[12]~DUPLICATE_q\,
	cin => \Add21~30\,
	sumout => \Add21~25_sumout\,
	cout => \Add21~26\);

-- Location: FF_X82_Y34_N38
\phase_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[12]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N39
\Add21~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~69_sumout\ = SUM(( phase_counter(13) ) + ( VCC ) + ( \Add21~26\ ))
-- \Add21~70\ = CARRY(( phase_counter(13) ) + ( VCC ) + ( \Add21~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(13),
	cin => \Add21~26\,
	sumout => \Add21~69_sumout\,
	cout => \Add21~70\);

-- Location: FF_X82_Y34_N41
\phase_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~69_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(13));

-- Location: MLABCELL_X82_Y34_N42
\Add21~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add21~65_sumout\ = SUM(( \phase_counter[14]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~70\ ))
-- \Add21~66\ = CARRY(( \phase_counter[14]~DUPLICATE_q\ ) + ( VCC ) + ( \Add21~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_phase_counter[14]~DUPLICATE_q\,
	cin => \Add21~70\,
	sumout => \Add21~65_sumout\,
	cout => \Add21~66\);

-- Location: FF_X82_Y34_N43
\phase_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~65_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phase_counter[14]~DUPLICATE_q\);

-- Location: FF_X82_Y34_N47
\phase_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~61_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(15));

-- Location: FF_X82_Y34_N44
\phase_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~65_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(14));

-- Location: FF_X82_Y34_N53
\phase_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~53_sumout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(17));

-- Location: LABCELL_X81_Y34_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !phase_counter(16) & ( !phase_counter(17) & ( (!phase_counter(15) & (!phase_counter(14) & (!phase_counter(13) & !phase_counter(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_phase_counter(15),
	datab => ALT_INV_phase_counter(14),
	datac => ALT_INV_phase_counter(13),
	datad => ALT_INV_phase_counter(18),
	datae => ALT_INV_phase_counter(16),
	dataf => ALT_INV_phase_counter(17),
	combout => \Equal0~2_combout\);

-- Location: FF_X82_Y34_N1
\phase_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add21~125_sumout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_counter(0));

-- Location: MLABCELL_X82_Y33_N42
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( phase_counter(0) & ( !phase_counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_phase_counter(31),
	dataf => ALT_INV_phase_counter(0),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X81_Y34_N45
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X82_Y32_N28
\Din0_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Din0_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(0));

-- Location: LABCELL_X77_Y33_N57
\w64_0[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[6]~feeder_combout\ = ( Din0_reg(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(0),
	combout => \w64_0[6]~feeder_combout\);

-- Location: FF_X77_Y33_N59
\w64_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(6));

-- Location: FF_X74_Y33_N55
\w3_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w64_0(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(0));

-- Location: LABCELL_X79_Y33_N51
\multipliers_out0_reg[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][0]~feeder_combout\ = ( w3_0(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(0),
	combout => \multipliers_out0_reg[0][0]~feeder_combout\);

-- Location: FF_X79_Y33_N53
\multipliers_out0_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][0]~q\);

-- Location: LABCELL_X81_Y32_N39
\w61_0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w61_0[0]~feeder_combout\ = ( w3_0(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(0),
	combout => \w61_0[0]~feeder_combout\);

-- Location: FF_X81_Y32_N40
\w61_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w61_0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(0));

-- Location: LABCELL_X81_Y34_N57
\multipliers_out0_reg[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][0]~feeder_combout\ = w61_0(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w61_0(0),
	combout => \multipliers_out0_reg[3][0]~feeder_combout\);

-- Location: FF_X81_Y34_N58
\multipliers_out0_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][0]~q\);

-- Location: FF_X79_Y33_N52
\multipliers_out0_reg[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][0]~DUPLICATE_q\);

-- Location: FF_X79_Y32_N47
\adders_in0_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][0]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][0]~q\);

-- Location: FF_X77_Y34_N16
\adders_out0[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][0]~q\);

-- Location: FF_X79_Y34_N41
\adders_in0_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][0]~q\);

-- Location: FF_X79_Y34_N50
\adders_out0[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[1][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][0]~q\);

-- Location: LABCELL_X79_Y34_N0
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( \multipliers_out0_reg[0][0]~q\ ) + ( \adders_out0[1][0]~q\ ) + ( !VCC ))
-- \Add8~2\ = CARRY(( \multipliers_out0_reg[0][0]~q\ ) + ( \adders_out0[1][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[1][0]~q\,
	datac => \ALT_INV_multipliers_out0_reg[0][0]~q\,
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X79_Y34_N1
\adders_in0_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][0]~q\);

-- Location: FF_X80_Y35_N50
\adders_out0[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[2][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][0]~q\);

-- Location: LABCELL_X79_Y35_N0
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( \adders_out0[2][0]~q\ ) + ( \multipliers_out0_reg[3][0]~q\ ) + ( !VCC ))
-- \Add9~2\ = CARRY(( \adders_out0[2][0]~q\ ) + ( \multipliers_out0_reg[3][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][0]~q\,
	datad => \ALT_INV_adders_out0[2][0]~q\,
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: FF_X79_Y35_N2
\adders_in0_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][0]~q\);

-- Location: FF_X80_Y33_N44
\adders_out0[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[3][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][0]~q\);

-- Location: LABCELL_X79_Y33_N0
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( \adders_out0[3][0]~q\ ) + ( \multipliers_out0_reg[0][0]~q\ ) + ( !VCC ))
-- \Add10~2\ = CARRY(( \adders_out0[3][0]~q\ ) + ( \multipliers_out0_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][0]~q\,
	datad => \ALT_INV_adders_out0[3][0]~q\,
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: FF_X79_Y33_N1
\adders_in0_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][0]~q\);

-- Location: LABCELL_X81_Y32_N30
\adders_out0[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][0]~feeder_combout\ = ( \adders_in0_reg[4][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][0]~q\,
	combout => \adders_out0[4][0]~feeder_combout\);

-- Location: FF_X81_Y32_N32
\adders_out0[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][0]~q\);

-- Location: LABCELL_X81_Y32_N36
\adders_in0_reg[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[5][0]~feeder_combout\ = \adders_out0[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[4][0]~q\,
	combout => \adders_in0_reg[5][0]~feeder_combout\);

-- Location: FF_X81_Y32_N38
\adders_in0_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[5][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][0]~q\);

-- Location: FF_X81_Y32_N35
\adders_out0[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][0]~q\);

-- Location: LABCELL_X80_Y32_N0
\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( \multipliers_out0_reg[0][0]~DUPLICATE_q\ ) + ( \adders_out0[5][0]~q\ ) + ( !VCC ))
-- \Add12~2\ = CARRY(( \multipliers_out0_reg[0][0]~DUPLICATE_q\ ) + ( \adders_out0[5][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[5][0]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\);

-- Location: FF_X80_Y32_N1
\adders_in0_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][0]~q\);

-- Location: LABCELL_X81_Y30_N51
\adders_out0[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][0]~feeder_combout\ = ( \adders_in0_reg[6][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[6][0]~q\,
	combout => \adders_out0[6][0]~feeder_combout\);

-- Location: FF_X81_Y30_N53
\adders_out0[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][0]~q\);

-- Location: FF_X81_Y30_N47
\adders_in0_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[6][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][0]~q\);

-- Location: FF_X81_Y30_N50
\adders_out0[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][0]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][0]~q\);

-- Location: FF_X81_Y30_N44
\y0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(0));

-- Location: FF_X81_Y30_N13
\Dout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => y0(0),
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[0]~reg0_q\);

-- Location: IOIBUF_X89_Y21_N21
\Din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: FF_X82_Y32_N13
\Din0_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(1));

-- Location: LABCELL_X77_Y33_N48
\w64_0[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[7]~feeder_combout\ = ( Din0_reg(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(1),
	combout => \w64_0[7]~feeder_combout\);

-- Location: FF_X77_Y33_N50
\w64_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(7));

-- Location: LABCELL_X77_Y33_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !w64_0(7) ) + ( !w64_0(6) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !w64_0(7) ) + ( !w64_0(6) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w64_0(6),
	datac => ALT_INV_w64_0(7),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X77_Y33_N1
\w3_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(1));

-- Location: LABCELL_X80_Y33_N39
\multipliers_out0_reg[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][1]~feeder_combout\ = ( w3_0(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(1),
	combout => \multipliers_out0_reg[0][1]~feeder_combout\);

-- Location: FF_X80_Y33_N40
\multipliers_out0_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][1]~q\);

-- Location: FF_X74_Y33_N56
\w3_0[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w64_0(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w3_0[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y33_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !w3_0(1) ) + ( !\w3_0[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !w3_0(1) ) + ( !\w3_0[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_w3_0[0]~DUPLICATE_q\,
	datad => ALT_INV_w3_0(1),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X74_Y33_N1
\w61_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(1));

-- Location: MLABCELL_X82_Y35_N9
\multipliers_out0_reg[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][1]~feeder_combout\ = ( w61_0(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(1),
	combout => \multipliers_out0_reg[3][1]~feeder_combout\);

-- Location: FF_X82_Y35_N10
\multipliers_out0_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][1]~q\);

-- Location: FF_X80_Y34_N46
\adders_in0_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][1]~q\);

-- Location: FF_X78_Y34_N38
\adders_out0[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][1]~q\);

-- Location: MLABCELL_X78_Y34_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \adders_out0[0][1]~q\ ) + ( \multipliers_out0_reg[0][0]~q\ ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \adders_out0[0][1]~q\ ) + ( \multipliers_out0_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][0]~q\,
	datad => \ALT_INV_adders_out0[0][1]~q\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X78_Y34_N1
\adders_in0_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][1]~q\);

-- Location: LABCELL_X79_Y34_N51
\adders_out0[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][1]~feeder_combout\ = \adders_in0_reg[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in0_reg[1][1]~q\,
	combout => \adders_out0[1][1]~feeder_combout\);

-- Location: FF_X79_Y34_N52
\adders_out0[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][1]~q\);

-- Location: LABCELL_X79_Y34_N3
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( \multipliers_out0_reg[0][1]~q\ ) + ( \adders_out0[1][1]~q\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( \multipliers_out0_reg[0][1]~q\ ) + ( \adders_out0[1][1]~q\ ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[1][1]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][1]~q\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X79_Y34_N5
\adders_in0_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][1]~q\);

-- Location: LABCELL_X80_Y35_N36
\adders_out0[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][1]~feeder_combout\ = ( \adders_in0_reg[2][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][1]~q\,
	combout => \adders_out0[2][1]~feeder_combout\);

-- Location: FF_X80_Y35_N38
\adders_out0[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][1]~q\);

-- Location: LABCELL_X79_Y35_N3
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( \adders_out0[2][1]~q\ ) + ( \multipliers_out0_reg[3][1]~q\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( \adders_out0[2][1]~q\ ) + ( \multipliers_out0_reg[3][1]~q\ ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][1]~q\,
	datad => \ALT_INV_adders_out0[2][1]~q\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: FF_X79_Y35_N4
\adders_in0_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][1]~q\);

-- Location: LABCELL_X80_Y33_N57
\adders_out0[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][1]~feeder_combout\ = ( \adders_in0_reg[3][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][1]~q\,
	combout => \adders_out0[3][1]~feeder_combout\);

-- Location: FF_X80_Y33_N59
\adders_out0[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][1]~q\);

-- Location: LABCELL_X79_Y33_N3
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( \multipliers_out0_reg[0][1]~q\ ) + ( \adders_out0[3][1]~q\ ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( \multipliers_out0_reg[0][1]~q\ ) + ( \adders_out0[3][1]~q\ ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][1]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][1]~q\,
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: FF_X79_Y33_N4
\adders_in0_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][1]~q\);

-- Location: LABCELL_X80_Y33_N51
\adders_out0[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][1]~feeder_combout\ = ( \adders_in0_reg[4][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][1]~q\,
	combout => \adders_out0[4][1]~feeder_combout\);

-- Location: FF_X80_Y33_N52
\adders_out0[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][1]~q\);

-- Location: LABCELL_X80_Y34_N0
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( \multipliers_out0_reg[0][0]~q\ ) + ( \adders_out0[4][1]~q\ ) + ( !VCC ))
-- \Add11~2\ = CARRY(( \multipliers_out0_reg[0][0]~q\ ) + ( \adders_out0[4][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][0]~q\,
	datac => \ALT_INV_adders_out0[4][1]~q\,
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: FF_X80_Y34_N1
\adders_in0_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][1]~q\);

-- Location: LABCELL_X81_Y34_N12
\adders_out0[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][1]~feeder_combout\ = ( \adders_in0_reg[5][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][1]~q\,
	combout => \adders_out0[5][1]~feeder_combout\);

-- Location: FF_X81_Y34_N13
\adders_out0[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][1]~q\);

-- Location: LABCELL_X80_Y32_N3
\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( \adders_out0[5][1]~q\ ) + ( \multipliers_out0_reg[0][1]~q\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( \adders_out0[5][1]~q\ ) + ( \multipliers_out0_reg[0][1]~q\ ) + ( \Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][1]~q\,
	datad => \ALT_INV_adders_out0[5][1]~q\,
	cin => \Add12~2\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

-- Location: FF_X80_Y32_N5
\adders_in0_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][1]~q\);

-- Location: FF_X79_Y32_N53
\adders_out0[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][1]~q\);

-- Location: LABCELL_X79_Y32_N0
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( \multipliers_out0_reg[0][0]~DUPLICATE_q\ ) + ( \adders_out0[6][1]~q\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( \multipliers_out0_reg[0][0]~DUPLICATE_q\ ) + ( \adders_out0[6][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][1]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

-- Location: FF_X79_Y32_N1
\adders_in0_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][1]~q\);

-- Location: LABCELL_X80_Y31_N48
\adders_out0[7][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][1]~feeder_combout\ = ( \adders_in0_reg[7][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][1]~q\,
	combout => \adders_out0[7][1]~feeder_combout\);

-- Location: FF_X80_Y31_N49
\adders_out0[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][1]~q\);

-- Location: FF_X80_Y30_N53
\y0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(1));

-- Location: MLABCELL_X82_Y32_N0
\Din1_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Din1_reg[0]~feeder_combout\ = \Din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Din[0]~input_o\,
	combout => \Din1_reg[0]~feeder_combout\);

-- Location: FF_X82_Y32_N1
\Din1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Din1_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(0));

-- Location: LABCELL_X83_Y31_N57
\w4_1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w4_1[2]~feeder_combout\ = ( Din1_reg(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din1_reg(0),
	combout => \w4_1[2]~feeder_combout\);

-- Location: FF_X83_Y31_N59
\w4_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w4_1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(2));

-- Location: MLABCELL_X84_Y33_N42
\w2n_1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w2n_1[1]~feeder_combout\ = ( w4_1(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w4_1(2),
	combout => \w2n_1[1]~feeder_combout\);

-- Location: FF_X84_Y33_N44
\w2n_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w2n_1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(1));

-- Location: FF_X84_Y33_N37
\multipliers_out1_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][1]~q\);

-- Location: FF_X84_Y32_N41
\adders_in1_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][1]~q\);

-- Location: LABCELL_X83_Y32_N51
\adders_out1[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[0][1]~feeder_combout\ = ( \adders_in1_reg[0][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[0][1]~q\,
	combout => \adders_out1[0][1]~feeder_combout\);

-- Location: FF_X83_Y32_N53
\adders_out1[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][1]~q\);

-- Location: LABCELL_X83_Y32_N0
\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[0][1]~q\ ) + ( !VCC ))
-- \Add14~2\ = CARRY(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	dataf => \ALT_INV_adders_out1[0][1]~q\,
	cin => GND,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

-- Location: FF_X83_Y32_N2
\adders_in1_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][1]~q\);

-- Location: FF_X82_Y32_N55
\adders_out1[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][1]~q\);

-- Location: FF_X82_Y32_N53
\adders_in1_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][1]~q\);

-- Location: FF_X82_Y32_N59
\adders_out1[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][1]~q\);

-- Location: FF_X82_Y32_N7
\adders_in1_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[2][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][1]~q\);

-- Location: FF_X83_Y33_N53
\adders_out1[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][1]~q\);

-- Location: LABCELL_X83_Y33_N0
\adders_in1_reg[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in1_reg[4][1]~feeder_combout\ = \adders_out1[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[3][1]~q\,
	combout => \adders_in1_reg[4][1]~feeder_combout\);

-- Location: FF_X83_Y33_N2
\adders_in1_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in1_reg[4][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][1]~q\);

-- Location: FF_X82_Y33_N37
\adders_out1[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][1]~q\);

-- Location: FF_X85_Y34_N47
\adders_in1_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[4][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][1]~q\);

-- Location: FF_X85_Y34_N50
\adders_out1[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][1]~q\);

-- Location: LABCELL_X85_Y34_N0
\Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~1_sumout\ = SUM(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[5][1]~q\ ) + ( !VCC ))
-- \Add19~2\ = CARRY(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[5][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][1]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	cin => GND,
	sumout => \Add19~1_sumout\,
	cout => \Add19~2\);

-- Location: FF_X85_Y34_N2
\adders_in1_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][1]~q\);

-- Location: FF_X84_Y34_N52
\adders_out1[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][1]~q\);

-- Location: MLABCELL_X87_Y34_N0
\Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~1_sumout\ = SUM(( \adders_out1[6][1]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))
-- \Add20~2\ = CARRY(( \adders_out1[6][1]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	datad => \ALT_INV_adders_out1[6][1]~q\,
	cin => GND,
	sumout => \Add20~1_sumout\,
	cout => \Add20~2\);

-- Location: FF_X87_Y34_N1
\adders_in1_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][1]~q\);

-- Location: FF_X81_Y30_N31
\adders_out1[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][1]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][1]~q\);

-- Location: LABCELL_X81_Y30_N9
\y1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[1]~feeder_combout\ = ( \adders_out1[7][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[7][1]~q\,
	combout => \y1[1]~feeder_combout\);

-- Location: FF_X81_Y30_N11
\y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(1));

-- Location: LABCELL_X80_Y30_N0
\Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~1_sumout\ = SUM(( y1(1) ) + ( y0(1) ) + ( !VCC ))
-- \Add22~2\ = CARRY(( y1(1) ) + ( y0(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y0(1),
	datad => ALT_INV_y1(1),
	cin => GND,
	sumout => \Add22~1_sumout\,
	cout => \Add22~2\);

-- Location: FF_X80_Y30_N1
\Dout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~1_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[1]~reg0_q\);

-- Location: FF_X82_Y32_N44
\Din1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(1));

-- Location: FF_X82_Y32_N50
\w4_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(3));

-- Location: MLABCELL_X84_Y34_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( !w4_1(2) ) + ( !w4_1(3) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( !w4_1(2) ) + ( !w4_1(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w4_1(3),
	datad => ALT_INV_w4_1(2),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X84_Y34_N2
\w2n_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(2));

-- Location: FF_X83_Y34_N20
\multipliers_out1_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][2]~q\);

-- Location: FF_X83_Y34_N19
\multipliers_out1_reg[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][2]~DUPLICATE_q\);

-- Location: FF_X83_Y33_N59
\adders_in1_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][2]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][2]~q\);

-- Location: FF_X83_Y33_N50
\adders_out1[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[0][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][2]~q\);

-- Location: MLABCELL_X84_Y31_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( !w4_1(3) ) + ( !w4_1(2) ) + ( !VCC ))
-- \Add4~2\ = CARRY(( !w4_1(3) ) + ( !w4_1(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(2),
	datad => ALT_INV_w4_1(3),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X84_Y31_N1
\w3_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(1));

-- Location: FF_X84_Y33_N49
\multipliers_out1_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][2]~q\);

-- Location: LABCELL_X83_Y32_N3
\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( \multipliers_out1_reg[1][2]~q\ ) + ( \adders_out1[0][2]~q\ ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( \multipliers_out1_reg[1][2]~q\ ) + ( \adders_out1[0][2]~q\ ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[0][2]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][2]~q\,
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

-- Location: FF_X83_Y32_N4
\adders_in1_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][2]~q\);

-- Location: MLABCELL_X84_Y32_N48
\adders_out1[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][2]~feeder_combout\ = ( \adders_in1_reg[1][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[1][2]~q\,
	combout => \adders_out1[1][2]~feeder_combout\);

-- Location: FF_X84_Y32_N50
\adders_out1[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][2]~q\);

-- Location: MLABCELL_X84_Y32_N0
\Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~1_sumout\ = SUM(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[1][2]~q\ ) + ( !VCC ))
-- \Add15~2\ = CARRY(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[1][2]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[1][2]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	cin => GND,
	sumout => \Add15~1_sumout\,
	cout => \Add15~2\);

-- Location: FF_X84_Y32_N1
\adders_in1_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][2]~q\);

-- Location: LABCELL_X81_Y33_N12
\adders_out1[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][2]~feeder_combout\ = ( \adders_in1_reg[2][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][2]~q\,
	combout => \adders_out1[2][2]~feeder_combout\);

-- Location: FF_X81_Y33_N13
\adders_out1[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][2]~q\);

-- Location: LABCELL_X83_Y33_N57
\adders_in1_reg[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in1_reg[3][2]~feeder_combout\ = ( \adders_out1[2][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[2][2]~q\,
	combout => \adders_in1_reg[3][2]~feeder_combout\);

-- Location: FF_X83_Y33_N58
\adders_in1_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in1_reg[3][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][2]~q\);

-- Location: LABCELL_X83_Y33_N18
\adders_out1[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][2]~feeder_combout\ = ( \adders_in1_reg[3][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][2]~q\,
	combout => \adders_out1[3][2]~feeder_combout\);

-- Location: FF_X83_Y33_N20
\adders_out1[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][2]~q\);

-- Location: FF_X83_Y33_N25
\adders_in1_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[3][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][2]~q\);

-- Location: LABCELL_X85_Y33_N57
\adders_out1[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][2]~feeder_combout\ = ( \adders_in1_reg[4][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][2]~q\,
	combout => \adders_out1[4][2]~feeder_combout\);

-- Location: FF_X85_Y33_N59
\adders_out1[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][2]~q\);

-- Location: LABCELL_X85_Y33_N0
\Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~1_sumout\ = SUM(( \adders_out1[4][2]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))
-- \Add18~2\ = CARRY(( \adders_out1[4][2]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	datad => \ALT_INV_adders_out1[4][2]~q\,
	cin => GND,
	sumout => \Add18~1_sumout\,
	cout => \Add18~2\);

-- Location: FF_X85_Y33_N1
\adders_in1_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][2]~q\);

-- Location: FF_X84_Y33_N52
\adders_out1[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][2]~q\);

-- Location: LABCELL_X85_Y34_N3
\Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~5_sumout\ = SUM(( \adders_out1[5][2]~q\ ) + ( \multipliers_out1_reg[1][2]~q\ ) + ( \Add19~2\ ))
-- \Add19~6\ = CARRY(( \adders_out1[5][2]~q\ ) + ( \multipliers_out1_reg[1][2]~q\ ) + ( \Add19~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[5][2]~q\,
	dataf => \ALT_INV_multipliers_out1_reg[1][2]~q\,
	cin => \Add19~2\,
	sumout => \Add19~5_sumout\,
	cout => \Add19~6\);

-- Location: FF_X85_Y34_N4
\adders_in1_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][2]~q\);

-- Location: FF_X84_Y34_N44
\adders_out1[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][2]~q\);

-- Location: MLABCELL_X87_Y34_N3
\Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~5_sumout\ = SUM(( \adders_out1[6][2]~q\ ) + ( \multipliers_out1_reg[0][2]~q\ ) + ( \Add20~2\ ))
-- \Add20~6\ = CARRY(( \adders_out1[6][2]~q\ ) + ( \multipliers_out1_reg[0][2]~q\ ) + ( \Add20~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][2]~q\,
	datad => \ALT_INV_adders_out1[6][2]~q\,
	cin => \Add20~2\,
	sumout => \Add20~5_sumout\,
	cout => \Add20~6\);

-- Location: FF_X87_Y34_N5
\adders_in1_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][2]~q\);

-- Location: LABCELL_X81_Y30_N39
\adders_out1[7][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][2]~feeder_combout\ = ( \adders_in1_reg[7][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][2]~q\,
	combout => \adders_out1[7][2]~feeder_combout\);

-- Location: FF_X81_Y30_N40
\adders_out1[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][2]~q\);

-- Location: LABCELL_X81_Y30_N24
\y1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[2]~feeder_combout\ = \adders_out1[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[7][2]~q\,
	combout => \y1[2]~feeder_combout\);

-- Location: FF_X81_Y30_N26
\y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(2));

-- Location: MLABCELL_X78_Y33_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !w64_0(7) ) + ( !w64_0(6) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !w64_0(7) ) + ( !w64_0(6) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(6),
	datad => ALT_INV_w64_0(7),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X78_Y33_N32
\w2n_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(2));

-- Location: MLABCELL_X78_Y34_N39
\multipliers_out0_reg[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[1][2]~feeder_combout\ = w2n_0(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w2n_0(2),
	combout => \multipliers_out0_reg[1][2]~feeder_combout\);

-- Location: FF_X78_Y34_N40
\multipliers_out0_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][2]~q\);

-- Location: IOIBUF_X22_Y81_N1
\Din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: FF_X77_Y34_N37
\Din0_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(2));

-- Location: MLABCELL_X78_Y32_N51
\w64_0[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[8]~feeder_combout\ = ( Din0_reg(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(2),
	combout => \w64_0[8]~feeder_combout\);

-- Location: FF_X78_Y32_N53
\w64_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(8));

-- Location: LABCELL_X77_Y33_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !w64_0(8) ) + ( w64_0(6) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !w64_0(8) ) + ( w64_0(6) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w64_0(6),
	datac => ALT_INV_w64_0(8),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X77_Y33_N4
\w3_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(2));

-- Location: LABCELL_X77_Y34_N33
\multipliers_out0_reg[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][2]~feeder_combout\ = ( w3_0(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(2),
	combout => \multipliers_out0_reg[0][2]~feeder_combout\);

-- Location: FF_X77_Y34_N34
\multipliers_out0_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][2]~q\);

-- Location: LABCELL_X75_Y32_N57
\adders_in0_reg[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[0][2]~feeder_combout\ = ( \multipliers_out0_reg[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out0_reg[0][2]~q\,
	combout => \adders_in0_reg[0][2]~feeder_combout\);

-- Location: FF_X75_Y32_N58
\adders_in0_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[0][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][2]~q\);

-- Location: FF_X78_Y34_N41
\adders_out0[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][2]~q\);

-- Location: MLABCELL_X78_Y34_N3
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \multipliers_out0_reg[1][2]~q\ ) + ( \adders_out0[0][2]~q\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \multipliers_out0_reg[1][2]~q\ ) + ( \adders_out0[0][2]~q\ ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[0][2]~q\,
	datac => \ALT_INV_multipliers_out0_reg[1][2]~q\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X78_Y34_N4
\adders_in0_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][2]~q\);

-- Location: LABCELL_X79_Y34_N54
\adders_out0[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][2]~feeder_combout\ = \adders_in0_reg[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[1][2]~q\,
	combout => \adders_out0[1][2]~feeder_combout\);

-- Location: FF_X79_Y34_N55
\adders_out0[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][2]~q\);

-- Location: LABCELL_X79_Y34_N6
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( \adders_out0[1][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( \adders_out0[1][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][2]~q\,
	datad => \ALT_INV_adders_out0[1][2]~q\,
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X79_Y34_N8
\adders_in0_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][2]~q\);

-- Location: FF_X80_Y35_N32
\adders_out0[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[2][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][2]~q\);

-- Location: LABCELL_X74_Y33_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !w3_0(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !w3_0(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_0(2),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X74_Y33_N4
\w61_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(2));

-- Location: FF_X78_Y34_N55
\multipliers_out0_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w61_0(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][2]~q\);

-- Location: LABCELL_X79_Y35_N6
\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( \multipliers_out0_reg[3][2]~q\ ) + ( \adders_out0[2][2]~q\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( \multipliers_out0_reg[3][2]~q\ ) + ( \adders_out0[2][2]~q\ ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[2][2]~q\,
	datad => \ALT_INV_multipliers_out0_reg[3][2]~q\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: FF_X79_Y35_N7
\adders_in0_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][2]~q\);

-- Location: LABCELL_X80_Y33_N0
\adders_out0[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][2]~feeder_combout\ = ( \adders_in0_reg[3][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][2]~q\,
	combout => \adders_out0[3][2]~feeder_combout\);

-- Location: FF_X80_Y33_N1
\adders_out0[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][2]~q\);

-- Location: LABCELL_X79_Y33_N6
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( \adders_out0[3][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( \adders_out0[3][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][2]~q\,
	datad => \ALT_INV_adders_out0[3][2]~q\,
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X79_Y33_N7
\adders_in0_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][2]~q\);

-- Location: LABCELL_X80_Y34_N54
\adders_out0[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][2]~feeder_combout\ = ( \adders_in0_reg[4][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][2]~q\,
	combout => \adders_out0[4][2]~feeder_combout\);

-- Location: FF_X80_Y34_N56
\adders_out0[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][2]~q\);

-- Location: LABCELL_X80_Y34_N3
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( \adders_out0[4][2]~q\ ) + ( \multipliers_out0_reg[1][2]~q\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( \adders_out0[4][2]~q\ ) + ( \multipliers_out0_reg[1][2]~q\ ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][2]~q\,
	datad => \ALT_INV_adders_out0[4][2]~q\,
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: FF_X80_Y34_N4
\adders_in0_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][2]~q\);

-- Location: LABCELL_X79_Y32_N57
\adders_out0[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][2]~feeder_combout\ = ( \adders_in0_reg[5][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][2]~q\,
	combout => \adders_out0[5][2]~feeder_combout\);

-- Location: FF_X79_Y32_N58
\adders_out0[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][2]~q\);

-- Location: LABCELL_X80_Y32_N6
\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( \adders_out0[5][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( \adders_out0[5][2]~q\ ) + ( \multipliers_out0_reg[0][2]~q\ ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][2]~q\,
	datad => \ALT_INV_adders_out0[5][2]~q\,
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

-- Location: FF_X80_Y32_N8
\adders_in0_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][2]~q\);

-- Location: FF_X80_Y32_N52
\adders_out0[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][2]~q\);

-- Location: LABCELL_X79_Y32_N3
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( \adders_out0[6][2]~q\ ) + ( \multipliers_out0_reg[1][2]~q\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( \adders_out0[6][2]~q\ ) + ( \multipliers_out0_reg[1][2]~q\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][2]~q\,
	datad => \ALT_INV_adders_out0[6][2]~q\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: FF_X79_Y32_N4
\adders_in0_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][2]~q\);

-- Location: FF_X80_Y31_N10
\adders_out0[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][2]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][2]~q\);

-- Location: LABCELL_X81_Y30_N54
\y0[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[2]~feeder_combout\ = ( \adders_out0[7][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][2]~q\,
	combout => \y0[2]~feeder_combout\);

-- Location: FF_X81_Y30_N56
\y0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(2));

-- Location: LABCELL_X80_Y30_N3
\Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~5_sumout\ = SUM(( y0(2) ) + ( y1(2) ) + ( \Add22~2\ ))
-- \Add22~6\ = CARRY(( y0(2) ) + ( y1(2) ) + ( \Add22~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(2),
	datad => ALT_INV_y0(2),
	cin => \Add22~2\,
	sumout => \Add22~5_sumout\,
	cout => \Add22~6\);

-- Location: FF_X80_Y30_N4
\Dout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~5_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[2]~reg0_q\);

-- Location: MLABCELL_X78_Y33_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !w64_0(8) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !w64_0(8) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(8),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X78_Y33_N34
\w2n_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(3));

-- Location: MLABCELL_X78_Y34_N45
\multipliers_out0_reg[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[1][3]~feeder_combout\ = w2n_0(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w2n_0(3),
	combout => \multipliers_out0_reg[1][3]~feeder_combout\);

-- Location: FF_X78_Y34_N46
\multipliers_out0_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][3]~q\);

-- Location: IOIBUF_X78_Y0_N1
\Din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: FF_X82_Y32_N16
\Din0_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(3));

-- Location: LABCELL_X73_Y32_N24
\w64_0[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[9]~feeder_combout\ = ( Din0_reg(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(3),
	combout => \w64_0[9]~feeder_combout\);

-- Location: FF_X73_Y32_N26
\w64_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(9));

-- Location: LABCELL_X77_Y33_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !w64_0(9) ) + ( w64_0(7) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !w64_0(9) ) + ( w64_0(7) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(7),
	datac => ALT_INV_w64_0(9),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X77_Y33_N7
\w3_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(3));

-- Location: LABCELL_X79_Y34_N42
\multipliers_out0_reg[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][3]~feeder_combout\ = w3_0(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_0(3),
	combout => \multipliers_out0_reg[0][3]~feeder_combout\);

-- Location: FF_X79_Y34_N44
\multipliers_out0_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][3]~q\);

-- Location: LABCELL_X74_Y33_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !w3_0(3) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !w3_0(3) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_0(3),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X74_Y33_N7
\w61_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(3));

-- Location: LABCELL_X77_Y34_N9
\multipliers_out0_reg[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][3]~feeder_combout\ = ( w61_0(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(3),
	combout => \multipliers_out0_reg[3][3]~feeder_combout\);

-- Location: FF_X77_Y34_N10
\multipliers_out0_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][3]~q\);

-- Location: LABCELL_X77_Y34_N42
\adders_in0_reg[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[0][3]~feeder_combout\ = ( \multipliers_out0_reg[0][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out0_reg[0][3]~q\,
	combout => \adders_in0_reg[0][3]~feeder_combout\);

-- Location: FF_X77_Y34_N44
\adders_in0_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][3]~q\);

-- Location: LABCELL_X77_Y34_N30
\adders_out0[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[0][3]~feeder_combout\ = \adders_in0_reg[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[0][3]~q\,
	combout => \adders_out0[0][3]~feeder_combout\);

-- Location: FF_X77_Y34_N31
\adders_out0[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][3]~q\);

-- Location: MLABCELL_X78_Y34_N6
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \multipliers_out0_reg[1][3]~q\ ) + ( \adders_out0[0][3]~q\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \multipliers_out0_reg[1][3]~q\ ) + ( \adders_out0[0][3]~q\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[0][3]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][3]~q\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X78_Y34_N8
\adders_in0_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][3]~q\);

-- Location: MLABCELL_X78_Y34_N42
\adders_out0[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][3]~feeder_combout\ = \adders_in0_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[1][3]~q\,
	combout => \adders_out0[1][3]~feeder_combout\);

-- Location: FF_X78_Y34_N43
\adders_out0[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][3]~q\);

-- Location: LABCELL_X79_Y34_N9
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( \adders_out0[1][3]~q\ ) + ( \multipliers_out0_reg[0][3]~q\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( \adders_out0[1][3]~q\ ) + ( \multipliers_out0_reg[0][3]~q\ ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][3]~q\,
	datad => \ALT_INV_adders_out0[1][3]~q\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X79_Y34_N10
\adders_in0_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][3]~q\);

-- Location: FF_X80_Y35_N17
\adders_out0[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[2][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][3]~q\);

-- Location: LABCELL_X79_Y35_N9
\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( \adders_out0[2][3]~q\ ) + ( \multipliers_out0_reg[3][3]~q\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( \adders_out0[2][3]~q\ ) + ( \multipliers_out0_reg[3][3]~q\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][3]~q\,
	datad => \ALT_INV_adders_out0[2][3]~q\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: FF_X79_Y35_N10
\adders_in0_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][3]~q\);

-- Location: LABCELL_X80_Y33_N21
\adders_out0[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][3]~feeder_combout\ = ( \adders_in0_reg[3][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][3]~q\,
	combout => \adders_out0[3][3]~feeder_combout\);

-- Location: FF_X80_Y33_N23
\adders_out0[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][3]~q\);

-- Location: LABCELL_X79_Y33_N9
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( \adders_out0[3][3]~q\ ) + ( \multipliers_out0_reg[0][3]~q\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( \adders_out0[3][3]~q\ ) + ( \multipliers_out0_reg[0][3]~q\ ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][3]~q\,
	datad => \ALT_INV_adders_out0[3][3]~q\,
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X79_Y33_N11
\adders_in0_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][3]~q\);

-- Location: FF_X81_Y34_N38
\adders_out0[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][3]~q\);

-- Location: LABCELL_X80_Y34_N6
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( \adders_out0[4][3]~q\ ) + ( \multipliers_out0_reg[1][3]~q\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( \adders_out0[4][3]~q\ ) + ( \multipliers_out0_reg[1][3]~q\ ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][3]~q\,
	datad => \ALT_INV_adders_out0[4][3]~q\,
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: FF_X80_Y34_N7
\adders_in0_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][3]~q\);

-- Location: FF_X81_Y34_N2
\adders_out0[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][3]~q\);

-- Location: LABCELL_X80_Y32_N9
\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( \multipliers_out0_reg[0][3]~q\ ) + ( \adders_out0[5][3]~q\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( \multipliers_out0_reg[0][3]~q\ ) + ( \adders_out0[5][3]~q\ ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][3]~q\,
	datac => \ALT_INV_adders_out0[5][3]~q\,
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

-- Location: FF_X80_Y32_N11
\adders_in0_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][3]~q\);

-- Location: FF_X80_Y32_N56
\adders_out0[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][3]~q\);

-- Location: LABCELL_X79_Y32_N6
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( \adders_out0[6][3]~q\ ) + ( \multipliers_out0_reg[1][3]~q\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( \adders_out0[6][3]~q\ ) + ( \multipliers_out0_reg[1][3]~q\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][3]~q\,
	datad => \ALT_INV_adders_out0[6][3]~q\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: FF_X79_Y32_N7
\adders_in0_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][3]~q\);

-- Location: LABCELL_X80_Y31_N15
\adders_out0[7][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][3]~feeder_combout\ = ( \adders_in0_reg[7][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][3]~q\,
	combout => \adders_out0[7][3]~feeder_combout\);

-- Location: FF_X80_Y31_N16
\adders_out0[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][3]~q\);

-- Location: MLABCELL_X82_Y30_N27
\y0[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[3]~feeder_combout\ = ( \adders_out0[7][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][3]~q\,
	combout => \y0[3]~feeder_combout\);

-- Location: FF_X82_Y30_N28
\y0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(3));

-- Location: FF_X83_Y33_N31
\Din1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(2));

-- Location: MLABCELL_X84_Y33_N45
\w4_1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w4_1[4]~feeder_combout\ = ( Din1_reg(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din1_reg(2),
	combout => \w4_1[4]~feeder_combout\);

-- Location: FF_X84_Y33_N47
\w4_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w4_1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(4));

-- Location: MLABCELL_X84_Y31_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( w4_1(2) ) + ( !w4_1(4) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( w4_1(2) ) + ( !w4_1(4) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(4),
	datad => ALT_INV_w4_1(2),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X84_Y31_N5
\w3_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(2));

-- Location: MLABCELL_X84_Y33_N36
\multipliers_out1_reg[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[1][3]~feeder_combout\ = ( w3_1(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_1(2),
	combout => \multipliers_out1_reg[1][3]~feeder_combout\);

-- Location: FF_X84_Y33_N38
\multipliers_out1_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][3]~q\);

-- Location: MLABCELL_X84_Y33_N0
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( !w3_1(1) ) + ( !w2n_1(1) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( !w3_1(1) ) + ( !w2n_1(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w2n_1(1),
	datad => ALT_INV_w3_1(1),
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X84_Y33_N1
\multipliers_out1_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][3]~q\);

-- Location: MLABCELL_X84_Y34_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( !w4_1(4) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( !w4_1(4) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(4),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X84_Y34_N4
\w2n_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(3));

-- Location: LABCELL_X83_Y34_N39
\multipliers_out1_reg[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[0][3]~feeder_combout\ = ( w2n_1(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w2n_1(3),
	combout => \multipliers_out1_reg[0][3]~feeder_combout\);

-- Location: FF_X83_Y34_N40
\multipliers_out1_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][3]~q\);

-- Location: FF_X87_Y34_N55
\adders_in1_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][3]~q\);

-- Location: LABCELL_X81_Y32_N21
\adders_out1[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[0][3]~feeder_combout\ = ( \adders_in1_reg[0][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[0][3]~q\,
	combout => \adders_out1[0][3]~feeder_combout\);

-- Location: FF_X81_Y32_N22
\adders_out1[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][3]~q\);

-- Location: LABCELL_X83_Y32_N6
\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( \multipliers_out1_reg[1][3]~q\ ) + ( \adders_out1[0][3]~q\ ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( \multipliers_out1_reg[1][3]~q\ ) + ( \adders_out1[0][3]~q\ ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[0][3]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][3]~q\,
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

-- Location: FF_X83_Y32_N7
\adders_in1_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][3]~q\);

-- Location: FF_X84_Y32_N53
\adders_out1[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][3]~q\);

-- Location: MLABCELL_X84_Y32_N3
\Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~5_sumout\ = SUM(( \multipliers_out1_reg[2][3]~q\ ) + ( \adders_out1[1][3]~q\ ) + ( \Add15~2\ ))
-- \Add15~6\ = CARRY(( \multipliers_out1_reg[2][3]~q\ ) + ( \adders_out1[1][3]~q\ ) + ( \Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[1][3]~q\,
	datac => \ALT_INV_multipliers_out1_reg[2][3]~q\,
	cin => \Add15~2\,
	sumout => \Add15~5_sumout\,
	cout => \Add15~6\);

-- Location: FF_X84_Y32_N4
\adders_in1_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][3]~q\);

-- Location: MLABCELL_X82_Y31_N12
\adders_out1[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][3]~feeder_combout\ = ( \adders_in1_reg[2][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][3]~q\,
	combout => \adders_out1[2][3]~feeder_combout\);

-- Location: FF_X82_Y31_N13
\adders_out1[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][3]~q\);

-- Location: LABCELL_X83_Y31_N0
\Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~1_sumout\ = SUM(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[2][3]~q\ ) + ( !VCC ))
-- \Add16~2\ = CARRY(( \multipliers_out1_reg[0][1]~q\ ) + ( \adders_out1[2][3]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[2][3]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	cin => GND,
	sumout => \Add16~1_sumout\,
	cout => \Add16~2\);

-- Location: FF_X83_Y31_N1
\adders_in1_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][3]~q\);

-- Location: LABCELL_X81_Y31_N54
\adders_out1[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][3]~feeder_combout\ = ( \adders_in1_reg[3][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][3]~q\,
	combout => \adders_out1[3][3]~feeder_combout\);

-- Location: FF_X81_Y31_N56
\adders_out1[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][3]~q\);

-- Location: LABCELL_X81_Y31_N0
\Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~1_sumout\ = SUM(( \adders_out1[3][3]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))
-- \Add17~2\ = CARRY(( \adders_out1[3][3]~q\ ) + ( \multipliers_out1_reg[0][1]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][1]~q\,
	datad => \ALT_INV_adders_out1[3][3]~q\,
	cin => GND,
	sumout => \Add17~1_sumout\,
	cout => \Add17~2\);

-- Location: FF_X81_Y31_N1
\adders_in1_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][3]~q\);

-- Location: FF_X83_Y34_N43
\adders_out1[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][3]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][3]~q\);

-- Location: LABCELL_X85_Y33_N3
\Add18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~5_sumout\ = SUM(( \adders_out1[4][3]~q\ ) + ( \multipliers_out1_reg[2][3]~q\ ) + ( \Add18~2\ ))
-- \Add18~6\ = CARRY(( \adders_out1[4][3]~q\ ) + ( \multipliers_out1_reg[2][3]~q\ ) + ( \Add18~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][3]~q\,
	datad => \ALT_INV_adders_out1[4][3]~q\,
	cin => \Add18~2\,
	sumout => \Add18~5_sumout\,
	cout => \Add18~6\);

-- Location: FF_X85_Y33_N4
\adders_in1_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][3]~q\);

-- Location: LABCELL_X81_Y33_N33
\adders_out1[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][3]~feeder_combout\ = ( \adders_in1_reg[5][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][3]~q\,
	combout => \adders_out1[5][3]~feeder_combout\);

-- Location: FF_X81_Y33_N34
\adders_out1[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][3]~q\);

-- Location: LABCELL_X85_Y34_N6
\Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~9_sumout\ = SUM(( \adders_out1[5][3]~q\ ) + ( \multipliers_out1_reg[1][3]~q\ ) + ( \Add19~6\ ))
-- \Add19~10\ = CARRY(( \adders_out1[5][3]~q\ ) + ( \multipliers_out1_reg[1][3]~q\ ) + ( \Add19~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[1][3]~q\,
	datad => \ALT_INV_adders_out1[5][3]~q\,
	cin => \Add19~6\,
	sumout => \Add19~9_sumout\,
	cout => \Add19~10\);

-- Location: FF_X85_Y34_N7
\adders_in1_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][3]~q\);

-- Location: LABCELL_X83_Y34_N24
\adders_out1[6][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][3]~feeder_combout\ = ( \adders_in1_reg[6][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][3]~q\,
	combout => \adders_out1[6][3]~feeder_combout\);

-- Location: FF_X83_Y34_N25
\adders_out1[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][3]~q\);

-- Location: MLABCELL_X87_Y34_N6
\Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~9_sumout\ = SUM(( \multipliers_out1_reg[0][3]~q\ ) + ( \adders_out1[6][3]~q\ ) + ( \Add20~6\ ))
-- \Add20~10\ = CARRY(( \multipliers_out1_reg[0][3]~q\ ) + ( \adders_out1[6][3]~q\ ) + ( \Add20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][3]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][3]~q\,
	cin => \Add20~6\,
	sumout => \Add20~9_sumout\,
	cout => \Add20~10\);

-- Location: FF_X87_Y34_N8
\adders_in1_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][3]~q\);

-- Location: LABCELL_X81_Y30_N30
\adders_out1[7][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][3]~feeder_combout\ = \adders_in1_reg[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in1_reg[7][3]~q\,
	combout => \adders_out1[7][3]~feeder_combout\);

-- Location: FF_X81_Y30_N32
\adders_out1[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][3]~q\);

-- Location: FF_X81_Y30_N29
\y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(3));

-- Location: LABCELL_X80_Y30_N6
\Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~9_sumout\ = SUM(( y1(3) ) + ( y0(3) ) + ( \Add22~6\ ))
-- \Add22~10\ = CARRY(( y1(3) ) + ( y0(3) ) + ( \Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y0(3),
	datad => ALT_INV_y1(3),
	cin => \Add22~6\,
	sumout => \Add22~9_sumout\,
	cout => \Add22~10\);

-- Location: FF_X80_Y30_N8
\Dout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~9_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[3]~reg0_q\);

-- Location: FF_X82_Y32_N47
\Din1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(3));

-- Location: FF_X82_Y32_N11
\w4_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(5));

-- Location: MLABCELL_X84_Y34_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( !w4_1(5) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( !w4_1(5) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(5),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X84_Y34_N7
\w2n_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(4));

-- Location: FF_X84_Y34_N37
\multipliers_out1_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(4),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][4]~q\);

-- Location: MLABCELL_X84_Y33_N3
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( !w3_1(2) ) + ( GND ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( !w3_1(2) ) + ( GND ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(2),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X84_Y33_N4
\multipliers_out1_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][4]~q\);

-- Location: FF_X81_Y31_N40
\w5_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w4_1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(1));

-- Location: MLABCELL_X82_Y31_N0
\multipliers_out1_reg[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[3][4]~feeder_combout\ = ( w5_1(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w5_1(1),
	combout => \multipliers_out1_reg[3][4]~feeder_combout\);

-- Location: FF_X82_Y31_N1
\multipliers_out1_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][4]~q\);

-- Location: LABCELL_X83_Y30_N30
\adders_in1_reg[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in1_reg[0][4]~feeder_combout\ = ( \multipliers_out1_reg[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out1_reg[0][4]~q\,
	combout => \adders_in1_reg[0][4]~feeder_combout\);

-- Location: FF_X83_Y30_N31
\adders_in1_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in1_reg[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][4]~q\);

-- Location: FF_X82_Y32_N4
\adders_out1[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[0][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][4]~q\);

-- Location: MLABCELL_X84_Y31_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( w4_1(3) ) + ( !w4_1(5) ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( w4_1(3) ) + ( !w4_1(5) ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(5),
	datad => ALT_INV_w4_1(3),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X84_Y31_N8
\w3_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(3));

-- Location: FF_X84_Y33_N58
\multipliers_out1_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(3),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][4]~q\);

-- Location: LABCELL_X83_Y32_N9
\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( \multipliers_out1_reg[1][4]~q\ ) + ( \adders_out1[0][4]~q\ ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( \multipliers_out1_reg[1][4]~q\ ) + ( \adders_out1[0][4]~q\ ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[0][4]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][4]~q\,
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

-- Location: FF_X83_Y32_N10
\adders_in1_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][4]~q\);

-- Location: FF_X84_Y32_N44
\adders_out1[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][4]~q\);

-- Location: MLABCELL_X84_Y32_N6
\Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~9_sumout\ = SUM(( \multipliers_out1_reg[2][4]~q\ ) + ( \adders_out1[1][4]~q\ ) + ( \Add15~6\ ))
-- \Add15~10\ = CARRY(( \multipliers_out1_reg[2][4]~q\ ) + ( \adders_out1[1][4]~q\ ) + ( \Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[1][4]~q\,
	datac => \ALT_INV_multipliers_out1_reg[2][4]~q\,
	cin => \Add15~6\,
	sumout => \Add15~9_sumout\,
	cout => \Add15~10\);

-- Location: FF_X84_Y32_N7
\adders_in1_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][4]~q\);

-- Location: FF_X82_Y31_N4
\adders_out1[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][4]~q\);

-- Location: LABCELL_X83_Y31_N3
\Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~5_sumout\ = SUM(( \multipliers_out1_reg[3][4]~q\ ) + ( \adders_out1[2][4]~q\ ) + ( \Add16~2\ ))
-- \Add16~6\ = CARRY(( \multipliers_out1_reg[3][4]~q\ ) + ( \adders_out1[2][4]~q\ ) + ( \Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][4]~q\,
	datac => \ALT_INV_adders_out1[2][4]~q\,
	cin => \Add16~2\,
	sumout => \Add16~5_sumout\,
	cout => \Add16~6\);

-- Location: FF_X83_Y31_N4
\adders_in1_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][4]~q\);

-- Location: LABCELL_X81_Y31_N51
\adders_out1[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][4]~feeder_combout\ = \adders_in1_reg[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_in1_reg[3][4]~q\,
	combout => \adders_out1[3][4]~feeder_combout\);

-- Location: FF_X81_Y31_N52
\adders_out1[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][4]~q\);

-- Location: LABCELL_X81_Y31_N3
\Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~5_sumout\ = SUM(( \adders_out1[3][4]~q\ ) + ( \multipliers_out1_reg[3][4]~q\ ) + ( \Add17~2\ ))
-- \Add17~6\ = CARRY(( \adders_out1[3][4]~q\ ) + ( \multipliers_out1_reg[3][4]~q\ ) + ( \Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[3][4]~q\,
	datad => \ALT_INV_adders_out1[3][4]~q\,
	cin => \Add17~2\,
	sumout => \Add17~5_sumout\,
	cout => \Add17~6\);

-- Location: FF_X81_Y31_N4
\adders_in1_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][4]~q\);

-- Location: LABCELL_X83_Y34_N36
\adders_out1[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][4]~feeder_combout\ = ( \adders_in1_reg[4][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][4]~q\,
	combout => \adders_out1[4][4]~feeder_combout\);

-- Location: FF_X83_Y34_N37
\adders_out1[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][4]~q\);

-- Location: LABCELL_X85_Y33_N6
\Add18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~9_sumout\ = SUM(( \multipliers_out1_reg[2][4]~q\ ) + ( \adders_out1[4][4]~q\ ) + ( \Add18~6\ ))
-- \Add18~10\ = CARRY(( \multipliers_out1_reg[2][4]~q\ ) + ( \adders_out1[4][4]~q\ ) + ( \Add18~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[2][4]~q\,
	datac => \ALT_INV_adders_out1[4][4]~q\,
	cin => \Add18~6\,
	sumout => \Add18~9_sumout\,
	cout => \Add18~10\);

-- Location: FF_X85_Y33_N7
\adders_in1_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][4]~q\);

-- Location: FF_X81_Y33_N16
\adders_out1[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][4]~q\);

-- Location: LABCELL_X85_Y34_N9
\Add19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~13_sumout\ = SUM(( \multipliers_out1_reg[1][4]~q\ ) + ( \adders_out1[5][4]~q\ ) + ( \Add19~10\ ))
-- \Add19~14\ = CARRY(( \multipliers_out1_reg[1][4]~q\ ) + ( \adders_out1[5][4]~q\ ) + ( \Add19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][4]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][4]~q\,
	cin => \Add19~10\,
	sumout => \Add19~13_sumout\,
	cout => \Add19~14\);

-- Location: FF_X85_Y34_N10
\adders_in1_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][4]~q\);

-- Location: LABCELL_X83_Y34_N6
\adders_out1[6][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][4]~feeder_combout\ = ( \adders_in1_reg[6][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][4]~q\,
	combout => \adders_out1[6][4]~feeder_combout\);

-- Location: FF_X83_Y34_N7
\adders_out1[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][4]~q\);

-- Location: MLABCELL_X87_Y34_N9
\Add20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~13_sumout\ = SUM(( \multipliers_out1_reg[0][4]~q\ ) + ( \adders_out1[6][4]~q\ ) + ( \Add20~10\ ))
-- \Add20~14\ = CARRY(( \multipliers_out1_reg[0][4]~q\ ) + ( \adders_out1[6][4]~q\ ) + ( \Add20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[0][4]~q\,
	datac => \ALT_INV_adders_out1[6][4]~q\,
	cin => \Add20~10\,
	sumout => \Add20~13_sumout\,
	cout => \Add20~14\);

-- Location: FF_X87_Y34_N10
\adders_in1_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][4]~q\);

-- Location: FF_X81_Y30_N35
\adders_out1[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][4]~q\);

-- Location: FF_X81_Y30_N25
\y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(4));

-- Location: IOIBUF_X89_Y21_N55
\Din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: FF_X83_Y33_N7
\Din0_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(4));

-- Location: LABCELL_X75_Y32_N51
\w64_0[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[10]~feeder_combout\ = ( Din0_reg(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(4),
	combout => \w64_0[10]~feeder_combout\);

-- Location: FF_X75_Y32_N53
\w64_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(10));

-- Location: LABCELL_X77_Y33_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !w64_0(10) ) + ( w64_0(8) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !w64_0(10) ) + ( w64_0(8) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w64_0(10),
	datac => ALT_INV_w64_0(8),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X77_Y33_N10
\w3_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(4));

-- Location: FF_X80_Y34_N53
\multipliers_out0_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_0(4),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][4]~q\);

-- Location: MLABCELL_X78_Y33_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !w64_0(9) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !w64_0(9) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(9),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X78_Y33_N37
\w2n_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(4));

-- Location: FF_X81_Y32_N13
\multipliers_out0_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_0(4),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][4]~q\);

-- Location: FF_X80_Y33_N13
\adders_in0_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][4]~q\);

-- Location: LABCELL_X77_Y34_N57
\adders_out0[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[0][4]~feeder_combout\ = ( \adders_in0_reg[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[0][4]~q\,
	combout => \adders_out0[0][4]~feeder_combout\);

-- Location: FF_X77_Y34_N58
\adders_out0[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][4]~q\);

-- Location: MLABCELL_X78_Y34_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \adders_out0[0][4]~q\ ) + ( \multipliers_out0_reg[1][4]~q\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( \adders_out0[0][4]~q\ ) + ( \multipliers_out0_reg[1][4]~q\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][4]~q\,
	datad => \ALT_INV_adders_out0[0][4]~q\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X78_Y34_N10
\adders_in0_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][4]~q\);

-- Location: FF_X79_Y34_N59
\adders_out0[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[1][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][4]~q\);

-- Location: LABCELL_X79_Y34_N12
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( \adders_out0[1][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( \adders_out0[1][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][4]~q\,
	datad => \ALT_INV_adders_out0[1][4]~q\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X79_Y34_N13
\adders_in0_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][4]~q\);

-- Location: LABCELL_X80_Y35_N9
\adders_out0[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][4]~feeder_combout\ = ( \adders_in0_reg[2][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][4]~q\,
	combout => \adders_out0[2][4]~feeder_combout\);

-- Location: FF_X80_Y35_N11
\adders_out0[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][4]~q\);

-- Location: LABCELL_X74_Y33_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !w3_0(4) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !w3_0(4) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_0(4),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X74_Y33_N10
\w61_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(4));

-- Location: LABCELL_X81_Y35_N51
\multipliers_out0_reg[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][4]~feeder_combout\ = ( w61_0(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(4),
	combout => \multipliers_out0_reg[3][4]~feeder_combout\);

-- Location: FF_X81_Y35_N52
\multipliers_out0_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][4]~q\);

-- Location: LABCELL_X79_Y35_N12
\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( \multipliers_out0_reg[3][4]~q\ ) + ( \adders_out0[2][4]~q\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( \multipliers_out0_reg[3][4]~q\ ) + ( \adders_out0[2][4]~q\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[2][4]~q\,
	datad => \ALT_INV_multipliers_out0_reg[3][4]~q\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: FF_X79_Y35_N14
\adders_in0_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][4]~q\);

-- Location: LABCELL_X77_Y34_N39
\adders_out0[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][4]~feeder_combout\ = ( \adders_in0_reg[3][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][4]~q\,
	combout => \adders_out0[3][4]~feeder_combout\);

-- Location: FF_X77_Y34_N40
\adders_out0[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][4]~q\);

-- Location: LABCELL_X79_Y33_N12
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( \adders_out0[3][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( \adders_out0[3][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out0_reg[0][4]~q\,
	datad => \ALT_INV_adders_out0[3][4]~q\,
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X79_Y33_N13
\adders_in0_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][4]~q\);

-- Location: FF_X81_Y34_N29
\adders_out0[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][4]~q\);

-- Location: LABCELL_X80_Y34_N9
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( \adders_out0[4][4]~q\ ) + ( \multipliers_out0_reg[1][4]~q\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( \adders_out0[4][4]~q\ ) + ( \multipliers_out0_reg[1][4]~q\ ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][4]~q\,
	datad => \ALT_INV_adders_out0[4][4]~q\,
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: FF_X80_Y34_N10
\adders_in0_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][4]~q\);

-- Location: FF_X79_Y33_N55
\adders_out0[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][4]~q\);

-- Location: LABCELL_X80_Y32_N12
\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( \adders_out0[5][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( \adders_out0[5][4]~q\ ) + ( \multipliers_out0_reg[0][4]~q\ ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][4]~q\,
	datad => \ALT_INV_adders_out0[5][4]~q\,
	cin => \Add12~14\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

-- Location: FF_X80_Y32_N13
\adders_in0_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][4]~q\);

-- Location: FF_X81_Y32_N58
\adders_out0[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][4]~q\);

-- Location: LABCELL_X79_Y32_N9
\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( \multipliers_out0_reg[1][4]~q\ ) + ( \adders_out0[6][4]~q\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( \multipliers_out0_reg[1][4]~q\ ) + ( \adders_out0[6][4]~q\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][4]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][4]~q\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

-- Location: FF_X79_Y32_N10
\adders_in0_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][4]~q\);

-- Location: FF_X81_Y30_N22
\adders_out0[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][4]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][4]~q\);

-- Location: LABCELL_X81_Y30_N0
\y0[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[4]~feeder_combout\ = ( \adders_out0[7][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][4]~q\,
	combout => \y0[4]~feeder_combout\);

-- Location: FF_X81_Y30_N1
\y0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(4));

-- Location: LABCELL_X80_Y30_N9
\Add22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~13_sumout\ = SUM(( y0(4) ) + ( y1(4) ) + ( \Add22~10\ ))
-- \Add22~14\ = CARRY(( y0(4) ) + ( y1(4) ) + ( \Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(4),
	datad => ALT_INV_y0(4),
	cin => \Add22~10\,
	sumout => \Add22~13_sumout\,
	cout => \Add22~14\);

-- Location: FF_X80_Y30_N10
\Dout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~13_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[4]~reg0_q\);

-- Location: FF_X83_Y33_N14
\Din1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(4));

-- Location: FF_X83_Y33_N44
\w4_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(6));

-- Location: MLABCELL_X84_Y34_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( !w4_1(6) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( !w4_1(6) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(6),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X84_Y34_N11
\w2n_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(5));

-- Location: FF_X84_Y34_N49
\multipliers_out1_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(5),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][5]~q\);

-- Location: MLABCELL_X84_Y33_N6
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( !w3_1(3) ) + ( GND ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( !w3_1(3) ) + ( GND ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_1(3),
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X84_Y33_N7
\multipliers_out1_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][5]~q\);

-- Location: MLABCELL_X84_Y31_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !w4_1(6) ) + ( w4_1(4) ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !w4_1(6) ) + ( w4_1(4) ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(4),
	datad => ALT_INV_w4_1(6),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X84_Y31_N10
\w3_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(4));

-- Location: LABCELL_X85_Y34_N54
\multipliers_out1_reg[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[1][5]~feeder_combout\ = ( w3_1(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_1(4),
	combout => \multipliers_out1_reg[1][5]~feeder_combout\);

-- Location: FF_X85_Y34_N56
\multipliers_out1_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][5]~q\);

-- Location: FF_X83_Y32_N41
\adders_in1_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][5]~q\);

-- Location: FF_X83_Y32_N56
\adders_out1[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[0][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][5]~q\);

-- Location: LABCELL_X83_Y32_N12
\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( \adders_out1[0][5]~q\ ) + ( \multipliers_out1_reg[1][5]~q\ ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( \adders_out1[0][5]~q\ ) + ( \multipliers_out1_reg[1][5]~q\ ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[1][5]~q\,
	datad => \ALT_INV_adders_out1[0][5]~q\,
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

-- Location: FF_X83_Y32_N13
\adders_in1_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][5]~q\);

-- Location: FF_X84_Y32_N55
\adders_out1[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][5]~q\);

-- Location: MLABCELL_X84_Y32_N9
\Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~13_sumout\ = SUM(( \adders_out1[1][5]~q\ ) + ( \multipliers_out1_reg[2][5]~q\ ) + ( \Add15~10\ ))
-- \Add15~14\ = CARRY(( \adders_out1[1][5]~q\ ) + ( \multipliers_out1_reg[2][5]~q\ ) + ( \Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][5]~q\,
	datad => \ALT_INV_adders_out1[1][5]~q\,
	cin => \Add15~10\,
	sumout => \Add15~13_sumout\,
	cout => \Add15~14\);

-- Location: FF_X84_Y32_N10
\adders_in1_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][5]~q\);

-- Location: MLABCELL_X82_Y31_N24
\adders_out1[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][5]~feeder_combout\ = ( \adders_in1_reg[2][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][5]~q\,
	combout => \adders_out1[2][5]~feeder_combout\);

-- Location: FF_X82_Y31_N25
\adders_out1[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][5]~q\);

-- Location: MLABCELL_X84_Y31_N30
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( w4_1(4) ) + ( w4_1(2) ) + ( !VCC ))
-- \Add5~2\ = CARRY(( w4_1(4) ) + ( w4_1(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(2),
	datad => ALT_INV_w4_1(4),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X84_Y31_N31
\w5_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(2));

-- Location: LABCELL_X81_Y31_N45
\multipliers_out1_reg[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[3][5]~feeder_combout\ = ( w5_1(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w5_1(2),
	combout => \multipliers_out1_reg[3][5]~feeder_combout\);

-- Location: FF_X81_Y31_N46
\multipliers_out1_reg[3][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][5]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y31_N6
\Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~9_sumout\ = SUM(( \multipliers_out1_reg[3][5]~DUPLICATE_q\ ) + ( \adders_out1[2][5]~q\ ) + ( \Add16~6\ ))
-- \Add16~10\ = CARRY(( \multipliers_out1_reg[3][5]~DUPLICATE_q\ ) + ( \adders_out1[2][5]~q\ ) + ( \Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[2][5]~q\,
	datac => \ALT_INV_multipliers_out1_reg[3][5]~DUPLICATE_q\,
	cin => \Add16~6\,
	sumout => \Add16~9_sumout\,
	cout => \Add16~10\);

-- Location: FF_X83_Y31_N7
\adders_in1_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][5]~q\);

-- Location: FF_X81_Y31_N44
\adders_out1[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][5]~q\);

-- Location: FF_X81_Y31_N47
\multipliers_out1_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][5]~q\);

-- Location: LABCELL_X81_Y31_N6
\Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~9_sumout\ = SUM(( \multipliers_out1_reg[3][5]~q\ ) + ( \adders_out1[3][5]~q\ ) + ( \Add17~6\ ))
-- \Add17~10\ = CARRY(( \multipliers_out1_reg[3][5]~q\ ) + ( \adders_out1[3][5]~q\ ) + ( \Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[3][5]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][5]~q\,
	cin => \Add17~6\,
	sumout => \Add17~9_sumout\,
	cout => \Add17~10\);

-- Location: FF_X81_Y31_N7
\adders_in1_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][5]~q\);

-- Location: LABCELL_X83_Y34_N0
\adders_out1[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][5]~feeder_combout\ = ( \adders_in1_reg[4][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][5]~q\,
	combout => \adders_out1[4][5]~feeder_combout\);

-- Location: FF_X83_Y34_N1
\adders_out1[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][5]~q\);

-- Location: LABCELL_X85_Y33_N9
\Add18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~13_sumout\ = SUM(( \multipliers_out1_reg[2][5]~q\ ) + ( \adders_out1[4][5]~q\ ) + ( \Add18~10\ ))
-- \Add18~14\ = CARRY(( \multipliers_out1_reg[2][5]~q\ ) + ( \adders_out1[4][5]~q\ ) + ( \Add18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[4][5]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][5]~q\,
	cin => \Add18~10\,
	sumout => \Add18~13_sumout\,
	cout => \Add18~14\);

-- Location: FF_X85_Y33_N10
\adders_in1_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][5]~q\);

-- Location: LABCELL_X81_Y33_N18
\adders_out1[5][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][5]~feeder_combout\ = ( \adders_in1_reg[5][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][5]~q\,
	combout => \adders_out1[5][5]~feeder_combout\);

-- Location: FF_X81_Y33_N19
\adders_out1[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][5]~q\);

-- Location: LABCELL_X85_Y34_N12
\Add19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~17_sumout\ = SUM(( \multipliers_out1_reg[1][5]~q\ ) + ( \adders_out1[5][5]~q\ ) + ( \Add19~14\ ))
-- \Add19~18\ = CARRY(( \multipliers_out1_reg[1][5]~q\ ) + ( \adders_out1[5][5]~q\ ) + ( \Add19~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][5]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][5]~q\,
	cin => \Add19~14\,
	sumout => \Add19~17_sumout\,
	cout => \Add19~18\);

-- Location: FF_X85_Y34_N14
\adders_in1_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][5]~q\);

-- Location: MLABCELL_X84_Y34_N54
\adders_out1[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][5]~feeder_combout\ = ( \adders_in1_reg[6][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][5]~q\,
	combout => \adders_out1[6][5]~feeder_combout\);

-- Location: FF_X84_Y34_N55
\adders_out1[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][5]~q\);

-- Location: MLABCELL_X87_Y34_N12
\Add20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~17_sumout\ = SUM(( \adders_out1[6][5]~q\ ) + ( \multipliers_out1_reg[0][5]~q\ ) + ( \Add20~14\ ))
-- \Add20~18\ = CARRY(( \adders_out1[6][5]~q\ ) + ( \multipliers_out1_reg[0][5]~q\ ) + ( \Add20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][5]~q\,
	datad => \ALT_INV_adders_out1[6][5]~q\,
	cin => \Add20~14\,
	sumout => \Add20~17_sumout\,
	cout => \Add20~18\);

-- Location: FF_X87_Y34_N13
\adders_in1_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][5]~q\);

-- Location: LABCELL_X81_Y30_N33
\adders_out1[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][5]~feeder_combout\ = ( \adders_in1_reg[7][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][5]~q\,
	combout => \adders_out1[7][5]~feeder_combout\);

-- Location: FF_X81_Y30_N34
\adders_out1[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][5]~q\);

-- Location: FF_X81_Y30_N5
\y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(5));

-- Location: MLABCELL_X78_Y33_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !w64_0(10) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !w64_0(10) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(10),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X78_Y33_N40
\w2n_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(5));

-- Location: FF_X78_Y34_N50
\multipliers_out0_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_0(5),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][5]~q\);

-- Location: IOIBUF_X89_Y11_N95
\Din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: LABCELL_X83_Y33_N9
\Din0_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Din0_reg[5]~feeder_combout\ = ( \Din[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Din[5]~input_o\,
	combout => \Din0_reg[5]~feeder_combout\);

-- Location: FF_X83_Y33_N11
\Din0_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Din0_reg[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(5));

-- Location: FF_X83_Y33_N5
\w64_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din0_reg(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(11));

-- Location: LABCELL_X77_Y33_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !w64_0(11) ) + ( w64_0(9) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !w64_0(11) ) + ( w64_0(9) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(9),
	datad => ALT_INV_w64_0(11),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X77_Y33_N14
\w3_0[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w3_0[5]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y33_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\w3_0[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\w3_0[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_w3_0[5]~DUPLICATE_q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X74_Y33_N13
\w61_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(5));

-- Location: MLABCELL_X78_Y33_N18
\multipliers_out0_reg[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][5]~feeder_combout\ = ( w61_0(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(5),
	combout => \multipliers_out0_reg[3][5]~feeder_combout\);

-- Location: FF_X78_Y33_N19
\multipliers_out0_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][5]~q\);

-- Location: FF_X77_Y33_N13
\w3_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(5));

-- Location: FF_X78_Y33_N13
\multipliers_out0_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_0(5),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][5]~q\);

-- Location: MLABCELL_X78_Y32_N36
\adders_in0_reg[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[0][5]~feeder_combout\ = ( \multipliers_out0_reg[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out0_reg[0][5]~q\,
	combout => \adders_in0_reg[0][5]~feeder_combout\);

-- Location: FF_X78_Y32_N37
\adders_in0_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][5]~q\);

-- Location: LABCELL_X77_Y34_N27
\adders_out0[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[0][5]~feeder_combout\ = ( \adders_in0_reg[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[0][5]~q\,
	combout => \adders_out0[0][5]~feeder_combout\);

-- Location: FF_X77_Y34_N28
\adders_out0[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][5]~q\);

-- Location: MLABCELL_X78_Y34_N12
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \multipliers_out0_reg[1][5]~q\ ) + ( \adders_out0[0][5]~q\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \multipliers_out0_reg[1][5]~q\ ) + ( \adders_out0[0][5]~q\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][5]~q\,
	datac => \ALT_INV_adders_out0[0][5]~q\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X78_Y34_N14
\adders_in0_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][5]~q\);

-- Location: MLABCELL_X78_Y34_N48
\adders_out0[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][5]~feeder_combout\ = \adders_in0_reg[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[1][5]~q\,
	combout => \adders_out0[1][5]~feeder_combout\);

-- Location: FF_X78_Y34_N49
\adders_out0[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][5]~q\);

-- Location: LABCELL_X79_Y34_N15
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[1][5]~q\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[1][5]~q\ ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[1][5]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][5]~q\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X79_Y34_N16
\adders_in0_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][5]~q\);

-- Location: LABCELL_X80_Y33_N24
\adders_out0[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][5]~feeder_combout\ = ( \adders_in0_reg[2][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][5]~q\,
	combout => \adders_out0[2][5]~feeder_combout\);

-- Location: FF_X80_Y33_N25
\adders_out0[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][5]~q\);

-- Location: LABCELL_X79_Y35_N15
\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( \adders_out0[2][5]~q\ ) + ( \multipliers_out0_reg[3][5]~q\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( \adders_out0[2][5]~q\ ) + ( \multipliers_out0_reg[3][5]~q\ ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][5]~q\,
	datad => \ALT_INV_adders_out0[2][5]~q\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: FF_X79_Y35_N16
\adders_in0_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][5]~q\);

-- Location: LABCELL_X80_Y34_N57
\adders_out0[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][5]~feeder_combout\ = ( \adders_in0_reg[3][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][5]~q\,
	combout => \adders_out0[3][5]~feeder_combout\);

-- Location: FF_X80_Y34_N58
\adders_out0[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][5]~q\);

-- Location: LABCELL_X79_Y33_N15
\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[3][5]~q\ ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[3][5]~q\ ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][5]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][5]~q\,
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X79_Y33_N17
\adders_in0_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][5]~q\);

-- Location: LABCELL_X81_Y34_N15
\adders_out0[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][5]~feeder_combout\ = ( \adders_in0_reg[4][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][5]~q\,
	combout => \adders_out0[4][5]~feeder_combout\);

-- Location: FF_X81_Y34_N17
\adders_out0[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][5]~q\);

-- Location: LABCELL_X80_Y34_N12
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( \adders_out0[4][5]~q\ ) + ( \multipliers_out0_reg[1][5]~q\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( \adders_out0[4][5]~q\ ) + ( \multipliers_out0_reg[1][5]~q\ ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out0_reg[1][5]~q\,
	datad => \ALT_INV_adders_out0[4][5]~q\,
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: FF_X80_Y34_N13
\adders_in0_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][5]~q\);

-- Location: FF_X80_Y33_N34
\adders_out0[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][5]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][5]~q\);

-- Location: LABCELL_X80_Y32_N15
\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[5][5]~q\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( \multipliers_out0_reg[0][5]~q\ ) + ( \adders_out0[5][5]~q\ ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[5][5]~q\,
	datac => \ALT_INV_multipliers_out0_reg[0][5]~q\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

-- Location: FF_X80_Y32_N17
\adders_in0_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][5]~q\);

-- Location: LABCELL_X80_Y32_N57
\adders_out0[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][5]~feeder_combout\ = \adders_in0_reg[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in0_reg[6][5]~q\,
	combout => \adders_out0[6][5]~feeder_combout\);

-- Location: FF_X80_Y32_N59
\adders_out0[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][5]~q\);

-- Location: LABCELL_X79_Y32_N12
\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( \adders_out0[6][5]~q\ ) + ( \multipliers_out0_reg[1][5]~q\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( \adders_out0[6][5]~q\ ) + ( \multipliers_out0_reg[1][5]~q\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][5]~q\,
	datad => \ALT_INV_adders_out0[6][5]~q\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

-- Location: FF_X79_Y32_N13
\adders_in0_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][5]~q\);

-- Location: MLABCELL_X82_Y30_N15
\adders_out0[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][5]~feeder_combout\ = ( \adders_in0_reg[7][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][5]~q\,
	combout => \adders_out0[7][5]~feeder_combout\);

-- Location: FF_X82_Y30_N17
\adders_out0[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][5]~q\);

-- Location: FF_X82_Y30_N19
\y0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(5));

-- Location: LABCELL_X80_Y30_N12
\Add22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~17_sumout\ = SUM(( y0(5) ) + ( y1(5) ) + ( \Add22~14\ ))
-- \Add22~18\ = CARRY(( y0(5) ) + ( y1(5) ) + ( \Add22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(5),
	datad => ALT_INV_y0(5),
	cin => \Add22~14\,
	sumout => \Add22~17_sumout\,
	cout => \Add22~18\);

-- Location: FF_X80_Y30_N13
\Dout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~17_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[5]~reg0_q\);

-- Location: IOIBUF_X89_Y20_N95
\Din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: FF_X82_Y32_N25
\Din0_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(6));

-- Location: MLABCELL_X78_Y32_N42
\w64_0[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w64_0[12]~feeder_combout\ = ( Din0_reg(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Din0_reg(6),
	combout => \w64_0[12]~feeder_combout\);

-- Location: FF_X78_Y32_N44
\w64_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \w64_0[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(12));

-- Location: LABCELL_X77_Y33_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !w64_0(12) ) + ( w64_0(10) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !w64_0(12) ) + ( w64_0(10) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(12),
	datac => ALT_INV_w64_0(10),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X77_Y33_N16
\w3_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(6));

-- Location: LABCELL_X80_Y33_N27
\multipliers_out0_reg[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][6]~feeder_combout\ = ( w3_0(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(6),
	combout => \multipliers_out0_reg[0][6]~feeder_combout\);

-- Location: FF_X80_Y33_N28
\multipliers_out0_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][6]~q\);

-- Location: LABCELL_X74_Y33_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !w3_0(6) ) + ( w64_0(6) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !w3_0(6) ) + ( w64_0(6) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(6),
	datad => ALT_INV_w3_0(6),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X74_Y33_N16
\w61_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(6));

-- Location: FF_X81_Y34_N22
\multipliers_out0_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w61_0(6),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][6]~q\);

-- Location: MLABCELL_X78_Y32_N33
\adders_in0_reg[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[0][6]~feeder_combout\ = ( \multipliers_out0_reg[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out0_reg[0][6]~q\,
	combout => \adders_in0_reg[0][6]~feeder_combout\);

-- Location: FF_X78_Y32_N34
\adders_in0_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[0][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][6]~q\);

-- Location: LABCELL_X77_Y34_N18
\adders_out0[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[0][6]~feeder_combout\ = ( \adders_in0_reg[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[0][6]~q\,
	combout => \adders_out0[0][6]~feeder_combout\);

-- Location: FF_X77_Y34_N19
\adders_out0[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][6]~q\);

-- Location: MLABCELL_X78_Y33_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !w64_0(11) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !w64_0(11) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w64_0(11),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X78_Y33_N44
\w2n_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(6));

-- Location: LABCELL_X77_Y34_N0
\multipliers_out0_reg[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[1][6]~feeder_combout\ = ( w2n_0(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w2n_0(6),
	combout => \multipliers_out0_reg[1][6]~feeder_combout\);

-- Location: FF_X77_Y34_N1
\multipliers_out0_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][6]~q\);

-- Location: MLABCELL_X78_Y34_N15
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[0][6]~q\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[0][6]~q\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[0][6]~q\,
	datac => \ALT_INV_multipliers_out0_reg[1][6]~q\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X78_Y34_N16
\adders_in0_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][6]~q\);

-- Location: LABCELL_X79_Y34_N48
\adders_out0[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][6]~feeder_combout\ = ( \adders_in0_reg[1][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[1][6]~q\,
	combout => \adders_out0[1][6]~feeder_combout\);

-- Location: FF_X79_Y34_N49
\adders_out0[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][6]~q\);

-- Location: LABCELL_X79_Y34_N18
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( \adders_out0[1][6]~q\ ) + ( \multipliers_out0_reg[0][6]~q\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( \adders_out0[1][6]~q\ ) + ( \multipliers_out0_reg[0][6]~q\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][6]~q\,
	datad => \ALT_INV_adders_out0[1][6]~q\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X79_Y34_N19
\adders_in0_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][6]~q\);

-- Location: LABCELL_X81_Y34_N51
\adders_out0[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][6]~feeder_combout\ = ( \adders_in0_reg[2][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][6]~q\,
	combout => \adders_out0[2][6]~feeder_combout\);

-- Location: FF_X81_Y34_N53
\adders_out0[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][6]~q\);

-- Location: LABCELL_X79_Y35_N18
\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( \adders_out0[2][6]~q\ ) + ( \multipliers_out0_reg[3][6]~q\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( \adders_out0[2][6]~q\ ) + ( \multipliers_out0_reg[3][6]~q\ ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][6]~q\,
	datad => \ALT_INV_adders_out0[2][6]~q\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: FF_X79_Y35_N19
\adders_in0_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][6]~q\);

-- Location: LABCELL_X80_Y33_N30
\adders_out0[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][6]~feeder_combout\ = ( \adders_in0_reg[3][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][6]~q\,
	combout => \adders_out0[3][6]~feeder_combout\);

-- Location: FF_X80_Y33_N32
\adders_out0[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][6]~q\);

-- Location: LABCELL_X79_Y33_N18
\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( \multipliers_out0_reg[0][6]~q\ ) + ( \adders_out0[3][6]~q\ ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( \multipliers_out0_reg[0][6]~q\ ) + ( \adders_out0[3][6]~q\ ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[3][6]~q\,
	datac => \ALT_INV_multipliers_out0_reg[0][6]~q\,
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: FF_X79_Y33_N19
\adders_in0_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][6]~q\);

-- Location: LABCELL_X81_Y34_N30
\adders_out0[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][6]~feeder_combout\ = \adders_in0_reg[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[4][6]~q\,
	combout => \adders_out0[4][6]~feeder_combout\);

-- Location: FF_X81_Y34_N31
\adders_out0[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][6]~q\);

-- Location: LABCELL_X80_Y34_N15
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[4][6]~q\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[4][6]~q\ ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[4][6]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][6]~q\,
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: FF_X80_Y34_N17
\adders_in0_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][6]~q\);

-- Location: FF_X81_Y32_N50
\adders_out0[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][6]~q\);

-- Location: LABCELL_X80_Y32_N18
\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( \adders_out0[5][6]~q\ ) + ( \multipliers_out0_reg[0][6]~q\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( \adders_out0[5][6]~q\ ) + ( \multipliers_out0_reg[0][6]~q\ ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][6]~q\,
	datad => \ALT_INV_adders_out0[5][6]~q\,
	cin => \Add12~22\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\);

-- Location: FF_X80_Y32_N20
\adders_in0_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][6]~q\);

-- Location: LABCELL_X80_Y32_N48
\adders_out0[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][6]~feeder_combout\ = \adders_in0_reg[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in0_reg[6][6]~q\,
	combout => \adders_out0[6][6]~feeder_combout\);

-- Location: FF_X80_Y32_N49
\adders_out0[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][6]~q\);

-- Location: LABCELL_X79_Y32_N15
\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[6][6]~q\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( \multipliers_out0_reg[1][6]~q\ ) + ( \adders_out0[6][6]~q\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[6][6]~q\,
	datac => \ALT_INV_multipliers_out0_reg[1][6]~q\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

-- Location: FF_X79_Y32_N17
\adders_in0_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][6]~q\);

-- Location: MLABCELL_X82_Y30_N54
\adders_out0[7][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][6]~feeder_combout\ = ( \adders_in0_reg[7][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][6]~q\,
	combout => \adders_out0[7][6]~feeder_combout\);

-- Location: FF_X82_Y30_N56
\adders_out0[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][6]~q\);

-- Location: FF_X75_Y30_N4
\y0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(6));

-- Location: LABCELL_X83_Y33_N15
\Din1_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Din1_reg[5]~feeder_combout\ = ( \Din[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Din[5]~input_o\,
	combout => \Din1_reg[5]~feeder_combout\);

-- Location: FF_X83_Y33_N17
\Din1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Din1_reg[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(5));

-- Location: FF_X83_Y33_N47
\w4_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(7));

-- Location: MLABCELL_X84_Y31_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( w4_1(5) ) + ( !w4_1(7) ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( w4_1(5) ) + ( !w4_1(7) ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(7),
	datad => ALT_INV_w4_1(5),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X84_Y31_N13
\w3_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(5));

-- Location: FF_X84_Y33_N40
\multipliers_out1_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(5),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][6]~q\);

-- Location: MLABCELL_X84_Y33_N9
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( !w3_1(4) ) + ( GND ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( !w3_1(4) ) + ( GND ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_1(4),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X84_Y33_N10
\multipliers_out1_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][6]~q\);

-- Location: MLABCELL_X84_Y34_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( !w4_1(7) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( !w4_1(7) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w4_1(7),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X84_Y34_N13
\w2n_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(6));

-- Location: LABCELL_X83_Y34_N15
\multipliers_out1_reg[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[0][6]~feeder_combout\ = w2n_1(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w2n_1(6),
	combout => \multipliers_out1_reg[0][6]~feeder_combout\);

-- Location: FF_X83_Y34_N16
\multipliers_out1_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][6]~q\);

-- Location: LABCELL_X83_Y30_N15
\adders_in1_reg[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in1_reg[0][6]~feeder_combout\ = ( \multipliers_out1_reg[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out1_reg[0][6]~q\,
	combout => \adders_in1_reg[0][6]~feeder_combout\);

-- Location: FF_X83_Y30_N17
\adders_in1_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in1_reg[0][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][6]~q\);

-- Location: FF_X82_Y30_N49
\adders_out1[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[0][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][6]~q\);

-- Location: LABCELL_X83_Y32_N15
\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( \adders_out1[0][6]~q\ ) + ( \multipliers_out1_reg[1][6]~q\ ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( \adders_out1[0][6]~q\ ) + ( \multipliers_out1_reg[1][6]~q\ ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[1][6]~q\,
	datad => \ALT_INV_adders_out1[0][6]~q\,
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

-- Location: FF_X83_Y32_N16
\adders_in1_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][6]~q\);

-- Location: MLABCELL_X84_Y32_N45
\adders_out1[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][6]~feeder_combout\ = \adders_in1_reg[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in1_reg[1][6]~q\,
	combout => \adders_out1[1][6]~feeder_combout\);

-- Location: FF_X84_Y32_N47
\adders_out1[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][6]~q\);

-- Location: MLABCELL_X84_Y32_N12
\Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~17_sumout\ = SUM(( \multipliers_out1_reg[2][6]~q\ ) + ( \adders_out1[1][6]~q\ ) + ( \Add15~14\ ))
-- \Add15~18\ = CARRY(( \multipliers_out1_reg[2][6]~q\ ) + ( \adders_out1[1][6]~q\ ) + ( \Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[1][6]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][6]~q\,
	cin => \Add15~14\,
	sumout => \Add15~17_sumout\,
	cout => \Add15~18\);

-- Location: FF_X84_Y32_N14
\adders_in1_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][6]~q\);

-- Location: MLABCELL_X82_Y31_N9
\adders_out1[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][6]~feeder_combout\ = ( \adders_in1_reg[2][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][6]~q\,
	combout => \adders_out1[2][6]~feeder_combout\);

-- Location: FF_X82_Y31_N10
\adders_out1[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][6]~q\);

-- Location: MLABCELL_X84_Y31_N33
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( w4_1(3) ) + ( w4_1(5) ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( w4_1(3) ) + ( w4_1(5) ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(5),
	datad => ALT_INV_w4_1(3),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X84_Y31_N34
\w5_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(3));

-- Location: MLABCELL_X82_Y31_N21
\multipliers_out1_reg[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[3][6]~feeder_combout\ = ( w5_1(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w5_1(3),
	combout => \multipliers_out1_reg[3][6]~feeder_combout\);

-- Location: FF_X82_Y31_N22
\multipliers_out1_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][6]~q\);

-- Location: LABCELL_X83_Y31_N9
\Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~13_sumout\ = SUM(( \multipliers_out1_reg[3][6]~q\ ) + ( \adders_out1[2][6]~q\ ) + ( \Add16~10\ ))
-- \Add16~14\ = CARRY(( \multipliers_out1_reg[3][6]~q\ ) + ( \adders_out1[2][6]~q\ ) + ( \Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[2][6]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][6]~q\,
	cin => \Add16~10\,
	sumout => \Add16~13_sumout\,
	cout => \Add16~14\);

-- Location: FF_X83_Y31_N10
\adders_in1_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][6]~q\);

-- Location: MLABCELL_X82_Y31_N18
\adders_out1[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][6]~feeder_combout\ = ( \adders_in1_reg[3][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][6]~q\,
	combout => \adders_out1[3][6]~feeder_combout\);

-- Location: FF_X82_Y31_N20
\adders_out1[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][6]~q\);

-- Location: FF_X82_Y31_N23
\multipliers_out1_reg[3][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][6]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y31_N9
\Add17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~13_sumout\ = SUM(( \multipliers_out1_reg[3][6]~DUPLICATE_q\ ) + ( \adders_out1[3][6]~q\ ) + ( \Add17~10\ ))
-- \Add17~14\ = CARRY(( \multipliers_out1_reg[3][6]~DUPLICATE_q\ ) + ( \adders_out1[3][6]~q\ ) + ( \Add17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[3][6]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][6]~DUPLICATE_q\,
	cin => \Add17~10\,
	sumout => \Add17~13_sumout\,
	cout => \Add17~14\);

-- Location: FF_X81_Y31_N10
\adders_in1_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][6]~q\);

-- Location: MLABCELL_X82_Y33_N39
\adders_out1[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][6]~feeder_combout\ = ( \adders_in1_reg[4][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][6]~q\,
	combout => \adders_out1[4][6]~feeder_combout\);

-- Location: FF_X82_Y33_N40
\adders_out1[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][6]~q\);

-- Location: LABCELL_X85_Y33_N12
\Add18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~17_sumout\ = SUM(( \multipliers_out1_reg[2][6]~q\ ) + ( \adders_out1[4][6]~q\ ) + ( \Add18~14\ ))
-- \Add18~18\ = CARRY(( \multipliers_out1_reg[2][6]~q\ ) + ( \adders_out1[4][6]~q\ ) + ( \Add18~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[2][6]~q\,
	datac => \ALT_INV_adders_out1[4][6]~q\,
	cin => \Add18~14\,
	sumout => \Add18~17_sumout\,
	cout => \Add18~18\);

-- Location: FF_X85_Y33_N14
\adders_in1_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][6]~q\);

-- Location: MLABCELL_X84_Y33_N57
\adders_out1[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][6]~feeder_combout\ = ( \adders_in1_reg[5][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][6]~q\,
	combout => \adders_out1[5][6]~feeder_combout\);

-- Location: FF_X84_Y33_N59
\adders_out1[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][6]~q\);

-- Location: LABCELL_X85_Y34_N15
\Add19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~21_sumout\ = SUM(( \adders_out1[5][6]~q\ ) + ( \multipliers_out1_reg[1][6]~q\ ) + ( \Add19~18\ ))
-- \Add19~22\ = CARRY(( \adders_out1[5][6]~q\ ) + ( \multipliers_out1_reg[1][6]~q\ ) + ( \Add19~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[1][6]~q\,
	datad => \ALT_INV_adders_out1[5][6]~q\,
	cin => \Add19~18\,
	sumout => \Add19~21_sumout\,
	cout => \Add19~22\);

-- Location: FF_X85_Y34_N16
\adders_in1_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][6]~q\);

-- Location: FF_X83_Y34_N17
\adders_out1[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][6]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][6]~q\);

-- Location: MLABCELL_X87_Y34_N15
\Add20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~21_sumout\ = SUM(( \multipliers_out1_reg[0][6]~q\ ) + ( \adders_out1[6][6]~q\ ) + ( \Add20~18\ ))
-- \Add20~22\ = CARRY(( \multipliers_out1_reg[0][6]~q\ ) + ( \adders_out1[6][6]~q\ ) + ( \Add20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[6][6]~q\,
	datac => \ALT_INV_multipliers_out1_reg[0][6]~q\,
	cin => \Add20~18\,
	sumout => \Add20~21_sumout\,
	cout => \Add20~22\);

-- Location: FF_X87_Y34_N17
\adders_in1_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][6]~q\);

-- Location: LABCELL_X81_Y30_N36
\adders_out1[7][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][6]~feeder_combout\ = ( \adders_in1_reg[7][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][6]~q\,
	combout => \adders_out1[7][6]~feeder_combout\);

-- Location: FF_X81_Y30_N38
\adders_out1[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][6]~q\);

-- Location: FF_X81_Y30_N59
\y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(6));

-- Location: LABCELL_X80_Y30_N15
\Add22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~21_sumout\ = SUM(( y1(6) ) + ( y0(6) ) + ( \Add22~18\ ))
-- \Add22~22\ = CARRY(( y1(6) ) + ( y0(6) ) + ( \Add22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y0(6),
	datad => ALT_INV_y1(6),
	cin => \Add22~18\,
	sumout => \Add22~21_sumout\,
	cout => \Add22~22\);

-- Location: FF_X80_Y30_N16
\Dout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~21_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[6]~reg0_q\);

-- Location: FF_X82_Y32_N35
\Din1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(6));

-- Location: FF_X82_Y32_N37
\w4_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(8));

-- Location: MLABCELL_X84_Y31_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( w4_1(6) ) + ( !w4_1(8) ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( w4_1(6) ) + ( !w4_1(8) ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(8),
	datad => ALT_INV_w4_1(6),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X84_Y31_N16
\w3_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(6));

-- Location: MLABCELL_X84_Y33_N54
\multipliers_out1_reg[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[1][7]~feeder_combout\ = ( w3_1(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_1(6),
	combout => \multipliers_out1_reg[1][7]~feeder_combout\);

-- Location: FF_X84_Y33_N56
\multipliers_out1_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][7]~q\);

-- Location: MLABCELL_X84_Y31_N36
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( w4_1(6) ) + ( w4_1(4) ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( w4_1(6) ) + ( w4_1(4) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w4_1(4),
	datad => ALT_INV_w4_1(6),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X84_Y31_N37
\w5_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(4));

-- Location: FF_X82_Y31_N17
\multipliers_out1_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(4),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][7]~q\);

-- Location: MLABCELL_X84_Y33_N12
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( !w3_1(5) ) + ( GND ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( !w3_1(5) ) + ( GND ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_1(5),
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X84_Y33_N14
\multipliers_out1_reg[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][7]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y34_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( !w4_1(8) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( !w4_1(8) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(8),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X84_Y34_N17
\w2n_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(7));

-- Location: MLABCELL_X84_Y34_N27
\multipliers_out1_reg[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[0][7]~feeder_combout\ = w2n_1(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w2n_1(7),
	combout => \multipliers_out1_reg[0][7]~feeder_combout\);

-- Location: FF_X84_Y34_N28
\multipliers_out1_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][7]~q\);

-- Location: FF_X83_Y30_N19
\adders_in1_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][7]~q\);

-- Location: LABCELL_X80_Y31_N57
\adders_out1[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[0][7]~feeder_combout\ = ( \adders_in1_reg[0][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[0][7]~q\,
	combout => \adders_out1[0][7]~feeder_combout\);

-- Location: FF_X80_Y31_N58
\adders_out1[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][7]~q\);

-- Location: LABCELL_X83_Y32_N18
\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( \multipliers_out1_reg[1][7]~q\ ) + ( \adders_out1[0][7]~q\ ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( \multipliers_out1_reg[1][7]~q\ ) + ( \adders_out1[0][7]~q\ ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[0][7]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][7]~q\,
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

-- Location: FF_X83_Y32_N19
\adders_in1_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][7]~q\);

-- Location: MLABCELL_X84_Y32_N57
\adders_out1[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][7]~feeder_combout\ = ( \adders_in1_reg[1][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[1][7]~q\,
	combout => \adders_out1[1][7]~feeder_combout\);

-- Location: FF_X84_Y32_N59
\adders_out1[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][7]~q\);

-- Location: MLABCELL_X84_Y32_N15
\Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~21_sumout\ = SUM(( \adders_out1[1][7]~q\ ) + ( \multipliers_out1_reg[2][7]~DUPLICATE_q\ ) + ( \Add15~18\ ))
-- \Add15~22\ = CARRY(( \adders_out1[1][7]~q\ ) + ( \multipliers_out1_reg[2][7]~DUPLICATE_q\ ) + ( \Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][7]~DUPLICATE_q\,
	datad => \ALT_INV_adders_out1[1][7]~q\,
	cin => \Add15~18\,
	sumout => \Add15~21_sumout\,
	cout => \Add15~22\);

-- Location: FF_X84_Y32_N17
\adders_in1_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][7]~q\);

-- Location: FF_X82_Y31_N49
\adders_out1[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][7]~q\);

-- Location: LABCELL_X83_Y31_N12
\Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~17_sumout\ = SUM(( \adders_out1[2][7]~q\ ) + ( \multipliers_out1_reg[3][7]~q\ ) + ( \Add16~14\ ))
-- \Add16~18\ = CARRY(( \adders_out1[2][7]~q\ ) + ( \multipliers_out1_reg[3][7]~q\ ) + ( \Add16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[3][7]~q\,
	datad => \ALT_INV_adders_out1[2][7]~q\,
	cin => \Add16~14\,
	sumout => \Add16~17_sumout\,
	cout => \Add16~18\);

-- Location: FF_X83_Y31_N13
\adders_in1_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][7]~q\);

-- Location: FF_X81_Y31_N50
\adders_out1[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][7]~q\);

-- Location: LABCELL_X81_Y31_N12
\Add17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~17_sumout\ = SUM(( \multipliers_out1_reg[3][7]~q\ ) + ( \adders_out1[3][7]~q\ ) + ( \Add17~14\ ))
-- \Add17~18\ = CARRY(( \multipliers_out1_reg[3][7]~q\ ) + ( \adders_out1[3][7]~q\ ) + ( \Add17~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[3][7]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][7]~q\,
	cin => \Add17~14\,
	sumout => \Add17~17_sumout\,
	cout => \Add17~18\);

-- Location: FF_X81_Y31_N13
\adders_in1_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][7]~q\);

-- Location: LABCELL_X83_Y34_N33
\adders_out1[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][7]~feeder_combout\ = ( \adders_in1_reg[4][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][7]~q\,
	combout => \adders_out1[4][7]~feeder_combout\);

-- Location: FF_X83_Y34_N35
\adders_out1[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][7]~q\);

-- Location: FF_X84_Y33_N13
\multipliers_out1_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][7]~q\);

-- Location: LABCELL_X85_Y33_N15
\Add18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~21_sumout\ = SUM(( \multipliers_out1_reg[2][7]~q\ ) + ( \adders_out1[4][7]~q\ ) + ( \Add18~18\ ))
-- \Add18~22\ = CARRY(( \multipliers_out1_reg[2][7]~q\ ) + ( \adders_out1[4][7]~q\ ) + ( \Add18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[4][7]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][7]~q\,
	cin => \Add18~18\,
	sumout => \Add18~21_sumout\,
	cout => \Add18~22\);

-- Location: FF_X85_Y33_N16
\adders_in1_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][7]~q\);

-- Location: MLABCELL_X84_Y34_N39
\adders_out1[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][7]~feeder_combout\ = ( \adders_in1_reg[5][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][7]~q\,
	combout => \adders_out1[5][7]~feeder_combout\);

-- Location: FF_X84_Y34_N40
\adders_out1[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][7]~q\);

-- Location: LABCELL_X85_Y34_N18
\Add19~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~25_sumout\ = SUM(( \multipliers_out1_reg[1][7]~q\ ) + ( \adders_out1[5][7]~q\ ) + ( \Add19~22\ ))
-- \Add19~26\ = CARRY(( \multipliers_out1_reg[1][7]~q\ ) + ( \adders_out1[5][7]~q\ ) + ( \Add19~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[1][7]~q\,
	datac => \ALT_INV_adders_out1[5][7]~q\,
	cin => \Add19~22\,
	sumout => \Add19~25_sumout\,
	cout => \Add19~26\);

-- Location: FF_X85_Y34_N20
\adders_in1_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][7]~q\);

-- Location: MLABCELL_X84_Y34_N36
\adders_out1[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][7]~feeder_combout\ = ( \adders_in1_reg[6][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][7]~q\,
	combout => \adders_out1[6][7]~feeder_combout\);

-- Location: FF_X84_Y34_N38
\adders_out1[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][7]~q\);

-- Location: MLABCELL_X87_Y34_N18
\Add20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~25_sumout\ = SUM(( \multipliers_out1_reg[0][7]~q\ ) + ( \adders_out1[6][7]~q\ ) + ( \Add20~22\ ))
-- \Add20~26\ = CARRY(( \multipliers_out1_reg[0][7]~q\ ) + ( \adders_out1[6][7]~q\ ) + ( \Add20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[6][7]~q\,
	datac => \ALT_INV_multipliers_out1_reg[0][7]~q\,
	cin => \Add20~22\,
	sumout => \Add20~25_sumout\,
	cout => \Add20~26\);

-- Location: FF_X87_Y34_N20
\adders_in1_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][7]~q\);

-- Location: FF_X81_Y30_N37
\adders_out1[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][7]~q\);

-- Location: FF_X81_Y30_N8
\y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(7));

-- Location: MLABCELL_X78_Y33_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !w64_0(12) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !w64_0(12) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(12),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X78_Y33_N47
\w2n_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(7));

-- Location: MLABCELL_X78_Y34_N51
\multipliers_out0_reg[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[1][7]~feeder_combout\ = w2n_0(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w2n_0(7),
	combout => \multipliers_out0_reg[1][7]~feeder_combout\);

-- Location: FF_X78_Y34_N52
\multipliers_out0_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][7]~q\);

-- Location: IOIBUF_X89_Y25_N4
\Din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: FF_X82_Y33_N47
\Din0_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din0_reg(7));

-- Location: FF_X82_Y33_N53
\w64_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din0_reg(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w64_0(13));

-- Location: LABCELL_X77_Y33_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( w64_0(11) ) + ( !w64_0(13) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( w64_0(11) ) + ( !w64_0(13) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(13),
	datad => ALT_INV_w64_0(11),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X77_Y33_N19
\w3_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(7));

-- Location: LABCELL_X74_Y33_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !w3_0(7) ) + ( w64_0(7) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !w3_0(7) ) + ( w64_0(7) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(7),
	datad => ALT_INV_w3_0(7),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X74_Y33_N19
\w61_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(7));

-- Location: FF_X80_Y33_N55
\multipliers_out0_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w61_0(7),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][7]~q\);

-- Location: LABCELL_X81_Y32_N3
\multipliers_out0_reg[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[0][7]~feeder_combout\ = ( w3_0(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w3_0(7),
	combout => \multipliers_out0_reg[0][7]~feeder_combout\);

-- Location: FF_X81_Y32_N4
\multipliers_out0_reg[0][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][7]~DUPLICATE_q\);

-- Location: FF_X80_Y33_N7
\adders_in0_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][7]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][7]~q\);

-- Location: FF_X78_Y34_N53
\adders_out0[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][7]~q\);

-- Location: MLABCELL_X78_Y34_N18
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \multipliers_out0_reg[1][7]~q\ ) + ( \adders_out0[0][7]~q\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( \multipliers_out0_reg[1][7]~q\ ) + ( \adders_out0[0][7]~q\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[0][7]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][7]~q\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X78_Y34_N20
\adders_in0_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][7]~q\);

-- Location: FF_X78_Y34_N44
\adders_out0[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[1][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][7]~q\);

-- Location: LABCELL_X79_Y34_N21
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( \multipliers_out0_reg[0][7]~DUPLICATE_q\ ) + ( \adders_out0[1][7]~q\ ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( \multipliers_out0_reg[0][7]~DUPLICATE_q\ ) + ( \adders_out0[1][7]~q\ ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[1][7]~q\,
	datac => \ALT_INV_multipliers_out0_reg[0][7]~DUPLICATE_q\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X79_Y34_N22
\adders_in0_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][7]~q\);

-- Location: LABCELL_X81_Y35_N36
\adders_out0[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][7]~feeder_combout\ = ( \adders_in0_reg[2][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][7]~q\,
	combout => \adders_out0[2][7]~feeder_combout\);

-- Location: FF_X81_Y35_N37
\adders_out0[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][7]~q\);

-- Location: LABCELL_X79_Y35_N21
\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( \adders_out0[2][7]~q\ ) + ( \multipliers_out0_reg[3][7]~q\ ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( \adders_out0[2][7]~q\ ) + ( \multipliers_out0_reg[3][7]~q\ ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][7]~q\,
	datad => \ALT_INV_adders_out0[2][7]~q\,
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\);

-- Location: FF_X79_Y35_N23
\adders_in0_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][7]~q\);

-- Location: LABCELL_X80_Y33_N3
\adders_out0[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][7]~feeder_combout\ = ( \adders_in0_reg[3][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][7]~q\,
	combout => \adders_out0[3][7]~feeder_combout\);

-- Location: FF_X80_Y33_N4
\adders_out0[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][7]~q\);

-- Location: LABCELL_X79_Y33_N21
\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( \multipliers_out0_reg[0][7]~DUPLICATE_q\ ) + ( \adders_out0[3][7]~q\ ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( \multipliers_out0_reg[0][7]~DUPLICATE_q\ ) + ( \adders_out0[3][7]~q\ ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][7]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][7]~DUPLICATE_q\,
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: FF_X79_Y33_N22
\adders_in0_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][7]~q\);

-- Location: LABCELL_X81_Y34_N48
\adders_out0[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][7]~feeder_combout\ = \adders_in0_reg[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in0_reg[4][7]~q\,
	combout => \adders_out0[4][7]~feeder_combout\);

-- Location: FF_X81_Y34_N50
\adders_out0[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][7]~q\);

-- Location: LABCELL_X80_Y34_N18
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( \adders_out0[4][7]~q\ ) + ( \multipliers_out0_reg[1][7]~q\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( \adders_out0[4][7]~q\ ) + ( \multipliers_out0_reg[1][7]~q\ ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][7]~q\,
	datad => \ALT_INV_adders_out0[4][7]~q\,
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: FF_X80_Y34_N19
\adders_in0_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][7]~q\);

-- Location: FF_X81_Y34_N35
\adders_out0[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][7]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][7]~q\);

-- Location: FF_X81_Y32_N5
\multipliers_out0_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][7]~q\);

-- Location: LABCELL_X80_Y32_N21
\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( \multipliers_out0_reg[0][7]~q\ ) + ( \adders_out0[5][7]~q\ ) + ( \Add12~26\ ))
-- \Add12~30\ = CARRY(( \multipliers_out0_reg[0][7]~q\ ) + ( \adders_out0[5][7]~q\ ) + ( \Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[5][7]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][7]~q\,
	cin => \Add12~26\,
	sumout => \Add12~29_sumout\,
	cout => \Add12~30\);

-- Location: FF_X80_Y32_N22
\adders_in0_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][7]~q\);

-- Location: LABCELL_X80_Y32_N51
\adders_out0[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][7]~feeder_combout\ = \adders_in0_reg[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in0_reg[6][7]~q\,
	combout => \adders_out0[6][7]~feeder_combout\);

-- Location: FF_X80_Y32_N53
\adders_out0[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][7]~q\);

-- Location: LABCELL_X79_Y32_N18
\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( \multipliers_out0_reg[1][7]~q\ ) + ( \adders_out0[6][7]~q\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( \multipliers_out0_reg[1][7]~q\ ) + ( \adders_out0[6][7]~q\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][7]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][7]~q\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

-- Location: FF_X79_Y32_N19
\adders_in0_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][7]~q\);

-- Location: LABCELL_X81_Y35_N21
\adders_out0[7][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][7]~feeder_combout\ = ( \adders_in0_reg[7][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][7]~q\,
	combout => \adders_out0[7][7]~feeder_combout\);

-- Location: FF_X81_Y35_N22
\adders_out0[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][7]~q\);

-- Location: LABCELL_X80_Y31_N3
\y0[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[7]~feeder_combout\ = ( \adders_out0[7][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][7]~q\,
	combout => \y0[7]~feeder_combout\);

-- Location: FF_X80_Y31_N4
\y0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(7));

-- Location: LABCELL_X80_Y30_N18
\Add22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~25_sumout\ = SUM(( y0(7) ) + ( y1(7) ) + ( \Add22~22\ ))
-- \Add22~26\ = CARRY(( y0(7) ) + ( y1(7) ) + ( \Add22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(7),
	datad => ALT_INV_y0(7),
	cin => \Add22~22\,
	sumout => \Add22~25_sumout\,
	cout => \Add22~26\);

-- Location: FF_X80_Y30_N19
\Dout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~25_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[7]~reg0_q\);

-- Location: MLABCELL_X84_Y33_N15
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( !w3_1(6) ) + ( GND ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( !w3_1(6) ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(6),
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X84_Y33_N16
\multipliers_out1_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][8]~q\);

-- Location: FF_X84_Y33_N17
\multipliers_out1_reg[2][8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][8]~DUPLICATE_q\);

-- Location: FF_X82_Y33_N58
\Din1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Din[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Din1_reg(7));

-- Location: FF_X83_Y33_N1
\w4_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => Din1_reg(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w4_1(9));

-- Location: MLABCELL_X84_Y31_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !w4_1(9) ) + ( w4_1(7) ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( !w4_1(9) ) + ( w4_1(7) ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(7),
	datad => ALT_INV_w4_1(9),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X84_Y31_N19
\w3_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(7));

-- Location: FF_X84_Y33_N55
\multipliers_out1_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(7),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][8]~q\);

-- Location: MLABCELL_X84_Y34_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( !w4_1(9) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( !w4_1(9) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w4_1(9),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X84_Y34_N20
\w2n_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(8));

-- Location: FF_X84_Y34_N47
\multipliers_out1_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(8),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][8]~q\);

-- Location: FF_X83_Y30_N41
\adders_in1_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out1_reg[0][8]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][8]~q\);

-- Location: MLABCELL_X82_Y30_N30
\adders_out1[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[0][8]~feeder_combout\ = ( \adders_in1_reg[0][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[0][8]~q\,
	combout => \adders_out1[0][8]~feeder_combout\);

-- Location: FF_X82_Y30_N31
\adders_out1[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[0][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][8]~q\);

-- Location: LABCELL_X83_Y32_N21
\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( \adders_out1[0][8]~q\ ) + ( \multipliers_out1_reg[1][8]~q\ ) + ( \Add14~26\ ))
-- \Add14~30\ = CARRY(( \adders_out1[0][8]~q\ ) + ( \multipliers_out1_reg[1][8]~q\ ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[1][8]~q\,
	datad => \ALT_INV_adders_out1[0][8]~q\,
	cin => \Add14~26\,
	sumout => \Add14~29_sumout\,
	cout => \Add14~30\);

-- Location: FF_X83_Y32_N22
\adders_in1_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][8]~q\);

-- Location: FF_X84_Y32_N49
\adders_out1[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][8]~q\);

-- Location: MLABCELL_X84_Y32_N18
\Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~25_sumout\ = SUM(( \multipliers_out1_reg[2][8]~DUPLICATE_q\ ) + ( \adders_out1[1][8]~q\ ) + ( \Add15~22\ ))
-- \Add15~26\ = CARRY(( \multipliers_out1_reg[2][8]~DUPLICATE_q\ ) + ( \adders_out1[1][8]~q\ ) + ( \Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_multipliers_out1_reg[2][8]~DUPLICATE_q\,
	dataf => \ALT_INV_adders_out1[1][8]~q\,
	cin => \Add15~22\,
	sumout => \Add15~25_sumout\,
	cout => \Add15~26\);

-- Location: FF_X84_Y32_N19
\adders_in1_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][8]~q\);

-- Location: MLABCELL_X82_Y31_N51
\adders_out1[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][8]~feeder_combout\ = ( \adders_in1_reg[2][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][8]~q\,
	combout => \adders_out1[2][8]~feeder_combout\);

-- Location: FF_X82_Y31_N52
\adders_out1[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][8]~q\);

-- Location: MLABCELL_X84_Y31_N39
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( w4_1(5) ) + ( w4_1(7) ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( w4_1(5) ) + ( w4_1(7) ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(7),
	datad => ALT_INV_w4_1(5),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X84_Y31_N40
\w5_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(5));

-- Location: FF_X82_Y32_N31
\multipliers_out1_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(5),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][8]~q\);

-- Location: LABCELL_X83_Y31_N15
\Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~21_sumout\ = SUM(( \multipliers_out1_reg[3][8]~q\ ) + ( \adders_out1[2][8]~q\ ) + ( \Add16~18\ ))
-- \Add16~22\ = CARRY(( \multipliers_out1_reg[3][8]~q\ ) + ( \adders_out1[2][8]~q\ ) + ( \Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[2][8]~q\,
	datac => \ALT_INV_multipliers_out1_reg[3][8]~q\,
	cin => \Add16~18\,
	sumout => \Add16~21_sumout\,
	cout => \Add16~22\);

-- Location: FF_X83_Y31_N16
\adders_in1_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][8]~q\);

-- Location: FF_X81_Y31_N59
\adders_out1[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][8]~q\);

-- Location: LABCELL_X81_Y31_N15
\Add17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~21_sumout\ = SUM(( \multipliers_out1_reg[3][8]~q\ ) + ( \adders_out1[3][8]~q\ ) + ( \Add17~18\ ))
-- \Add17~22\ = CARRY(( \multipliers_out1_reg[3][8]~q\ ) + ( \adders_out1[3][8]~q\ ) + ( \Add17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[3][8]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][8]~q\,
	cin => \Add17~18\,
	sumout => \Add17~21_sumout\,
	cout => \Add17~22\);

-- Location: FF_X81_Y31_N17
\adders_in1_reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][8]~q\);

-- Location: FF_X83_Y34_N22
\adders_out1[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][8]~q\);

-- Location: LABCELL_X85_Y33_N18
\Add18~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~25_sumout\ = SUM(( \multipliers_out1_reg[2][8]~q\ ) + ( \adders_out1[4][8]~q\ ) + ( \Add18~22\ ))
-- \Add18~26\ = CARRY(( \multipliers_out1_reg[2][8]~q\ ) + ( \adders_out1[4][8]~q\ ) + ( \Add18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[2][8]~q\,
	datac => \ALT_INV_adders_out1[4][8]~q\,
	cin => \Add18~22\,
	sumout => \Add18~25_sumout\,
	cout => \Add18~26\);

-- Location: FF_X85_Y33_N19
\adders_in1_reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][8]~q\);

-- Location: FF_X85_Y34_N53
\adders_out1[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][8]~q\);

-- Location: LABCELL_X85_Y34_N21
\Add19~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~29_sumout\ = SUM(( \multipliers_out1_reg[1][8]~q\ ) + ( \adders_out1[5][8]~q\ ) + ( \Add19~26\ ))
-- \Add19~30\ = CARRY(( \multipliers_out1_reg[1][8]~q\ ) + ( \adders_out1[5][8]~q\ ) + ( \Add19~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[5][8]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][8]~q\,
	cin => \Add19~26\,
	sumout => \Add19~29_sumout\,
	cout => \Add19~30\);

-- Location: FF_X85_Y34_N23
\adders_in1_reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][8]~q\);

-- Location: FF_X84_Y34_N29
\adders_out1[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][8]~q\);

-- Location: MLABCELL_X87_Y34_N21
\Add20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~29_sumout\ = SUM(( \multipliers_out1_reg[0][8]~q\ ) + ( \adders_out1[6][8]~q\ ) + ( \Add20~26\ ))
-- \Add20~30\ = CARRY(( \multipliers_out1_reg[0][8]~q\ ) + ( \adders_out1[6][8]~q\ ) + ( \Add20~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][8]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][8]~q\,
	cin => \Add20~26\,
	sumout => \Add20~29_sumout\,
	cout => \Add20~30\);

-- Location: FF_X87_Y34_N22
\adders_in1_reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][8]~q\);

-- Location: FF_X81_Y30_N41
\adders_out1[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][8]~q\);

-- Location: LABCELL_X80_Y30_N51
\y1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[8]~feeder_combout\ = ( \adders_out1[7][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[7][8]~q\,
	combout => \y1[8]~feeder_combout\);

-- Location: FF_X80_Y30_N52
\y1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(8));

-- Location: MLABCELL_X78_Y33_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !w64_0(13) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !w64_0(13) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w64_0(13),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X78_Y33_N49
\w2n_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(8));

-- Location: FF_X81_Y32_N16
\multipliers_out0_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_0(8),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][8]~q\);

-- Location: LABCELL_X77_Y33_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !w64_0(13) ) + ( w64_0(12) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !w64_0(13) ) + ( w64_0(12) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(13),
	dataf => ALT_INV_w64_0(12),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X77_Y33_N22
\w3_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(8));

-- Location: LABCELL_X74_Y33_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( w64_0(8) ) + ( !w3_0(8) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( w64_0(8) ) + ( !w3_0(8) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_0(8),
	datad => ALT_INV_w64_0(8),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X74_Y33_N22
\w61_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(8));

-- Location: LABCELL_X75_Y34_N12
\multipliers_out0_reg[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][8]~feeder_combout\ = ( w61_0(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(8),
	combout => \multipliers_out0_reg[3][8]~feeder_combout\);

-- Location: FF_X75_Y34_N13
\multipliers_out0_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][8]~q\);

-- Location: FF_X81_Y32_N29
\multipliers_out0_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_0(8),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][8]~q\);

-- Location: MLABCELL_X78_Y32_N27
\adders_in0_reg[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in0_reg[0][8]~feeder_combout\ = ( \multipliers_out0_reg[0][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out0_reg[0][8]~q\,
	combout => \adders_in0_reg[0][8]~feeder_combout\);

-- Location: FF_X78_Y32_N29
\adders_in0_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in0_reg[0][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][8]~q\);

-- Location: FF_X78_Y34_N47
\adders_out0[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][8]~q\);

-- Location: MLABCELL_X78_Y34_N21
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \multipliers_out0_reg[1][8]~q\ ) + ( \adders_out0[0][8]~q\ ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( \multipliers_out0_reg[1][8]~q\ ) + ( \adders_out0[0][8]~q\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[0][8]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][8]~q\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X78_Y34_N22
\adders_in0_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][8]~q\);

-- Location: FF_X79_Y34_N53
\adders_out0[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[1][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][8]~q\);

-- Location: LABCELL_X79_Y34_N24
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[1][8]~q\ ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[1][8]~q\ ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[1][8]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][8]~q\,
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X79_Y34_N26
\adders_in0_reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][8]~q\);

-- Location: MLABCELL_X78_Y34_N57
\adders_out0[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][8]~feeder_combout\ = ( \adders_in0_reg[2][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][8]~q\,
	combout => \adders_out0[2][8]~feeder_combout\);

-- Location: FF_X78_Y34_N58
\adders_out0[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][8]~q\);

-- Location: LABCELL_X79_Y35_N24
\Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( \adders_out0[2][8]~q\ ) + ( \multipliers_out0_reg[3][8]~q\ ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( \adders_out0[2][8]~q\ ) + ( \multipliers_out0_reg[3][8]~q\ ) + ( \Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][8]~q\,
	datad => \ALT_INV_adders_out0[2][8]~q\,
	cin => \Add9~30\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: FF_X79_Y35_N25
\adders_in0_reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][8]~q\);

-- Location: LABCELL_X81_Y34_N39
\adders_out0[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][8]~feeder_combout\ = ( \adders_in0_reg[3][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][8]~q\,
	combout => \adders_out0[3][8]~feeder_combout\);

-- Location: FF_X81_Y34_N40
\adders_out0[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][8]~q\);

-- Location: LABCELL_X79_Y33_N24
\Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[3][8]~q\ ) + ( \Add10~30\ ))
-- \Add10~34\ = CARRY(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[3][8]~q\ ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][8]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][8]~q\,
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\,
	cout => \Add10~34\);

-- Location: FF_X79_Y33_N26
\adders_in0_reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][8]~q\);

-- Location: FF_X80_Y34_N59
\adders_out0[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][8]~q\);

-- Location: LABCELL_X80_Y34_N21
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( \adders_out0[4][8]~q\ ) + ( \multipliers_out0_reg[1][8]~q\ ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( \adders_out0[4][8]~q\ ) + ( \multipliers_out0_reg[1][8]~q\ ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][8]~q\,
	datad => \ALT_INV_adders_out0[4][8]~q\,
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: FF_X80_Y34_N23
\adders_in0_reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][8]~q\);

-- Location: FF_X80_Y34_N49
\adders_out0[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][8]~q\);

-- Location: LABCELL_X80_Y32_N24
\Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~33_sumout\ = SUM(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[5][8]~q\ ) + ( \Add12~30\ ))
-- \Add12~34\ = CARRY(( \multipliers_out0_reg[0][8]~q\ ) + ( \adders_out0[5][8]~q\ ) + ( \Add12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[5][8]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][8]~q\,
	cin => \Add12~30\,
	sumout => \Add12~33_sumout\,
	cout => \Add12~34\);

-- Location: FF_X80_Y32_N26
\adders_in0_reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][8]~q\);

-- Location: FF_X80_Y32_N58
\adders_out0[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][8]~q\);

-- Location: LABCELL_X79_Y32_N21
\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( \multipliers_out0_reg[1][8]~q\ ) + ( \adders_out0[6][8]~q\ ) + ( \Add13~26\ ))
-- \Add13~30\ = CARRY(( \multipliers_out0_reg[1][8]~q\ ) + ( \adders_out0[6][8]~q\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[6][8]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][8]~q\,
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\,
	cout => \Add13~30\);

-- Location: FF_X79_Y32_N22
\adders_in0_reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][8]~q\);

-- Location: FF_X79_Y34_N46
\adders_out0[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][8]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][8]~q\);

-- Location: LABCELL_X80_Y31_N42
\y0[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[8]~feeder_combout\ = ( \adders_out0[7][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][8]~q\,
	combout => \y0[8]~feeder_combout\);

-- Location: FF_X80_Y31_N43
\y0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(8));

-- Location: LABCELL_X80_Y30_N21
\Add22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~29_sumout\ = SUM(( y0(8) ) + ( y1(8) ) + ( \Add22~26\ ))
-- \Add22~30\ = CARRY(( y0(8) ) + ( y1(8) ) + ( \Add22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(8),
	datad => ALT_INV_y0(8),
	cin => \Add22~26\,
	sumout => \Add22~29_sumout\,
	cout => \Add22~30\);

-- Location: FF_X80_Y30_N22
\Dout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~29_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[8]~reg0_q\);

-- Location: LABCELL_X77_Y33_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !w64_0(13) ) + ( w64_0(13) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !w64_0(13) ) + ( w64_0(13) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(13),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X77_Y33_N25
\w3_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(9));

-- Location: FF_X77_Y34_N53
\multipliers_out0_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_0(9),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][9]~q\);

-- Location: MLABCELL_X78_Y33_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !w64_0(13) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w64_0(13),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X78_Y33_N52
\w2n_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_0(9));

-- Location: LABCELL_X81_Y32_N24
\multipliers_out0_reg[1][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[1][15]~feeder_combout\ = ( w2n_0(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w2n_0(9),
	combout => \multipliers_out0_reg[1][15]~feeder_combout\);

-- Location: FF_X81_Y32_N25
\multipliers_out0_reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[1][15]~q\);

-- Location: FF_X78_Y34_N35
\adders_in0_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][9]~q\);

-- Location: MLABCELL_X78_Y34_N36
\adders_out0[0][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[0][9]~feeder_combout\ = \adders_in0_reg[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in0_reg[0][9]~q\,
	combout => \adders_out0[0][9]~feeder_combout\);

-- Location: FF_X78_Y34_N37
\adders_out0[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[0][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][9]~q\);

-- Location: MLABCELL_X78_Y34_N24
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[0][9]~q\ ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[0][9]~q\ ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	dataf => \ALT_INV_adders_out0[0][9]~q\,
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: FF_X78_Y34_N25
\adders_in0_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][9]~q\);

-- Location: LABCELL_X79_Y34_N45
\adders_out0[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][9]~feeder_combout\ = ( \adders_in0_reg[1][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[1][9]~q\,
	combout => \adders_out0[1][9]~feeder_combout\);

-- Location: FF_X79_Y34_N47
\adders_out0[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][9]~q\);

-- Location: LABCELL_X79_Y34_N27
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( \adders_out0[1][9]~q\ ) + ( \multipliers_out0_reg[0][9]~q\ ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( \adders_out0[1][9]~q\ ) + ( \multipliers_out0_reg[0][9]~q\ ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][9]~q\,
	datad => \ALT_INV_adders_out0[1][9]~q\,
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X79_Y34_N28
\adders_in0_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][9]~q\);

-- Location: FF_X77_Y34_N22
\adders_out0[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[2][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][9]~q\);

-- Location: LABCELL_X74_Y33_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( w64_0(9) ) + ( !w3_0(9) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( w64_0(9) ) + ( !w3_0(9) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_0(9),
	datad => ALT_INV_w64_0(9),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X74_Y33_N25
\w61_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(9));

-- Location: LABCELL_X81_Y35_N42
\multipliers_out0_reg[3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][9]~feeder_combout\ = ( w61_0(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(9),
	combout => \multipliers_out0_reg[3][9]~feeder_combout\);

-- Location: FF_X81_Y35_N43
\multipliers_out0_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][9]~q\);

-- Location: LABCELL_X79_Y35_N27
\Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( \multipliers_out0_reg[3][9]~q\ ) + ( \adders_out0[2][9]~q\ ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( \multipliers_out0_reg[3][9]~q\ ) + ( \adders_out0[2][9]~q\ ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[2][9]~q\,
	datad => \ALT_INV_multipliers_out0_reg[3][9]~q\,
	cin => \Add9~34\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\);

-- Location: FF_X79_Y35_N28
\adders_in0_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][9]~q\);

-- Location: LABCELL_X81_Y34_N18
\adders_out0[3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][9]~feeder_combout\ = ( \adders_in0_reg[3][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][9]~q\,
	combout => \adders_out0[3][9]~feeder_combout\);

-- Location: FF_X81_Y34_N19
\adders_out0[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][9]~q\);

-- Location: LABCELL_X79_Y33_N27
\Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~37_sumout\ = SUM(( \multipliers_out0_reg[0][9]~q\ ) + ( \adders_out0[3][9]~q\ ) + ( \Add10~34\ ))
-- \Add10~38\ = CARRY(( \multipliers_out0_reg[0][9]~q\ ) + ( \adders_out0[3][9]~q\ ) + ( \Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][9]~q\,
	datac => \ALT_INV_adders_out0[3][9]~q\,
	cin => \Add10~34\,
	sumout => \Add10~37_sumout\,
	cout => \Add10~38\);

-- Location: FF_X79_Y33_N28
\adders_in0_reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][9]~q\);

-- Location: FF_X81_Y34_N4
\adders_out0[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][9]~q\);

-- Location: LABCELL_X80_Y34_N24
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( \adders_out0[4][9]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( \adders_out0[4][9]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datad => \ALT_INV_adders_out0[4][9]~q\,
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\);

-- Location: FF_X80_Y34_N26
\adders_in0_reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][9]~q\);

-- Location: LABCELL_X80_Y34_N51
\adders_out0[5][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][9]~feeder_combout\ = \adders_in0_reg[5][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_in0_reg[5][9]~q\,
	combout => \adders_out0[5][9]~feeder_combout\);

-- Location: FF_X80_Y34_N52
\adders_out0[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][9]~q\);

-- Location: LABCELL_X80_Y32_N27
\Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~37_sumout\ = SUM(( \multipliers_out0_reg[0][9]~q\ ) + ( \adders_out0[5][9]~q\ ) + ( \Add12~34\ ))
-- \Add12~38\ = CARRY(( \multipliers_out0_reg[0][9]~q\ ) + ( \adders_out0[5][9]~q\ ) + ( \Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][9]~q\,
	datac => \ALT_INV_adders_out0[5][9]~q\,
	cin => \Add12~34\,
	sumout => \Add12~37_sumout\,
	cout => \Add12~38\);

-- Location: FF_X80_Y32_N28
\adders_in0_reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][9]~q\);

-- Location: FF_X81_Y32_N47
\adders_out0[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][9]~q\);

-- Location: LABCELL_X79_Y32_N24
\Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~33_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][9]~q\ ) + ( \Add13~30\ ))
-- \Add13~34\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][9]~q\ ) + ( \Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][9]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~30\,
	sumout => \Add13~33_sumout\,
	cout => \Add13~34\);

-- Location: FF_X79_Y32_N25
\adders_in0_reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][9]~q\);

-- Location: FF_X82_Y35_N13
\adders_out0[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][9]~q\);

-- Location: LABCELL_X83_Y30_N48
\y0[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[9]~feeder_combout\ = ( \adders_out0[7][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][9]~q\,
	combout => \y0[9]~feeder_combout\);

-- Location: FF_X83_Y30_N49
\y0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(9));

-- Location: MLABCELL_X84_Y31_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !w4_1(9) ) + ( w4_1(8) ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( !w4_1(9) ) + ( w4_1(8) ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(8),
	datad => ALT_INV_w4_1(9),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X84_Y31_N23
\w3_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(8));

-- Location: MLABCELL_X84_Y33_N39
\multipliers_out1_reg[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[1][9]~feeder_combout\ = w3_1(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(8),
	combout => \multipliers_out1_reg[1][9]~feeder_combout\);

-- Location: FF_X84_Y33_N41
\multipliers_out1_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][9]~q\);

-- Location: MLABCELL_X84_Y33_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( !w3_1(7) ) + ( GND ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( !w3_1(7) ) + ( GND ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(7),
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X84_Y33_N19
\multipliers_out1_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][9]~q\);

-- Location: MLABCELL_X84_Y31_N42
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( w4_1(6) ) + ( w4_1(8) ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( w4_1(6) ) + ( w4_1(8) ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w4_1(8),
	datad => ALT_INV_w4_1(6),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X84_Y31_N43
\w5_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(6));

-- Location: FF_X82_Y31_N32
\multipliers_out1_reg[3][9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(6),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][9]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y34_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( !w4_1(9) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w4_1(9),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\);

-- Location: FF_X84_Y34_N22
\w2n_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w2n_1(9));

-- Location: FF_X83_Y34_N52
\multipliers_out1_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w2n_1(9),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[0][15]~q\);

-- Location: LABCELL_X81_Y33_N27
\adders_in1_reg[0][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_in1_reg[0][9]~feeder_combout\ = ( \multipliers_out1_reg[0][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	combout => \adders_in1_reg[0][9]~feeder_combout\);

-- Location: FF_X81_Y33_N28
\adders_in1_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_in1_reg[0][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[0][9]~q\);

-- Location: LABCELL_X81_Y33_N42
\adders_out1[0][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[0][15]~feeder_combout\ = ( \adders_in1_reg[0][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[0][9]~q\,
	combout => \adders_out1[0][15]~feeder_combout\);

-- Location: FF_X81_Y33_N43
\adders_out1[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[0][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[0][15]~q\);

-- Location: LABCELL_X83_Y32_N24
\Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~33_sumout\ = SUM(( \multipliers_out1_reg[1][9]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~30\ ))
-- \Add14~34\ = CARRY(( \multipliers_out1_reg[1][9]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[0][15]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][9]~q\,
	cin => \Add14~30\,
	sumout => \Add14~33_sumout\,
	cout => \Add14~34\);

-- Location: FF_X83_Y32_N25
\adders_in1_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][9]~q\);

-- Location: MLABCELL_X84_Y32_N51
\adders_out1[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][9]~feeder_combout\ = \adders_in1_reg[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in1_reg[1][9]~q\,
	combout => \adders_out1[1][9]~feeder_combout\);

-- Location: FF_X84_Y32_N52
\adders_out1[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][9]~q\);

-- Location: MLABCELL_X84_Y32_N21
\Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~29_sumout\ = SUM(( \multipliers_out1_reg[2][9]~q\ ) + ( \adders_out1[1][9]~q\ ) + ( \Add15~26\ ))
-- \Add15~30\ = CARRY(( \multipliers_out1_reg[2][9]~q\ ) + ( \adders_out1[1][9]~q\ ) + ( \Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[1][9]~q\,
	datac => \ALT_INV_multipliers_out1_reg[2][9]~q\,
	cin => \Add15~26\,
	sumout => \Add15~29_sumout\,
	cout => \Add15~30\);

-- Location: FF_X84_Y32_N23
\adders_in1_reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][9]~q\);

-- Location: FF_X82_Y31_N55
\adders_out1[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][9]~q\);

-- Location: FF_X82_Y31_N31
\multipliers_out1_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(6),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][9]~q\);

-- Location: LABCELL_X83_Y31_N18
\Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~25_sumout\ = SUM(( \multipliers_out1_reg[3][9]~q\ ) + ( \adders_out1[2][9]~q\ ) + ( \Add16~22\ ))
-- \Add16~26\ = CARRY(( \multipliers_out1_reg[3][9]~q\ ) + ( \adders_out1[2][9]~q\ ) + ( \Add16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[2][9]~q\,
	datac => \ALT_INV_multipliers_out1_reg[3][9]~q\,
	cin => \Add16~22\,
	sumout => \Add16~25_sumout\,
	cout => \Add16~26\);

-- Location: FF_X83_Y31_N19
\adders_in1_reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][9]~q\);

-- Location: FF_X81_Y31_N55
\adders_out1[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][9]~q\);

-- Location: LABCELL_X81_Y31_N18
\Add17~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~25_sumout\ = SUM(( \adders_out1[3][9]~q\ ) + ( \multipliers_out1_reg[3][9]~DUPLICATE_q\ ) + ( \Add17~22\ ))
-- \Add17~26\ = CARRY(( \adders_out1[3][9]~q\ ) + ( \multipliers_out1_reg[3][9]~DUPLICATE_q\ ) + ( \Add17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[3][9]~DUPLICATE_q\,
	datad => \ALT_INV_adders_out1[3][9]~q\,
	cin => \Add17~22\,
	sumout => \Add17~25_sumout\,
	cout => \Add17~26\);

-- Location: FF_X81_Y31_N19
\adders_in1_reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][9]~q\);

-- Location: LABCELL_X83_Y34_N30
\adders_out1[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][9]~feeder_combout\ = ( \adders_in1_reg[4][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][9]~q\,
	combout => \adders_out1[4][9]~feeder_combout\);

-- Location: FF_X83_Y34_N31
\adders_out1[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][9]~q\);

-- Location: LABCELL_X85_Y33_N21
\Add18~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~29_sumout\ = SUM(( \adders_out1[4][9]~q\ ) + ( \multipliers_out1_reg[2][9]~q\ ) + ( \Add18~26\ ))
-- \Add18~30\ = CARRY(( \adders_out1[4][9]~q\ ) + ( \multipliers_out1_reg[2][9]~q\ ) + ( \Add18~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][9]~q\,
	datad => \ALT_INV_adders_out1[4][9]~q\,
	cin => \Add18~26\,
	sumout => \Add18~29_sumout\,
	cout => \Add18~30\);

-- Location: FF_X85_Y33_N22
\adders_in1_reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][9]~q\);

-- Location: LABCELL_X81_Y33_N39
\adders_out1[5][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][9]~feeder_combout\ = ( \adders_in1_reg[5][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][9]~q\,
	combout => \adders_out1[5][9]~feeder_combout\);

-- Location: FF_X81_Y33_N40
\adders_out1[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][9]~q\);

-- Location: LABCELL_X85_Y34_N24
\Add19~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~33_sumout\ = SUM(( \multipliers_out1_reg[1][9]~q\ ) + ( \adders_out1[5][9]~q\ ) + ( \Add19~30\ ))
-- \Add19~34\ = CARRY(( \multipliers_out1_reg[1][9]~q\ ) + ( \adders_out1[5][9]~q\ ) + ( \Add19~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[1][9]~q\,
	datac => \ALT_INV_adders_out1[5][9]~q\,
	cin => \Add19~30\,
	sumout => \Add19~33_sumout\,
	cout => \Add19~34\);

-- Location: FF_X85_Y34_N25
\adders_in1_reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][9]~q\);

-- Location: MLABCELL_X84_Y34_N30
\adders_out1[6][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][9]~feeder_combout\ = ( \adders_in1_reg[6][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][9]~q\,
	combout => \adders_out1[6][9]~feeder_combout\);

-- Location: FF_X84_Y34_N31
\adders_out1[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][9]~q\);

-- Location: MLABCELL_X87_Y34_N24
\Add20~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~33_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][9]~q\ ) + ( \Add20~30\ ))
-- \Add20~34\ = CARRY(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][9]~q\ ) + ( \Add20~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][9]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~30\,
	sumout => \Add20~33_sumout\,
	cout => \Add20~34\);

-- Location: FF_X87_Y34_N25
\adders_in1_reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][9]~q\);

-- Location: FF_X81_Y33_N52
\adders_out1[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][9]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][9]~q\);

-- Location: FF_X83_Y33_N29
\y1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][9]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(9));

-- Location: LABCELL_X80_Y30_N24
\Add22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~33_sumout\ = SUM(( y1(9) ) + ( y0(9) ) + ( \Add22~30\ ))
-- \Add22~34\ = CARRY(( y1(9) ) + ( y0(9) ) + ( \Add22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y0(9),
	datad => ALT_INV_y1(9),
	cin => \Add22~30\,
	sumout => \Add22~33_sumout\,
	cout => \Add22~34\);

-- Location: FF_X80_Y30_N25
\Dout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~33_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[9]~reg0_q\);

-- Location: LABCELL_X77_Y33_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !w64_0(13) ) + ( w64_0(13) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w64_0(13),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\);

-- Location: FF_X77_Y33_N29
\w3_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_0(10));

-- Location: FF_X79_Y34_N43
\multipliers_out0_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_0(10),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[0][15]~q\);

-- Location: LABCELL_X74_Y33_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( w64_0(10) ) + ( !w3_0(10) ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( w64_0(10) ) + ( !w3_0(10) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w64_0(10),
	datac => ALT_INV_w3_0(10),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X74_Y33_N28
\w61_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(10));

-- Location: LABCELL_X77_Y34_N12
\multipliers_out0_reg[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][10]~feeder_combout\ = ( w61_0(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(10),
	combout => \multipliers_out0_reg[3][10]~feeder_combout\);

-- Location: FF_X77_Y34_N13
\multipliers_out0_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][10]~q\);

-- Location: FF_X77_Y34_N47
\adders_in0_reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \multipliers_out0_reg[0][15]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[0][10]~q\);

-- Location: FF_X77_Y34_N4
\adders_out0[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[0][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[0][15]~q\);

-- Location: MLABCELL_X78_Y34_N27
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[0][15]~q\ ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[0][15]~q\ ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datac => \ALT_INV_adders_out0[0][15]~q\,
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: FF_X78_Y34_N28
\adders_in0_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][10]~q\);

-- Location: FF_X79_Y34_N56
\adders_out0[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[1][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][10]~q\);

-- Location: LABCELL_X79_Y34_N30
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[1][10]~q\ ) + ( \Add8~38\ ))
-- \Add8~42\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[1][10]~q\ ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[1][10]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: FF_X79_Y34_N31
\adders_in0_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][10]~q\);

-- Location: LABCELL_X77_Y34_N54
\adders_out0[2][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][10]~feeder_combout\ = ( \adders_in0_reg[2][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][10]~q\,
	combout => \adders_out0[2][10]~feeder_combout\);

-- Location: FF_X77_Y34_N55
\adders_out0[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][10]~q\);

-- Location: LABCELL_X79_Y35_N30
\Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( \multipliers_out0_reg[3][10]~q\ ) + ( \adders_out0[2][10]~q\ ) + ( \Add9~38\ ))
-- \Add9~42\ = CARRY(( \multipliers_out0_reg[3][10]~q\ ) + ( \adders_out0[2][10]~q\ ) + ( \Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out0_reg[3][10]~q\,
	datac => \ALT_INV_adders_out0[2][10]~q\,
	cin => \Add9~38\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\);

-- Location: FF_X79_Y35_N32
\adders_in0_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][10]~q\);

-- Location: LABCELL_X81_Y34_N9
\adders_out0[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][10]~feeder_combout\ = ( \adders_in0_reg[3][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][10]~q\,
	combout => \adders_out0[3][10]~feeder_combout\);

-- Location: FF_X81_Y34_N10
\adders_out0[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][10]~q\);

-- Location: LABCELL_X79_Y33_N30
\Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~41_sumout\ = SUM(( \adders_out0[3][10]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add10~38\ ))
-- \Add10~42\ = CARRY(( \adders_out0[3][10]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	datad => \ALT_INV_adders_out0[3][10]~q\,
	cin => \Add10~38\,
	sumout => \Add10~41_sumout\,
	cout => \Add10~42\);

-- Location: FF_X79_Y33_N31
\adders_in0_reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][10]~q\);

-- Location: FF_X81_Y34_N16
\adders_out0[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][10]~q\);

-- Location: LABCELL_X80_Y34_N27
\Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[4][10]~q\ ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[4][10]~q\ ) + ( \Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datac => \ALT_INV_adders_out0[4][10]~q\,
	cin => \Add11~34\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\);

-- Location: FF_X80_Y34_N28
\adders_in0_reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][10]~q\);

-- Location: LABCELL_X81_Y32_N6
\adders_out0[5][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][10]~feeder_combout\ = ( \adders_in0_reg[5][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][10]~q\,
	combout => \adders_out0[5][10]~feeder_combout\);

-- Location: FF_X81_Y32_N8
\adders_out0[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][10]~q\);

-- Location: LABCELL_X80_Y32_N30
\Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~41_sumout\ = SUM(( \adders_out0[5][10]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~38\ ))
-- \Add12~42\ = CARRY(( \adders_out0[5][10]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	datad => \ALT_INV_adders_out0[5][10]~q\,
	cin => \Add12~38\,
	sumout => \Add12~41_sumout\,
	cout => \Add12~42\);

-- Location: FF_X80_Y32_N32
\adders_in0_reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][10]~q\);

-- Location: FF_X80_Y32_N50
\adders_out0[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][10]~q\);

-- Location: LABCELL_X79_Y32_N27
\Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~37_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][10]~q\ ) + ( \Add13~34\ ))
-- \Add13~38\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][10]~q\ ) + ( \Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][10]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~34\,
	sumout => \Add13~37_sumout\,
	cout => \Add13~38\);

-- Location: FF_X79_Y32_N28
\adders_in0_reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][10]~q\);

-- Location: LABCELL_X81_Y35_N48
\adders_out0[7][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][10]~feeder_combout\ = ( \adders_in0_reg[7][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][10]~q\,
	combout => \adders_out0[7][10]~feeder_combout\);

-- Location: FF_X81_Y35_N49
\adders_out0[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][10]~q\);

-- Location: LABCELL_X80_Y31_N39
\y0[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[10]~feeder_combout\ = ( \adders_out0[7][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][10]~q\,
	combout => \y0[10]~feeder_combout\);

-- Location: FF_X80_Y31_N41
\y0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(10));

-- Location: MLABCELL_X84_Y31_N45
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( w4_1(9) ) + ( w4_1(7) ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( w4_1(9) ) + ( w4_1(7) ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(7),
	datad => ALT_INV_w4_1(9),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X84_Y31_N46
\w5_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(7));

-- Location: MLABCELL_X82_Y33_N36
\multipliers_out1_reg[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[3][10]~feeder_combout\ = ( w5_1(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w5_1(7),
	combout => \multipliers_out1_reg[3][10]~feeder_combout\);

-- Location: FF_X82_Y33_N38
\multipliers_out1_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][10]~q\);

-- Location: MLABCELL_X84_Y33_N21
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( !w3_1(8) ) + ( GND ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( !w3_1(8) ) + ( GND ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(8),
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X84_Y33_N22
\multipliers_out1_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][10]~q\);

-- Location: MLABCELL_X84_Y31_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !w4_1(9) ) + ( w4_1(9) ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( !w4_1(9) ) + ( w4_1(9) ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(9),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X84_Y31_N26
\w3_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(9));

-- Location: FF_X84_Y33_N5
\multipliers_out1_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(9),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][10]~q\);

-- Location: LABCELL_X83_Y32_N27
\Add14~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~37_sumout\ = SUM(( \multipliers_out1_reg[1][10]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~34\ ))
-- \Add14~38\ = CARRY(( \multipliers_out1_reg[1][10]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[0][15]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][10]~q\,
	cin => \Add14~34\,
	sumout => \Add14~37_sumout\,
	cout => \Add14~38\);

-- Location: FF_X83_Y32_N29
\adders_in1_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][10]~q\);

-- Location: FF_X83_Y32_N52
\adders_out1[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[1][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][10]~q\);

-- Location: MLABCELL_X84_Y32_N24
\Add15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~33_sumout\ = SUM(( \adders_out1[1][10]~q\ ) + ( \multipliers_out1_reg[2][10]~q\ ) + ( \Add15~30\ ))
-- \Add15~34\ = CARRY(( \adders_out1[1][10]~q\ ) + ( \multipliers_out1_reg[2][10]~q\ ) + ( \Add15~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][10]~q\,
	datad => \ALT_INV_adders_out1[1][10]~q\,
	cin => \Add15~30\,
	sumout => \Add15~33_sumout\,
	cout => \Add15~34\);

-- Location: FF_X84_Y32_N25
\adders_in1_reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][10]~q\);

-- Location: MLABCELL_X82_Y31_N39
\adders_out1[2][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][10]~feeder_combout\ = ( \adders_in1_reg[2][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][10]~q\,
	combout => \adders_out1[2][10]~feeder_combout\);

-- Location: FF_X82_Y31_N40
\adders_out1[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][10]~q\);

-- Location: LABCELL_X83_Y31_N21
\Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~29_sumout\ = SUM(( \multipliers_out1_reg[3][10]~q\ ) + ( \adders_out1[2][10]~q\ ) + ( \Add16~26\ ))
-- \Add16~30\ = CARRY(( \multipliers_out1_reg[3][10]~q\ ) + ( \adders_out1[2][10]~q\ ) + ( \Add16~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[3][10]~q\,
	dataf => \ALT_INV_adders_out1[2][10]~q\,
	cin => \Add16~26\,
	sumout => \Add16~29_sumout\,
	cout => \Add16~30\);

-- Location: FF_X83_Y31_N22
\adders_in1_reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][10]~q\);

-- Location: LABCELL_X81_Y31_N48
\adders_out1[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][10]~feeder_combout\ = \adders_in1_reg[3][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in1_reg[3][10]~q\,
	combout => \adders_out1[3][10]~feeder_combout\);

-- Location: FF_X81_Y31_N49
\adders_out1[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][10]~q\);

-- Location: LABCELL_X81_Y31_N21
\Add17~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~29_sumout\ = SUM(( \multipliers_out1_reg[3][10]~q\ ) + ( \adders_out1[3][10]~q\ ) + ( \Add17~26\ ))
-- \Add17~30\ = CARRY(( \multipliers_out1_reg[3][10]~q\ ) + ( \adders_out1[3][10]~q\ ) + ( \Add17~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[3][10]~q\,
	dataf => \ALT_INV_adders_out1[3][10]~q\,
	cin => \Add17~26\,
	sumout => \Add17~29_sumout\,
	cout => \Add17~30\);

-- Location: FF_X81_Y31_N22
\adders_in1_reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][10]~q\);

-- Location: FF_X83_Y34_N4
\adders_out1[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][10]~q\);

-- Location: LABCELL_X85_Y33_N24
\Add18~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~33_sumout\ = SUM(( \multipliers_out1_reg[2][10]~q\ ) + ( \adders_out1[4][10]~q\ ) + ( \Add18~30\ ))
-- \Add18~34\ = CARRY(( \multipliers_out1_reg[2][10]~q\ ) + ( \adders_out1[4][10]~q\ ) + ( \Add18~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[4][10]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][10]~q\,
	cin => \Add18~30\,
	sumout => \Add18~33_sumout\,
	cout => \Add18~34\);

-- Location: FF_X85_Y33_N26
\adders_in1_reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][10]~q\);

-- Location: FF_X85_Y34_N55
\adders_out1[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][10]~q\);

-- Location: LABCELL_X85_Y34_N27
\Add19~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~37_sumout\ = SUM(( \multipliers_out1_reg[1][10]~q\ ) + ( \adders_out1[5][10]~q\ ) + ( \Add19~34\ ))
-- \Add19~38\ = CARRY(( \multipliers_out1_reg[1][10]~q\ ) + ( \adders_out1[5][10]~q\ ) + ( \Add19~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][10]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][10]~q\,
	cin => \Add19~34\,
	sumout => \Add19~37_sumout\,
	cout => \Add19~38\);

-- Location: FF_X85_Y34_N29
\adders_in1_reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][10]~q\);

-- Location: FF_X84_Y34_N58
\adders_out1[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][10]~q\);

-- Location: MLABCELL_X87_Y34_N27
\Add20~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~37_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][10]~q\ ) + ( \Add20~34\ ))
-- \Add20~38\ = CARRY(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][10]~q\ ) + ( \Add20~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][10]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~34\,
	sumout => \Add20~37_sumout\,
	cout => \Add20~38\);

-- Location: FF_X87_Y34_N29
\adders_in1_reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][10]~q\);

-- Location: FF_X82_Y33_N55
\adders_out1[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][10]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][10]~q\);

-- Location: LABCELL_X83_Y33_N54
\y1[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[10]~feeder_combout\ = ( \adders_out1[7][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[7][10]~q\,
	combout => \y1[10]~feeder_combout\);

-- Location: FF_X83_Y33_N55
\y1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(10));

-- Location: LABCELL_X80_Y30_N27
\Add22~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~37_sumout\ = SUM(( y1(10) ) + ( y0(10) ) + ( \Add22~34\ ))
-- \Add22~38\ = CARRY(( y1(10) ) + ( y0(10) ) + ( \Add22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_y0(10),
	datad => ALT_INV_y1(10),
	cin => \Add22~34\,
	sumout => \Add22~37_sumout\,
	cout => \Add22~38\);

-- Location: FF_X80_Y30_N28
\Dout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~37_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[10]~reg0_q\);

-- Location: MLABCELL_X84_Y31_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !w4_1(9) ) + ( w4_1(9) ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(9),
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\);

-- Location: FF_X84_Y31_N28
\w3_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w3_1(10));

-- Location: FF_X84_Y33_N34
\multipliers_out1_reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w3_1(10),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[1][15]~q\);

-- Location: LABCELL_X83_Y32_N30
\Add14~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~41_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~38\ ))
-- \Add14~42\ = CARRY(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[0][15]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add14~38\,
	sumout => \Add14~41_sumout\,
	cout => \Add14~42\);

-- Location: FF_X83_Y32_N31
\adders_in1_reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][11]~q\);

-- Location: MLABCELL_X84_Y32_N42
\adders_out1[1][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][11]~feeder_combout\ = \adders_in1_reg[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in1_reg[1][11]~q\,
	combout => \adders_out1[1][11]~feeder_combout\);

-- Location: FF_X84_Y32_N43
\adders_out1[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][11]~q\);

-- Location: MLABCELL_X84_Y33_N24
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( !w3_1(9) ) + ( GND ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( !w3_1(9) ) + ( GND ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_1(9),
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X84_Y33_N25
\multipliers_out1_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~33_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][11]~q\);

-- Location: MLABCELL_X84_Y32_N27
\Add15~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~37_sumout\ = SUM(( \multipliers_out1_reg[2][11]~q\ ) + ( \adders_out1[1][11]~q\ ) + ( \Add15~34\ ))
-- \Add15~38\ = CARRY(( \multipliers_out1_reg[2][11]~q\ ) + ( \adders_out1[1][11]~q\ ) + ( \Add15~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[1][11]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][11]~q\,
	cin => \Add15~34\,
	sumout => \Add15~37_sumout\,
	cout => \Add15~38\);

-- Location: FF_X84_Y32_N28
\adders_in1_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][11]~q\);

-- Location: FF_X84_Y32_N46
\adders_out1[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][11]~q\);

-- Location: MLABCELL_X84_Y31_N48
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( w4_1(8) ) + ( w4_1(9) ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( w4_1(8) ) + ( w4_1(9) ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(9),
	datad => ALT_INV_w4_1(8),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X84_Y31_N49
\w5_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(8));

-- Location: FF_X82_Y31_N38
\multipliers_out1_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(8),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][11]~q\);

-- Location: LABCELL_X83_Y31_N24
\Add16~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~33_sumout\ = SUM(( \multipliers_out1_reg[3][11]~q\ ) + ( \adders_out1[2][11]~q\ ) + ( \Add16~30\ ))
-- \Add16~34\ = CARRY(( \multipliers_out1_reg[3][11]~q\ ) + ( \adders_out1[2][11]~q\ ) + ( \Add16~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[2][11]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][11]~q\,
	cin => \Add16~30\,
	sumout => \Add16~33_sumout\,
	cout => \Add16~34\);

-- Location: FF_X83_Y31_N25
\adders_in1_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][11]~q\);

-- Location: FF_X81_Y31_N53
\adders_out1[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[3][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][11]~q\);

-- Location: LABCELL_X81_Y31_N24
\Add17~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~33_sumout\ = SUM(( \multipliers_out1_reg[3][11]~q\ ) + ( \adders_out1[3][11]~q\ ) + ( \Add17~30\ ))
-- \Add17~34\ = CARRY(( \multipliers_out1_reg[3][11]~q\ ) + ( \adders_out1[3][11]~q\ ) + ( \Add17~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[3][11]~q\,
	datad => \ALT_INV_multipliers_out1_reg[3][11]~q\,
	cin => \Add17~30\,
	sumout => \Add17~33_sumout\,
	cout => \Add17~34\);

-- Location: FF_X81_Y31_N26
\adders_in1_reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][11]~q\);

-- Location: LABCELL_X83_Y34_N27
\adders_out1[4][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][11]~feeder_combout\ = ( \adders_in1_reg[4][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][11]~q\,
	combout => \adders_out1[4][11]~feeder_combout\);

-- Location: FF_X83_Y34_N28
\adders_out1[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][11]~q\);

-- Location: LABCELL_X85_Y33_N27
\Add18~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~37_sumout\ = SUM(( \multipliers_out1_reg[2][11]~q\ ) + ( \adders_out1[4][11]~q\ ) + ( \Add18~34\ ))
-- \Add18~38\ = CARRY(( \multipliers_out1_reg[2][11]~q\ ) + ( \adders_out1[4][11]~q\ ) + ( \Add18~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[4][11]~q\,
	datac => \ALT_INV_multipliers_out1_reg[2][11]~q\,
	cin => \Add18~34\,
	sumout => \Add18~37_sumout\,
	cout => \Add18~38\);

-- Location: FF_X85_Y33_N28
\adders_in1_reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][11]~q\);

-- Location: LABCELL_X85_Y34_N51
\adders_out1[5][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][11]~feeder_combout\ = ( \adders_in1_reg[5][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][11]~q\,
	combout => \adders_out1[5][11]~feeder_combout\);

-- Location: FF_X85_Y34_N52
\adders_out1[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][11]~q\);

-- Location: LABCELL_X85_Y34_N30
\Add19~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~41_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][11]~q\ ) + ( \Add19~38\ ))
-- \Add19~42\ = CARRY(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][11]~q\ ) + ( \Add19~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[5][11]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add19~38\,
	sumout => \Add19~41_sumout\,
	cout => \Add19~42\);

-- Location: FF_X85_Y34_N31
\adders_in1_reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][11]~q\);

-- Location: FF_X84_Y34_N25
\adders_out1[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][11]~q\);

-- Location: MLABCELL_X87_Y34_N30
\Add20~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~41_sumout\ = SUM(( \adders_out1[6][11]~q\ ) + ( \multipliers_out1_reg[0][15]~q\ ) + ( \Add20~38\ ))
-- \Add20~42\ = CARRY(( \adders_out1[6][11]~q\ ) + ( \multipliers_out1_reg[0][15]~q\ ) + ( \Add20~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	datad => \ALT_INV_adders_out1[6][11]~q\,
	cin => \Add20~38\,
	sumout => \Add20~41_sumout\,
	cout => \Add20~42\);

-- Location: FF_X87_Y34_N31
\adders_in1_reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][11]~q\);

-- Location: MLABCELL_X82_Y32_N30
\adders_out1[7][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][11]~feeder_combout\ = ( \adders_in1_reg[7][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][11]~q\,
	combout => \adders_out1[7][11]~feeder_combout\);

-- Location: FF_X82_Y32_N32
\adders_out1[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][11]~q\);

-- Location: FF_X82_Y32_N40
\y1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out1[7][11]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(11));

-- Location: LABCELL_X74_Y33_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( w64_0(11) ) + ( !w3_0(10) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( w64_0(11) ) + ( !w3_0(10) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_0(10),
	datac => ALT_INV_w64_0(11),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X74_Y33_N31
\w61_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(11));

-- Location: FF_X77_Y34_N25
\multipliers_out0_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w61_0(11),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][11]~q\);

-- Location: MLABCELL_X78_Y34_N30
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[0][15]~q\ ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[0][15]~q\,
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\);

-- Location: FF_X78_Y34_N31
\adders_in0_reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add7~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[1][11]~q\);

-- Location: LABCELL_X79_Y34_N57
\adders_out0[1][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[1][15]~feeder_combout\ = ( \adders_in0_reg[1][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[1][11]~q\,
	combout => \adders_out0[1][15]~feeder_combout\);

-- Location: FF_X79_Y34_N58
\adders_out0[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[1][15]~q\);

-- Location: LABCELL_X79_Y34_N33
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[1][15]~q\ ) + ( \Add8~42\ ))
-- \Add8~46\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[1][15]~q\ ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[1][15]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add8~42\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: FF_X79_Y34_N34
\adders_in0_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][11]~q\);

-- Location: FF_X81_Y34_N7
\adders_out0[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[2][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][11]~q\);

-- Location: LABCELL_X79_Y35_N33
\Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~45_sumout\ = SUM(( \adders_out0[2][11]~q\ ) + ( \multipliers_out0_reg[3][11]~q\ ) + ( \Add9~42\ ))
-- \Add9~46\ = CARRY(( \adders_out0[2][11]~q\ ) + ( \multipliers_out0_reg[3][11]~q\ ) + ( \Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][11]~q\,
	datad => \ALT_INV_adders_out0[2][11]~q\,
	cin => \Add9~42\,
	sumout => \Add9~45_sumout\,
	cout => \Add9~46\);

-- Location: FF_X79_Y35_N34
\adders_in0_reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][11]~q\);

-- Location: LABCELL_X80_Y33_N48
\adders_out0[3][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][11]~feeder_combout\ = ( \adders_in0_reg[3][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][11]~q\,
	combout => \adders_out0[3][11]~feeder_combout\);

-- Location: FF_X80_Y33_N50
\adders_out0[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][11]~q\);

-- Location: LABCELL_X79_Y33_N33
\Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~45_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][11]~q\ ) + ( \Add10~42\ ))
-- \Add10~46\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][11]~q\ ) + ( \Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	datac => \ALT_INV_adders_out0[3][11]~q\,
	cin => \Add10~42\,
	sumout => \Add10~45_sumout\,
	cout => \Add10~46\);

-- Location: FF_X79_Y33_N34
\adders_in0_reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][11]~q\);

-- Location: FF_X81_Y34_N47
\adders_out0[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][11]~q\);

-- Location: LABCELL_X80_Y34_N30
\Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( \adders_out0[4][11]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~38\ ))
-- \Add11~42\ = CARRY(( \adders_out0[4][11]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datad => \ALT_INV_adders_out0[4][11]~q\,
	cin => \Add11~38\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\);

-- Location: FF_X80_Y34_N31
\adders_in0_reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][11]~q\);

-- Location: LABCELL_X81_Y34_N54
\adders_out0[5][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][11]~feeder_combout\ = ( \adders_in0_reg[5][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][11]~q\,
	combout => \adders_out0[5][11]~feeder_combout\);

-- Location: FF_X81_Y34_N55
\adders_out0[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][11]~q\);

-- Location: LABCELL_X80_Y32_N33
\Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~45_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[5][11]~q\ ) + ( \Add12~42\ ))
-- \Add12~46\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[5][11]~q\ ) + ( \Add12~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	dataf => \ALT_INV_adders_out0[5][11]~q\,
	cin => \Add12~42\,
	sumout => \Add12~45_sumout\,
	cout => \Add12~46\);

-- Location: FF_X80_Y32_N34
\adders_in0_reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][11]~q\);

-- Location: LABCELL_X79_Y32_N48
\adders_out0[6][11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][11]~feeder_combout\ = ( \adders_in0_reg[6][11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[6][11]~q\,
	combout => \adders_out0[6][11]~feeder_combout\);

-- Location: FF_X79_Y32_N50
\adders_out0[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][11]~q\);

-- Location: LABCELL_X79_Y32_N30
\Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~41_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][11]~q\ ) + ( \Add13~38\ ))
-- \Add13~42\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][11]~q\ ) + ( \Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][11]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~38\,
	sumout => \Add13~41_sumout\,
	cout => \Add13~42\);

-- Location: FF_X79_Y32_N31
\adders_in0_reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][11]~q\);

-- Location: FF_X81_Y35_N20
\adders_out0[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][11]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][11]~q\);

-- Location: FF_X81_Y35_N28
\y0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][11]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(11));

-- Location: LABCELL_X80_Y30_N30
\Add22~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~41_sumout\ = SUM(( y0(11) ) + ( y1(11) ) + ( \Add22~38\ ))
-- \Add22~42\ = CARRY(( y0(11) ) + ( y1(11) ) + ( \Add22~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(11),
	datad => ALT_INV_y0(11),
	cin => \Add22~38\,
	sumout => \Add22~41_sumout\,
	cout => \Add22~42\);

-- Location: FF_X80_Y30_N31
\Dout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~41_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[11]~reg0_q\);

-- Location: MLABCELL_X84_Y31_N51
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( w4_1(9) ) + ( w4_1(9) ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( w4_1(9) ) + ( w4_1(9) ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_w4_1(9),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X84_Y31_N52
\w5_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(9));

-- Location: MLABCELL_X82_Y31_N45
\multipliers_out1_reg[3][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out1_reg[3][12]~feeder_combout\ = ( w5_1(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w5_1(9),
	combout => \multipliers_out1_reg[3][12]~feeder_combout\);

-- Location: FF_X82_Y31_N46
\multipliers_out1_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out1_reg[3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][12]~q\);

-- Location: MLABCELL_X84_Y33_N27
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( !w3_1(10) ) + ( GND ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( !w3_1(10) ) + ( GND ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w3_1(10),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: FF_X84_Y33_N28
\multipliers_out1_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][12]~q\);

-- Location: LABCELL_X83_Y32_N33
\Add14~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~45_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[0][15]~q\ ) + ( \Add14~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[0][15]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add14~42\,
	sumout => \Add14~45_sumout\);

-- Location: FF_X83_Y32_N34
\adders_in1_reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add14~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[1][12]~q\);

-- Location: MLABCELL_X84_Y32_N54
\adders_out1[1][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[1][15]~feeder_combout\ = \adders_in1_reg[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_in1_reg[1][12]~q\,
	combout => \adders_out1[1][15]~feeder_combout\);

-- Location: FF_X84_Y32_N56
\adders_out1[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[1][15]~q\);

-- Location: MLABCELL_X84_Y32_N30
\Add15~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~41_sumout\ = SUM(( \adders_out1[1][15]~q\ ) + ( \multipliers_out1_reg[2][12]~q\ ) + ( \Add15~38\ ))
-- \Add15~42\ = CARRY(( \adders_out1[1][15]~q\ ) + ( \multipliers_out1_reg[2][12]~q\ ) + ( \Add15~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][12]~q\,
	datad => \ALT_INV_adders_out1[1][15]~q\,
	cin => \Add15~38\,
	sumout => \Add15~41_sumout\,
	cout => \Add15~42\);

-- Location: FF_X84_Y32_N31
\adders_in1_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][12]~q\);

-- Location: MLABCELL_X82_Y31_N42
\adders_out1[2][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[2][12]~feeder_combout\ = ( \adders_in1_reg[2][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[2][12]~q\,
	combout => \adders_out1[2][12]~feeder_combout\);

-- Location: FF_X82_Y31_N43
\adders_out1[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[2][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][12]~q\);

-- Location: LABCELL_X83_Y31_N27
\Add16~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~37_sumout\ = SUM(( \multipliers_out1_reg[3][12]~q\ ) + ( \adders_out1[2][12]~q\ ) + ( \Add16~34\ ))
-- \Add16~38\ = CARRY(( \multipliers_out1_reg[3][12]~q\ ) + ( \adders_out1[2][12]~q\ ) + ( \Add16~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[3][12]~q\,
	datac => \ALT_INV_adders_out1[2][12]~q\,
	cin => \Add16~34\,
	sumout => \Add16~37_sumout\,
	cout => \Add16~38\);

-- Location: FF_X83_Y31_N28
\adders_in1_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][12]~q\);

-- Location: LABCELL_X81_Y31_N57
\adders_out1[3][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][12]~feeder_combout\ = \adders_in1_reg[3][12]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_in1_reg[3][12]~q\,
	combout => \adders_out1[3][12]~feeder_combout\);

-- Location: FF_X81_Y31_N58
\adders_out1[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][12]~q\);

-- Location: LABCELL_X81_Y31_N27
\Add17~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~37_sumout\ = SUM(( \multipliers_out1_reg[3][12]~q\ ) + ( \adders_out1[3][12]~q\ ) + ( \Add17~34\ ))
-- \Add17~38\ = CARRY(( \multipliers_out1_reg[3][12]~q\ ) + ( \adders_out1[3][12]~q\ ) + ( \Add17~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[3][12]~q\,
	datac => \ALT_INV_multipliers_out1_reg[3][12]~q\,
	cin => \Add17~34\,
	sumout => \Add17~37_sumout\,
	cout => \Add17~38\);

-- Location: FF_X81_Y31_N28
\adders_in1_reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][12]~q\);

-- Location: FF_X83_Y34_N46
\adders_out1[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][12]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][12]~q\);

-- Location: LABCELL_X85_Y33_N30
\Add18~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~41_sumout\ = SUM(( \multipliers_out1_reg[2][12]~q\ ) + ( \adders_out1[4][12]~q\ ) + ( \Add18~38\ ))
-- \Add18~42\ = CARRY(( \multipliers_out1_reg[2][12]~q\ ) + ( \adders_out1[4][12]~q\ ) + ( \Add18~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[4][12]~q\,
	datad => \ALT_INV_multipliers_out1_reg[2][12]~q\,
	cin => \Add18~38\,
	sumout => \Add18~41_sumout\,
	cout => \Add18~42\);

-- Location: FF_X85_Y33_N31
\adders_in1_reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][12]~q\);

-- Location: LABCELL_X85_Y34_N57
\adders_out1[5][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][12]~feeder_combout\ = ( \adders_in1_reg[5][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][12]~q\,
	combout => \adders_out1[5][12]~feeder_combout\);

-- Location: FF_X85_Y34_N59
\adders_out1[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][12]~q\);

-- Location: LABCELL_X85_Y34_N33
\Add19~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~45_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][12]~q\ ) + ( \Add19~42\ ))
-- \Add19~46\ = CARRY(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][12]~q\ ) + ( \Add19~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][12]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add19~42\,
	sumout => \Add19~45_sumout\,
	cout => \Add19~46\);

-- Location: FF_X85_Y34_N35
\adders_in1_reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][12]~q\);

-- Location: MLABCELL_X84_Y34_N33
\adders_out1[6][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][12]~feeder_combout\ = ( \adders_in1_reg[6][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][12]~q\,
	combout => \adders_out1[6][12]~feeder_combout\);

-- Location: FF_X84_Y34_N34
\adders_out1[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][12]~q\);

-- Location: MLABCELL_X87_Y34_N33
\Add20~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~45_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][12]~q\ ) + ( \Add20~42\ ))
-- \Add20~46\ = CARRY(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][12]~q\ ) + ( \Add20~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][12]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~42\,
	sumout => \Add20~45_sumout\,
	cout => \Add20~46\);

-- Location: FF_X87_Y34_N35
\adders_in1_reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][12]~q\);

-- Location: MLABCELL_X82_Y32_N3
\adders_out1[7][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][12]~feeder_combout\ = ( \adders_in1_reg[7][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][12]~q\,
	combout => \adders_out1[7][12]~feeder_combout\);

-- Location: FF_X82_Y32_N5
\adders_out1[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][12]~q\);

-- Location: LABCELL_X75_Y30_N42
\y1[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[12]~feeder_combout\ = ( \adders_out1[7][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[7][12]~q\,
	combout => \y1[12]~feeder_combout\);

-- Location: FF_X75_Y30_N43
\y1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(12));

-- Location: LABCELL_X79_Y34_N36
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[1][15]~q\ ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[1][15]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add8~46\,
	sumout => \Add8~49_sumout\);

-- Location: FF_X79_Y34_N37
\adders_in0_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[2][12]~q\);

-- Location: LABCELL_X80_Y35_N0
\adders_out0[2][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[2][15]~feeder_combout\ = ( \adders_in0_reg[2][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[2][12]~q\,
	combout => \adders_out0[2][15]~feeder_combout\);

-- Location: FF_X80_Y35_N2
\adders_out0[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[2][15]~q\);

-- Location: LABCELL_X74_Y33_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( w64_0(12) ) + ( !w3_0(10) ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( w64_0(12) ) + ( !w3_0(10) ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_0(10),
	datac => ALT_INV_w64_0(12),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X74_Y33_N34
\w61_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(12));

-- Location: LABCELL_X80_Y33_N36
\multipliers_out0_reg[3][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][12]~feeder_combout\ = ( w61_0(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(12),
	combout => \multipliers_out0_reg[3][12]~feeder_combout\);

-- Location: FF_X80_Y33_N37
\multipliers_out0_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][12]~q\);

-- Location: LABCELL_X79_Y35_N36
\Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~49_sumout\ = SUM(( \multipliers_out0_reg[3][12]~q\ ) + ( \adders_out0[2][15]~q\ ) + ( \Add9~46\ ))
-- \Add9~50\ = CARRY(( \multipliers_out0_reg[3][12]~q\ ) + ( \adders_out0[2][15]~q\ ) + ( \Add9~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[2][15]~q\,
	datad => \ALT_INV_multipliers_out0_reg[3][12]~q\,
	cin => \Add9~46\,
	sumout => \Add9~49_sumout\,
	cout => \Add9~50\);

-- Location: FF_X79_Y35_N38
\adders_in0_reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][12]~q\);

-- Location: FF_X81_Y34_N44
\adders_out0[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[3][12]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][12]~q\);

-- Location: LABCELL_X79_Y33_N36
\Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~49_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][12]~q\ ) + ( \Add10~46\ ))
-- \Add10~50\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][12]~q\ ) + ( \Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][12]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add10~46\,
	sumout => \Add10~49_sumout\,
	cout => \Add10~50\);

-- Location: FF_X79_Y33_N37
\adders_in0_reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][12]~q\);

-- Location: LABCELL_X81_Y32_N9
\adders_out0[4][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][12]~feeder_combout\ = ( \adders_in0_reg[4][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][12]~q\,
	combout => \adders_out0[4][12]~feeder_combout\);

-- Location: FF_X81_Y32_N10
\adders_out0[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][12]~q\);

-- Location: LABCELL_X80_Y34_N33
\Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~45_sumout\ = SUM(( \adders_out0[4][12]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~42\ ))
-- \Add11~46\ = CARRY(( \adders_out0[4][12]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datad => \ALT_INV_adders_out0[4][12]~q\,
	cin => \Add11~42\,
	sumout => \Add11~45_sumout\,
	cout => \Add11~46\);

-- Location: FF_X80_Y34_N34
\adders_in0_reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][12]~q\);

-- Location: FF_X81_Y34_N59
\adders_out0[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][12]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][12]~q\);

-- Location: LABCELL_X80_Y32_N36
\Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~49_sumout\ = SUM(( \adders_out0[5][12]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~46\ ))
-- \Add12~50\ = CARRY(( \adders_out0[5][12]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[5][12]~q\,
	dataf => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add12~46\,
	sumout => \Add12~49_sumout\,
	cout => \Add12~50\);

-- Location: FF_X80_Y32_N37
\adders_in0_reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][12]~q\);

-- Location: LABCELL_X81_Y32_N0
\adders_out0[6][12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][12]~feeder_combout\ = ( \adders_in0_reg[6][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[6][12]~q\,
	combout => \adders_out0[6][12]~feeder_combout\);

-- Location: FF_X81_Y32_N1
\adders_out0[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][12]~q\);

-- Location: LABCELL_X79_Y32_N33
\Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~45_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][12]~q\ ) + ( \Add13~42\ ))
-- \Add13~46\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][12]~q\ ) + ( \Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][12]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~42\,
	sumout => \Add13~45_sumout\,
	cout => \Add13~46\);

-- Location: FF_X79_Y32_N35
\adders_in0_reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][12]~q\);

-- Location: FF_X81_Y35_N31
\adders_out0[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][12]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][12]~q\);

-- Location: LABCELL_X81_Y35_N54
\y0[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[12]~feeder_combout\ = ( \adders_out0[7][12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][12]~q\,
	combout => \y0[12]~feeder_combout\);

-- Location: FF_X81_Y35_N55
\y0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(12));

-- Location: LABCELL_X80_Y30_N33
\Add22~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~45_sumout\ = SUM(( y0(12) ) + ( y1(12) ) + ( \Add22~42\ ))
-- \Add22~46\ = CARRY(( y0(12) ) + ( y1(12) ) + ( \Add22~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y1(12),
	datad => ALT_INV_y0(12),
	cin => \Add22~42\,
	sumout => \Add22~45_sumout\,
	cout => \Add22~46\);

-- Location: FF_X80_Y30_N34
\Dout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~45_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[12]~reg0_q\);

-- Location: MLABCELL_X84_Y33_N30
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( !w3_1(10) ) + ( GND ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_w3_1(10),
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\);

-- Location: FF_X84_Y33_N31
\multipliers_out1_reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][15]~q\);

-- Location: MLABCELL_X84_Y31_N54
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( w4_1(9) ) + ( w4_1(9) ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_w4_1(9),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\);

-- Location: FF_X84_Y31_N55
\w5_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w5_1(10));

-- Location: FF_X81_Y33_N1
\multipliers_out1_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => w5_1(10),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[3][15]~q\);

-- Location: FF_X84_Y33_N32
\multipliers_out1_reg[2][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add6~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out1_reg[2][15]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y32_N33
\Add15~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~45_sumout\ = SUM(( \adders_out1[1][15]~q\ ) + ( \multipliers_out1_reg[2][15]~DUPLICATE_q\ ) + ( \Add15~42\ ))
-- \Add15~46\ = CARRY(( \adders_out1[1][15]~q\ ) + ( \multipliers_out1_reg[2][15]~DUPLICATE_q\ ) + ( \Add15~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[2][15]~DUPLICATE_q\,
	datad => \ALT_INV_adders_out1[1][15]~q\,
	cin => \Add15~42\,
	sumout => \Add15~45_sumout\,
	cout => \Add15~46\);

-- Location: FF_X84_Y32_N35
\adders_in1_reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][13]~q\);

-- Location: FF_X82_Y31_N34
\adders_out1[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][13]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][13]~q\);

-- Location: LABCELL_X83_Y31_N30
\Add16~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~41_sumout\ = SUM(( \adders_out1[2][13]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add16~38\ ))
-- \Add16~42\ = CARRY(( \adders_out1[2][13]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add16~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	datad => \ALT_INV_adders_out1[2][13]~q\,
	cin => \Add16~38\,
	sumout => \Add16~41_sumout\,
	cout => \Add16~42\);

-- Location: FF_X83_Y31_N31
\adders_in1_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][13]~q\);

-- Location: LABCELL_X81_Y31_N42
\adders_out1[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][13]~feeder_combout\ = ( \adders_in1_reg[3][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][13]~q\,
	combout => \adders_out1[3][13]~feeder_combout\);

-- Location: FF_X81_Y31_N43
\adders_out1[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][13]~q\);

-- Location: LABCELL_X81_Y31_N30
\Add17~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~41_sumout\ = SUM(( \adders_out1[3][13]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add17~38\ ))
-- \Add17~42\ = CARRY(( \adders_out1[3][13]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add17~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	datad => \ALT_INV_adders_out1[3][13]~q\,
	cin => \Add17~38\,
	sumout => \Add17~41_sumout\,
	cout => \Add17~42\);

-- Location: FF_X81_Y31_N31
\adders_in1_reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][13]~q\);

-- Location: FF_X83_Y34_N55
\adders_out1[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][13]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][13]~q\);

-- Location: LABCELL_X85_Y33_N33
\Add18~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~45_sumout\ = SUM(( \adders_out1[4][13]~q\ ) + ( \multipliers_out1_reg[2][15]~q\ ) + ( \Add18~42\ ))
-- \Add18~46\ = CARRY(( \adders_out1[4][13]~q\ ) + ( \multipliers_out1_reg[2][15]~q\ ) + ( \Add18~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[2][15]~q\,
	datad => \ALT_INV_adders_out1[4][13]~q\,
	cin => \Add18~42\,
	sumout => \Add18~45_sumout\,
	cout => \Add18~46\);

-- Location: FF_X85_Y33_N34
\adders_in1_reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][13]~q\);

-- Location: MLABCELL_X87_Y34_N51
\adders_out1[5][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[5][13]~feeder_combout\ = ( \adders_in1_reg[5][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[5][13]~q\,
	combout => \adders_out1[5][13]~feeder_combout\);

-- Location: FF_X87_Y34_N52
\adders_out1[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[5][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][13]~q\);

-- Location: LABCELL_X85_Y34_N36
\Add19~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~49_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][13]~q\ ) + ( \Add19~46\ ))
-- \Add19~50\ = CARRY(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][13]~q\ ) + ( \Add19~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[5][13]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add19~46\,
	sumout => \Add19~49_sumout\,
	cout => \Add19~50\);

-- Location: FF_X85_Y34_N37
\adders_in1_reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][13]~q\);

-- Location: LABCELL_X83_Y33_N39
\adders_out1[6][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][13]~feeder_combout\ = ( \adders_in1_reg[6][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][13]~q\,
	combout => \adders_out1[6][13]~feeder_combout\);

-- Location: FF_X83_Y33_N40
\adders_out1[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][13]~q\);

-- Location: MLABCELL_X87_Y34_N36
\Add20~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~49_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][13]~q\ ) + ( \Add20~46\ ))
-- \Add20~50\ = CARRY(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][13]~q\ ) + ( \Add20~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][13]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~46\,
	sumout => \Add20~49_sumout\,
	cout => \Add20~50\);

-- Location: FF_X87_Y34_N37
\adders_in1_reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][13]~q\);

-- Location: MLABCELL_X82_Y32_N18
\adders_out1[7][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][13]~feeder_combout\ = ( \adders_in1_reg[7][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][13]~q\,
	combout => \adders_out1[7][13]~feeder_combout\);

-- Location: FF_X82_Y32_N20
\adders_out1[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][13]~q\);

-- Location: MLABCELL_X82_Y32_N6
\y1[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[13]~feeder_combout\ = \adders_out1[7][13]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[7][13]~q\,
	combout => \y1[13]~feeder_combout\);

-- Location: FF_X82_Y32_N8
\y1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(13));

-- Location: LABCELL_X74_Y33_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( w64_0(13) ) + ( !w3_0(10) ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( w64_0(13) ) + ( !w3_0(10) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_0(10),
	datad => ALT_INV_w64_0(13),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X74_Y33_N37
\w61_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(13));

-- Location: LABCELL_X75_Y34_N54
\multipliers_out0_reg[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][13]~feeder_combout\ = ( w61_0(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(13),
	combout => \multipliers_out0_reg[3][13]~feeder_combout\);

-- Location: FF_X75_Y34_N55
\multipliers_out0_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][13]~q\);

-- Location: LABCELL_X79_Y35_N39
\Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~53_sumout\ = SUM(( \multipliers_out0_reg[3][13]~q\ ) + ( \adders_out0[2][15]~q\ ) + ( \Add9~50\ ))
-- \Add9~54\ = CARRY(( \multipliers_out0_reg[3][13]~q\ ) + ( \adders_out0[2][15]~q\ ) + ( \Add9~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[2][15]~q\,
	datad => \ALT_INV_multipliers_out0_reg[3][13]~q\,
	cin => \Add9~50\,
	sumout => \Add9~53_sumout\,
	cout => \Add9~54\);

-- Location: FF_X79_Y35_N40
\adders_in0_reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][13]~q\);

-- Location: LABCELL_X80_Y35_N18
\adders_out0[3][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][13]~feeder_combout\ = ( \adders_in0_reg[3][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][13]~q\,
	combout => \adders_out0[3][13]~feeder_combout\);

-- Location: FF_X80_Y35_N19
\adders_out0[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][13]~q\);

-- Location: LABCELL_X79_Y33_N39
\Add10~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~53_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][13]~q\ ) + ( \Add10~50\ ))
-- \Add10~54\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][13]~q\ ) + ( \Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][13]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add10~50\,
	sumout => \Add10~53_sumout\,
	cout => \Add10~54\);

-- Location: FF_X79_Y33_N40
\adders_in0_reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][13]~q\);

-- Location: LABCELL_X81_Y34_N3
\adders_out0[4][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][13]~feeder_combout\ = ( \adders_in0_reg[4][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][13]~q\,
	combout => \adders_out0[4][13]~feeder_combout\);

-- Location: FF_X81_Y34_N5
\adders_out0[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][13]~q\);

-- Location: LABCELL_X80_Y34_N36
\Add11~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~49_sumout\ = SUM(( \adders_out0[4][13]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~46\ ))
-- \Add11~50\ = CARRY(( \adders_out0[4][13]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datad => \ALT_INV_adders_out0[4][13]~q\,
	cin => \Add11~46\,
	sumout => \Add11~49_sumout\,
	cout => \Add11~50\);

-- Location: FF_X80_Y34_N37
\adders_in0_reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][13]~q\);

-- Location: LABCELL_X81_Y34_N6
\adders_out0[5][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][13]~feeder_combout\ = ( \adders_in0_reg[5][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][13]~q\,
	combout => \adders_out0[5][13]~feeder_combout\);

-- Location: FF_X81_Y34_N8
\adders_out0[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][13]~q\);

-- Location: LABCELL_X80_Y32_N39
\Add12~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~53_sumout\ = SUM(( \adders_out0[5][13]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~50\ ))
-- \Add12~54\ = CARRY(( \adders_out0[5][13]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_adders_out0[5][13]~q\,
	dataf => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add12~50\,
	sumout => \Add12~53_sumout\,
	cout => \Add12~54\);

-- Location: FF_X80_Y32_N40
\adders_in0_reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][13]~q\);

-- Location: LABCELL_X81_Y32_N54
\adders_out0[6][13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][13]~feeder_combout\ = ( \adders_in0_reg[6][13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[6][13]~q\,
	combout => \adders_out0[6][13]~feeder_combout\);

-- Location: FF_X81_Y32_N55
\adders_out0[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][13]~q\);

-- Location: LABCELL_X79_Y32_N36
\Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~49_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][13]~q\ ) + ( \Add13~46\ ))
-- \Add13~50\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][13]~q\ ) + ( \Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out0[6][13]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~46\,
	sumout => \Add13~49_sumout\,
	cout => \Add13~50\);

-- Location: FF_X79_Y32_N37
\adders_in0_reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][13]~q\);

-- Location: FF_X81_Y35_N41
\adders_out0[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[7][13]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][13]~q\);

-- Location: FF_X81_Y35_N1
\y0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_out0[7][13]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(13));

-- Location: LABCELL_X80_Y30_N36
\Add22~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~49_sumout\ = SUM(( y1(13) ) + ( y0(13) ) + ( \Add22~46\ ))
-- \Add22~50\ = CARRY(( y1(13) ) + ( y0(13) ) + ( \Add22~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y1(13),
	datac => ALT_INV_y0(13),
	cin => \Add22~46\,
	sumout => \Add22~49_sumout\,
	cout => \Add22~50\);

-- Location: FF_X80_Y30_N37
\Dout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~49_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[13]~reg0_q\);

-- Location: LABCELL_X74_Y33_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( w64_0(13) ) + ( !w3_0(10) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_w3_0(10),
	datac => ALT_INV_w64_0(13),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\);

-- Location: FF_X74_Y33_N40
\w61_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w61_0(14));

-- Location: LABCELL_X79_Y33_N57
\multipliers_out0_reg[3][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \multipliers_out0_reg[3][15]~feeder_combout\ = ( w61_0(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_w61_0(14),
	combout => \multipliers_out0_reg[3][15]~feeder_combout\);

-- Location: FF_X79_Y33_N59
\multipliers_out0_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \multipliers_out0_reg[3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multipliers_out0_reg[3][15]~q\);

-- Location: LABCELL_X79_Y35_N42
\Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~57_sumout\ = SUM(( \adders_out0[2][15]~q\ ) + ( \multipliers_out0_reg[3][15]~q\ ) + ( \Add9~54\ ))
-- \Add9~58\ = CARRY(( \adders_out0[2][15]~q\ ) + ( \multipliers_out0_reg[3][15]~q\ ) + ( \Add9~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[3][15]~q\,
	datad => \ALT_INV_adders_out0[2][15]~q\,
	cin => \Add9~54\,
	sumout => \Add9~57_sumout\,
	cout => \Add9~58\);

-- Location: FF_X79_Y35_N43
\adders_in0_reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][14]~q\);

-- Location: LABCELL_X80_Y33_N45
\adders_out0[3][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][14]~feeder_combout\ = ( \adders_in0_reg[3][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][14]~q\,
	combout => \adders_out0[3][14]~feeder_combout\);

-- Location: FF_X80_Y33_N46
\adders_out0[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][14]~q\);

-- Location: LABCELL_X79_Y33_N42
\Add10~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~57_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][14]~q\ ) + ( \Add10~54\ ))
-- \Add10~58\ = CARRY(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][14]~q\ ) + ( \Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[3][14]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add10~54\,
	sumout => \Add10~57_sumout\,
	cout => \Add10~58\);

-- Location: FF_X79_Y33_N43
\adders_in0_reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][14]~q\);

-- Location: LABCELL_X81_Y34_N36
\adders_out0[4][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[4][14]~feeder_combout\ = ( \adders_in0_reg[4][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[4][14]~q\,
	combout => \adders_out0[4][14]~feeder_combout\);

-- Location: FF_X81_Y34_N37
\adders_out0[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[4][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][14]~q\);

-- Location: LABCELL_X80_Y34_N39
\Add11~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~53_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[4][14]~q\ ) + ( \Add11~50\ ))
-- \Add11~54\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[4][14]~q\ ) + ( \Add11~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	dataf => \ALT_INV_adders_out0[4][14]~q\,
	cin => \Add11~50\,
	sumout => \Add11~53_sumout\,
	cout => \Add11~54\);

-- Location: FF_X80_Y34_N40
\adders_in0_reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][14]~q\);

-- Location: LABCELL_X81_Y34_N33
\adders_out0[5][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[5][14]~feeder_combout\ = ( \adders_in0_reg[5][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[5][14]~q\,
	combout => \adders_out0[5][14]~feeder_combout\);

-- Location: FF_X81_Y34_N34
\adders_out0[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[5][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][14]~q\);

-- Location: LABCELL_X80_Y32_N42
\Add12~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~57_sumout\ = SUM(( \adders_out0[5][14]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~54\ ))
-- \Add12~58\ = CARRY(( \adders_out0[5][14]~q\ ) + ( \multipliers_out0_reg[0][15]~q\ ) + ( \Add12~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	datad => \ALT_INV_adders_out0[5][14]~q\,
	cin => \Add12~54\,
	sumout => \Add12~57_sumout\,
	cout => \Add12~58\);

-- Location: FF_X80_Y32_N43
\adders_in0_reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][14]~q\);

-- Location: FF_X81_Y32_N52
\adders_out0[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[6][14]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][14]~q\);

-- Location: LABCELL_X79_Y32_N39
\Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~53_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][14]~q\ ) + ( \Add13~50\ ))
-- \Add13~54\ = CARRY(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][14]~q\ ) + ( \Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[6][14]~q\,
	datad => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~50\,
	sumout => \Add13~53_sumout\,
	cout => \Add13~54\);

-- Location: FF_X79_Y32_N40
\adders_in0_reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][14]~q\);

-- Location: LABCELL_X77_Y34_N48
\adders_out0[7][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][14]~feeder_combout\ = ( \adders_in0_reg[7][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][14]~q\,
	combout => \adders_out0[7][14]~feeder_combout\);

-- Location: FF_X77_Y34_N49
\adders_out0[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][14]~q\);

-- Location: LABCELL_X79_Y30_N24
\y0[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[14]~feeder_combout\ = ( \adders_out0[7][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][14]~q\,
	combout => \y0[14]~feeder_combout\);

-- Location: FF_X79_Y30_N25
\y0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(14));

-- Location: MLABCELL_X84_Y32_N36
\Add15~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~49_sumout\ = SUM(( \multipliers_out1_reg[2][15]~DUPLICATE_q\ ) + ( \adders_out1[1][15]~q\ ) + ( \Add15~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[1][15]~q\,
	datac => \ALT_INV_multipliers_out1_reg[2][15]~DUPLICATE_q\,
	cin => \Add15~46\,
	sumout => \Add15~49_sumout\);

-- Location: FF_X84_Y32_N37
\adders_in1_reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add15~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[2][14]~q\);

-- Location: FF_X83_Y34_N8
\adders_out1[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[2][14]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[2][15]~q\);

-- Location: LABCELL_X83_Y31_N33
\Add16~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~45_sumout\ = SUM(( \multipliers_out1_reg[3][15]~q\ ) + ( \adders_out1[2][15]~q\ ) + ( \Add16~42\ ))
-- \Add16~46\ = CARRY(( \multipliers_out1_reg[3][15]~q\ ) + ( \adders_out1[2][15]~q\ ) + ( \Add16~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	datac => \ALT_INV_adders_out1[2][15]~q\,
	cin => \Add16~42\,
	sumout => \Add16~45_sumout\,
	cout => \Add16~46\);

-- Location: FF_X83_Y31_N34
\adders_in1_reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][14]~q\);

-- Location: LABCELL_X81_Y33_N9
\adders_out1[3][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][14]~feeder_combout\ = ( \adders_in1_reg[3][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][14]~q\,
	combout => \adders_out1[3][14]~feeder_combout\);

-- Location: FF_X81_Y33_N11
\adders_out1[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][14]~q\);

-- Location: LABCELL_X81_Y31_N33
\Add17~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~45_sumout\ = SUM(( \adders_out1[3][14]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add17~42\ ))
-- \Add17~46\ = CARRY(( \adders_out1[3][14]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add17~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	datad => \ALT_INV_adders_out1[3][14]~q\,
	cin => \Add17~42\,
	sumout => \Add17~45_sumout\,
	cout => \Add17~46\);

-- Location: FF_X81_Y31_N35
\adders_in1_reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][14]~q\);

-- Location: FF_X83_Y34_N58
\adders_out1[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[4][14]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][14]~q\);

-- Location: LABCELL_X85_Y33_N36
\Add18~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~49_sumout\ = SUM(( \adders_out1[4][14]~q\ ) + ( \multipliers_out1_reg[2][15]~q\ ) + ( \Add18~46\ ))
-- \Add18~50\ = CARRY(( \adders_out1[4][14]~q\ ) + ( \multipliers_out1_reg[2][15]~q\ ) + ( \Add18~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out1_reg[2][15]~q\,
	datad => \ALT_INV_adders_out1[4][14]~q\,
	cin => \Add18~46\,
	sumout => \Add18~49_sumout\,
	cout => \Add18~50\);

-- Location: FF_X85_Y33_N37
\adders_in1_reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][14]~q\);

-- Location: FF_X83_Y33_N35
\adders_out1[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][14]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][14]~q\);

-- Location: LABCELL_X85_Y34_N39
\Add19~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~53_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][14]~q\ ) + ( \Add19~50\ ))
-- \Add19~54\ = CARRY(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][14]~q\ ) + ( \Add19~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[5][14]~q\,
	datac => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add19~50\,
	sumout => \Add19~53_sumout\,
	cout => \Add19~54\);

-- Location: FF_X85_Y34_N40
\adders_in1_reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][14]~q\);

-- Location: LABCELL_X81_Y32_N18
\adders_out1[6][14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[6][14]~feeder_combout\ = ( \adders_in1_reg[6][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[6][14]~q\,
	combout => \adders_out1[6][14]~feeder_combout\);

-- Location: FF_X81_Y32_N19
\adders_out1[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[6][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][14]~q\);

-- Location: MLABCELL_X87_Y34_N39
\Add20~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~53_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][14]~q\ ) + ( \Add20~50\ ))
-- \Add20~54\ = CARRY(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][14]~q\ ) + ( \Add20~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][14]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~50\,
	sumout => \Add20~53_sumout\,
	cout => \Add20~54\);

-- Location: FF_X87_Y34_N40
\adders_in1_reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][14]~q\);

-- Location: FF_X83_Y34_N26
\adders_out1[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[7][14]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][14]~q\);

-- Location: LABCELL_X88_Y30_N51
\y1[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[14]~feeder_combout\ = ( \adders_out1[7][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out1[7][14]~q\,
	combout => \y1[14]~feeder_combout\);

-- Location: FF_X88_Y30_N52
\y1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(14));

-- Location: LABCELL_X80_Y30_N39
\Add22~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~53_sumout\ = SUM(( y1(14) ) + ( y0(14) ) + ( \Add22~50\ ))
-- \Add22~54\ = CARRY(( y1(14) ) + ( y0(14) ) + ( \Add22~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_y0(14),
	datad => ALT_INV_y1(14),
	cin => \Add22~50\,
	sumout => \Add22~53_sumout\,
	cout => \Add22~54\);

-- Location: FF_X80_Y30_N40
\Dout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~53_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[14]~reg0_q\);

-- Location: LABCELL_X79_Y35_N45
\Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~61_sumout\ = SUM(( \adders_out0[2][15]~q\ ) + ( \multipliers_out0_reg[3][15]~q\ ) + ( \Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[3][15]~q\,
	datad => \ALT_INV_adders_out0[2][15]~q\,
	cin => \Add9~58\,
	sumout => \Add9~61_sumout\);

-- Location: FF_X79_Y35_N46
\adders_in0_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add9~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[3][15]~q\);

-- Location: LABCELL_X80_Y33_N18
\adders_out0[3][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[3][15]~feeder_combout\ = ( \adders_in0_reg[3][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[3][15]~q\,
	combout => \adders_out0[3][15]~feeder_combout\);

-- Location: FF_X80_Y33_N20
\adders_out0[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[3][15]~q\);

-- Location: LABCELL_X79_Y33_N45
\Add10~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~61_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[3][15]~q\ ) + ( \Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out0[3][15]~q\,
	datad => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	cin => \Add10~58\,
	sumout => \Add10~61_sumout\);

-- Location: FF_X79_Y33_N47
\adders_in0_reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add10~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[4][15]~q\);

-- Location: FF_X81_Y34_N49
\adders_out0[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[4][15]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[4][15]~q\);

-- Location: LABCELL_X80_Y34_N42
\Add11~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~57_sumout\ = SUM(( \adders_out0[4][15]~q\ ) + ( \multipliers_out0_reg[1][15]~q\ ) + ( \Add11~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	datad => \ALT_INV_adders_out0[4][15]~q\,
	cin => \Add11~54\,
	sumout => \Add11~57_sumout\);

-- Location: FF_X80_Y34_N44
\adders_in0_reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add11~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[5][15]~q\);

-- Location: FF_X81_Y34_N52
\adders_out0[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in0_reg[5][15]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[5][15]~q\);

-- Location: LABCELL_X80_Y32_N45
\Add12~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~61_sumout\ = SUM(( \multipliers_out0_reg[0][15]~q\ ) + ( \adders_out0[5][15]~q\ ) + ( \Add12~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out0_reg[0][15]~q\,
	datac => \ALT_INV_adders_out0[5][15]~q\,
	cin => \Add12~58\,
	sumout => \Add12~61_sumout\);

-- Location: FF_X80_Y32_N46
\adders_in0_reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add12~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[6][15]~q\);

-- Location: LABCELL_X81_Y32_N42
\adders_out0[6][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[6][15]~feeder_combout\ = ( \adders_in0_reg[6][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[6][15]~q\,
	combout => \adders_out0[6][15]~feeder_combout\);

-- Location: FF_X81_Y32_N43
\adders_out0[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[6][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[6][15]~q\);

-- Location: LABCELL_X79_Y32_N42
\Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~57_sumout\ = SUM(( \multipliers_out0_reg[1][15]~q\ ) + ( \adders_out0[6][15]~q\ ) + ( \Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out0[6][15]~q\,
	datac => \ALT_INV_multipliers_out0_reg[1][15]~q\,
	cin => \Add13~54\,
	sumout => \Add13~57_sumout\);

-- Location: FF_X79_Y32_N44
\adders_in0_reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add13~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in0_reg[7][15]~q\);

-- Location: LABCELL_X77_Y34_N6
\adders_out0[7][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out0[7][15]~feeder_combout\ = ( \adders_in0_reg[7][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in0_reg[7][15]~q\,
	combout => \adders_out0[7][15]~feeder_combout\);

-- Location: FF_X77_Y34_N7
\adders_out0[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out0[7][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out0[7][15]~q\);

-- Location: LABCELL_X80_Y31_N18
\y0[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y0[15]~feeder_combout\ = ( \adders_out0[7][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_out0[7][15]~q\,
	combout => \y0[15]~feeder_combout\);

-- Location: FF_X80_Y31_N19
\y0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y0[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y0(15));

-- Location: LABCELL_X83_Y31_N36
\Add16~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~49_sumout\ = SUM(( \adders_out1[2][15]~q\ ) + ( \multipliers_out1_reg[3][15]~q\ ) + ( \Add16~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	datad => \ALT_INV_adders_out1[2][15]~q\,
	cin => \Add16~46\,
	sumout => \Add16~49_sumout\);

-- Location: FF_X83_Y31_N37
\adders_in1_reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add16~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[3][15]~q\);

-- Location: LABCELL_X81_Y33_N3
\adders_out1[3][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[3][15]~feeder_combout\ = ( \adders_in1_reg[3][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[3][15]~q\,
	combout => \adders_out1[3][15]~feeder_combout\);

-- Location: FF_X81_Y33_N4
\adders_out1[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[3][15]~q\);

-- Location: LABCELL_X81_Y31_N36
\Add17~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~49_sumout\ = SUM(( \multipliers_out1_reg[3][15]~q\ ) + ( \adders_out1[3][15]~q\ ) + ( \Add17~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[3][15]~q\,
	datab => \ALT_INV_multipliers_out1_reg[3][15]~q\,
	cin => \Add17~46\,
	sumout => \Add17~49_sumout\);

-- Location: FF_X81_Y31_N37
\adders_in1_reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add17~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[4][15]~q\);

-- Location: LABCELL_X81_Y33_N6
\adders_out1[4][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[4][15]~feeder_combout\ = ( \adders_in1_reg[4][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[4][15]~q\,
	combout => \adders_out1[4][15]~feeder_combout\);

-- Location: FF_X81_Y33_N7
\adders_out1[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[4][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[4][15]~q\);

-- Location: LABCELL_X85_Y33_N39
\Add18~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~53_sumout\ = SUM(( \adders_out1[4][15]~q\ ) + ( \multipliers_out1_reg[2][15]~q\ ) + ( \Add18~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multipliers_out1_reg[2][15]~q\,
	datad => \ALT_INV_adders_out1[4][15]~q\,
	cin => \Add18~50\,
	sumout => \Add18~53_sumout\);

-- Location: FF_X85_Y33_N40
\adders_in1_reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add18~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[5][15]~q\);

-- Location: FF_X83_Y34_N49
\adders_out1[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[5][15]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[5][15]~q\);

-- Location: LABCELL_X85_Y34_N42
\Add19~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~57_sumout\ = SUM(( \multipliers_out1_reg[1][15]~q\ ) + ( \adders_out1[5][15]~q\ ) + ( \Add19~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adders_out1[5][15]~q\,
	datad => \ALT_INV_multipliers_out1_reg[1][15]~q\,
	cin => \Add19~54\,
	sumout => \Add19~57_sumout\);

-- Location: FF_X85_Y34_N44
\adders_in1_reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add19~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[6][15]~q\);

-- Location: FF_X84_Y34_N41
\adders_out1[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \adders_in1_reg[6][15]~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[6][15]~q\);

-- Location: MLABCELL_X87_Y34_N42
\Add20~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~57_sumout\ = SUM(( \multipliers_out1_reg[0][15]~q\ ) + ( \adders_out1[6][15]~q\ ) + ( \Add20~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adders_out1[6][15]~q\,
	datad => \ALT_INV_multipliers_out1_reg[0][15]~q\,
	cin => \Add20~54\,
	sumout => \Add20~57_sumout\);

-- Location: FF_X87_Y34_N43
\adders_in1_reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add20~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_in1_reg[7][15]~q\);

-- Location: MLABCELL_X82_Y32_N21
\adders_out1[7][15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adders_out1[7][15]~feeder_combout\ = ( \adders_in1_reg[7][15]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_adders_in1_reg[7][15]~q\,
	combout => \adders_out1[7][15]~feeder_combout\);

-- Location: FF_X82_Y32_N23
\adders_out1[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \adders_out1[7][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adders_out1[7][15]~q\);

-- Location: MLABCELL_X82_Y32_N51
\y1[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y1[15]~feeder_combout\ = \adders_out1[7][15]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adders_out1[7][15]~q\,
	combout => \y1[15]~feeder_combout\);

-- Location: FF_X82_Y32_N52
\y1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y1[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y1(15));

-- Location: LABCELL_X80_Y30_N42
\Add22~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~57_sumout\ = SUM(( y1(15) ) + ( y0(15) ) + ( \Add22~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_y0(15),
	datac => ALT_INV_y1(15),
	cin => \Add22~54\,
	sumout => \Add22~57_sumout\);

-- Location: FF_X80_Y30_N43
\Dout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add22~57_sumout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dout[15]~reg0_q\);
END structure;


