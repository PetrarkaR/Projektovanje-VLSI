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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/25/2021 11:16:50"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	microcontroller IS
    PORT (
	Taster : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	Int_code : IN std_logic_vector(1 DOWNTO 0);
	PORT_IN : IN std_logic_vector(7 DOWNTO 0);
	Seg0 : OUT std_logic_vector(7 DOWNTO 0);
	Seg1 : OUT std_logic_vector(7 DOWNTO 0);
	Seg2 : OUT std_logic_vector(7 DOWNTO 0);
	Seg3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END microcontroller;

-- Design Ports Information
-- Seg0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg0[7]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg1[7]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg2[7]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Seg3[7]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PORT_IN[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PORT_IN[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Int_code[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Int_code[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Taster	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF microcontroller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Taster : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Int_code : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PORT_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Seg0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Seg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Seg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Seg3 : std_logic_vector(7 DOWNTO 0);
SIGNAL U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(12 DOWNTO 0);
SIGNAL U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(12 DOWNTO 0);
SIGNAL U1_aclock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a1_a_a3 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a2_a_a5 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a3_a_a7 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a4_a_a9 : std_logic;
SIGNAL U3_aAdd1_a4_combout : std_logic;
SIGNAL U3_aAdd1_a6_combout : std_logic;
SIGNAL U3_aAdd1_a10_combout : std_logic;
SIGNAL U3_aAdd0_a2_combout : std_logic;
SIGNAL U3_aAdd0_a5 : std_logic;
SIGNAL U3_aAdd0_a6_combout : std_logic;
SIGNAL U3_aAdd0_a7 : std_logic;
SIGNAL U3_aAdd2_a0_combout : std_logic;
SIGNAL U3_aAdd2_a2_combout : std_logic;
SIGNAL U3_aAdd2_a5 : std_logic;
SIGNAL U3_aAdd2_a6_combout : std_logic;
SIGNAL U3_aAdd2_a7 : std_logic;
SIGNAL U7_aAdd0_a0_combout : std_logic;
SIGNAL U7_aAdd0_a2_combout : std_logic;
SIGNAL U7_aAdd0_a4_combout : std_logic;
SIGNAL U7_aAdd0_a6_combout : std_logic;
SIGNAL U7_apc_val_a2_a_a0_combout : std_logic;
SIGNAL U3_aAdd2_a8_combout : std_logic;
SIGNAL U3_aAdd2_a9 : std_logic;
SIGNAL U3_aAdd2_a10_combout : std_logic;
SIGNAL U3_aAdd2_a11 : std_logic;
SIGNAL U3_aAdd2_a12_combout : std_logic;
SIGNAL U3_aAdd2_a13 : std_logic;
SIGNAL U3_aAdd2_a14_combout : std_logic;
SIGNAL U3_aAdd2_a15 : std_logic;
SIGNAL U3_aAdd0_a8_combout : std_logic;
SIGNAL U3_aAdd0_a9 : std_logic;
SIGNAL U3_aAdd0_a10_combout : std_logic;
SIGNAL U3_aAdd0_a11 : std_logic;
SIGNAL U3_aAdd0_a12_combout : std_logic;
SIGNAL U3_aAdd0_a13 : std_logic;
SIGNAL U3_aAdd0_a14_combout : std_logic;
SIGNAL U3_aAdd0_a15 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a5_a_a11 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a6_a_a13 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a7_a_a15 : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a8_a_a17 : std_logic;
SIGNAL U3_aAdd1_a18_combout : std_logic;
SIGNAL U3_aAdd1_a20_combout : std_logic;
SIGNAL U3_aAdd1_a22_combout : std_logic;
SIGNAL U3_aAdd1_a25 : std_logic;
SIGNAL U7_aAdd0_a10 : std_logic;
SIGNAL U7_aAdd0_a11_combout : std_logic;
SIGNAL U7_aAdd0_a12 : std_logic;
SIGNAL U7_aAdd0_a13_combout : std_logic;
SIGNAL U7_aAdd0_a14 : std_logic;
SIGNAL U7_aAdd0_a15_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_combout : std_logic;
SIGNAL U3_aAdd1_a29_combout : std_logic;
SIGNAL U3_aAdd0_a16_combout : std_logic;
SIGNAL U3_aAdd2_a16_combout : std_logic;
SIGNAL U2_acnt_a2_a_a13_combout : std_logic;
SIGNAL U2_acnt_a4_a_a17_combout : std_logic;
SIGNAL U8_acounter_a2_a_a24_combout : std_logic;
SIGNAL U8_acounter_a6_a_a32_combout : std_logic;
SIGNAL U8_acounter_a15_a_a50_combout : std_logic;
SIGNAL U8_acounter_a18_a_a57_combout : std_logic;
SIGNAL U6_aMux8_a3_combout : std_logic;
SIGNAL U6_aMux10_a0_combout : std_logic;
SIGNAL U6_aMux10_a1_combout : std_logic;
SIGNAL U1_adata_a1_a_a9_combout : std_logic;
SIGNAL U1_adata_a1_a_a10_combout : std_logic;
SIGNAL U1_adata_a1_a_a11_combout : std_logic;
SIGNAL U6_adata_rom_a2_a_a2_combout : std_logic;
SIGNAL U6_adata_rom_a2_a_a3_combout : std_logic;
SIGNAL U6_aMux9_a0_combout : std_logic;
SIGNAL U6_aMux9_a1_combout : std_logic;
SIGNAL U6_aMux9_a2_combout : std_logic;
SIGNAL U6_aMux9_a3_combout : std_logic;
SIGNAL U6_aMux9_a4_combout : std_logic;
SIGNAL U6_aMux9_a5_combout : std_logic;
SIGNAL U1_adata_a2_a_a13_combout : std_logic;
SIGNAL U1_adata_a2_a_a14_combout : std_logic;
SIGNAL U1_adata_a2_a_a15_combout : std_logic;
SIGNAL U6_adata_rom_a0_a_a6_combout : std_logic;
SIGNAL U6_aMux11_a0_combout : std_logic;
SIGNAL U6_aMux11_a1_combout : std_logic;
SIGNAL U6_aMux11_a2_combout : std_logic;
SIGNAL U6_aMux11_a3_combout : std_logic;
SIGNAL U6_aMux11_a4_combout : std_logic;
SIGNAL U6_aMux11_a5_combout : std_logic;
SIGNAL U6_adata_rom_a0_a_a7_combout : std_logic;
SIGNAL U1_adata_a0_a_a18_combout : std_logic;
SIGNAL U6_adata_rom_a7_a_a9_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a12_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a13_combout : std_logic;
SIGNAL U6_aMux6_a2_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a14_combout : std_logic;
SIGNAL U13_aDataOUT_a6_a_a0_combout : std_logic;
SIGNAL U6_aMux4_a0_combout : std_logic;
SIGNAL U3_adata_bus_a6_a_a0_combout : std_logic;
SIGNAL U6_aMux7_a0_combout : std_logic;
SIGNAL U6_aMux7_a2_combout : std_logic;
SIGNAL U6_adata_rom_a4_a_a24_combout : std_logic;
SIGNAL U6_adata_rom_a4_a_a25_combout : std_logic;
SIGNAL U3_aacc_a3_a_a7_combout : std_logic;
SIGNAL U3_aacc_a2_a_a17_combout : std_logic;
SIGNAL U3_aMux5_a0_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a0_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a1_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a2_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a3_combout : std_logic;
SIGNAL U3_aAdd1_a1_combout : std_logic;
SIGNAL U3_aacc_a2_a_a19_combout : std_logic;
SIGNAL U3_aMux5_a1_combout : std_logic;
SIGNAL U3_aMux5_a2_combout : std_logic;
SIGNAL U2_anext_state_aI6_a1_combout : std_logic;
SIGNAL U3_aAdd1_a12_combout : std_logic;
SIGNAL U2_aWideOr2_a1_combout : std_logic;
SIGNAL U3_aacc_a1_a_a22_combout : std_logic;
SIGNAL U3_aMux7_a0_combout : std_logic;
SIGNAL U3_aMux7_a1_combout : std_logic;
SIGNAL U3_aMux7_a2_combout : std_logic;
SIGNAL U7_aMux1_a1_combout : std_logic;
SIGNAL U3_aMux8_a1_combout : std_logic;
SIGNAL U3_aMux8_a2_combout : std_logic;
SIGNAL U3_aAdd1_a15_combout : std_logic;
SIGNAL U3_aAdd1_a16_combout : std_logic;
SIGNAL U3_aacc_a0_a_a35_combout : std_logic;
SIGNAL U3_aacc_a7_a_a37_combout : std_logic;
SIGNAL U3_aacc_a7_a_a39_combout : std_logic;
SIGNAL U3_aacc_a7_a_a40_combout : std_logic;
SIGNAL U3_aacc_a7_a_a41_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a4_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a5_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a6_combout : std_logic;
SIGNAL U13_aDataOUT_a4_a_a1_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a7_combout : std_logic;
SIGNAL U3_aAdd1_a26_combout : std_logic;
SIGNAL U3_aAdd1_a27_combout : std_logic;
SIGNAL U3_aMux1_a1_combout : std_logic;
SIGNAL U7_aAdd0_a17_combout : std_logic;
SIGNAL U3_aacc_a5_a_a44_combout : std_logic;
SIGNAL U3_aMux3_a0_combout : std_logic;
SIGNAL U3_aMux3_a1_combout : std_logic;
SIGNAL U3_aMux3_a2_combout : std_logic;
SIGNAL U3_aacc_a5_a_a45_combout : std_logic;
SIGNAL U3_aacc_a5_a_a46_combout : std_logic;
SIGNAL U3_aacc_a5_a_a47_combout : std_logic;
SIGNAL U3_aacc_a5_a_a48_combout : std_logic;
SIGNAL U3_aMux2_a0_combout : std_logic;
SIGNAL U3_aMux2_a1_combout : std_logic;
SIGNAL U3_aMux2_a2_combout : std_logic;
SIGNAL U3_aacc_a4_a_a53_combout : std_logic;
SIGNAL U3_aMux4_a0_combout : std_logic;
SIGNAL U3_aMux4_a1_combout : std_logic;
SIGNAL U3_aMux4_a2_combout : std_logic;
SIGNAL U3_aacc_a4_a_a54_combout : std_logic;
SIGNAL U1_adata_a14_a_a33_combout : std_logic;
SIGNAL U1_adata_a14_a_a34_combout : std_logic;
SIGNAL U6_aMux1_a1_combout : std_logic;
SIGNAL U1_adata_a14_a_a36_combout : std_logic;
SIGNAL U6_aMux1_a2_combout : std_logic;
SIGNAL U6_aMux1_a3_combout : std_logic;
SIGNAL U1_adata_a14_a_a37_combout : std_logic;
SIGNAL U1_adata_a14_a_a38_combout : std_logic;
SIGNAL U6_aMux3_a0_combout : std_logic;
SIGNAL U6_aMux3_a1_combout : std_logic;
SIGNAL U6_aMux3_a2_combout : std_logic;
SIGNAL U6_aMux3_a3_combout : std_logic;
SIGNAL U6_aMux3_a4_combout : std_logic;
SIGNAL U6_aMux3_a5_combout : std_logic;
SIGNAL U1_adata_a12_a_a40_combout : std_logic;
SIGNAL U6_aMux2_a3_combout : std_logic;
SIGNAL U6_aMux2_a4_combout : std_logic;
SIGNAL U6_aMux2_a5_combout : std_logic;
SIGNAL U6_aMux0_a0_combout : std_logic;
SIGNAL U1_adata_a15_a_a46_combout : std_logic;
SIGNAL U3_aacc_a8_a_a57_combout : std_logic;
SIGNAL U3_aMux0_a0_combout : std_logic;
SIGNAL U3_aMux0_a1_combout : std_logic;
SIGNAL U3_aMux0_a2_combout : std_logic;
SIGNAL U3_aacc_a8_a_a58_combout : std_logic;
SIGNAL U3_aacc_a8_a_a59_combout : std_logic;
SIGNAL U3_aacc_a8_a_a60_combout : std_logic;
SIGNAL U7_areset_int_req_aregout : std_logic;
SIGNAL U8_aEqual0_a3_combout : std_logic;
SIGNAL U7_areset_int_req_a0_combout : std_logic;
SIGNAL U6_aMux2_a6_combout : std_logic;
SIGNAL U3_aMux1_a2_combout : std_logic;
SIGNAL U3_aMux1_a3_combout : std_logic;
SIGNAL U6_adata_rom_a0_a_a27_combout : std_logic;
SIGNAL U6_adata_rom_a0_a_a28_combout : std_logic;
SIGNAL clk_aclkctrl_outclk : std_logic;
SIGNAL U2_acnt_a0_a_a10 : std_logic;
SIGNAL U2_acnt_a1_a_a11_combout : std_logic;
SIGNAL reset_acombout : std_logic;
SIGNAL U2_acnt_a3_a_a16 : std_logic;
SIGNAL U2_acnt_a4_a_a18 : std_logic;
SIGNAL U2_acnt_a5_a_a19_combout : std_logic;
SIGNAL U2_acnt_a5_a_a20 : std_logic;
SIGNAL U2_acnt_a6_a_a21_combout : std_logic;
SIGNAL U2_acnt_a6_a_a22 : std_logic;
SIGNAL U2_acnt_a7_a_a23_combout : std_logic;
SIGNAL U2_aEqual0_a1_combout : std_logic;
SIGNAL U2_acnt_a7_a_a24 : std_logic;
SIGNAL U2_acnt_a8_a_a25_combout : std_logic;
SIGNAL U2_aEqual0_a2_combout : std_logic;
SIGNAL U2_acnt_a1_a_a12 : std_logic;
SIGNAL U2_acnt_a2_a_a14 : std_logic;
SIGNAL U2_acnt_a3_a_a15_combout : std_logic;
SIGNAL U2_acnt_a0_a_a9_combout : std_logic;
SIGNAL U2_aEqual0_a0_combout : std_logic;
SIGNAL U2_anext_state_aR0_a0_combout : std_logic;
SIGNAL U2_apresent_state_aR0_aregout : std_logic;
SIGNAL U2_apresent_state_aR1_a0_combout : std_logic;
SIGNAL U2_apresent_state_aR1_aregout : std_logic;
SIGNAL U2_apresent_state_aI3_aregout : std_logic;
SIGNAL U2_aWideOr0_a1_combout : std_logic;
SIGNAL U2_aSelector0_a0_combout : std_logic;
SIGNAL U2_apresent_state_aI1_aregout : std_logic;
SIGNAL U2_apresent_state_aI2_aregout : std_logic;
SIGNAL U2_aWideOr2_a0_combout : std_logic;
SIGNAL clk_acombout : std_logic;
SIGNAL U1_aclock_acombout : std_logic;
SIGNAL U1_aclock_aclkctrl_outclk : std_logic;
SIGNAL U2_aWideOr0_a0_combout : std_logic;
SIGNAL U8_acounter_a0_a_a21 : std_logic;
SIGNAL U8_acounter_a1_a_a22_combout : std_logic;
SIGNAL U8_acounter_a4_a_a28_combout : std_logic;
SIGNAL a_aGND_acombout : std_logic;
SIGNAL U8_aEqual0_a2_combout : std_logic;
SIGNAL U8_acounter_a13_a_a46_combout : std_logic;
SIGNAL U8_aEqual0_a4_combout : std_logic;
SIGNAL U8_acounter_a0_a_a20_combout : std_logic;
SIGNAL U8_aEqual0_a1_combout : std_logic;
SIGNAL U8_aEqual0_a5_combout : std_logic;
SIGNAL U8_acounter_a19_a_a54_combout : std_logic;
SIGNAL U8_acounter_a1_a_a23 : std_logic;
SIGNAL U8_acounter_a2_a_a25 : std_logic;
SIGNAL U8_acounter_a3_a_a26_combout : std_logic;
SIGNAL U8_acounter_a3_a_a27 : std_logic;
SIGNAL U8_acounter_a4_a_a29 : std_logic;
SIGNAL U8_acounter_a5_a_a30_combout : std_logic;
SIGNAL U8_acounter_a5_a_a31 : std_logic;
SIGNAL U8_acounter_a6_a_a33 : std_logic;
SIGNAL U8_acounter_a7_a_a34_combout : std_logic;
SIGNAL U8_acounter_a7_a_a35 : std_logic;
SIGNAL U8_acounter_a8_a_a36_combout : std_logic;
SIGNAL U8_acounter_a8_a_a37 : std_logic;
SIGNAL U8_acounter_a9_a_a38_combout : std_logic;
SIGNAL U8_acounter_a9_a_a39 : std_logic;
SIGNAL U8_acounter_a10_a_a40_combout : std_logic;
SIGNAL U8_acounter_a10_a_a41 : std_logic;
SIGNAL U8_acounter_a11_a_a42_combout : std_logic;
SIGNAL U8_acounter_a11_a_a43 : std_logic;
SIGNAL U8_acounter_a12_a_a44_combout : std_logic;
SIGNAL U8_acounter_a12_a_a45 : std_logic;
SIGNAL U8_acounter_a13_a_a47 : std_logic;
SIGNAL U8_acounter_a14_a_a48_combout : std_logic;
SIGNAL U8_acounter_a14_a_a49 : std_logic;
SIGNAL U8_acounter_a15_a_a51 : std_logic;
SIGNAL U8_acounter_a16_a_a53 : std_logic;
SIGNAL U8_acounter_a17_a_a55_combout : std_logic;
SIGNAL U8_acounter_a17_a_a56 : std_logic;
SIGNAL U8_acounter_a18_a_a58 : std_logic;
SIGNAL U8_acounter_a19_a_a59_combout : std_logic;
SIGNAL U8_acounter_a16_a_a52_combout : std_logic;
SIGNAL U8_aEqual0_a0_combout : std_logic;
SIGNAL U8_aEnable_a0_combout : std_logic;
SIGNAL U8_aEnable_aregout : std_logic;
SIGNAL Taster_acombout : std_logic;
SIGNAL U8_aTaster1_aregout : std_logic;
SIGNAL U8_aTaster2_a0_combout : std_logic;
SIGNAL U8_aInt_req_a0_combout : std_logic;
SIGNAL U8_aInt_req_aregout : std_logic;
SIGNAL U1_adata_a15_a_a35_combout : std_logic;
SIGNAL U6_aMux0_a2_combout : std_logic;
SIGNAL U6_aMux0_a1_combout : std_logic;
SIGNAL U1_adata_a15_a_a47_combout : std_logic;
SIGNAL U1_adata_a15_a_a48_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a16_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a15_combout : std_logic;
SIGNAL U6_adata_rom_a5_a_a17_combout : std_logic;
SIGNAL U3_aAdd1_a0_combout : std_logic;
SIGNAL U2_anext_state_aI4_a0_combout : std_logic;
SIGNAL U2_apresent_state_aI4_aregout : std_logic;
SIGNAL U2_aacc_bus_acombout : std_logic;
SIGNAL U1_adata_a5_a_a21_combout : std_logic;
SIGNAL U7_aAdd0_a18_combout : std_logic;
SIGNAL U2_apc_data_a2_combout : std_logic;
SIGNAL U1_adata_a5_a_a22_combout : std_logic;
SIGNAL U1_adata_a5_a_a23_combout : std_logic;
SIGNAL U1_adata_a3_a_a6_combout : std_logic;
SIGNAL U1_adata_a13_a_a44_combout : std_logic;
SIGNAL U1_adata_a13_a_a45_combout : std_logic;
SIGNAL U3_aacc_a2_a_a5_combout : std_logic;
SIGNAL U2_anext_state_aI8_a0_combout : std_logic;
SIGNAL U2_anext_state_aI5_a0_combout : std_logic;
SIGNAL U2_apresent_state_aI5_aregout : std_logic;
SIGNAL U1_adata_a3_a_a5_combout : std_logic;
SIGNAL U1_adata_a3_a_a7_combout : std_logic;
SIGNAL U1_adata_a5_a_a24_combout : std_logic;
SIGNAL U1_adata_a12_a_a41_combout : std_logic;
SIGNAL U2_aMux6_a0_combout : std_logic;
SIGNAL U2_anext_state_aI10_a0_combout : std_logic;
SIGNAL U2_apresent_state_aI10_aregout : std_logic;
SIGNAL U1_adata_a15_a_a49_combout : std_logic;
SIGNAL U2_anext_state_aI9_a2_combout : std_logic;
SIGNAL U2_apresent_state_aI9_aregout : std_logic;
SIGNAL U2_amar_data_acombout : std_logic;
SIGNAL U3_aacc_a0_a_a31_combout : std_logic;
SIGNAL U3_aMux1_a0_combout : std_logic;
SIGNAL U2_aWideOr4_a0_combout : std_logic;
SIGNAL U3_aacc_a0_a_a33_combout : std_logic;
SIGNAL U3_aacc_a7_a_a42_combout : std_logic;
SIGNAL U3_aAdd1_a28_combout : std_logic;
SIGNAL U3_aacc_a7_a_a38_combout : std_logic;
SIGNAL U3_aAdd0_a0_combout : std_logic;
SIGNAL U3_aMux8_a0_combout : std_logic;
SIGNAL U3_aMux8_a3_combout : std_logic;
SIGNAL U3_aacc_a0_a_a32_combout : std_logic;
SIGNAL U3_aAdd1_a17_combout : std_logic;
SIGNAL U3_aacc_a2_a_a9_combout : std_logic;
SIGNAL U2_anext_state_aI9_a0_combout : std_logic;
SIGNAL U3_aacc_a2_a_a10_combout : std_logic;
SIGNAL U3_aacc_a2_a_a8_combout : std_logic;
SIGNAL U3_aacc_a2_a_a4_combout : std_logic;
SIGNAL U3_aacc_a2_a_a6_combout : std_logic;
SIGNAL U3_aacc_a3_a_a62_combout : std_logic;
SIGNAL U3_aacc_a1_a_a23_combout : std_logic;
SIGNAL U3_aacc_a3_a_a11_combout : std_logic;
SIGNAL U3_aacc_a1_a_a24_combout : std_logic;
SIGNAL U3_aacc_a2_a_a14_combout : std_logic;
SIGNAL U3_aacc_a3_a_a61_combout : std_logic;
SIGNAL U3_aacc_a2_a_a29_combout : std_logic;
SIGNAL U3_aacc_a3_a_a13_combout : std_logic;
SIGNAL U3_aacc_a3_a_a15_combout : std_logic;
SIGNAL U3_aacc_a3_a_a12_combout : std_logic;
SIGNAL U3_aacc_a3_a_a20_combout : std_logic;
SIGNAL U2_anext_state_aI9_a1_combout : std_logic;
SIGNAL U3_aacc_a6_a_a21_combout : std_logic;
SIGNAL U3_aacc_a2_a_a27_combout : std_logic;
SIGNAL U3_aAdd2_a1 : std_logic;
SIGNAL U3_aAdd2_a3 : std_logic;
SIGNAL U3_aAdd2_a4_combout : std_logic;
SIGNAL U3_aAdd1_a8_combout : std_logic;
SIGNAL U3_aacc_a2_a_a16_combout : std_logic;
SIGNAL U3_aMux6_a0_combout : std_logic;
SIGNAL U3_aAdd0_a1 : std_logic;
SIGNAL U3_aAdd0_a3 : std_logic;
SIGNAL U3_aAdd0_a4_combout : std_logic;
SIGNAL U3_aacc_a2_a_a18_combout : std_logic;
SIGNAL U3_aMux6_a1_combout : std_logic;
SIGNAL U3_aMux6_a2_combout : std_logic;
SIGNAL U3_aacc_a2_a_a28_combout : std_logic;
SIGNAL U3_aacc_a2_a_a30_combout : std_logic;
SIGNAL U3_aacc_a1_a_a25_combout : std_logic;
SIGNAL U3_aacc_a1_a_a26_combout : std_logic;
SIGNAL U3_aAdd1_a14_combout : std_logic;
SIGNAL U3_aMux8_a4_combout : std_logic;
SIGNAL U3_aAdd1_a13_combout : std_logic;
SIGNAL U3_aMux8_a5_combout : std_logic;
SIGNAL U3_aacc_a0_a_a34_combout : std_logic;
SIGNAL U3_aacc_a0_a_a36_combout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout : std_logic;
SIGNAL U3_aAdd1_a3_cout : std_logic;
SIGNAL U3_aAdd1_a5 : std_logic;
SIGNAL U3_aAdd1_a7 : std_logic;
SIGNAL U3_aAdd1_a9 : std_logic;
SIGNAL U3_aAdd1_a11 : std_logic;
SIGNAL U3_aAdd1_a19 : std_logic;
SIGNAL U3_aAdd1_a21 : std_logic;
SIGNAL U3_aAdd1_a23 : std_logic;
SIGNAL U3_aAdd1_a24_combout : std_logic;
SIGNAL U3_aacc_a7_a_a63_combout : std_logic;
SIGNAL U3_aacc_a7_a_a64_combout : std_logic;
SIGNAL U3_aacc_a7_a_a43_combout : std_logic;
SIGNAL U6_adata_rom_a7_a_a8_combout : std_logic;
SIGNAL U6_adata_rom_a7_a_a10_combout : std_logic;
SIGNAL U6_adata_rom_a7_a_a11_combout : std_logic;
SIGNAL U6_adata_rom_a2_a_a4_combout : std_logic;
SIGNAL U6_aMux8_a1_combout : std_logic;
SIGNAL U6_adata_rom_a2_a_a5_combout : std_logic;
SIGNAL U1_adata_a2_a_a16_combout : std_logic;
SIGNAL U1_adata_a3_a_a3_combout : std_logic;
SIGNAL U1_adata_a3_a_a2_combout : std_logic;
SIGNAL U1_adata_a3_a_a4_combout : std_logic;
SIGNAL U1_adata_a3_a_a8_combout : std_logic;
SIGNAL U7_aAdd0_a8_combout : std_logic;
SIGNAL U7_apc_val_a1_a_a1_combout : std_logic;
SIGNAL U7_aMux1_a0_combout : std_logic;
SIGNAL U7_apc_val_a0_a_a2_combout : std_logic;
SIGNAL Int_code_a0_a_a_wirecell_combout : std_logic;
SIGNAL U7_aAdd0_a1 : std_logic;
SIGNAL U7_aAdd0_a3 : std_logic;
SIGNAL U7_aAdd0_a5 : std_logic;
SIGNAL U7_aAdd0_a7 : std_logic;
SIGNAL U7_aAdd0_a9_combout : std_logic;
SIGNAL U7_aAdd0_a20_combout : std_logic;
SIGNAL U1_adata_a4_a_a29_combout : std_logic;
SIGNAL U6_aMux10_a3_combout : std_logic;
SIGNAL U6_adata_rom_a4_a_a22_combout : std_logic;
SIGNAL U6_aMux7_a1_combout : std_logic;
SIGNAL U6_adata_rom_a6_a_a21_combout : std_logic;
SIGNAL U6_adata_rom_a4_a_a23_combout : std_logic;
SIGNAL U3_aacc_a4_a_a55_combout : std_logic;
SIGNAL U3_aacc_a4_a_a56_combout : std_logic;
SIGNAL U1_adata_a4_a_a28_combout : std_logic;
SIGNAL U1_adata_a4_a_a30_combout : std_logic;
SIGNAL U1_adata_a4_a_a31_combout : std_logic;
SIGNAL U6_aMux10_a2_combout : std_logic;
SIGNAL U6_adata_rom_a1_a_a29_combout : std_logic;
SIGNAL U6_adata_rom_a1_a_a30_combout : std_logic;
SIGNAL U1_adata_a1_a_a12_combout : std_logic;
SIGNAL U6_aMux1_a0_combout : std_logic;
SIGNAL U1_adata_a14_a_a32_combout : std_logic;
SIGNAL U1_adata_a14_a_a39_combout : std_logic;
SIGNAL U3_aacc_a6_a_a51_combout : std_logic;
SIGNAL U3_aacc_a6_a_a49_combout : std_logic;
SIGNAL U3_aacc_a6_a_a50_combout : std_logic;
SIGNAL U3_aacc_a6_a_a52_combout : std_logic;
SIGNAL U2_anext_state_aI6_a0_combout : std_logic;
SIGNAL U2_anext_state_aI6_a2_combout : std_logic;
SIGNAL U2_anext_state_aI6_a3_combout : std_logic;
SIGNAL U2_anext_state_aI6_a4_combout : std_logic;
SIGNAL U2_anext_state_aI6_a5_combout : std_logic;
SIGNAL U2_apresent_state_aI6_aregout : std_logic;
SIGNAL U7_aAdd0_a19_combout : std_logic;
SIGNAL U1_adata_a6_a_a25_combout : std_logic;
SIGNAL U1_adata_a6_a_a26_combout : std_logic;
SIGNAL U6_aMux8_a2_combout : std_logic;
SIGNAL U6_adata_rom_a6_a_a19_combout : std_logic;
SIGNAL U6_adata_rom_a6_a_a18_combout : std_logic;
SIGNAL U6_adata_rom_a6_a_a20_combout : std_logic;
SIGNAL U6_adata_rom_a6_a_a26_combout : std_logic;
SIGNAL U1_adata_a6_a_a27_combout : std_logic;
SIGNAL U6_aMux8_a0_combout : std_logic;
SIGNAL U6_aMux4_a4_combout : std_logic;
SIGNAL U6_aMux4_a5_combout : std_logic;
SIGNAL U6_aMux4_a1_combout : std_logic;
SIGNAL U6_aMux2_a2_combout : std_logic;
SIGNAL U6_aMux4_a2_combout : std_logic;
SIGNAL U6_aMux6_a0_combout : std_logic;
SIGNAL U6_aMux6_a1_combout : std_logic;
SIGNAL U6_aMux4_a3_combout : std_logic;
SIGNAL U1_adata_a11_a_a42_combout : std_logic;
SIGNAL U1_adata_a11_a_a43_combout : std_logic;
SIGNAL U2_anext_state_aI8_a1_combout : std_logic;
SIGNAL U2_apresent_state_aI8_aregout : std_logic;
SIGNAL U1_adata_a0_a_a17_combout : std_logic;
SIGNAL U1_adata_a0_a_a19_combout : std_logic;
SIGNAL U1_adata_a0_a_a20_combout : std_logic;
SIGNAL U10_apom1_a7_a_a9_combout : std_logic;
SIGNAL U10_apom1_a6_a_a14_combout : std_logic;
SIGNAL U10_apom1_a5_a_a15_combout : std_logic;
SIGNAL U10_apom1_a4_a_a10_combout : std_logic;
SIGNAL U10_apom1_a3_a_a11_combout : std_logic;
SIGNAL U10_apom1_a2_a_a12_combout : std_logic;
SIGNAL U10_apom1_a1_a_a13_combout : std_logic;
SIGNAL U10_apom2_a7_a_a9_combout : std_logic;
SIGNAL U10_apom2_a6_a_a14_combout : std_logic;
SIGNAL U10_apom2_a5_a_a15_combout : std_logic;
SIGNAL U10_apom2_a4_a_a10_combout : std_logic;
SIGNAL U10_apom2_a3_a_a11_combout : std_logic;
SIGNAL U10_apom2_a2_a_a12_combout : std_logic;
SIGNAL U10_apom2_a1_a_a13_combout : std_logic;
SIGNAL U9_apom1_a7_a_a9_combout : std_logic;
SIGNAL U9_apom1_a6_a_a14_combout : std_logic;
SIGNAL U9_apom1_a5_a_a15_combout : std_logic;
SIGNAL U9_apom1_a4_a_a10_combout : std_logic;
SIGNAL U9_apom1_a3_a_a11_combout : std_logic;
SIGNAL U9_apom1_a2_a_a12_combout : std_logic;
SIGNAL U9_apom1_a1_a_a13_combout : std_logic;
SIGNAL U9_apom2_a7_a_a9_combout : std_logic;
SIGNAL U9_apom2_a6_a_a14_combout : std_logic;
SIGNAL U9_apom2_a5_a_a15_combout : std_logic;
SIGNAL U9_apom2_a4_a_a10_combout : std_logic;
SIGNAL U9_apom2_a3_a_a11_combout : std_logic;
SIGNAL U9_apom2_a2_a_a12_combout : std_logic;
SIGNAL U9_apom2_a1_a_a13_combout : std_logic;
SIGNAL U8_acounter : std_logic_vector(19 DOWNTO 0);
SIGNAL PORT_IN_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL Int_code_acombout : std_logic_vector(1 DOWNTO 0);
SIGNAL U12_aQ : std_logic_vector(7 DOWNTO 0);
SIGNAL U3_aacc : std_logic_vector(8 DOWNTO 0);
SIGNAL U11_aQ : std_logic_vector(7 DOWNTO 0);
SIGNAL U1_aaltsyncram_component_aauto_generated_aq_a : std_logic_vector(15 DOWNTO 0);
SIGNAL U5_aMAR_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL U4_aIR_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL U2_acnt : std_logic_vector(8 DOWNTO 0);
SIGNAL U7_apc_val : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_reset_acombout : std_logic;
SIGNAL ALT_INV_U9_apom2_a5_a_a15_combout : std_logic;
SIGNAL ALT_INV_U9_apom2_a6_a_a14_combout : std_logic;
SIGNAL ALT_INV_U9_apom1_a5_a_a15_combout : std_logic;
SIGNAL ALT_INV_U9_apom1_a6_a_a14_combout : std_logic;
SIGNAL ALT_INV_U10_apom2_a5_a_a15_combout : std_logic;
SIGNAL ALT_INV_U10_apom2_a6_a_a14_combout : std_logic;
SIGNAL ALT_INV_U10_apom1_a5_a_a15_combout : std_logic;
SIGNAL ALT_INV_U10_apom1_a6_a_a14_combout : std_logic;
SIGNAL ALT_INV_U9_apom2_a1_a_a13_combout : std_logic;
SIGNAL ALT_INV_U9_apom2_a7_a_a9_combout : std_logic;
SIGNAL ALT_INV_U9_apom1_a1_a_a13_combout : std_logic;
SIGNAL ALT_INV_U9_apom1_a7_a_a9_combout : std_logic;
SIGNAL ALT_INV_U10_apom2_a1_a_a13_combout : std_logic;
SIGNAL ALT_INV_U10_apom2_a7_a_a9_combout : std_logic;
SIGNAL ALT_INV_U10_apom1_a1_a_a13_combout : std_logic;
SIGNAL ALT_INV_U10_apom1_a7_a_a9_combout : std_logic;
SIGNAL U7_apc_val_a2_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a2_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a2_a_SDATA_driver : std_logic;
SIGNAL U7_apc_val_a2_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a2_a_SLOAD_driver : std_logic;
SIGNAL U7_apc_val_a2_a_ENA_driver : std_logic;
SIGNAL U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAWE_driver : std_logic;
SIGNAL U1_aaltsyncram_component_aauto_generated_aram_block1a0_CLK0_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a4_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a4_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a4_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a6_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a6_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a6_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a10_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a10_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a10_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a2_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a2_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a2_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a4_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a4_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a4_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a6_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a6_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a6_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a0_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a0_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a2_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a2_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a2_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a4_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a4_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a4_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a6_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a6_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a6_CIN_driver : std_logic;
SIGNAL U2_acnt_a2_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a2_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a2_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a2_a_SLOAD_driver : std_logic;
SIGNAL U2_acnt_a4_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a4_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a4_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a4_a_SLOAD_driver : std_logic;
SIGNAL U7_aAdd0_a0_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a2_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a2_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a4_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a4_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a6_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a6_CIN_driver : std_logic;
SIGNAL U7_apc_val_a2_a_a0_DATAA_driver : std_logic;
SIGNAL U7_apc_val_a2_a_a0_DATAB_driver : std_logic;
SIGNAL U7_apc_val_a2_a_a0_DATAD_driver : std_logic;
SIGNAL U3_aAdd2_a8_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a8_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a8_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a10_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a10_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a10_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a12_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a12_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a12_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a14_DATAA_driver : std_logic;
SIGNAL U3_aAdd2_a14_DATAB_driver : std_logic;
SIGNAL U3_aAdd2_a14_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a8_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a8_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a8_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a10_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a10_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a10_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a12_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a12_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a12_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a14_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a14_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_a14_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a18_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a18_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a18_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a20_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a20_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a20_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a22_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a22_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a22_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a24_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a24_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a24_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a9_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a9_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a11_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a11_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a13_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a13_CIN_driver : std_logic;
SIGNAL U7_aAdd0_a15_DATAD_driver : std_logic;
SIGNAL U7_aAdd0_a15_CIN_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_CIN_driver : std_logic;
SIGNAL U3_aAdd1_a29_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a29_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a29_CIN_driver : std_logic;
SIGNAL U3_aAdd0_a16_CIN_driver : std_logic;
SIGNAL U3_aAdd2_a16_CIN_driver : std_logic;
SIGNAL U2_acnt_a2_a_a13_DATAA_driver : std_logic;
SIGNAL U2_acnt_a2_a_a13_CIN_driver : std_logic;
SIGNAL U2_acnt_a4_a_a17_DATAA_driver : std_logic;
SIGNAL U2_acnt_a4_a_a17_CIN_driver : std_logic;
SIGNAL U8_acounter_a18_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a18_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a18_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a18_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a18_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a2_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a2_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a2_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a2_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a2_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a6_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a6_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a6_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a6_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a6_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a15_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a15_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a15_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a15_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a15_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a2_a_a24_DATAA_driver : std_logic;
SIGNAL U8_acounter_a2_a_a24_CIN_driver : std_logic;
SIGNAL U8_acounter_a6_a_a32_DATAA_driver : std_logic;
SIGNAL U8_acounter_a6_a_a32_CIN_driver : std_logic;
SIGNAL U8_acounter_a15_a_a50_DATAA_driver : std_logic;
SIGNAL U8_acounter_a15_a_a50_CIN_driver : std_logic;
SIGNAL U8_acounter_a18_a_a57_DATAA_driver : std_logic;
SIGNAL U8_acounter_a18_a_a57_CIN_driver : std_logic;
SIGNAL U6_aMux8_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux8_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux8_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux8_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux10_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux10_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux10_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux10_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux10_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux10_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux10_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux10_a1_DATAD_driver : std_logic;
SIGNAL U1_adata_a1_a_a9_DATAA_driver : std_logic;
SIGNAL U1_adata_a1_a_a9_DATAB_driver : std_logic;
SIGNAL U1_adata_a1_a_a9_DATAC_driver : std_logic;
SIGNAL U1_adata_a1_a_a9_DATAD_driver : std_logic;
SIGNAL U1_adata_a1_a_a10_DATAA_driver : std_logic;
SIGNAL U1_adata_a1_a_a10_DATAB_driver : std_logic;
SIGNAL U1_adata_a1_a_a10_DATAC_driver : std_logic;
SIGNAL U1_adata_a1_a_a10_DATAD_driver : std_logic;
SIGNAL U1_adata_a1_a_a11_DATAA_driver : std_logic;
SIGNAL U1_adata_a1_a_a11_DATAB_driver : std_logic;
SIGNAL U1_adata_a1_a_a11_DATAC_driver : std_logic;
SIGNAL U1_adata_a1_a_a11_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a2_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a2_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a2_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a2_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a3_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a3_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a3_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a1_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a4_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a4_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a4_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux9_a5_DATAA_driver : std_logic;
SIGNAL U6_aMux9_a5_DATAB_driver : std_logic;
SIGNAL U6_aMux9_a5_DATAC_driver : std_logic;
SIGNAL U6_aMux9_a5_DATAD_driver : std_logic;
SIGNAL U1_adata_a2_a_a13_DATAA_driver : std_logic;
SIGNAL U1_adata_a2_a_a13_DATAB_driver : std_logic;
SIGNAL U1_adata_a2_a_a13_DATAC_driver : std_logic;
SIGNAL U1_adata_a2_a_a13_DATAD_driver : std_logic;
SIGNAL U1_adata_a2_a_a14_DATAA_driver : std_logic;
SIGNAL U1_adata_a2_a_a14_DATAB_driver : std_logic;
SIGNAL U1_adata_a2_a_a14_DATAC_driver : std_logic;
SIGNAL U1_adata_a2_a_a14_DATAD_driver : std_logic;
SIGNAL U1_adata_a2_a_a15_DATAA_driver : std_logic;
SIGNAL U1_adata_a2_a_a15_DATAB_driver : std_logic;
SIGNAL U1_adata_a2_a_a15_DATAC_driver : std_logic;
SIGNAL U1_adata_a2_a_a15_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a6_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a6_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a6_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a1_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a4_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a4_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a4_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux11_a5_DATAA_driver : std_logic;
SIGNAL U6_aMux11_a5_DATAB_driver : std_logic;
SIGNAL U6_aMux11_a5_DATAC_driver : std_logic;
SIGNAL U6_aMux11_a5_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a7_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a7_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a7_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a7_DATAD_driver : std_logic;
SIGNAL U1_adata_a0_a_a18_DATAA_driver : std_logic;
SIGNAL U1_adata_a0_a_a18_DATAB_driver : std_logic;
SIGNAL U1_adata_a0_a_a18_DATAC_driver : std_logic;
SIGNAL U1_adata_a0_a_a18_DATAD_driver : std_logic;
SIGNAL U7_apc_val_a7_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a7_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a7_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a7_a_ENA_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a9_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a9_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a9_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a9_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a5_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a5_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a5_a_ENA_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a12_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a12_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a13_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a13_DATAD_driver : std_logic;
SIGNAL U6_aMux6_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux6_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux6_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux6_a2_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a14_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a14_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a14_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a14_DATAD_driver : std_logic;
SIGNAL U13_aDataOUT_a6_a_a0_DATAC_driver : std_logic;
SIGNAL U13_aDataOUT_a6_a_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux4_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux4_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a0_DATAD_driver : std_logic;
SIGNAL U3_adata_bus_a6_a_a0_DATAB_driver : std_logic;
SIGNAL U3_adata_bus_a6_a_a0_DATAC_driver : std_logic;
SIGNAL U3_adata_bus_a6_a_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux7_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux7_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux7_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux7_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux7_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux7_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux7_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux7_a2_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a24_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a24_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a24_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a24_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a25_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a25_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a25_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a25_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a7_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a7_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a7_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a17_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a17_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a17_DATAD_driver : std_logic;
SIGNAL U3_aMux5_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux5_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux5_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux5_a0_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a0_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a0_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a1_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a1_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a1_DATAC_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a1_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a2_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a2_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a2_DATAC_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a2_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a3_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a3_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a3_DATAC_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a3_DATAD_driver : std_logic;
SIGNAL U3_aacc_a8_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a8_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a8_a_ACLR_driver : std_logic;
SIGNAL U3_aAdd1_a1_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a1_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a19_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a19_DATAD_driver : std_logic;
SIGNAL U3_aMux5_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux5_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux5_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux5_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux5_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux5_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux5_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux5_a2_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI6_a1_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a1_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a1_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a1_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a12_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a12_DATAD_driver : std_logic;
SIGNAL U2_aWideOr2_a1_DATAB_driver : std_logic;
SIGNAL U2_aWideOr2_a1_DATAD_driver : std_logic;
SIGNAL U3_aacc_a1_a_a22_DATAA_driver : std_logic;
SIGNAL U3_aacc_a1_a_a22_DATAB_driver : std_logic;
SIGNAL U3_aacc_a1_a_a22_DATAC_driver : std_logic;
SIGNAL U3_aacc_a1_a_a22_DATAD_driver : std_logic;
SIGNAL U3_aMux7_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux7_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux7_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux7_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux7_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux7_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux7_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux7_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux7_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux7_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux7_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux7_a2_DATAD_driver : std_logic;
SIGNAL U7_aMux1_a1_DATAB_driver : std_logic;
SIGNAL U7_aMux1_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux8_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux8_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux8_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a2_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a15_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a15_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a15_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a16_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a16_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a16_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a35_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a35_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a35_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a35_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a37_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a37_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a37_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a37_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a39_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a39_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a39_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a40_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a40_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a40_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a41_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a41_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a41_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a41_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a4_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a4_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a5_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a5_DATAC_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a6_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a6_DATAC_driver : std_logic;
SIGNAL U13_aDataOUT_a4_a_a1_DATAA_driver : std_logic;
SIGNAL U13_aDataOUT_a4_a_a1_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a7_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a7_DATAB_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a7_DATAC_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_a_a7_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a26_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a26_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a26_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a26_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a27_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a27_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a27_DATAD_driver : std_logic;
SIGNAL U3_aMux1_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux1_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux1_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux1_a1_DATAD_driver : std_logic;
SIGNAL U7_aAdd0_a17_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a17_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a17_DATAC_driver : std_logic;
SIGNAL U7_aAdd0_a17_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_a44_DATAA_driver : std_logic;
SIGNAL U3_aacc_a5_a_a44_DATAB_driver : std_logic;
SIGNAL U3_aacc_a5_a_a44_DATAC_driver : std_logic;
SIGNAL U3_aacc_a5_a_a44_DATAD_driver : std_logic;
SIGNAL U3_aMux3_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux3_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux3_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux3_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux3_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux3_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux3_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux3_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux3_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux3_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux3_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux3_a2_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_a45_DATAA_driver : std_logic;
SIGNAL U3_aacc_a5_a_a45_DATAB_driver : std_logic;
SIGNAL U3_aacc_a5_a_a45_DATAC_driver : std_logic;
SIGNAL U3_aacc_a5_a_a45_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_a46_DATAA_driver : std_logic;
SIGNAL U3_aacc_a5_a_a46_DATAC_driver : std_logic;
SIGNAL U3_aacc_a5_a_a46_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_a47_DATAA_driver : std_logic;
SIGNAL U3_aacc_a5_a_a47_DATAC_driver : std_logic;
SIGNAL U3_aacc_a5_a_a47_DATAD_driver : std_logic;
SIGNAL U3_aacc_a5_a_a48_DATAA_driver : std_logic;
SIGNAL U3_aacc_a5_a_a48_DATAB_driver : std_logic;
SIGNAL U3_aacc_a5_a_a48_DATAC_driver : std_logic;
SIGNAL U3_aacc_a5_a_a48_DATAD_driver : std_logic;
SIGNAL U3_aMux2_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux2_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux2_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux2_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux2_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux2_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux2_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux2_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux2_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux2_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux2_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux2_a2_DATAD_driver : std_logic;
SIGNAL U3_aacc_a4_a_a53_DATAA_driver : std_logic;
SIGNAL U3_aacc_a4_a_a53_DATAB_driver : std_logic;
SIGNAL U3_aacc_a4_a_a53_DATAC_driver : std_logic;
SIGNAL U3_aacc_a4_a_a53_DATAD_driver : std_logic;
SIGNAL U3_aMux4_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux4_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux4_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux4_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux4_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux4_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux4_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux4_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux4_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux4_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux4_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux4_a2_DATAD_driver : std_logic;
SIGNAL U3_aacc_a4_a_a54_DATAA_driver : std_logic;
SIGNAL U3_aacc_a4_a_a54_DATAB_driver : std_logic;
SIGNAL U3_aacc_a4_a_a54_DATAC_driver : std_logic;
SIGNAL U3_aacc_a4_a_a54_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a33_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a33_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a34_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a34_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a34_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a34_DATAD_driver : std_logic;
SIGNAL U6_aMux1_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux1_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux1_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux1_a1_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a36_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a36_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a36_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a36_DATAD_driver : std_logic;
SIGNAL U6_aMux1_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux1_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux1_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux1_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux1_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux1_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux1_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux1_a3_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a37_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a37_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a37_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a37_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a38_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a38_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a38_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a38_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a1_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a4_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a4_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a4_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux3_a5_DATAA_driver : std_logic;
SIGNAL U6_aMux3_a5_DATAB_driver : std_logic;
SIGNAL U6_aMux3_a5_DATAC_driver : std_logic;
SIGNAL U6_aMux3_a5_DATAD_driver : std_logic;
SIGNAL U1_adata_a12_a_a40_DATAA_driver : std_logic;
SIGNAL U1_adata_a12_a_a40_DATAB_driver : std_logic;
SIGNAL U1_adata_a12_a_a40_DATAC_driver : std_logic;
SIGNAL U1_adata_a12_a_a40_DATAD_driver : std_logic;
SIGNAL U6_aMux2_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux2_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux2_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a3_DATAD_driver : std_logic;
SIGNAL U6_aMux2_a4_DATAA_driver : std_logic;
SIGNAL U6_aMux2_a4_DATAB_driver : std_logic;
SIGNAL U6_aMux2_a4_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux2_a5_DATAA_driver : std_logic;
SIGNAL U6_aMux2_a5_DATAB_driver : std_logic;
SIGNAL U6_aMux2_a5_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a5_DATAD_driver : std_logic;
SIGNAL U6_aMux0_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux0_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux0_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux0_a0_DATAD_driver : std_logic;
SIGNAL U1_adata_a15_a_a46_DATAA_driver : std_logic;
SIGNAL U1_adata_a15_a_a46_DATAB_driver : std_logic;
SIGNAL U1_adata_a15_a_a46_DATAC_driver : std_logic;
SIGNAL U1_adata_a15_a_a46_DATAD_driver : std_logic;
SIGNAL U3_aacc_a8_a_a57_DATAA_driver : std_logic;
SIGNAL U3_aacc_a8_a_a57_DATAB_driver : std_logic;
SIGNAL U3_aacc_a8_a_a57_DATAC_driver : std_logic;
SIGNAL U3_aacc_a8_a_a57_DATAD_driver : std_logic;
SIGNAL U3_aMux0_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux0_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux0_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux0_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux0_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux0_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux0_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux0_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux0_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux0_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux0_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux0_a2_DATAD_driver : std_logic;
SIGNAL U3_aacc_a8_a_a58_DATAB_driver : std_logic;
SIGNAL U3_aacc_a8_a_a58_DATAC_driver : std_logic;
SIGNAL U3_aacc_a8_a_a58_DATAD_driver : std_logic;
SIGNAL U3_aacc_a8_a_a59_DATAA_driver : std_logic;
SIGNAL U3_aacc_a8_a_a59_DATAC_driver : std_logic;
SIGNAL U3_aacc_a8_a_a59_DATAD_driver : std_logic;
SIGNAL U3_aacc_a8_a_a60_DATAA_driver : std_logic;
SIGNAL U3_aacc_a8_a_a60_DATAB_driver : std_logic;
SIGNAL U3_aacc_a8_a_a60_DATAC_driver : std_logic;
SIGNAL U3_aacc_a8_a_a60_DATAD_driver : std_logic;
SIGNAL U7_areset_int_req_CLK_driver : std_logic;
SIGNAL U7_areset_int_req_DATAIN_driver : std_logic;
SIGNAL U7_areset_int_req_ACLR_driver : std_logic;
SIGNAL U8_aEqual0_a3_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a3_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a3_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a3_DATAD_driver : std_logic;
SIGNAL U7_areset_int_req_a0_DATAB_driver : std_logic;
SIGNAL U7_areset_int_req_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a6_DATAA_driver : std_logic;
SIGNAL U6_aMux2_a6_DATAB_driver : std_logic;
SIGNAL U6_aMux2_a6_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a6_DATAD_driver : std_logic;
SIGNAL U3_aMux1_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux1_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux1_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux1_a2_DATAD_driver : std_logic;
SIGNAL U3_aMux1_a3_DATAA_driver : std_logic;
SIGNAL U3_aMux1_a3_DATAC_driver : std_logic;
SIGNAL U3_aMux1_a3_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a27_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a27_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a27_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a27_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a28_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a28_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a28_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a0_a_a28_DATAD_driver : std_logic;
SIGNAL U2_acnt_a0_a_a9_DATAA_driver : std_logic;
SIGNAL U2_acnt_a1_a_a11_DATAB_driver : std_logic;
SIGNAL U2_acnt_a1_a_a11_CIN_driver : std_logic;
SIGNAL U2_acnt_a3_a_a15_DATAB_driver : std_logic;
SIGNAL U2_acnt_a3_a_a15_CIN_driver : std_logic;
SIGNAL U2_acnt_a5_a_a19_DATAB_driver : std_logic;
SIGNAL U2_acnt_a5_a_a19_CIN_driver : std_logic;
SIGNAL U2_acnt_a5_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a5_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a5_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a5_a_SLOAD_driver : std_logic;
SIGNAL U2_acnt_a6_a_a21_DATAA_driver : std_logic;
SIGNAL U2_acnt_a6_a_a21_CIN_driver : std_logic;
SIGNAL U2_acnt_a6_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a6_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a6_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a6_a_SLOAD_driver : std_logic;
SIGNAL U2_acnt_a7_a_a23_DATAB_driver : std_logic;
SIGNAL U2_acnt_a7_a_a23_CIN_driver : std_logic;
SIGNAL U2_acnt_a7_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a7_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a7_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a7_a_SLOAD_driver : std_logic;
SIGNAL U2_aEqual0_a1_DATAA_driver : std_logic;
SIGNAL U2_aEqual0_a1_DATAB_driver : std_logic;
SIGNAL U2_aEqual0_a1_DATAC_driver : std_logic;
SIGNAL U2_aEqual0_a1_DATAD_driver : std_logic;
SIGNAL U2_acnt_a8_a_a25_DATAD_driver : std_logic;
SIGNAL U2_acnt_a8_a_a25_CIN_driver : std_logic;
SIGNAL U2_acnt_a8_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a8_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a8_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a8_a_SLOAD_driver : std_logic;
SIGNAL U2_aEqual0_a2_DATAB_driver : std_logic;
SIGNAL U2_aEqual0_a2_DATAC_driver : std_logic;
SIGNAL U2_aEqual0_a2_DATAD_driver : std_logic;
SIGNAL U2_acnt_a1_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a1_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a1_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a1_a_SLOAD_driver : std_logic;
SIGNAL U2_acnt_a3_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a3_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a3_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a3_a_SLOAD_driver : std_logic;
SIGNAL U2_acnt_a0_a_CLK_driver : std_logic;
SIGNAL U2_acnt_a0_a_DATAIN_driver : std_logic;
SIGNAL U2_acnt_a0_a_ACLR_driver : std_logic;
SIGNAL U2_acnt_a0_a_SLOAD_driver : std_logic;
SIGNAL U2_aEqual0_a0_DATAA_driver : std_logic;
SIGNAL U2_aEqual0_a0_DATAB_driver : std_logic;
SIGNAL U2_aEqual0_a0_DATAC_driver : std_logic;
SIGNAL U2_aEqual0_a0_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aR0_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aR0_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aR0_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aR0_a0_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aR0_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aR0_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aR0_ACLR_driver : std_logic;
SIGNAL U2_apresent_state_aR1_a0_DATAC_driver : std_logic;
SIGNAL U2_apresent_state_aR1_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aR1_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aR1_ACLR_driver : std_logic;
SIGNAL U2_apresent_state_aI3_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI3_SDATA_driver : std_logic;
SIGNAL U2_apresent_state_aI3_ACLR_driver : std_logic;
SIGNAL U2_aWideOr0_a1_DATAA_driver : std_logic;
SIGNAL U2_aWideOr0_a1_DATAB_driver : std_logic;
SIGNAL U2_aWideOr0_a1_DATAC_driver : std_logic;
SIGNAL U2_aWideOr0_a1_DATAD_driver : std_logic;
SIGNAL U2_aSelector0_a0_DATAB_driver : std_logic;
SIGNAL U2_aSelector0_a0_DATAC_driver : std_logic;
SIGNAL U2_aSelector0_a0_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aI1_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI1_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI1_ACLR_driver : std_logic;
SIGNAL U2_apresent_state_aI2_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI2_SDATA_driver : std_logic;
SIGNAL U2_apresent_state_aI2_ACLR_driver : std_logic;
SIGNAL U2_aWideOr2_a0_DATAA_driver : std_logic;
SIGNAL U2_aWideOr2_a0_DATAD_driver : std_logic;
SIGNAL U1_aclock_DATAA_driver : std_logic;
SIGNAL U1_aclock_DATAB_driver : std_logic;
SIGNAL U1_aclock_DATAC_driver : std_logic;
SIGNAL U1_aclock_DATAD_driver : std_logic;
SIGNAL U2_aWideOr0_a0_DATAB_driver : std_logic;
SIGNAL U2_aWideOr0_a0_DATAC_driver : std_logic;
SIGNAL U2_aWideOr0_a0_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a0_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a0_a_SDATA_driver : std_logic;
SIGNAL U5_aMAR_reg_a0_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a0_a_ENA_driver : std_logic;
SIGNAL U8_acounter_a0_a_a20_DATAA_driver : std_logic;
SIGNAL U8_acounter_a1_a_a22_DATAB_driver : std_logic;
SIGNAL U8_acounter_a1_a_a22_CIN_driver : std_logic;
SIGNAL U8_acounter_a4_a_a28_DATAA_driver : std_logic;
SIGNAL U8_acounter_a4_a_a28_CIN_driver : std_logic;
SIGNAL U8_acounter_a4_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a4_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a4_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a4_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a4_a_SLOAD_driver : std_logic;
SIGNAL U8_aEqual0_a2_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a2_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a2_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a2_DATAD_driver : std_logic;
SIGNAL U8_acounter_a13_a_a46_DATAA_driver : std_logic;
SIGNAL U8_acounter_a13_a_a46_CIN_driver : std_logic;
SIGNAL U8_acounter_a13_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a13_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a13_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a13_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a13_a_SLOAD_driver : std_logic;
SIGNAL U8_aEqual0_a4_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a4_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a4_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a4_DATAD_driver : std_logic;
SIGNAL U8_acounter_a0_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a0_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a0_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a0_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a0_a_SLOAD_driver : std_logic;
SIGNAL U8_aEqual0_a1_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a1_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a1_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a1_DATAD_driver : std_logic;
SIGNAL U8_aEqual0_a5_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a5_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a5_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a5_DATAD_driver : std_logic;
SIGNAL U8_acounter_a19_a_a54_DATAA_driver : std_logic;
SIGNAL U8_acounter_a19_a_a54_DATAC_driver : std_logic;
SIGNAL U8_acounter_a19_a_a54_DATAD_driver : std_logic;
SIGNAL U8_acounter_a1_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a1_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a1_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a1_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a1_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a3_a_a26_DATAB_driver : std_logic;
SIGNAL U8_acounter_a3_a_a26_CIN_driver : std_logic;
SIGNAL U8_acounter_a3_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a3_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a3_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a3_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a3_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a5_a_a30_DATAB_driver : std_logic;
SIGNAL U8_acounter_a5_a_a30_CIN_driver : std_logic;
SIGNAL U8_acounter_a5_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a5_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a5_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a5_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a5_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a7_a_a34_DATAB_driver : std_logic;
SIGNAL U8_acounter_a7_a_a34_CIN_driver : std_logic;
SIGNAL U8_acounter_a7_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a7_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a7_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a7_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a7_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a8_a_a36_DATAB_driver : std_logic;
SIGNAL U8_acounter_a8_a_a36_CIN_driver : std_logic;
SIGNAL U8_acounter_a8_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a8_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a8_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a8_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a8_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a9_a_a38_DATAB_driver : std_logic;
SIGNAL U8_acounter_a9_a_a38_CIN_driver : std_logic;
SIGNAL U8_acounter_a9_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a9_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a9_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a9_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a9_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a10_a_a40_DATAB_driver : std_logic;
SIGNAL U8_acounter_a10_a_a40_CIN_driver : std_logic;
SIGNAL U8_acounter_a10_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a10_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a10_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a10_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a10_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a11_a_a42_DATAB_driver : std_logic;
SIGNAL U8_acounter_a11_a_a42_CIN_driver : std_logic;
SIGNAL U8_acounter_a11_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a11_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a11_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a11_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a11_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a12_a_a44_DATAB_driver : std_logic;
SIGNAL U8_acounter_a12_a_a44_CIN_driver : std_logic;
SIGNAL U8_acounter_a12_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a12_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a12_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a12_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a12_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a14_a_a48_DATAB_driver : std_logic;
SIGNAL U8_acounter_a14_a_a48_CIN_driver : std_logic;
SIGNAL U8_acounter_a14_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a14_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a14_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a14_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a14_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a16_a_a52_DATAA_driver : std_logic;
SIGNAL U8_acounter_a16_a_a52_CIN_driver : std_logic;
SIGNAL U8_acounter_a17_a_a55_DATAB_driver : std_logic;
SIGNAL U8_acounter_a17_a_a55_CIN_driver : std_logic;
SIGNAL U8_acounter_a17_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a17_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a17_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a17_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a17_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a19_a_a59_DATAD_driver : std_logic;
SIGNAL U8_acounter_a19_a_a59_CIN_driver : std_logic;
SIGNAL U8_acounter_a19_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a19_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a19_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a19_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a19_a_SLOAD_driver : std_logic;
SIGNAL U8_acounter_a16_a_CLK_driver : std_logic;
SIGNAL U8_acounter_a16_a_DATAIN_driver : std_logic;
SIGNAL U8_acounter_a16_a_SDATA_driver : std_logic;
SIGNAL U8_acounter_a16_a_ACLR_driver : std_logic;
SIGNAL U8_acounter_a16_a_SLOAD_driver : std_logic;
SIGNAL U8_aEqual0_a0_DATAA_driver : std_logic;
SIGNAL U8_aEqual0_a0_DATAB_driver : std_logic;
SIGNAL U8_aEqual0_a0_DATAC_driver : std_logic;
SIGNAL U8_aEqual0_a0_DATAD_driver : std_logic;
SIGNAL U8_aEnable_a0_DATAA_driver : std_logic;
SIGNAL U8_aEnable_a0_DATAC_driver : std_logic;
SIGNAL U8_aEnable_a0_DATAD_driver : std_logic;
SIGNAL U8_aEnable_CLK_driver : std_logic;
SIGNAL U8_aEnable_DATAIN_driver : std_logic;
SIGNAL U8_aEnable_ACLR_driver : std_logic;
SIGNAL U8_aTaster1_CLK_driver : std_logic;
SIGNAL U8_aTaster1_SDATA_driver : std_logic;
SIGNAL U8_aTaster1_ACLR_driver : std_logic;
SIGNAL U8_aTaster2_a0_DATAA_driver : std_logic;
SIGNAL U8_aTaster2_a0_DATAB_driver : std_logic;
SIGNAL U8_aTaster2_a0_DATAC_driver : std_logic;
SIGNAL U8_aInt_req_a0_DATAA_driver : std_logic;
SIGNAL U8_aInt_req_a0_DATAC_driver : std_logic;
SIGNAL U8_aInt_req_a0_DATAD_driver : std_logic;
SIGNAL U8_aInt_req_CLK_driver : std_logic;
SIGNAL U8_aInt_req_DATAIN_driver : std_logic;
SIGNAL U8_aInt_req_ACLR_driver : std_logic;
SIGNAL U1_adata_a15_a_a35_DATAC_driver : std_logic;
SIGNAL U1_adata_a15_a_a35_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a3_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a3_a_SDATA_driver : std_logic;
SIGNAL U5_aMAR_reg_a3_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a3_a_ENA_driver : std_logic;
SIGNAL U6_aMux0_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux0_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux0_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux0_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux0_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux0_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux0_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux0_a1_DATAD_driver : std_logic;
SIGNAL U1_adata_a15_a_a47_DATAA_driver : std_logic;
SIGNAL U1_adata_a15_a_a47_DATAB_driver : std_logic;
SIGNAL U1_adata_a15_a_a47_DATAC_driver : std_logic;
SIGNAL U1_adata_a15_a_a47_DATAD_driver : std_logic;
SIGNAL U1_adata_a15_a_a48_DATAA_driver : std_logic;
SIGNAL U1_adata_a15_a_a48_DATAB_driver : std_logic;
SIGNAL U1_adata_a15_a_a48_DATAC_driver : std_logic;
SIGNAL U1_adata_a15_a_a48_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a16_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a16_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a16_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a16_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a15_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a15_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a15_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a15_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a17_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a17_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a5_a_a17_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a0_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a0_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI4_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI4_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI4_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI4_a0_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aI4_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI4_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI4_ACLR_driver : std_logic;
SIGNAL U2_aacc_bus_DATAA_driver : std_logic;
SIGNAL U2_aacc_bus_DATAD_driver : std_logic;
SIGNAL U1_adata_a5_a_a21_DATAA_driver : std_logic;
SIGNAL U1_adata_a5_a_a21_DATAB_driver : std_logic;
SIGNAL U1_adata_a5_a_a21_DATAC_driver : std_logic;
SIGNAL U1_adata_a5_a_a21_DATAD_driver : std_logic;
SIGNAL U7_aAdd0_a18_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a18_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a18_DATAC_driver : std_logic;
SIGNAL U7_aAdd0_a18_DATAD_driver : std_logic;
SIGNAL U7_apc_val_a5_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a5_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a5_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a5_a_ENA_driver : std_logic;
SIGNAL U2_apc_data_a2_DATAC_driver : std_logic;
SIGNAL U2_apc_data_a2_DATAD_driver : std_logic;
SIGNAL U1_adata_a5_a_a22_DATAA_driver : std_logic;
SIGNAL U1_adata_a5_a_a22_DATAB_driver : std_logic;
SIGNAL U1_adata_a5_a_a22_DATAC_driver : std_logic;
SIGNAL U1_adata_a5_a_a22_DATAD_driver : std_logic;
SIGNAL U1_adata_a5_a_a23_DATAA_driver : std_logic;
SIGNAL U1_adata_a5_a_a23_DATAB_driver : std_logic;
SIGNAL U1_adata_a5_a_a23_DATAC_driver : std_logic;
SIGNAL U1_adata_a5_a_a23_DATAD_driver : std_logic;
SIGNAL U1_adata_a3_a_a6_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a6_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a6_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a6_DATAD_driver : std_logic;
SIGNAL U1_adata_a13_a_a44_DATAA_driver : std_logic;
SIGNAL U1_adata_a13_a_a44_DATAC_driver : std_logic;
SIGNAL U1_adata_a13_a_a44_DATAD_driver : std_logic;
SIGNAL U1_adata_a13_a_a45_DATAA_driver : std_logic;
SIGNAL U1_adata_a13_a_a45_DATAB_driver : std_logic;
SIGNAL U1_adata_a13_a_a45_DATAC_driver : std_logic;
SIGNAL U1_adata_a13_a_a45_DATAD_driver : std_logic;
SIGNAL U4_aIR_reg_a5_a_CLK_driver : std_logic;
SIGNAL U4_aIR_reg_a5_a_DATAIN_driver : std_logic;
SIGNAL U4_aIR_reg_a5_a_ACLR_driver : std_logic;
SIGNAL U4_aIR_reg_a5_a_ENA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a5_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a5_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI8_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI8_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI8_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI8_a0_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI5_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI5_a0_DATAC_driver : std_logic;
SIGNAL U2_apresent_state_aI5_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI5_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI5_ACLR_driver : std_logic;
SIGNAL U1_adata_a3_a_a5_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a5_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a5_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a5_DATAD_driver : std_logic;
SIGNAL U1_adata_a3_a_a7_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a7_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a7_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a7_DATAD_driver : std_logic;
SIGNAL U1_adata_a5_a_a24_DATAA_driver : std_logic;
SIGNAL U1_adata_a5_a_a24_DATAB_driver : std_logic;
SIGNAL U1_adata_a5_a_a24_DATAC_driver : std_logic;
SIGNAL U1_adata_a5_a_a24_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a5_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a5_a_DATAIN_driver : std_logic;
SIGNAL U5_aMAR_reg_a5_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a5_a_ENA_driver : std_logic;
SIGNAL U1_adata_a12_a_a41_DATAA_driver : std_logic;
SIGNAL U1_adata_a12_a_a41_DATAB_driver : std_logic;
SIGNAL U1_adata_a12_a_a41_DATAC_driver : std_logic;
SIGNAL U1_adata_a12_a_a41_DATAD_driver : std_logic;
SIGNAL U4_aIR_reg_a4_a_CLK_driver : std_logic;
SIGNAL U4_aIR_reg_a4_a_DATAIN_driver : std_logic;
SIGNAL U4_aIR_reg_a4_a_ACLR_driver : std_logic;
SIGNAL U4_aIR_reg_a4_a_ENA_driver : std_logic;
SIGNAL U2_aMux6_a0_DATAA_driver : std_logic;
SIGNAL U2_aMux6_a0_DATAB_driver : std_logic;
SIGNAL U2_aMux6_a0_DATAC_driver : std_logic;
SIGNAL U2_aMux6_a0_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI10_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI10_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI10_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI10_a0_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aI10_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI10_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI10_ACLR_driver : std_logic;
SIGNAL U1_adata_a15_a_a49_DATAA_driver : std_logic;
SIGNAL U1_adata_a15_a_a49_DATAB_driver : std_logic;
SIGNAL U1_adata_a15_a_a49_DATAC_driver : std_logic;
SIGNAL U1_adata_a15_a_a49_DATAD_driver : std_logic;
SIGNAL U4_aIR_reg_a7_a_CLK_driver : std_logic;
SIGNAL U4_aIR_reg_a7_a_DATAIN_driver : std_logic;
SIGNAL U4_aIR_reg_a7_a_ACLR_driver : std_logic;
SIGNAL U4_aIR_reg_a7_a_ENA_driver : std_logic;
SIGNAL U2_anext_state_aI9_a2_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI9_a2_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI9_a2_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aI9_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI9_SDATA_driver : std_logic;
SIGNAL U2_apresent_state_aI9_ACLR_driver : std_logic;
SIGNAL U2_amar_data_DATAC_driver : std_logic;
SIGNAL U2_amar_data_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_a31_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a31_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a31_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a31_DATAD_driver : std_logic;
SIGNAL U3_aMux1_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux1_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux1_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux1_a0_DATAD_driver : std_logic;
SIGNAL U2_aWideOr4_a0_DATAB_driver : std_logic;
SIGNAL U2_aWideOr4_a0_DATAC_driver : std_logic;
SIGNAL U2_aWideOr4_a0_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_a33_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a33_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a33_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a33_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a42_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a42_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a42_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a42_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a28_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a28_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a28_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a38_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a38_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a38_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a38_DATAD_driver : std_logic;
SIGNAL U3_aAdd0_a0_DATAA_driver : std_logic;
SIGNAL U3_aAdd0_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a0_DATAD_driver : std_logic;
SIGNAL U3_aMux8_a3_DATAA_driver : std_logic;
SIGNAL U3_aMux8_a3_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a3_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a3_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_a32_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a32_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a32_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a32_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a17_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a17_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a17_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a9_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a9_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a9_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a9_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI9_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI9_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI9_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI9_a0_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a10_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a10_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a10_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a8_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a8_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a8_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a8_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a4_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a4_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a4_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a4_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a6_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a6_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a6_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a6_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a62_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a62_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a62_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a62_DATAD_driver : std_logic;
SIGNAL U3_aacc_a1_a_a23_DATAA_driver : std_logic;
SIGNAL U3_aacc_a1_a_a23_DATAB_driver : std_logic;
SIGNAL U3_aacc_a1_a_a23_DATAC_driver : std_logic;
SIGNAL U3_aacc_a1_a_a23_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a11_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a11_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a11_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a11_DATAD_driver : std_logic;
SIGNAL U3_aacc_a1_a_a24_DATAA_driver : std_logic;
SIGNAL U3_aacc_a1_a_a24_DATAC_driver : std_logic;
SIGNAL U3_aacc_a1_a_a24_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a14_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a14_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a61_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a61_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a61_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a61_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a29_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a29_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a29_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a29_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a13_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a13_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a13_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a15_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a15_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a15_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a15_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a12_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a12_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a12_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a12_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_a20_DATAA_driver : std_logic;
SIGNAL U3_aacc_a3_a_a20_DATAB_driver : std_logic;
SIGNAL U3_aacc_a3_a_a20_DATAC_driver : std_logic;
SIGNAL U3_aacc_a3_a_a20_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI9_a1_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI9_a1_DATAD_driver : std_logic;
SIGNAL U3_aacc_a6_a_a21_DATAA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a21_DATAB_driver : std_logic;
SIGNAL U3_aacc_a6_a_a21_DATAC_driver : std_logic;
SIGNAL U3_aacc_a6_a_a21_DATAD_driver : std_logic;
SIGNAL U3_aacc_a3_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a3_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a3_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a3_a_ENA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a27_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a27_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a27_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a27_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a8_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a8_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a8_CIN_driver : std_logic;
SIGNAL U3_aacc_a2_a_a16_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a16_DATAC_driver : std_logic;
SIGNAL U3_aMux6_a0_DATAA_driver : std_logic;
SIGNAL U3_aMux6_a0_DATAB_driver : std_logic;
SIGNAL U3_aMux6_a0_DATAC_driver : std_logic;
SIGNAL U3_aMux6_a0_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a18_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a18_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a18_DATAD_driver : std_logic;
SIGNAL U3_aMux6_a1_DATAA_driver : std_logic;
SIGNAL U3_aMux6_a1_DATAB_driver : std_logic;
SIGNAL U3_aMux6_a1_DATAC_driver : std_logic;
SIGNAL U3_aMux6_a1_DATAD_driver : std_logic;
SIGNAL U3_aMux6_a2_DATAA_driver : std_logic;
SIGNAL U3_aMux6_a2_DATAB_driver : std_logic;
SIGNAL U3_aMux6_a2_DATAC_driver : std_logic;
SIGNAL U3_aMux6_a2_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a28_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a28_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a28_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a28_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_a30_DATAA_driver : std_logic;
SIGNAL U3_aacc_a2_a_a30_DATAB_driver : std_logic;
SIGNAL U3_aacc_a2_a_a30_DATAC_driver : std_logic;
SIGNAL U3_aacc_a2_a_a30_DATAD_driver : std_logic;
SIGNAL U3_aacc_a2_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a2_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a2_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a2_a_ENA_driver : std_logic;
SIGNAL U3_aacc_a1_a_a25_DATAB_driver : std_logic;
SIGNAL U3_aacc_a1_a_a25_DATAC_driver : std_logic;
SIGNAL U3_aacc_a1_a_a25_DATAD_driver : std_logic;
SIGNAL U3_aacc_a1_a_a26_DATAA_driver : std_logic;
SIGNAL U3_aacc_a1_a_a26_DATAB_driver : std_logic;
SIGNAL U3_aacc_a1_a_a26_DATAC_driver : std_logic;
SIGNAL U3_aacc_a1_a_a26_DATAD_driver : std_logic;
SIGNAL U3_aacc_a1_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a1_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a1_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a1_a_ENA_driver : std_logic;
SIGNAL U3_aAdd1_a14_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a14_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a14_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a14_DATAD_driver : std_logic;
SIGNAL U3_aMux8_a4_DATAA_driver : std_logic;
SIGNAL U3_aMux8_a4_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a4_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a4_DATAD_driver : std_logic;
SIGNAL U3_aAdd1_a13_DATAB_driver : std_logic;
SIGNAL U3_aAdd1_a13_DATAC_driver : std_logic;
SIGNAL U3_aAdd1_a13_DATAD_driver : std_logic;
SIGNAL U3_aMux8_a5_DATAA_driver : std_logic;
SIGNAL U3_aMux8_a5_DATAB_driver : std_logic;
SIGNAL U3_aMux8_a5_DATAC_driver : std_logic;
SIGNAL U3_aMux8_a5_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_a34_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a34_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a34_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a34_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_a36_DATAA_driver : std_logic;
SIGNAL U3_aacc_a0_a_a36_DATAB_driver : std_logic;
SIGNAL U3_aacc_a0_a_a36_DATAC_driver : std_logic;
SIGNAL U3_aacc_a0_a_a36_DATAD_driver : std_logic;
SIGNAL U3_aacc_a0_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a0_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a0_a_ACLR_driver : std_logic;
SIGNAL U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a3_DATAA_driver : std_logic;
SIGNAL U3_aAdd1_a3_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a63_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a63_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a63_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a63_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a64_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a64_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a64_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a64_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_a43_DATAA_driver : std_logic;
SIGNAL U3_aacc_a7_a_a43_DATAB_driver : std_logic;
SIGNAL U3_aacc_a7_a_a43_DATAC_driver : std_logic;
SIGNAL U3_aacc_a7_a_a43_DATAD_driver : std_logic;
SIGNAL U3_aacc_a7_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a7_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a7_a_ACLR_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a8_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a8_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a8_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a8_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a10_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a10_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a10_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a10_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a11_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a11_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a11_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a7_a_a11_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a7_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a7_a_DATAIN_driver : std_logic;
SIGNAL U5_aMAR_reg_a7_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a7_a_ENA_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a4_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a4_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux8_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux8_a1_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a5_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a5_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a5_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a2_a_a5_DATAD_driver : std_logic;
SIGNAL U1_adata_a2_a_a16_DATAA_driver : std_logic;
SIGNAL U1_adata_a2_a_a16_DATAC_driver : std_logic;
SIGNAL U1_adata_a2_a_a16_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a2_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a2_a_DATAIN_driver : std_logic;
SIGNAL U5_aMAR_reg_a2_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a2_a_ENA_driver : std_logic;
SIGNAL U1_adata_a3_a_a3_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a3_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a3_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a3_DATAD_driver : std_logic;
SIGNAL U1_adata_a3_a_a2_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a2_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a2_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a2_DATAD_driver : std_logic;
SIGNAL U1_adata_a3_a_a4_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a4_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a4_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a4_DATAD_driver : std_logic;
SIGNAL U1_adata_a3_a_a8_DATAA_driver : std_logic;
SIGNAL U1_adata_a3_a_a8_DATAB_driver : std_logic;
SIGNAL U1_adata_a3_a_a8_DATAC_driver : std_logic;
SIGNAL U1_adata_a3_a_a8_DATAD_driver : std_logic;
SIGNAL U7_aAdd0_a8_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a8_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a8_DATAC_driver : std_logic;
SIGNAL U7_aAdd0_a8_DATAD_driver : std_logic;
SIGNAL U7_apc_val_a3_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a3_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a3_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a3_a_ENA_driver : std_logic;
SIGNAL U7_apc_val_a1_a_a1_DATAA_driver : std_logic;
SIGNAL U7_apc_val_a1_a_a1_DATAB_driver : std_logic;
SIGNAL U7_apc_val_a1_a_a1_DATAD_driver : std_logic;
SIGNAL U7_aMux1_a0_DATAB_driver : std_logic;
SIGNAL U7_aMux1_a0_DATAC_driver : std_logic;
SIGNAL U7_apc_val_a1_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a1_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a1_a_SDATA_driver : std_logic;
SIGNAL U7_apc_val_a1_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a1_a_SLOAD_driver : std_logic;
SIGNAL U7_apc_val_a1_a_ENA_driver : std_logic;
SIGNAL U7_apc_val_a0_a_a2_DATAA_driver : std_logic;
SIGNAL U7_apc_val_a0_a_a2_DATAB_driver : std_logic;
SIGNAL U7_apc_val_a0_a_a2_DATAD_driver : std_logic;
SIGNAL Int_code_a0_a_a_wirecell_DATAC_driver : std_logic;
SIGNAL U7_apc_val_a0_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a0_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a0_a_SDATA_driver : std_logic;
SIGNAL U7_apc_val_a0_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a0_a_SLOAD_driver : std_logic;
SIGNAL U7_apc_val_a0_a_ENA_driver : std_logic;
SIGNAL U7_aAdd0_a20_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a20_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a20_DATAC_driver : std_logic;
SIGNAL U7_aAdd0_a20_DATAD_driver : std_logic;
SIGNAL U7_apc_val_a4_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a4_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a4_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a4_a_ENA_driver : std_logic;
SIGNAL U1_adata_a4_a_a29_DATAA_driver : std_logic;
SIGNAL U1_adata_a4_a_a29_DATAB_driver : std_logic;
SIGNAL U1_adata_a4_a_a29_DATAC_driver : std_logic;
SIGNAL U1_adata_a4_a_a29_DATAD_driver : std_logic;
SIGNAL U6_aMux10_a3_DATAA_driver : std_logic;
SIGNAL U6_aMux10_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux10_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux10_a3_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a22_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a22_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a22_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a22_DATAD_driver : std_logic;
SIGNAL U6_aMux7_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux7_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux7_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux7_a1_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a21_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a21_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a23_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a23_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a23_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a4_a_a23_DATAD_driver : std_logic;
SIGNAL U3_aacc_a4_a_a55_DATAA_driver : std_logic;
SIGNAL U3_aacc_a4_a_a55_DATAB_driver : std_logic;
SIGNAL U3_aacc_a4_a_a55_DATAC_driver : std_logic;
SIGNAL U3_aacc_a4_a_a55_DATAD_driver : std_logic;
SIGNAL U3_aacc_a4_a_a56_DATAA_driver : std_logic;
SIGNAL U3_aacc_a4_a_a56_DATAB_driver : std_logic;
SIGNAL U3_aacc_a4_a_a56_DATAC_driver : std_logic;
SIGNAL U3_aacc_a4_a_a56_DATAD_driver : std_logic;
SIGNAL U3_aacc_a4_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a4_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a4_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a4_a_ENA_driver : std_logic;
SIGNAL U1_adata_a4_a_a28_DATAA_driver : std_logic;
SIGNAL U1_adata_a4_a_a28_DATAB_driver : std_logic;
SIGNAL U1_adata_a4_a_a28_DATAC_driver : std_logic;
SIGNAL U1_adata_a4_a_a28_DATAD_driver : std_logic;
SIGNAL U1_adata_a4_a_a30_DATAA_driver : std_logic;
SIGNAL U1_adata_a4_a_a30_DATAB_driver : std_logic;
SIGNAL U1_adata_a4_a_a30_DATAC_driver : std_logic;
SIGNAL U1_adata_a4_a_a30_DATAD_driver : std_logic;
SIGNAL U1_adata_a4_a_a31_DATAA_driver : std_logic;
SIGNAL U1_adata_a4_a_a31_DATAB_driver : std_logic;
SIGNAL U1_adata_a4_a_a31_DATAC_driver : std_logic;
SIGNAL U1_adata_a4_a_a31_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a4_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a4_a_SDATA_driver : std_logic;
SIGNAL U5_aMAR_reg_a4_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a4_a_ENA_driver : std_logic;
SIGNAL U6_aMux10_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux10_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux10_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux10_a2_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a29_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a29_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a29_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a29_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a30_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a30_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a30_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a1_a_a30_DATAD_driver : std_logic;
SIGNAL U1_adata_a1_a_a12_DATAA_driver : std_logic;
SIGNAL U1_adata_a1_a_a12_DATAB_driver : std_logic;
SIGNAL U1_adata_a1_a_a12_DATAC_driver : std_logic;
SIGNAL U5_aMAR_reg_a1_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a1_a_SDATA_driver : std_logic;
SIGNAL U5_aMAR_reg_a1_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a1_a_ENA_driver : std_logic;
SIGNAL U6_aMux1_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux1_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux1_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux1_a0_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a32_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a32_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a32_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a32_DATAD_driver : std_logic;
SIGNAL U1_adata_a14_a_a39_DATAA_driver : std_logic;
SIGNAL U1_adata_a14_a_a39_DATAB_driver : std_logic;
SIGNAL U1_adata_a14_a_a39_DATAC_driver : std_logic;
SIGNAL U1_adata_a14_a_a39_DATAD_driver : std_logic;
SIGNAL U4_aIR_reg_a6_a_CLK_driver : std_logic;
SIGNAL U4_aIR_reg_a6_a_DATAIN_driver : std_logic;
SIGNAL U4_aIR_reg_a6_a_ACLR_driver : std_logic;
SIGNAL U4_aIR_reg_a6_a_ENA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a51_DATAA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a51_DATAB_driver : std_logic;
SIGNAL U3_aacc_a6_a_a51_DATAC_driver : std_logic;
SIGNAL U3_aacc_a6_a_a51_DATAD_driver : std_logic;
SIGNAL U3_aacc_a6_a_a49_DATAA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a49_DATAB_driver : std_logic;
SIGNAL U3_aacc_a6_a_a49_DATAC_driver : std_logic;
SIGNAL U3_aacc_a6_a_a49_DATAD_driver : std_logic;
SIGNAL U3_aacc_a6_a_a50_DATAA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a50_DATAB_driver : std_logic;
SIGNAL U3_aacc_a6_a_a50_DATAC_driver : std_logic;
SIGNAL U3_aacc_a6_a_a50_DATAD_driver : std_logic;
SIGNAL U3_aacc_a6_a_a52_DATAA_driver : std_logic;
SIGNAL U3_aacc_a6_a_a52_DATAB_driver : std_logic;
SIGNAL U3_aacc_a6_a_a52_DATAC_driver : std_logic;
SIGNAL U3_aacc_a6_a_a52_DATAD_driver : std_logic;
SIGNAL U3_aacc_a6_a_CLK_driver : std_logic;
SIGNAL U3_aacc_a6_a_DATAIN_driver : std_logic;
SIGNAL U3_aacc_a6_a_ACLR_driver : std_logic;
SIGNAL U3_aacc_a6_a_ENA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a0_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a0_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a0_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a0_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI6_a2_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a2_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a2_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a2_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI6_a3_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a3_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a3_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a3_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI6_a4_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a4_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a4_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a4_DATAD_driver : std_logic;
SIGNAL U2_anext_state_aI6_a5_DATAA_driver : std_logic;
SIGNAL U2_anext_state_aI6_a5_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI6_a5_DATAC_driver : std_logic;
SIGNAL U2_anext_state_aI6_a5_DATAD_driver : std_logic;
SIGNAL U2_apresent_state_aI6_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI6_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI6_ACLR_driver : std_logic;
SIGNAL U7_aAdd0_a19_DATAA_driver : std_logic;
SIGNAL U7_aAdd0_a19_DATAB_driver : std_logic;
SIGNAL U7_aAdd0_a19_DATAC_driver : std_logic;
SIGNAL U7_aAdd0_a19_DATAD_driver : std_logic;
SIGNAL U7_apc_val_a6_a_CLK_driver : std_logic;
SIGNAL U7_apc_val_a6_a_DATAIN_driver : std_logic;
SIGNAL U7_apc_val_a6_a_ACLR_driver : std_logic;
SIGNAL U7_apc_val_a6_a_ENA_driver : std_logic;
SIGNAL U1_adata_a6_a_a25_DATAA_driver : std_logic;
SIGNAL U1_adata_a6_a_a25_DATAB_driver : std_logic;
SIGNAL U1_adata_a6_a_a25_DATAC_driver : std_logic;
SIGNAL U1_adata_a6_a_a25_DATAD_driver : std_logic;
SIGNAL U1_adata_a6_a_a26_DATAA_driver : std_logic;
SIGNAL U1_adata_a6_a_a26_DATAB_driver : std_logic;
SIGNAL U1_adata_a6_a_a26_DATAC_driver : std_logic;
SIGNAL U1_adata_a6_a_a26_DATAD_driver : std_logic;
SIGNAL U6_aMux8_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux8_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux8_a2_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a19_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a19_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a18_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a18_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a18_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a20_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a20_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a20_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a20_DATAD_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a26_DATAA_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a26_DATAB_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a26_DATAC_driver : std_logic;
SIGNAL U6_adata_rom_a6_a_a26_DATAD_driver : std_logic;
SIGNAL U1_adata_a6_a_a27_DATAA_driver : std_logic;
SIGNAL U1_adata_a6_a_a27_DATAB_driver : std_logic;
SIGNAL U1_adata_a6_a_a27_DATAC_driver : std_logic;
SIGNAL U1_adata_a6_a_a27_DATAD_driver : std_logic;
SIGNAL U5_aMAR_reg_a6_a_CLK_driver : std_logic;
SIGNAL U5_aMAR_reg_a6_a_DATAIN_driver : std_logic;
SIGNAL U5_aMAR_reg_a6_a_ACLR_driver : std_logic;
SIGNAL U5_aMAR_reg_a6_a_ENA_driver : std_logic;
SIGNAL U6_aMux8_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux8_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a4_DATAA_driver : std_logic;
SIGNAL U6_aMux4_a4_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a4_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a4_DATAD_driver : std_logic;
SIGNAL U6_aMux4_a5_DATAA_driver : std_logic;
SIGNAL U6_aMux4_a5_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a5_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a5_DATAD_driver : std_logic;
SIGNAL U6_aMux4_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux4_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a1_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a1_DATAD_driver : std_logic;
SIGNAL U6_aMux2_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux2_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux2_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux2_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux4_a2_DATAA_driver : std_logic;
SIGNAL U6_aMux4_a2_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a2_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a2_DATAD_driver : std_logic;
SIGNAL U6_aMux6_a0_DATAA_driver : std_logic;
SIGNAL U6_aMux6_a0_DATAB_driver : std_logic;
SIGNAL U6_aMux6_a0_DATAC_driver : std_logic;
SIGNAL U6_aMux6_a0_DATAD_driver : std_logic;
SIGNAL U6_aMux6_a1_DATAA_driver : std_logic;
SIGNAL U6_aMux6_a1_DATAB_driver : std_logic;
SIGNAL U6_aMux6_a1_DATAD_driver : std_logic;
SIGNAL U6_aMux4_a3_DATAB_driver : std_logic;
SIGNAL U6_aMux4_a3_DATAC_driver : std_logic;
SIGNAL U6_aMux4_a3_DATAD_driver : std_logic;
SIGNAL U1_adata_a11_a_a42_DATAA_driver : std_logic;
SIGNAL U1_adata_a11_a_a42_DATAB_driver : std_logic;
SIGNAL U1_adata_a11_a_a42_DATAC_driver : std_logic;
SIGNAL U1_adata_a11_a_a42_DATAD_driver : std_logic;
SIGNAL U1_adata_a11_a_a43_DATAA_driver : std_logic;
SIGNAL U1_adata_a11_a_a43_DATAB_driver : std_logic;
SIGNAL U1_adata_a11_a_a43_DATAC_driver : std_logic;
SIGNAL U1_adata_a11_a_a43_DATAD_driver : std_logic;
SIGNAL U4_aIR_reg_a3_a_CLK_driver : std_logic;
SIGNAL U4_aIR_reg_a3_a_DATAIN_driver : std_logic;
SIGNAL U4_aIR_reg_a3_a_ACLR_driver : std_logic;
SIGNAL U4_aIR_reg_a3_a_ENA_driver : std_logic;
SIGNAL U2_anext_state_aI8_a1_DATAB_driver : std_logic;
SIGNAL U2_anext_state_aI8_a1_DATAC_driver : std_logic;
SIGNAL U2_apresent_state_aI8_CLK_driver : std_logic;
SIGNAL U2_apresent_state_aI8_DATAIN_driver : std_logic;
SIGNAL U2_apresent_state_aI8_ACLR_driver : std_logic;
SIGNAL U1_adata_a0_a_a17_DATAA_driver : std_logic;
SIGNAL U1_adata_a0_a_a17_DATAB_driver : std_logic;
SIGNAL U1_adata_a0_a_a17_DATAC_driver : std_logic;
SIGNAL U1_adata_a0_a_a17_DATAD_driver : std_logic;
SIGNAL U1_adata_a0_a_a19_DATAA_driver : std_logic;
SIGNAL U1_adata_a0_a_a19_DATAB_driver : std_logic;
SIGNAL U1_adata_a0_a_a19_DATAC_driver : std_logic;
SIGNAL U1_adata_a0_a_a19_DATAD_driver : std_logic;
SIGNAL U1_adata_a0_a_a20_DATAA_driver : std_logic;
SIGNAL U1_adata_a0_a_a20_DATAB_driver : std_logic;
SIGNAL U1_adata_a0_a_a20_DATAD_driver : std_logic;
SIGNAL U12_aQ_a0_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a0_a_DATAIN_driver : std_logic;
SIGNAL U12_aQ_a0_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a0_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a3_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a3_a_DATAIN_driver : std_logic;
SIGNAL U12_aQ_a3_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a3_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a2_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a2_a_SDATA_driver : std_logic;
SIGNAL U12_aQ_a2_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a2_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a1_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a1_a_DATAIN_driver : std_logic;
SIGNAL U12_aQ_a1_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a1_a_ENA_driver : std_logic;
SIGNAL U10_apom1_a7_a_a9_DATAA_driver : std_logic;
SIGNAL U10_apom1_a7_a_a9_DATAB_driver : std_logic;
SIGNAL U10_apom1_a7_a_a9_DATAC_driver : std_logic;
SIGNAL U10_apom1_a7_a_a9_DATAD_driver : std_logic;
SIGNAL U10_apom1_a6_a_a14_DATAA_driver : std_logic;
SIGNAL U10_apom1_a6_a_a14_DATAB_driver : std_logic;
SIGNAL U10_apom1_a6_a_a14_DATAC_driver : std_logic;
SIGNAL U10_apom1_a6_a_a14_DATAD_driver : std_logic;
SIGNAL U10_apom1_a5_a_a15_DATAA_driver : std_logic;
SIGNAL U10_apom1_a5_a_a15_DATAB_driver : std_logic;
SIGNAL U10_apom1_a5_a_a15_DATAC_driver : std_logic;
SIGNAL U10_apom1_a5_a_a15_DATAD_driver : std_logic;
SIGNAL U10_apom1_a4_a_a10_DATAA_driver : std_logic;
SIGNAL U10_apom1_a4_a_a10_DATAB_driver : std_logic;
SIGNAL U10_apom1_a4_a_a10_DATAC_driver : std_logic;
SIGNAL U10_apom1_a4_a_a10_DATAD_driver : std_logic;
SIGNAL U10_apom1_a3_a_a11_DATAA_driver : std_logic;
SIGNAL U10_apom1_a3_a_a11_DATAB_driver : std_logic;
SIGNAL U10_apom1_a3_a_a11_DATAC_driver : std_logic;
SIGNAL U10_apom1_a3_a_a11_DATAD_driver : std_logic;
SIGNAL U10_apom1_a2_a_a12_DATAA_driver : std_logic;
SIGNAL U10_apom1_a2_a_a12_DATAB_driver : std_logic;
SIGNAL U10_apom1_a2_a_a12_DATAC_driver : std_logic;
SIGNAL U10_apom1_a2_a_a12_DATAD_driver : std_logic;
SIGNAL U10_apom1_a1_a_a13_DATAA_driver : std_logic;
SIGNAL U10_apom1_a1_a_a13_DATAB_driver : std_logic;
SIGNAL U10_apom1_a1_a_a13_DATAC_driver : std_logic;
SIGNAL U10_apom1_a1_a_a13_DATAD_driver : std_logic;
SIGNAL U12_aQ_a4_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a4_a_DATAIN_driver : std_logic;
SIGNAL U12_aQ_a4_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a4_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a5_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a5_a_SDATA_driver : std_logic;
SIGNAL U12_aQ_a5_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a5_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a7_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a7_a_SDATA_driver : std_logic;
SIGNAL U12_aQ_a7_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a7_a_ENA_driver : std_logic;
SIGNAL U12_aQ_a6_a_CLK_driver : std_logic;
SIGNAL U12_aQ_a6_a_SDATA_driver : std_logic;
SIGNAL U12_aQ_a6_a_ACLR_driver : std_logic;
SIGNAL U12_aQ_a6_a_ENA_driver : std_logic;
SIGNAL U10_apom2_a7_a_a9_DATAA_driver : std_logic;
SIGNAL U10_apom2_a7_a_a9_DATAB_driver : std_logic;
SIGNAL U10_apom2_a7_a_a9_DATAC_driver : std_logic;
SIGNAL U10_apom2_a7_a_a9_DATAD_driver : std_logic;
SIGNAL U10_apom2_a6_a_a14_DATAA_driver : std_logic;
SIGNAL U10_apom2_a6_a_a14_DATAB_driver : std_logic;
SIGNAL U10_apom2_a6_a_a14_DATAC_driver : std_logic;
SIGNAL U10_apom2_a6_a_a14_DATAD_driver : std_logic;
SIGNAL U10_apom2_a5_a_a15_DATAA_driver : std_logic;
SIGNAL U10_apom2_a5_a_a15_DATAB_driver : std_logic;
SIGNAL U10_apom2_a5_a_a15_DATAC_driver : std_logic;
SIGNAL U10_apom2_a5_a_a15_DATAD_driver : std_logic;
SIGNAL U10_apom2_a4_a_a10_DATAA_driver : std_logic;
SIGNAL U10_apom2_a4_a_a10_DATAB_driver : std_logic;
SIGNAL U10_apom2_a4_a_a10_DATAC_driver : std_logic;
SIGNAL U10_apom2_a4_a_a10_DATAD_driver : std_logic;
SIGNAL U10_apom2_a3_a_a11_DATAA_driver : std_logic;
SIGNAL U10_apom2_a3_a_a11_DATAB_driver : std_logic;
SIGNAL U10_apom2_a3_a_a11_DATAC_driver : std_logic;
SIGNAL U10_apom2_a3_a_a11_DATAD_driver : std_logic;
SIGNAL U10_apom2_a2_a_a12_DATAA_driver : std_logic;
SIGNAL U10_apom2_a2_a_a12_DATAB_driver : std_logic;
SIGNAL U10_apom2_a2_a_a12_DATAC_driver : std_logic;
SIGNAL U10_apom2_a2_a_a12_DATAD_driver : std_logic;
SIGNAL U10_apom2_a1_a_a13_DATAA_driver : std_logic;
SIGNAL U10_apom2_a1_a_a13_DATAB_driver : std_logic;
SIGNAL U10_apom2_a1_a_a13_DATAC_driver : std_logic;
SIGNAL U10_apom2_a1_a_a13_DATAD_driver : std_logic;
SIGNAL U11_aQ_a0_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a0_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a0_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a0_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a1_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a1_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a1_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a1_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a3_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a3_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a3_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a3_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a2_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a2_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a2_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a2_a_ENA_driver : std_logic;
SIGNAL U9_apom1_a7_a_a9_DATAA_driver : std_logic;
SIGNAL U9_apom1_a7_a_a9_DATAB_driver : std_logic;
SIGNAL U9_apom1_a7_a_a9_DATAC_driver : std_logic;
SIGNAL U9_apom1_a7_a_a9_DATAD_driver : std_logic;
SIGNAL U9_apom1_a6_a_a14_DATAA_driver : std_logic;
SIGNAL U9_apom1_a6_a_a14_DATAB_driver : std_logic;
SIGNAL U9_apom1_a6_a_a14_DATAC_driver : std_logic;
SIGNAL U9_apom1_a6_a_a14_DATAD_driver : std_logic;
SIGNAL U9_apom1_a5_a_a15_DATAA_driver : std_logic;
SIGNAL U9_apom1_a5_a_a15_DATAB_driver : std_logic;
SIGNAL U9_apom1_a5_a_a15_DATAC_driver : std_logic;
SIGNAL U9_apom1_a5_a_a15_DATAD_driver : std_logic;
SIGNAL U9_apom1_a4_a_a10_DATAA_driver : std_logic;
SIGNAL U9_apom1_a4_a_a10_DATAB_driver : std_logic;
SIGNAL U9_apom1_a4_a_a10_DATAC_driver : std_logic;
SIGNAL U9_apom1_a4_a_a10_DATAD_driver : std_logic;
SIGNAL U9_apom1_a3_a_a11_DATAA_driver : std_logic;
SIGNAL U9_apom1_a3_a_a11_DATAB_driver : std_logic;
SIGNAL U9_apom1_a3_a_a11_DATAC_driver : std_logic;
SIGNAL U9_apom1_a3_a_a11_DATAD_driver : std_logic;
SIGNAL U9_apom1_a2_a_a12_DATAA_driver : std_logic;
SIGNAL U9_apom1_a2_a_a12_DATAB_driver : std_logic;
SIGNAL U9_apom1_a2_a_a12_DATAC_driver : std_logic;
SIGNAL U9_apom1_a2_a_a12_DATAD_driver : std_logic;
SIGNAL U9_apom1_a1_a_a13_DATAA_driver : std_logic;
SIGNAL U9_apom1_a1_a_a13_DATAB_driver : std_logic;
SIGNAL U9_apom1_a1_a_a13_DATAC_driver : std_logic;
SIGNAL U9_apom1_a1_a_a13_DATAD_driver : std_logic;
SIGNAL U11_aQ_a5_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a5_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a5_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a5_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a7_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a7_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a7_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a7_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a4_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a4_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a4_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a4_a_ENA_driver : std_logic;
SIGNAL U11_aQ_a6_a_CLK_driver : std_logic;
SIGNAL U11_aQ_a6_a_SDATA_driver : std_logic;
SIGNAL U11_aQ_a6_a_ACLR_driver : std_logic;
SIGNAL U11_aQ_a6_a_ENA_driver : std_logic;
SIGNAL U9_apom2_a7_a_a9_DATAA_driver : std_logic;
SIGNAL U9_apom2_a7_a_a9_DATAB_driver : std_logic;
SIGNAL U9_apom2_a7_a_a9_DATAC_driver : std_logic;
SIGNAL U9_apom2_a7_a_a9_DATAD_driver : std_logic;
SIGNAL U9_apom2_a6_a_a14_DATAA_driver : std_logic;
SIGNAL U9_apom2_a6_a_a14_DATAB_driver : std_logic;
SIGNAL U9_apom2_a6_a_a14_DATAC_driver : std_logic;
SIGNAL U9_apom2_a6_a_a14_DATAD_driver : std_logic;
SIGNAL U9_apom2_a5_a_a15_DATAA_driver : std_logic;
SIGNAL U9_apom2_a5_a_a15_DATAB_driver : std_logic;
SIGNAL U9_apom2_a5_a_a15_DATAC_driver : std_logic;
SIGNAL U9_apom2_a5_a_a15_DATAD_driver : std_logic;
SIGNAL U9_apom2_a4_a_a10_DATAA_driver : std_logic;
SIGNAL U9_apom2_a4_a_a10_DATAB_driver : std_logic;
SIGNAL U9_apom2_a4_a_a10_DATAC_driver : std_logic;
SIGNAL U9_apom2_a4_a_a10_DATAD_driver : std_logic;
SIGNAL U9_apom2_a3_a_a11_DATAA_driver : std_logic;
SIGNAL U9_apom2_a3_a_a11_DATAB_driver : std_logic;
SIGNAL U9_apom2_a3_a_a11_DATAC_driver : std_logic;
SIGNAL U9_apom2_a3_a_a11_DATAD_driver : std_logic;
SIGNAL U9_apom2_a2_a_a12_DATAA_driver : std_logic;
SIGNAL U9_apom2_a2_a_a12_DATAB_driver : std_logic;
SIGNAL U9_apom2_a2_a_a12_DATAC_driver : std_logic;
SIGNAL U9_apom2_a2_a_a12_DATAD_driver : std_logic;
SIGNAL U9_apom2_a1_a_a13_DATAA_driver : std_logic;
SIGNAL U9_apom2_a1_a_a13_DATAB_driver : std_logic;
SIGNAL U9_apom2_a1_a_a13_DATAC_driver : std_logic;
SIGNAL U9_apom2_a1_a_a13_DATAD_driver : std_logic;
SIGNAL Seg0_a0_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a1_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a2_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a3_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a4_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a5_a_DATAIN_driver : std_logic;
SIGNAL Seg0_a6_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a0_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a1_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a2_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a3_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a4_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a5_a_DATAIN_driver : std_logic;
SIGNAL Seg1_a6_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a0_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a1_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a2_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a3_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a4_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a5_a_DATAIN_driver : std_logic;
SIGNAL Seg2_a6_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a0_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a1_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a2_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a3_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a4_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a5_a_DATAIN_driver : std_logic;
SIGNAL Seg3_a6_a_DATAIN_driver : std_logic;

BEGIN

ww_Taster <= Taster;
ww_clk <= clk;
ww_reset <= reset;
ww_Int_code <= Int_code;
ww_PORT_IN <= PORT_IN;
Seg0 <= ww_Seg0;
Seg1 <= ww_Seg1;
Seg2 <= ww_Seg2;
Seg3 <= ww_Seg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

U1_aaltsyncram_component_aauto_generated_aq_a(0) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
U1_aaltsyncram_component_aauto_generated_aq_a(1) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
U1_aaltsyncram_component_aauto_generated_aq_a(2) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
U1_aaltsyncram_component_aauto_generated_aq_a(3) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
U1_aaltsyncram_component_aauto_generated_aq_a(4) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
U1_aaltsyncram_component_aauto_generated_aq_a(5) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
U1_aaltsyncram_component_aauto_generated_aq_a(6) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
U1_aaltsyncram_component_aauto_generated_aq_a(7) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);
U1_aaltsyncram_component_aauto_generated_aq_a(11) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(8);
U1_aaltsyncram_component_aauto_generated_aq_a(12) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(9);
U1_aaltsyncram_component_aauto_generated_aq_a(13) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(10);
U1_aaltsyncram_component_aauto_generated_aq_a(14) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(11);
U1_aaltsyncram_component_aauto_generated_aq_a(15) <= U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(12);
ALT_INV_reset_acombout <= NOT reset_acombout;
ALT_INV_U9_apom2_a5_a_a15_combout <= NOT U9_apom2_a5_a_a15_combout;
ALT_INV_U9_apom2_a6_a_a14_combout <= NOT U9_apom2_a6_a_a14_combout;
ALT_INV_U9_apom1_a5_a_a15_combout <= NOT U9_apom1_a5_a_a15_combout;
ALT_INV_U9_apom1_a6_a_a14_combout <= NOT U9_apom1_a6_a_a14_combout;
ALT_INV_U10_apom2_a5_a_a15_combout <= NOT U10_apom2_a5_a_a15_combout;
ALT_INV_U10_apom2_a6_a_a14_combout <= NOT U10_apom2_a6_a_a14_combout;
ALT_INV_U10_apom1_a5_a_a15_combout <= NOT U10_apom1_a5_a_a15_combout;
ALT_INV_U10_apom1_a6_a_a14_combout <= NOT U10_apom1_a6_a_a14_combout;
ALT_INV_U9_apom2_a1_a_a13_combout <= NOT U9_apom2_a1_a_a13_combout;
ALT_INV_U9_apom2_a7_a_a9_combout <= NOT U9_apom2_a7_a_a9_combout;
ALT_INV_U9_apom1_a1_a_a13_combout <= NOT U9_apom1_a1_a_a13_combout;
ALT_INV_U9_apom1_a7_a_a9_combout <= NOT U9_apom1_a7_a_a9_combout;
ALT_INV_U10_apom2_a1_a_a13_combout <= NOT U10_apom2_a1_a_a13_combout;
ALT_INV_U10_apom2_a7_a_a9_combout <= NOT U10_apom2_a7_a_a9_combout;
ALT_INV_U10_apom1_a1_a_a13_combout <= NOT U10_apom1_a1_a_a13_combout;
ALT_INV_U10_apom1_a7_a_a9_combout <= NOT U10_apom1_a7_a_a9_combout;

U7_apc_val_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a2_a_CLK_driver);

U7_apc_val_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val_a2_a_a0_combout,
	dataout => U7_apc_val_a2_a_DATAIN_driver);

U7_apc_val_a2_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aMux1_a1_combout,
	dataout => U7_apc_val_a2_a_SDATA_driver);

U7_apc_val_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a2_a_ACLR_driver);

U7_apc_val_a2_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_apc_val_a2_a_SLOAD_driver);

U7_apc_val_a2_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a2_a_ENA_driver);

-- Location: LCFF_X22_Y18_N19
U7_apc_val_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a2_a_CLK_driver,
	datain => U7_apc_val_a2_a_DATAIN_driver,
	sdata => U7_apc_val_a2_a_SDATA_driver,
	aclr => U7_apc_val_a2_a_ACLR_driver,
	sload => U7_apc_val_a2_a_SLOAD_driver,
	ena => U7_apc_val_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(2));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAWE_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a1_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAWE_driver);

U1_aaltsyncram_component_aauto_generated_aram_block1a0_CLK0_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aclock_aclkctrl_outclk,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_CLK0_driver);

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(0));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(1));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(2));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(3));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a4_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(4));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a5_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(5));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a6_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(6));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a7_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(7));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a8_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a11_a_a43_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(8));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a9_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a12_a_a41_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(9));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a10_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a13_a_a45_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(10));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a11_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a39_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(11));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_a12_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a49_combout,
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus(12));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(0));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(1));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(2));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(3));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a4_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(4));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a5_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(5));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a6_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(6));

U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a7_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(7));

-- Location: M4K_X17_Y18
U1_aaltsyncram_component_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:U1|altsyncram:altsyncram_component|altsyncram_5kc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 13,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 13,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAWE_driver,
	clk0 => U1_aaltsyncram_component_aauto_generated_aram_block1a0_CLK0_driver,
	portadatain => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => U1_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a3_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_CIN_driver);

-- Location: LCCOMB_X20_Y17_N4
U3_aAdd0_aauto_generated_aresult_int_a1_a_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout = (U3_aAdd0_aauto_generated_a_a3_combout & ((U3_aacc(0) & (U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout & VCC)) # (!U3_aacc(0) & (!U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout)))) # 
-- (!U3_aAdd0_aauto_generated_a_a3_combout & ((U3_aacc(0) & (!U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout)) # (!U3_aacc(0) & ((U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout) # (GND)))))
-- U3_aAdd0_aauto_generated_aresult_int_a1_a_a3 = CARRY((U3_aAdd0_aauto_generated_a_a3_combout & (!U3_aacc(0) & !U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout)) # (!U3_aAdd0_aauto_generated_a_a3_combout & 
-- ((!U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout) # (!U3_aacc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a1_a_a3);

U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a2_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a1_a_a3,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_CIN_driver);

-- Location: LCCOMB_X20_Y17_N6
U3_aAdd0_aauto_generated_aresult_int_a2_a_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout = ((U3_aAdd0_aauto_generated_a_a2_combout $ (U3_aacc(1) $ (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a3)))) # (GND)
-- U3_aAdd0_aauto_generated_aresult_int_a2_a_a5 = CARRY((U3_aAdd0_aauto_generated_a_a2_combout & ((U3_aacc(1)) # (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a3))) # (!U3_aAdd0_aauto_generated_a_a2_combout & (U3_aacc(1) & 
-- !U3_aAdd0_aauto_generated_aresult_int_a1_a_a3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a2_a_a5);

U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a1_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a2_a_a5,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_CIN_driver);

-- Location: LCCOMB_X20_Y17_N8
U3_aAdd0_aauto_generated_aresult_int_a3_a_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout = (U3_aAdd0_aauto_generated_a_a1_combout & ((U3_aacc(2) & (U3_aAdd0_aauto_generated_aresult_int_a2_a_a5 & VCC)) # (!U3_aacc(2) & (!U3_aAdd0_aauto_generated_aresult_int_a2_a_a5)))) # 
-- (!U3_aAdd0_aauto_generated_a_a1_combout & ((U3_aacc(2) & (!U3_aAdd0_aauto_generated_aresult_int_a2_a_a5)) # (!U3_aacc(2) & ((U3_aAdd0_aauto_generated_aresult_int_a2_a_a5) # (GND)))))
-- U3_aAdd0_aauto_generated_aresult_int_a3_a_a7 = CARRY((U3_aAdd0_aauto_generated_a_a1_combout & (!U3_aacc(2) & !U3_aAdd0_aauto_generated_aresult_int_a2_a_a5)) # (!U3_aAdd0_aauto_generated_a_a1_combout & ((!U3_aAdd0_aauto_generated_aresult_int_a2_a_a5) # 
-- (!U3_aacc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a3_a_a7);

U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a0_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a3_a_a7,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_CIN_driver);

-- Location: LCCOMB_X20_Y17_N10
U3_aAdd0_aauto_generated_aresult_int_a4_a_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout = ((U3_aacc(3) $ (U3_aAdd0_aauto_generated_a_a0_combout $ (!U3_aAdd0_aauto_generated_aresult_int_a3_a_a7)))) # (GND)
-- U3_aAdd0_aauto_generated_aresult_int_a4_a_a9 = CARRY((U3_aacc(3) & ((U3_aAdd0_aauto_generated_a_a0_combout) # (!U3_aAdd0_aauto_generated_aresult_int_a3_a_a7))) # (!U3_aacc(3) & (U3_aAdd0_aauto_generated_a_a0_combout & 
-- !U3_aAdd0_aauto_generated_aresult_int_a3_a_a7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a4_a_a9);

U3_aAdd1_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a1_combout,
	dataout => U3_aAdd1_a4_DATAA_driver);

U3_aAdd1_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout,
	dataout => U3_aAdd1_a4_DATAB_driver);

U3_aAdd1_a4_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a3_cout,
	dataout => U3_aAdd1_a4_CIN_driver);

-- Location: LCCOMB_X21_Y17_N4
U3_aAdd1_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a4_combout = (U3_aAdd1_a1_combout & ((U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout & (U3_aAdd1_a3_cout & VCC)) # (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout & (!U3_aAdd1_a3_cout)))) # (!U3_aAdd1_a1_combout & 
-- ((U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout & (!U3_aAdd1_a3_cout)) # (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout & ((U3_aAdd1_a3_cout) # (GND)))))
-- U3_aAdd1_a5 = CARRY((U3_aAdd1_a1_combout & (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout & !U3_aAdd1_a3_cout)) # (!U3_aAdd1_a1_combout & ((!U3_aAdd1_a3_cout) # (!U3_aAdd0_aauto_generated_aresult_int_a1_a_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a4_DATAA_driver,
	datab => U3_aAdd1_a4_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a4_CIN_driver,
	combout => U3_aAdd1_a4_combout,
	cout => U3_aAdd1_a5);

U3_aAdd1_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout,
	dataout => U3_aAdd1_a6_DATAA_driver);

U3_aAdd1_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a6_DATAB_driver);

U3_aAdd1_a6_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a5,
	dataout => U3_aAdd1_a6_CIN_driver);

-- Location: LCCOMB_X21_Y17_N6
U3_aAdd1_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a6_combout = ((U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout $ (U3_aAdd1_a0_combout $ (!U3_aAdd1_a5)))) # (GND)
-- U3_aAdd1_a7 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout & ((U3_aAdd1_a0_combout) # (!U3_aAdd1_a5))) # (!U3_aAdd0_aauto_generated_aresult_int_a2_a_a4_combout & (U3_aAdd1_a0_combout & !U3_aAdd1_a5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a6_DATAA_driver,
	datab => U3_aAdd1_a6_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a6_CIN_driver,
	combout => U3_aAdd1_a6_combout,
	cout => U3_aAdd1_a7);

U3_aAdd1_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout,
	dataout => U3_aAdd1_a10_DATAA_driver);

U3_aAdd1_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a10_DATAB_driver);

U3_aAdd1_a10_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a9,
	dataout => U3_aAdd1_a10_CIN_driver);

-- Location: LCCOMB_X21_Y17_N10
U3_aAdd1_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a10_combout = ((U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout $ (U3_aAdd1_a0_combout $ (!U3_aAdd1_a9)))) # (GND)
-- U3_aAdd1_a11 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout & ((U3_aAdd1_a0_combout) # (!U3_aAdd1_a9))) # (!U3_aAdd0_aauto_generated_aresult_int_a4_a_a8_combout & (U3_aAdd1_a0_combout & !U3_aAdd1_a9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a10_DATAA_driver,
	datab => U3_aAdd1_a10_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a10_CIN_driver,
	combout => U3_aAdd1_a10_combout,
	cout => U3_aAdd1_a11);

U3_aAdd0_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aAdd0_a2_DATAA_driver);

U3_aAdd0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aAdd0_a2_DATAB_driver);

U3_aAdd0_a2_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a1,
	dataout => U3_aAdd0_a2_CIN_driver);

-- Location: LCCOMB_X19_Y16_N16
U3_aAdd0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a2_combout = (U1_adata_a1_a_a12_combout & ((U3_aacc(1) & (U3_aAdd0_a1 & VCC)) # (!U3_aacc(1) & (!U3_aAdd0_a1)))) # (!U1_adata_a1_a_a12_combout & ((U3_aacc(1) & (!U3_aAdd0_a1)) # (!U3_aacc(1) & ((U3_aAdd0_a1) # (GND)))))
-- U3_aAdd0_a3 = CARRY((U1_adata_a1_a_a12_combout & (!U3_aacc(1) & !U3_aAdd0_a1)) # (!U1_adata_a1_a_a12_combout & ((!U3_aAdd0_a1) # (!U3_aacc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a2_DATAA_driver,
	datab => U3_aAdd0_a2_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a2_CIN_driver,
	combout => U3_aAdd0_a2_combout,
	cout => U3_aAdd0_a3);

U3_aAdd0_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aAdd0_a4_DATAA_driver);

U3_aAdd0_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aAdd0_a4_DATAB_driver);

U3_aAdd0_a4_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a3,
	dataout => U3_aAdd0_a4_CIN_driver);

-- Location: LCCOMB_X19_Y16_N18
U3_aAdd0_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a4_combout = ((U3_aacc(2) $ (U1_adata_a2_a_a16_combout $ (!U3_aAdd0_a3)))) # (GND)
-- U3_aAdd0_a5 = CARRY((U3_aacc(2) & ((U1_adata_a2_a_a16_combout) # (!U3_aAdd0_a3))) # (!U3_aacc(2) & (U1_adata_a2_a_a16_combout & !U3_aAdd0_a3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a4_DATAA_driver,
	datab => U3_aAdd0_a4_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a4_CIN_driver,
	combout => U3_aAdd0_a4_combout,
	cout => U3_aAdd0_a5);

U3_aAdd0_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aAdd0_a6_DATAA_driver);

U3_aAdd0_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aAdd0_a6_DATAB_driver);

U3_aAdd0_a6_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a5,
	dataout => U3_aAdd0_a6_CIN_driver);

-- Location: LCCOMB_X19_Y16_N20
U3_aAdd0_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a6_combout = (U3_aacc(3) & ((U1_adata_a3_a_a8_combout & (U3_aAdd0_a5 & VCC)) # (!U1_adata_a3_a_a8_combout & (!U3_aAdd0_a5)))) # (!U3_aacc(3) & ((U1_adata_a3_a_a8_combout & (!U3_aAdd0_a5)) # (!U1_adata_a3_a_a8_combout & ((U3_aAdd0_a5) # (GND)))))
-- U3_aAdd0_a7 = CARRY((U3_aacc(3) & (!U1_adata_a3_a_a8_combout & !U3_aAdd0_a5)) # (!U3_aacc(3) & ((!U3_aAdd0_a5) # (!U1_adata_a3_a_a8_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a6_DATAA_driver,
	datab => U3_aAdd0_a6_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a6_CIN_driver,
	combout => U3_aAdd0_a6_combout,
	cout => U3_aAdd0_a7);

U3_aAdd2_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd2_a0_DATAA_driver);

U3_aAdd2_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd2_a0_DATAB_driver);

-- Location: LCCOMB_X21_Y16_N14
U3_aAdd2_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a0_combout = (U3_aacc(0) & ((GND) # (!U1_adata_a0_a_a20_combout))) # (!U3_aacc(0) & (U1_adata_a0_a_a20_combout $ (GND)))
-- U3_aAdd2_a1 = CARRY((U3_aacc(0)) # (!U1_adata_a0_a_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a0_DATAA_driver,
	datab => U3_aAdd2_a0_DATAB_driver,
	datad => VCC,
	combout => U3_aAdd2_a0_combout,
	cout => U3_aAdd2_a1);

U3_aAdd2_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aAdd2_a2_DATAA_driver);

U3_aAdd2_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aAdd2_a2_DATAB_driver);

U3_aAdd2_a2_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a1,
	dataout => U3_aAdd2_a2_CIN_driver);

-- Location: LCCOMB_X21_Y16_N16
U3_aAdd2_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a2_combout = (U1_adata_a1_a_a12_combout & ((U3_aacc(1) & (!U3_aAdd2_a1)) # (!U3_aacc(1) & ((U3_aAdd2_a1) # (GND))))) # (!U1_adata_a1_a_a12_combout & ((U3_aacc(1) & (U3_aAdd2_a1 & VCC)) # (!U3_aacc(1) & (!U3_aAdd2_a1))))
-- U3_aAdd2_a3 = CARRY((U1_adata_a1_a_a12_combout & ((!U3_aAdd2_a1) # (!U3_aacc(1)))) # (!U1_adata_a1_a_a12_combout & (!U3_aacc(1) & !U3_aAdd2_a1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a2_DATAA_driver,
	datab => U3_aAdd2_a2_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a2_CIN_driver,
	combout => U3_aAdd2_a2_combout,
	cout => U3_aAdd2_a3);

U3_aAdd2_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aAdd2_a4_DATAA_driver);

U3_aAdd2_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aAdd2_a4_DATAB_driver);

U3_aAdd2_a4_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a3,
	dataout => U3_aAdd2_a4_CIN_driver);

-- Location: LCCOMB_X21_Y16_N18
U3_aAdd2_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a4_combout = ((U1_adata_a2_a_a16_combout $ (U3_aacc(2) $ (U3_aAdd2_a3)))) # (GND)
-- U3_aAdd2_a5 = CARRY((U1_adata_a2_a_a16_combout & (U3_aacc(2) & !U3_aAdd2_a3)) # (!U1_adata_a2_a_a16_combout & ((U3_aacc(2)) # (!U3_aAdd2_a3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a4_DATAA_driver,
	datab => U3_aAdd2_a4_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a4_CIN_driver,
	combout => U3_aAdd2_a4_combout,
	cout => U3_aAdd2_a5);

U3_aAdd2_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aAdd2_a6_DATAA_driver);

U3_aAdd2_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aAdd2_a6_DATAB_driver);

U3_aAdd2_a6_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a5,
	dataout => U3_aAdd2_a6_CIN_driver);

-- Location: LCCOMB_X21_Y16_N20
U3_aAdd2_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a6_combout = (U1_adata_a3_a_a8_combout & ((U3_aacc(3) & (!U3_aAdd2_a5)) # (!U3_aacc(3) & ((U3_aAdd2_a5) # (GND))))) # (!U1_adata_a3_a_a8_combout & ((U3_aacc(3) & (U3_aAdd2_a5 & VCC)) # (!U3_aacc(3) & (!U3_aAdd2_a5))))
-- U3_aAdd2_a7 = CARRY((U1_adata_a3_a_a8_combout & ((!U3_aAdd2_a5) # (!U3_aacc(3)))) # (!U1_adata_a3_a_a8_combout & (!U3_aacc(3) & !U3_aAdd2_a5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a6_DATAA_driver,
	datab => U3_aAdd2_a6_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a6_CIN_driver,
	combout => U3_aAdd2_a6_combout,
	cout => U3_aAdd2_a7);

U2_acnt_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a2_a_CLK_driver);

U2_acnt_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a2_a_a13_combout,
	dataout => U2_acnt_a2_a_DATAIN_driver);

U2_acnt_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a2_a_ACLR_driver);

U2_acnt_a2_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a2_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N17
U2_acnt_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a2_a_CLK_driver,
	datain => U2_acnt_a2_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a2_a_ACLR_driver,
	sload => U2_acnt_a2_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(2));

U2_acnt_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a4_a_CLK_driver);

U2_acnt_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a4_a_a17_combout,
	dataout => U2_acnt_a4_a_DATAIN_driver);

U2_acnt_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a4_a_ACLR_driver);

U2_acnt_a4_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a4_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N21
U2_acnt_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a4_a_CLK_driver,
	datain => U2_acnt_a4_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a4_a_ACLR_driver,
	sload => U2_acnt_a4_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(4));

U7_aAdd0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(0),
	dataout => U7_aAdd0_a0_DATAB_driver);

-- Location: LCCOMB_X21_Y18_N2
U7_aAdd0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a0_combout = U7_apc_val(0) $ (VCC)
-- U7_aAdd0_a1 = CARRY(U7_apc_val(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a0_DATAB_driver,
	datad => VCC,
	combout => U7_aAdd0_a0_combout,
	cout => U7_aAdd0_a1);

U7_aAdd0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(1),
	dataout => U7_aAdd0_a2_DATAB_driver);

U7_aAdd0_a2_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a1,
	dataout => U7_aAdd0_a2_CIN_driver);

-- Location: LCCOMB_X21_Y18_N4
U7_aAdd0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a2_combout = (U7_apc_val(1) & (!U7_aAdd0_a1)) # (!U7_apc_val(1) & ((U7_aAdd0_a1) # (GND)))
-- U7_aAdd0_a3 = CARRY((!U7_aAdd0_a1) # (!U7_apc_val(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a2_DATAB_driver,
	datad => VCC,
	cin => U7_aAdd0_a2_CIN_driver,
	combout => U7_aAdd0_a2_combout,
	cout => U7_aAdd0_a3);

U7_aAdd0_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(2),
	dataout => U7_aAdd0_a4_DATAA_driver);

U7_aAdd0_a4_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a3,
	dataout => U7_aAdd0_a4_CIN_driver);

-- Location: LCCOMB_X21_Y18_N6
U7_aAdd0_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a4_combout = (U7_apc_val(2) & (U7_aAdd0_a3 $ (GND))) # (!U7_apc_val(2) & (!U7_aAdd0_a3 & VCC))
-- U7_aAdd0_a5 = CARRY((U7_apc_val(2) & !U7_aAdd0_a3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a4_DATAA_driver,
	datad => VCC,
	cin => U7_aAdd0_a4_CIN_driver,
	combout => U7_aAdd0_a4_combout,
	cout => U7_aAdd0_a5);

U7_aAdd0_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(3),
	dataout => U7_aAdd0_a6_DATAB_driver);

U7_aAdd0_a6_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a5,
	dataout => U7_aAdd0_a6_CIN_driver);

-- Location: LCCOMB_X21_Y18_N8
U7_aAdd0_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a6_combout = (U7_apc_val(3) & (!U7_aAdd0_a5)) # (!U7_apc_val(3) & ((U7_aAdd0_a5) # (GND)))
-- U7_aAdd0_a7 = CARRY((!U7_aAdd0_a5) # (!U7_apc_val(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a6_DATAB_driver,
	datad => VCC,
	cin => U7_aAdd0_a6_CIN_driver,
	combout => U7_aAdd0_a6_combout,
	cout => U7_aAdd0_a7);

U7_apc_val_a2_a_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a4_combout,
	dataout => U7_apc_val_a2_a_a0_DATAA_driver);

U7_apc_val_a2_a_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_apc_val_a2_a_a0_DATAB_driver);

U7_apc_val_a2_a_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U7_apc_val_a2_a_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N18
U7_apc_val_a2_a_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U7_apc_val_a2_a_a0_combout = (U2_apresent_state_aI6_aregout & ((U1_adata_a2_a_a16_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a4_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_apc_val_a2_a_a0_DATAA_driver,
	datab => U7_apc_val_a2_a_a0_DATAB_driver,
	datad => U7_apc_val_a2_a_a0_DATAD_driver,
	combout => U7_apc_val_a2_a_a0_combout);

U3_aAdd2_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aAdd2_a8_DATAA_driver);

U3_aAdd2_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aAdd2_a8_DATAB_driver);

U3_aAdd2_a8_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a7,
	dataout => U3_aAdd2_a8_CIN_driver);

-- Location: LCCOMB_X21_Y16_N22
U3_aAdd2_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a8_combout = ((U3_aacc(4) $ (U1_adata_a4_a_a31_combout $ (U3_aAdd2_a7)))) # (GND)
-- U3_aAdd2_a9 = CARRY((U3_aacc(4) & ((!U3_aAdd2_a7) # (!U1_adata_a4_a_a31_combout))) # (!U3_aacc(4) & (!U1_adata_a4_a_a31_combout & !U3_aAdd2_a7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a8_DATAA_driver,
	datab => U3_aAdd2_a8_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a8_CIN_driver,
	combout => U3_aAdd2_a8_combout,
	cout => U3_aAdd2_a9);

U3_aAdd2_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aAdd2_a10_DATAA_driver);

U3_aAdd2_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aAdd2_a10_DATAB_driver);

U3_aAdd2_a10_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a9,
	dataout => U3_aAdd2_a10_CIN_driver);

-- Location: LCCOMB_X21_Y16_N24
U3_aAdd2_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a10_combout = (U3_aacc(5) & ((U1_adata_a5_a_a24_combout & (!U3_aAdd2_a9)) # (!U1_adata_a5_a_a24_combout & (U3_aAdd2_a9 & VCC)))) # (!U3_aacc(5) & ((U1_adata_a5_a_a24_combout & ((U3_aAdd2_a9) # (GND))) # (!U1_adata_a5_a_a24_combout & 
-- (!U3_aAdd2_a9))))
-- U3_aAdd2_a11 = CARRY((U3_aacc(5) & (U1_adata_a5_a_a24_combout & !U3_aAdd2_a9)) # (!U3_aacc(5) & ((U1_adata_a5_a_a24_combout) # (!U3_aAdd2_a9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a10_DATAA_driver,
	datab => U3_aAdd2_a10_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a10_CIN_driver,
	combout => U3_aAdd2_a10_combout,
	cout => U3_aAdd2_a11);

U3_aAdd2_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aAdd2_a12_DATAA_driver);

U3_aAdd2_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aAdd2_a12_DATAB_driver);

U3_aAdd2_a12_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a11,
	dataout => U3_aAdd2_a12_CIN_driver);

-- Location: LCCOMB_X21_Y16_N26
U3_aAdd2_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a12_combout = ((U3_aacc(6) $ (U1_adata_a6_a_a27_combout $ (U3_aAdd2_a11)))) # (GND)
-- U3_aAdd2_a13 = CARRY((U3_aacc(6) & ((!U3_aAdd2_a11) # (!U1_adata_a6_a_a27_combout))) # (!U3_aacc(6) & (!U1_adata_a6_a_a27_combout & !U3_aAdd2_a11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a12_DATAA_driver,
	datab => U3_aAdd2_a12_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a12_CIN_driver,
	combout => U3_aAdd2_a12_combout,
	cout => U3_aAdd2_a13);

U3_aAdd2_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aAdd2_a14_DATAA_driver);

U3_aAdd2_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aAdd2_a14_DATAB_driver);

U3_aAdd2_a14_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a13,
	dataout => U3_aAdd2_a14_CIN_driver);

-- Location: LCCOMB_X21_Y16_N28
U3_aAdd2_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a14_combout = (U3_aacc(7) & ((U6_adata_rom_a7_a_a11_combout & (!U3_aAdd2_a13)) # (!U6_adata_rom_a7_a_a11_combout & (U3_aAdd2_a13 & VCC)))) # (!U3_aacc(7) & ((U6_adata_rom_a7_a_a11_combout & ((U3_aAdd2_a13) # (GND))) # 
-- (!U6_adata_rom_a7_a_a11_combout & (!U3_aAdd2_a13))))
-- U3_aAdd2_a15 = CARRY((U3_aacc(7) & (U6_adata_rom_a7_a_a11_combout & !U3_aAdd2_a13)) # (!U3_aacc(7) & ((U6_adata_rom_a7_a_a11_combout) # (!U3_aAdd2_a13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd2_a14_DATAA_driver,
	datab => U3_aAdd2_a14_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd2_a14_CIN_driver,
	combout => U3_aAdd2_a14_combout,
	cout => U3_aAdd2_a15);

U3_aAdd0_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aAdd0_a8_DATAA_driver);

U3_aAdd0_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aAdd0_a8_DATAB_driver);

U3_aAdd0_a8_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a7,
	dataout => U3_aAdd0_a8_CIN_driver);

-- Location: LCCOMB_X19_Y16_N22
U3_aAdd0_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a8_combout = ((U1_adata_a4_a_a31_combout $ (U3_aacc(4) $ (!U3_aAdd0_a7)))) # (GND)
-- U3_aAdd0_a9 = CARRY((U1_adata_a4_a_a31_combout & ((U3_aacc(4)) # (!U3_aAdd0_a7))) # (!U1_adata_a4_a_a31_combout & (U3_aacc(4) & !U3_aAdd0_a7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a8_DATAA_driver,
	datab => U3_aAdd0_a8_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a8_CIN_driver,
	combout => U3_aAdd0_a8_combout,
	cout => U3_aAdd0_a9);

U3_aAdd0_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aAdd0_a10_DATAA_driver);

U3_aAdd0_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aAdd0_a10_DATAB_driver);

U3_aAdd0_a10_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a9,
	dataout => U3_aAdd0_a10_CIN_driver);

-- Location: LCCOMB_X19_Y16_N24
U3_aAdd0_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a10_combout = (U1_adata_a5_a_a24_combout & ((U3_aacc(5) & (U3_aAdd0_a9 & VCC)) # (!U3_aacc(5) & (!U3_aAdd0_a9)))) # (!U1_adata_a5_a_a24_combout & ((U3_aacc(5) & (!U3_aAdd0_a9)) # (!U3_aacc(5) & ((U3_aAdd0_a9) # (GND)))))
-- U3_aAdd0_a11 = CARRY((U1_adata_a5_a_a24_combout & (!U3_aacc(5) & !U3_aAdd0_a9)) # (!U1_adata_a5_a_a24_combout & ((!U3_aAdd0_a9) # (!U3_aacc(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a10_DATAA_driver,
	datab => U3_aAdd0_a10_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a10_CIN_driver,
	combout => U3_aAdd0_a10_combout,
	cout => U3_aAdd0_a11);

U3_aAdd0_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aAdd0_a12_DATAA_driver);

U3_aAdd0_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aAdd0_a12_DATAB_driver);

U3_aAdd0_a12_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a11,
	dataout => U3_aAdd0_a12_CIN_driver);

-- Location: LCCOMB_X19_Y16_N26
U3_aAdd0_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a12_combout = ((U1_adata_a6_a_a27_combout $ (U3_aacc(6) $ (!U3_aAdd0_a11)))) # (GND)
-- U3_aAdd0_a13 = CARRY((U1_adata_a6_a_a27_combout & ((U3_aacc(6)) # (!U3_aAdd0_a11))) # (!U1_adata_a6_a_a27_combout & (U3_aacc(6) & !U3_aAdd0_a11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a12_DATAA_driver,
	datab => U3_aAdd0_a12_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a12_CIN_driver,
	combout => U3_aAdd0_a12_combout,
	cout => U3_aAdd0_a13);

U3_aAdd0_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aAdd0_a14_DATAA_driver);

U3_aAdd0_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aAdd0_a14_DATAB_driver);

U3_aAdd0_a14_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a13,
	dataout => U3_aAdd0_a14_CIN_driver);

-- Location: LCCOMB_X19_Y16_N28
U3_aAdd0_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a14_combout = (U6_adata_rom_a7_a_a11_combout & ((U3_aacc(7) & (U3_aAdd0_a13 & VCC)) # (!U3_aacc(7) & (!U3_aAdd0_a13)))) # (!U6_adata_rom_a7_a_a11_combout & ((U3_aacc(7) & (!U3_aAdd0_a13)) # (!U3_aacc(7) & ((U3_aAdd0_a13) # (GND)))))
-- U3_aAdd0_a15 = CARRY((U6_adata_rom_a7_a_a11_combout & (!U3_aacc(7) & !U3_aAdd0_a13)) # (!U6_adata_rom_a7_a_a11_combout & ((!U3_aAdd0_a13) # (!U3_aacc(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a14_DATAA_driver,
	datab => U3_aAdd0_a14_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_a14_CIN_driver,
	combout => U3_aAdd0_a14_combout,
	cout => U3_aAdd0_a15);

U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a4_a_a9,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_CIN_driver);

-- Location: LCCOMB_X20_Y17_N12
U3_aAdd0_aauto_generated_aresult_int_a5_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout = (U3_aacc(4) & ((U3_aAdd0_aauto_generated_a_a7_combout & (U3_aAdd0_aauto_generated_aresult_int_a4_a_a9 & VCC)) # (!U3_aAdd0_aauto_generated_a_a7_combout & 
-- (!U3_aAdd0_aauto_generated_aresult_int_a4_a_a9)))) # (!U3_aacc(4) & ((U3_aAdd0_aauto_generated_a_a7_combout & (!U3_aAdd0_aauto_generated_aresult_int_a4_a_a9)) # (!U3_aAdd0_aauto_generated_a_a7_combout & ((U3_aAdd0_aauto_generated_aresult_int_a4_a_a9) # 
-- (GND)))))
-- U3_aAdd0_aauto_generated_aresult_int_a5_a_a11 = CARRY((U3_aacc(4) & (!U3_aAdd0_aauto_generated_a_a7_combout & !U3_aAdd0_aauto_generated_aresult_int_a4_a_a9)) # (!U3_aacc(4) & ((!U3_aAdd0_aauto_generated_aresult_int_a4_a_a9) # 
-- (!U3_aAdd0_aauto_generated_a_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a5_a_a11);

U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a6_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a5_a_a11,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_CIN_driver);

-- Location: LCCOMB_X20_Y17_N14
U3_aAdd0_aauto_generated_aresult_int_a6_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout = ((U3_aacc(5) $ (U3_aAdd0_aauto_generated_a_a6_combout $ (!U3_aAdd0_aauto_generated_aresult_int_a5_a_a11)))) # (GND)
-- U3_aAdd0_aauto_generated_aresult_int_a6_a_a13 = CARRY((U3_aacc(5) & ((U3_aAdd0_aauto_generated_a_a6_combout) # (!U3_aAdd0_aauto_generated_aresult_int_a5_a_a11))) # (!U3_aacc(5) & (U3_aAdd0_aauto_generated_a_a6_combout & 
-- !U3_aAdd0_aauto_generated_aresult_int_a5_a_a11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a6_a_a13);

U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a5_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a6_a_a13,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_CIN_driver);

-- Location: LCCOMB_X20_Y17_N16
U3_aAdd0_aauto_generated_aresult_int_a7_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout = (U3_aAdd0_aauto_generated_a_a5_combout & ((U3_aacc(6) & (U3_aAdd0_aauto_generated_aresult_int_a6_a_a13 & VCC)) # (!U3_aacc(6) & (!U3_aAdd0_aauto_generated_aresult_int_a6_a_a13)))) # 
-- (!U3_aAdd0_aauto_generated_a_a5_combout & ((U3_aacc(6) & (!U3_aAdd0_aauto_generated_aresult_int_a6_a_a13)) # (!U3_aacc(6) & ((U3_aAdd0_aauto_generated_aresult_int_a6_a_a13) # (GND)))))
-- U3_aAdd0_aauto_generated_aresult_int_a7_a_a15 = CARRY((U3_aAdd0_aauto_generated_a_a5_combout & (!U3_aacc(6) & !U3_aAdd0_aauto_generated_aresult_int_a6_a_a13)) # (!U3_aAdd0_aauto_generated_a_a5_combout & ((!U3_aAdd0_aauto_generated_aresult_int_a6_a_a13) # 
-- (!U3_aacc(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a7_a_a15);

U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_a_a4_combout,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAA_driver);

U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAB_driver);

U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a7_a_a15,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_CIN_driver);

-- Location: LCCOMB_X20_Y17_N18
U3_aAdd0_aauto_generated_aresult_int_a8_a_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout = ((U3_aAdd0_aauto_generated_a_a4_combout $ (U3_aacc(7) $ (!U3_aAdd0_aauto_generated_aresult_int_a7_a_a15)))) # (GND)
-- U3_aAdd0_aauto_generated_aresult_int_a8_a_a17 = CARRY((U3_aAdd0_aauto_generated_a_a4_combout & ((U3_aacc(7)) # (!U3_aAdd0_aauto_generated_aresult_int_a7_a_a15))) # (!U3_aAdd0_aauto_generated_a_a4_combout & (U3_aacc(7) & 
-- !U3_aAdd0_aauto_generated_aresult_int_a7_a_a15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout,
	cout => U3_aAdd0_aauto_generated_aresult_int_a8_a_a17);

U3_aAdd1_a18_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout,
	dataout => U3_aAdd1_a18_DATAA_driver);

U3_aAdd1_a18_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a18_DATAB_driver);

U3_aAdd1_a18_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a11,
	dataout => U3_aAdd1_a18_CIN_driver);

-- Location: LCCOMB_X21_Y17_N12
U3_aAdd1_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a18_combout = (U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout & ((U3_aAdd1_a0_combout & (U3_aAdd1_a11 & VCC)) # (!U3_aAdd1_a0_combout & (!U3_aAdd1_a11)))) # (!U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout & ((U3_aAdd1_a0_combout & 
-- (!U3_aAdd1_a11)) # (!U3_aAdd1_a0_combout & ((U3_aAdd1_a11) # (GND)))))
-- U3_aAdd1_a19 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout & (!U3_aAdd1_a0_combout & !U3_aAdd1_a11)) # (!U3_aAdd0_aauto_generated_aresult_int_a5_a_a10_combout & ((!U3_aAdd1_a11) # (!U3_aAdd1_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a18_DATAA_driver,
	datab => U3_aAdd1_a18_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a18_CIN_driver,
	combout => U3_aAdd1_a18_combout,
	cout => U3_aAdd1_a19);

U3_aAdd1_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout,
	dataout => U3_aAdd1_a20_DATAA_driver);

U3_aAdd1_a20_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a20_DATAB_driver);

U3_aAdd1_a20_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a19,
	dataout => U3_aAdd1_a20_CIN_driver);

-- Location: LCCOMB_X21_Y17_N14
U3_aAdd1_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a20_combout = ((U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout $ (U3_aAdd1_a0_combout $ (!U3_aAdd1_a19)))) # (GND)
-- U3_aAdd1_a21 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout & ((U3_aAdd1_a0_combout) # (!U3_aAdd1_a19))) # (!U3_aAdd0_aauto_generated_aresult_int_a6_a_a12_combout & (U3_aAdd1_a0_combout & !U3_aAdd1_a19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a20_DATAA_driver,
	datab => U3_aAdd1_a20_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a20_CIN_driver,
	combout => U3_aAdd1_a20_combout,
	cout => U3_aAdd1_a21);

U3_aAdd1_a22_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout,
	dataout => U3_aAdd1_a22_DATAA_driver);

U3_aAdd1_a22_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a22_DATAB_driver);

U3_aAdd1_a22_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a21,
	dataout => U3_aAdd1_a22_CIN_driver);

-- Location: LCCOMB_X21_Y17_N16
U3_aAdd1_a22 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a22_combout = (U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout & ((U3_aAdd1_a0_combout & (U3_aAdd1_a21 & VCC)) # (!U3_aAdd1_a0_combout & (!U3_aAdd1_a21)))) # (!U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout & ((U3_aAdd1_a0_combout & 
-- (!U3_aAdd1_a21)) # (!U3_aAdd1_a0_combout & ((U3_aAdd1_a21) # (GND)))))
-- U3_aAdd1_a23 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout & (!U3_aAdd1_a0_combout & !U3_aAdd1_a21)) # (!U3_aAdd0_aauto_generated_aresult_int_a7_a_a14_combout & ((!U3_aAdd1_a21) # (!U3_aAdd1_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a22_DATAA_driver,
	datab => U3_aAdd1_a22_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a22_CIN_driver,
	combout => U3_aAdd1_a22_combout,
	cout => U3_aAdd1_a23);

U3_aAdd1_a24_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout,
	dataout => U3_aAdd1_a24_DATAA_driver);

U3_aAdd1_a24_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a24_DATAB_driver);

U3_aAdd1_a24_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a23,
	dataout => U3_aAdd1_a24_CIN_driver);

-- Location: LCCOMB_X21_Y17_N18
U3_aAdd1_a24 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a24_combout = ((U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout $ (U3_aAdd1_a0_combout $ (!U3_aAdd1_a23)))) # (GND)
-- U3_aAdd1_a25 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout & ((U3_aAdd1_a0_combout) # (!U3_aAdd1_a23))) # (!U3_aAdd0_aauto_generated_aresult_int_a8_a_a16_combout & (U3_aAdd1_a0_combout & !U3_aAdd1_a23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a24_DATAA_driver,
	datab => U3_aAdd1_a24_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a24_CIN_driver,
	combout => U3_aAdd1_a24_combout,
	cout => U3_aAdd1_a25);

U7_aAdd0_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(4),
	dataout => U7_aAdd0_a9_DATAB_driver);

U7_aAdd0_a9_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a7,
	dataout => U7_aAdd0_a9_CIN_driver);

-- Location: LCCOMB_X21_Y18_N10
U7_aAdd0_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a9_combout = (U7_apc_val(4) & (U7_aAdd0_a7 $ (GND))) # (!U7_apc_val(4) & (!U7_aAdd0_a7 & VCC))
-- U7_aAdd0_a10 = CARRY((U7_apc_val(4) & !U7_aAdd0_a7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a9_DATAB_driver,
	datad => VCC,
	cin => U7_aAdd0_a9_CIN_driver,
	combout => U7_aAdd0_a9_combout,
	cout => U7_aAdd0_a10);

U7_aAdd0_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(5),
	dataout => U7_aAdd0_a11_DATAB_driver);

U7_aAdd0_a11_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a10,
	dataout => U7_aAdd0_a11_CIN_driver);

-- Location: LCCOMB_X21_Y18_N12
U7_aAdd0_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a11_combout = (U7_apc_val(5) & (!U7_aAdd0_a10)) # (!U7_apc_val(5) & ((U7_aAdd0_a10) # (GND)))
-- U7_aAdd0_a12 = CARRY((!U7_aAdd0_a10) # (!U7_apc_val(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a11_DATAB_driver,
	datad => VCC,
	cin => U7_aAdd0_a11_CIN_driver,
	combout => U7_aAdd0_a11_combout,
	cout => U7_aAdd0_a12);

U7_aAdd0_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(6),
	dataout => U7_aAdd0_a13_DATAB_driver);

U7_aAdd0_a13_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a12,
	dataout => U7_aAdd0_a13_CIN_driver);

-- Location: LCCOMB_X21_Y18_N14
U7_aAdd0_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a13_combout = (U7_apc_val(6) & (U7_aAdd0_a12 $ (GND))) # (!U7_apc_val(6) & (!U7_aAdd0_a12 & VCC))
-- U7_aAdd0_a14 = CARRY((U7_apc_val(6) & !U7_aAdd0_a12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U7_aAdd0_a13_DATAB_driver,
	datad => VCC,
	cin => U7_aAdd0_a13_CIN_driver,
	combout => U7_aAdd0_a13_combout,
	cout => U7_aAdd0_a14);

U7_aAdd0_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(7),
	dataout => U7_aAdd0_a15_DATAD_driver);

U7_aAdd0_a15_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a14,
	dataout => U7_aAdd0_a15_CIN_driver);

-- Location: LCCOMB_X21_Y18_N16
U7_aAdd0_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a15_combout = U7_aAdd0_a14 $ (U7_apc_val(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => U7_aAdd0_a15_DATAD_driver,
	cin => U7_aAdd0_a15_CIN_driver,
	combout => U7_aAdd0_a15_combout);

U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_DATAD_driver);

U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a8_a_a17,
	dataout => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_CIN_driver);

-- Location: LCCOMB_X20_Y17_N20
U3_aAdd0_aauto_generated_aresult_int_a9_a_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_combout = U3_aAdd0_aauto_generated_aresult_int_a8_a_a17 $ (U4_aIR_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_DATAD_driver,
	cin => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_CIN_driver,
	combout => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_combout);

U3_aAdd1_a29_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_combout,
	dataout => U3_aAdd1_a29_DATAA_driver);

U3_aAdd1_a29_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a29_DATAD_driver);

U3_aAdd1_a29_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a25,
	dataout => U3_aAdd1_a29_CIN_driver);

-- Location: LCCOMB_X21_Y17_N20
U3_aAdd1_a29 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a29_combout = U3_aAdd0_aauto_generated_aresult_int_a9_a_a18_combout $ (U3_aAdd1_a25 $ (U3_aAdd1_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a29_DATAA_driver,
	datad => U3_aAdd1_a29_DATAD_driver,
	cin => U3_aAdd1_a29_CIN_driver,
	combout => U3_aAdd1_a29_combout);

U3_aAdd0_a16_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a15,
	dataout => U3_aAdd0_a16_CIN_driver);

-- Location: LCCOMB_X19_Y16_N30
U3_aAdd0_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a16_combout = !U3_aAdd0_a15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => U3_aAdd0_a16_CIN_driver,
	combout => U3_aAdd0_a16_combout);

U3_aAdd2_a16_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a15,
	dataout => U3_aAdd2_a16_CIN_driver);

-- Location: LCCOMB_X21_Y16_N30
U3_aAdd2_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd2_a16_combout = U3_aAdd2_a15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => U3_aAdd2_a16_CIN_driver,
	combout => U3_aAdd2_a16_combout);

U2_acnt_a2_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(2),
	dataout => U2_acnt_a2_a_a13_DATAA_driver);

U2_acnt_a2_a_a13_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a1_a_a12,
	dataout => U2_acnt_a2_a_a13_CIN_driver);

-- Location: LCCOMB_X16_Y17_N16
U2_acnt_a2_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a2_a_a13_combout = (U2_acnt(2) & (U2_acnt_a1_a_a12 $ (GND))) # (!U2_acnt(2) & (!U2_acnt_a1_a_a12 & VCC))
-- U2_acnt_a2_a_a14 = CARRY((U2_acnt(2) & !U2_acnt_a1_a_a12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U2_acnt_a2_a_a13_DATAA_driver,
	datad => VCC,
	cin => U2_acnt_a2_a_a13_CIN_driver,
	combout => U2_acnt_a2_a_a13_combout,
	cout => U2_acnt_a2_a_a14);

U2_acnt_a4_a_a17_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(4),
	dataout => U2_acnt_a4_a_a17_DATAA_driver);

U2_acnt_a4_a_a17_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a3_a_a16,
	dataout => U2_acnt_a4_a_a17_CIN_driver);

-- Location: LCCOMB_X16_Y17_N20
U2_acnt_a4_a_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a4_a_a17_combout = (U2_acnt(4) & (U2_acnt_a3_a_a16 $ (GND))) # (!U2_acnt(4) & (!U2_acnt_a3_a_a16 & VCC))
-- U2_acnt_a4_a_a18 = CARRY((U2_acnt(4) & !U2_acnt_a3_a_a16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U2_acnt_a4_a_a17_DATAA_driver,
	datad => VCC,
	cin => U2_acnt_a4_a_a17_CIN_driver,
	combout => U2_acnt_a4_a_a17_combout,
	cout => U2_acnt_a4_a_a18);

U8_acounter_a18_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a18_a_CLK_driver);

U8_acounter_a18_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a18_a_a57_combout,
	dataout => U8_acounter_a18_a_DATAIN_driver);

U8_acounter_a18_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a18_a_SDATA_driver);

U8_acounter_a18_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a18_a_ACLR_driver);

U8_acounter_a18_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a18_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N17
U8_acounter_a18_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a18_a_CLK_driver,
	datain => U8_acounter_a18_a_DATAIN_driver,
	sdata => U8_acounter_a18_a_SDATA_driver,
	aclr => U8_acounter_a18_a_ACLR_driver,
	sload => U8_acounter_a18_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(18));

U8_acounter_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a2_a_CLK_driver);

U8_acounter_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a2_a_a24_combout,
	dataout => U8_acounter_a2_a_DATAIN_driver);

U8_acounter_a2_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_acounter_a2_a_SDATA_driver);

U8_acounter_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a2_a_ACLR_driver);

U8_acounter_a2_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a2_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N17
U8_acounter_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a2_a_CLK_driver,
	datain => U8_acounter_a2_a_DATAIN_driver,
	sdata => U8_acounter_a2_a_SDATA_driver,
	aclr => U8_acounter_a2_a_ACLR_driver,
	sload => U8_acounter_a2_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(2));

U8_acounter_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a6_a_CLK_driver);

U8_acounter_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a6_a_a32_combout,
	dataout => U8_acounter_a6_a_DATAIN_driver);

U8_acounter_a6_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a6_a_SDATA_driver);

U8_acounter_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a6_a_ACLR_driver);

U8_acounter_a6_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a6_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N25
U8_acounter_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a6_a_CLK_driver,
	datain => U8_acounter_a6_a_DATAIN_driver,
	sdata => U8_acounter_a6_a_SDATA_driver,
	aclr => U8_acounter_a6_a_ACLR_driver,
	sload => U8_acounter_a6_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(6));

U8_acounter_a15_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a15_a_CLK_driver);

U8_acounter_a15_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a15_a_a50_combout,
	dataout => U8_acounter_a15_a_DATAIN_driver);

U8_acounter_a15_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a15_a_SDATA_driver);

U8_acounter_a15_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a15_a_ACLR_driver);

U8_acounter_a15_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a15_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N11
U8_acounter_a15_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a15_a_CLK_driver,
	datain => U8_acounter_a15_a_DATAIN_driver,
	sdata => U8_acounter_a15_a_SDATA_driver,
	aclr => U8_acounter_a15_a_ACLR_driver,
	sload => U8_acounter_a15_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(15));

U8_acounter_a2_a_a24_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(2),
	dataout => U8_acounter_a2_a_a24_DATAA_driver);

U8_acounter_a2_a_a24_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a1_a_a23,
	dataout => U8_acounter_a2_a_a24_CIN_driver);

-- Location: LCCOMB_X25_Y18_N16
U8_acounter_a2_a_a24 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a2_a_a24_combout = (U8_acounter(2) & (U8_acounter_a1_a_a23 $ (GND))) # (!U8_acounter(2) & (!U8_acounter_a1_a_a23 & VCC))
-- U8_acounter_a2_a_a25 = CARRY((U8_acounter(2) & !U8_acounter_a1_a_a23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a2_a_a24_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a2_a_a24_CIN_driver,
	combout => U8_acounter_a2_a_a24_combout,
	cout => U8_acounter_a2_a_a25);

U8_acounter_a6_a_a32_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(6),
	dataout => U8_acounter_a6_a_a32_DATAA_driver);

U8_acounter_a6_a_a32_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a5_a_a31,
	dataout => U8_acounter_a6_a_a32_CIN_driver);

-- Location: LCCOMB_X25_Y18_N24
U8_acounter_a6_a_a32 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a6_a_a32_combout = (U8_acounter(6) & (U8_acounter_a5_a_a31 $ (GND))) # (!U8_acounter(6) & (!U8_acounter_a5_a_a31 & VCC))
-- U8_acounter_a6_a_a33 = CARRY((U8_acounter(6) & !U8_acounter_a5_a_a31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a6_a_a32_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a6_a_a32_CIN_driver,
	combout => U8_acounter_a6_a_a32_combout,
	cout => U8_acounter_a6_a_a33);

U8_acounter_a15_a_a50_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(15),
	dataout => U8_acounter_a15_a_a50_DATAA_driver);

U8_acounter_a15_a_a50_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a14_a_a49,
	dataout => U8_acounter_a15_a_a50_CIN_driver);

-- Location: LCCOMB_X25_Y17_N10
U8_acounter_a15_a_a50 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a15_a_a50_combout = (U8_acounter(15) & (!U8_acounter_a14_a_a49)) # (!U8_acounter(15) & ((U8_acounter_a14_a_a49) # (GND)))
-- U8_acounter_a15_a_a51 = CARRY((!U8_acounter_a14_a_a49) # (!U8_acounter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a15_a_a50_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a15_a_a50_CIN_driver,
	combout => U8_acounter_a15_a_a50_combout,
	cout => U8_acounter_a15_a_a51);

U8_acounter_a18_a_a57_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(18),
	dataout => U8_acounter_a18_a_a57_DATAA_driver);

U8_acounter_a18_a_a57_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a17_a_a56,
	dataout => U8_acounter_a18_a_a57_CIN_driver);

-- Location: LCCOMB_X25_Y17_N16
U8_acounter_a18_a_a57 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a18_a_a57_combout = (U8_acounter(18) & (U8_acounter_a17_a_a56 $ (GND))) # (!U8_acounter(18) & (!U8_acounter_a17_a_a56 & VCC))
-- U8_acounter_a18_a_a58 = CARRY((U8_acounter(18) & !U8_acounter_a17_a_a56))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a18_a_a57_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a18_a_a57_CIN_driver,
	combout => U8_acounter_a18_a_a57_combout,
	cout => U8_acounter_a18_a_a58);

U6_aMux8_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a2_combout,
	dataout => U6_aMux8_a3_DATAA_driver);

U6_aMux8_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a1_combout,
	dataout => U6_aMux8_a3_DATAB_driver);

U6_aMux8_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux8_a3_DATAC_driver);

U6_aMux8_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a0_combout,
	dataout => U6_aMux8_a3_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N14
U6_aMux8_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux8_a3_combout = (U6_aMux8_a2_combout & (U6_aMux8_a1_combout & (U5_aMAR_reg(3) & U6_aMux8_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux8_a3_DATAA_driver,
	datab => U6_aMux8_a3_DATAB_driver,
	datac => U6_aMux8_a3_DATAC_driver,
	datad => U6_aMux8_a3_DATAD_driver,
	combout => U6_aMux8_a3_combout);

U6_aMux10_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux10_a0_DATAA_driver);

U6_aMux10_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_aMux10_a0_DATAB_driver);

U6_aMux10_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux10_a0_DATAC_driver);

U6_aMux10_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux10_a0_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N16
U6_aMux10_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux10_a0_combout = (!U5_aMAR_reg(3) & (!U5_aMAR_reg(7) & (!U5_aMAR_reg(6) & !U5_aMAR_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux10_a0_DATAA_driver,
	datab => U6_aMux10_a0_DATAB_driver,
	datac => U6_aMux10_a0_DATAC_driver,
	datad => U6_aMux10_a0_DATAD_driver,
	combout => U6_aMux10_a0_combout);

U6_aMux10_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux10_a0_combout,
	dataout => U6_aMux10_a1_DATAA_driver);

U6_aMux10_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux10_a1_DATAB_driver);

U6_aMux10_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux10_a1_DATAC_driver);

U6_aMux10_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux10_a1_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N2
U6_aMux10_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux10_a1_combout = (U6_aMux10_a0_combout & (!U5_aMAR_reg(4) & (U5_aMAR_reg(1) & !U5_aMAR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux10_a1_DATAA_driver,
	datab => U6_aMux10_a1_DATAB_driver,
	datac => U6_aMux10_a1_DATAC_driver,
	datad => U6_aMux10_a1_DATAD_driver,
	combout => U6_aMux10_a1_combout);

U1_adata_a1_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U1_adata_a1_a_a9_DATAA_driver);

U1_adata_a1_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a1_a_a9_DATAB_driver);

U1_adata_a1_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U1_adata_a1_a_a9_DATAC_driver);

U1_adata_a1_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a1_a_a9_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N10
U1_adata_a1_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a1_a_a9_combout = (U3_aacc(1) & (((U5_aMAR_reg(1))) # (!U2_amar_data_acombout))) # (!U3_aacc(1) & (!U2_aacc_bus_acombout & ((U5_aMAR_reg(1)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a1_a_a9_DATAA_driver,
	datab => U1_adata_a1_a_a9_DATAB_driver,
	datac => U1_adata_a1_a_a9_DATAC_driver,
	datad => U1_adata_a1_a_a9_DATAD_driver,
	combout => U1_adata_a1_a_a9_combout);

U1_adata_a1_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a1_a_a10_DATAA_driver);

U1_adata_a1_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(1),
	dataout => U1_adata_a1_a_a10_DATAB_driver);

U1_adata_a1_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(1),
	dataout => U1_adata_a1_a_a10_DATAC_driver);

U1_adata_a1_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a1_a_a10_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N28
U1_adata_a1_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a1_a_a10_combout = (U2_apc_data_a2_combout & (((U1_aaltsyncram_component_aauto_generated_aq_a(1)) # (U2_aWideOr2_a0_combout)))) # (!U2_apc_data_a2_combout & (U7_apc_val(1) & ((U1_aaltsyncram_component_aauto_generated_aq_a(1)) # 
-- (U2_aWideOr2_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a1_a_a10_DATAA_driver,
	datab => U1_adata_a1_a_a10_DATAB_driver,
	datac => U1_adata_a1_a_a10_DATAC_driver,
	datad => U1_adata_a1_a_a10_DATAD_driver,
	combout => U1_adata_a1_a_a10_combout);

U1_adata_a1_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a9_combout,
	dataout => U1_adata_a1_a_a11_DATAA_driver);

U1_adata_a1_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a10_combout,
	dataout => U1_adata_a1_a_a11_DATAB_driver);

U1_adata_a1_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(1),
	dataout => U1_adata_a1_a_a11_DATAC_driver);

U1_adata_a1_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a1_a_a11_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N6
U1_adata_a1_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a1_a_a11_combout = (U1_adata_a1_a_a9_combout & (U1_adata_a1_a_a10_combout & ((PORT_IN_acombout(1)) # (!U2_apresent_state_aI8_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a1_a_a11_DATAA_driver,
	datab => U1_adata_a1_a_a11_DATAB_driver,
	datac => U1_adata_a1_a_a11_DATAC_driver,
	datad => U1_adata_a1_a_a11_DATAD_driver,
	combout => U1_adata_a1_a_a11_combout);

U6_adata_rom_a2_a_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_adata_rom_a2_a_a2_DATAA_driver);

U6_adata_rom_a2_a_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a2_a_a2_DATAB_driver);

U6_adata_rom_a2_a_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_adata_rom_a2_a_a2_DATAC_driver);

U6_adata_rom_a2_a_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_adata_rom_a2_a_a2_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N28
U6_adata_rom_a2_a_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a2_a_a2_combout = (U5_aMAR_reg(3) & (!U5_aMAR_reg(4) & (U5_aMAR_reg(0) $ (U5_aMAR_reg(1))))) # (!U5_aMAR_reg(3) & (U5_aMAR_reg(0) & (U5_aMAR_reg(1) & U5_aMAR_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a2_a_a2_DATAA_driver,
	datab => U6_adata_rom_a2_a_a2_DATAB_driver,
	datac => U6_adata_rom_a2_a_a2_DATAC_driver,
	datad => U6_adata_rom_a2_a_a2_DATAD_driver,
	combout => U6_adata_rom_a2_a_a2_combout);

U6_adata_rom_a2_a_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a2_a_a3_DATAA_driver);

U6_adata_rom_a2_a_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a2_a_a2_combout,
	dataout => U6_adata_rom_a2_a_a3_DATAB_driver);

U6_adata_rom_a2_a_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a2_a_a3_DATAC_driver);

U6_adata_rom_a2_a_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a2_a_a3_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N6
U6_adata_rom_a2_a_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a2_a_a3_combout = (U6_adata_rom_a2_a_a2_combout & ((U5_aMAR_reg(5) & (!U5_aMAR_reg(6) & !U5_aMAR_reg(3))) # (!U5_aMAR_reg(5) & (U5_aMAR_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a2_a_a3_DATAA_driver,
	datab => U6_adata_rom_a2_a_a3_DATAB_driver,
	datac => U6_adata_rom_a2_a_a3_DATAC_driver,
	datad => U6_adata_rom_a2_a_a3_DATAD_driver,
	combout => U6_adata_rom_a2_a_a3_combout);

U6_aMux9_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux9_a0_DATAA_driver);

U6_aMux9_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux9_a0_DATAB_driver);

U6_aMux9_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux9_a0_DATAC_driver);

U6_aMux9_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux9_a0_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N0
U6_aMux9_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a0_combout = (U5_aMAR_reg(6)) # ((U5_aMAR_reg(0) & ((!U5_aMAR_reg(4)) # (!U5_aMAR_reg(3)))) # (!U5_aMAR_reg(0) & (U5_aMAR_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a0_DATAA_driver,
	datab => U6_aMux9_a0_DATAB_driver,
	datac => U6_aMux9_a0_DATAC_driver,
	datad => U6_aMux9_a0_DATAD_driver,
	combout => U6_aMux9_a0_combout);

U6_aMux9_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux9_a1_DATAA_driver);

U6_aMux9_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux9_a1_DATAB_driver);

U6_aMux9_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux9_a1_DATAC_driver);

U6_aMux9_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux9_a1_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N10
U6_aMux9_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a1_combout = (U5_aMAR_reg(0) & ((U5_aMAR_reg(3) & (U5_aMAR_reg(6) & U5_aMAR_reg(4))) # (!U5_aMAR_reg(3) & ((!U5_aMAR_reg(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a1_DATAA_driver,
	datab => U6_aMux9_a1_DATAB_driver,
	datac => U6_aMux9_a1_DATAC_driver,
	datad => U6_aMux9_a1_DATAD_driver,
	combout => U6_aMux9_a1_combout);

U6_aMux9_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux9_a2_DATAA_driver);

U6_aMux9_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux9_a2_DATAB_driver);

U6_aMux9_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux9_a2_DATAC_driver);

U6_aMux9_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux9_a2_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N18
U6_aMux9_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a2_combout = (U5_aMAR_reg(4) & ((U5_aMAR_reg(3) $ (!U5_aMAR_reg(6))))) # (!U5_aMAR_reg(4) & (!U5_aMAR_reg(0) & ((U5_aMAR_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a2_DATAA_driver,
	datab => U6_aMux9_a2_DATAB_driver,
	datac => U6_aMux9_a2_DATAC_driver,
	datad => U6_aMux9_a2_DATAD_driver,
	combout => U6_aMux9_a2_combout);

U6_aMux9_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a1_combout,
	dataout => U6_aMux9_a3_DATAA_driver);

U6_aMux9_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a2_combout,
	dataout => U6_aMux9_a3_DATAB_driver);

U6_aMux9_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux9_a3_DATAC_driver);

U6_aMux9_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux9_a3_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N12
U6_aMux9_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a3_combout = (U5_aMAR_reg(5) & (((U5_aMAR_reg(1))))) # (!U5_aMAR_reg(5) & ((U5_aMAR_reg(1) & (U6_aMux9_a1_combout)) # (!U5_aMAR_reg(1) & ((U6_aMux9_a2_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a3_DATAA_driver,
	datab => U6_aMux9_a3_DATAB_driver,
	datac => U6_aMux9_a3_DATAC_driver,
	datad => U6_aMux9_a3_DATAD_driver,
	combout => U6_aMux9_a3_combout);

U6_aMux9_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux9_a4_DATAA_driver);

U6_aMux9_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux9_a4_DATAB_driver);

U6_aMux9_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux9_a4_DATAC_driver);

U6_aMux9_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux9_a4_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N6
U6_aMux9_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a4_combout = (U5_aMAR_reg(0) & (!U5_aMAR_reg(3) & (!U5_aMAR_reg(6) & U5_aMAR_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a4_DATAA_driver,
	datab => U6_aMux9_a4_DATAB_driver,
	datac => U6_aMux9_a4_DATAC_driver,
	datad => U6_aMux9_a4_DATAD_driver,
	combout => U6_aMux9_a4_combout);

U6_aMux9_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a3_combout,
	dataout => U6_aMux9_a5_DATAA_driver);

U6_aMux9_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a0_combout,
	dataout => U6_aMux9_a5_DATAB_driver);

U6_aMux9_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux9_a5_DATAC_driver);

U6_aMux9_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a4_combout,
	dataout => U6_aMux9_a5_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N8
U6_aMux9_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux9_a5_combout = (U6_aMux9_a3_combout & (((U6_aMux9_a4_combout) # (!U5_aMAR_reg(5))))) # (!U6_aMux9_a3_combout & (!U6_aMux9_a0_combout & (U5_aMAR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux9_a5_DATAA_driver,
	datab => U6_aMux9_a5_DATAB_driver,
	datac => U6_aMux9_a5_DATAC_driver,
	datad => U6_aMux9_a5_DATAD_driver,
	combout => U6_aMux9_a5_combout);

U1_adata_a2_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U1_adata_a2_a_a13_DATAA_driver);

U1_adata_a2_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U1_adata_a2_a_a13_DATAB_driver);

U1_adata_a2_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a2_a_a13_DATAC_driver);

U1_adata_a2_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a2_a_a13_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N24
U1_adata_a2_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a2_a_a13_combout = (U3_aacc(2) & ((U5_aMAR_reg(2)) # ((!U2_amar_data_acombout)))) # (!U3_aacc(2) & (!U2_aacc_bus_acombout & ((U5_aMAR_reg(2)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a2_a_a13_DATAA_driver,
	datab => U1_adata_a2_a_a13_DATAB_driver,
	datac => U1_adata_a2_a_a13_DATAC_driver,
	datad => U1_adata_a2_a_a13_DATAD_driver,
	combout => U1_adata_a2_a_a13_combout);

U1_adata_a2_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(2),
	dataout => U1_adata_a2_a_a14_DATAA_driver);

U1_adata_a2_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a2_a_a14_DATAB_driver);

U1_adata_a2_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(2),
	dataout => U1_adata_a2_a_a14_DATAC_driver);

U1_adata_a2_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a2_a_a14_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N26
U1_adata_a2_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a2_a_a14_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(2) & (((U7_apc_val(2)) # (U2_apc_data_a2_combout)))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(2) & (U2_aWideOr2_a0_combout & ((U7_apc_val(2)) # (U2_apc_data_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a2_a_a14_DATAA_driver,
	datab => U1_adata_a2_a_a14_DATAB_driver,
	datac => U1_adata_a2_a_a14_DATAC_driver,
	datad => U1_adata_a2_a_a14_DATAD_driver,
	combout => U1_adata_a2_a_a14_combout);

U1_adata_a2_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a13_combout,
	dataout => U1_adata_a2_a_a15_DATAA_driver);

U1_adata_a2_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a14_combout,
	dataout => U1_adata_a2_a_a15_DATAB_driver);

U1_adata_a2_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(2),
	dataout => U1_adata_a2_a_a15_DATAC_driver);

U1_adata_a2_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a2_a_a15_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N12
U1_adata_a2_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a2_a_a15_combout = (U1_adata_a2_a_a13_combout & (U1_adata_a2_a_a14_combout & ((PORT_IN_acombout(2)) # (!U2_apresent_state_aI8_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a2_a_a15_DATAA_driver,
	datab => U1_adata_a2_a_a15_DATAB_driver,
	datac => U1_adata_a2_a_a15_DATAC_driver,
	datad => U1_adata_a2_a_a15_DATAD_driver,
	combout => U1_adata_a2_a_a15_combout);

U6_adata_rom_a0_a_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a0_a_a6_DATAB_driver);

U6_adata_rom_a0_a_a6_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a0_a_a6_DATAC_driver);

U6_adata_rom_a0_a_a6_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a0_a_a6_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N28
U6_adata_rom_a0_a_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a0_a_a6_combout = (!U5_aMAR_reg(7) & (!U5_aMAR_reg(3) & U5_aMAR_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_adata_rom_a0_a_a6_DATAB_driver,
	datac => U6_adata_rom_a0_a_a6_DATAC_driver,
	datad => U6_adata_rom_a0_a_a6_DATAD_driver,
	combout => U6_adata_rom_a0_a_a6_combout);

U6_aMux11_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux11_a0_DATAA_driver);

U6_aMux11_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux11_a0_DATAB_driver);

U6_aMux11_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux11_a0_DATAC_driver);

U6_aMux11_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux11_a0_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N26
U6_aMux11_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a0_combout = (U5_aMAR_reg(1)) # ((U5_aMAR_reg(6)) # ((U5_aMAR_reg(3) & !U5_aMAR_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a0_DATAA_driver,
	datab => U6_aMux11_a0_DATAB_driver,
	datac => U6_aMux11_a0_DATAC_driver,
	datad => U6_aMux11_a0_DATAD_driver,
	combout => U6_aMux11_a0_combout);

U6_aMux11_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux11_a1_DATAA_driver);

U6_aMux11_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux11_a1_DATAB_driver);

U6_aMux11_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux11_a1_DATAC_driver);

U6_aMux11_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux11_a1_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N14
U6_aMux11_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a1_combout = (U5_aMAR_reg(1) & (U5_aMAR_reg(6) & ((U5_aMAR_reg(3))))) # (!U5_aMAR_reg(1) & (U5_aMAR_reg(4) & (U5_aMAR_reg(6) $ (!U5_aMAR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a1_DATAA_driver,
	datab => U6_aMux11_a1_DATAB_driver,
	datac => U6_aMux11_a1_DATAC_driver,
	datad => U6_aMux11_a1_DATAD_driver,
	combout => U6_aMux11_a1_combout);

U6_aMux11_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux11_a2_DATAA_driver);

U6_aMux11_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux11_a2_DATAB_driver);

U6_aMux11_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux11_a2_DATAC_driver);

U6_aMux11_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux11_a2_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N24
U6_aMux11_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a2_combout = (U5_aMAR_reg(6) & (((U5_aMAR_reg(1) & U5_aMAR_reg(3))) # (!U5_aMAR_reg(4)))) # (!U5_aMAR_reg(6) & (!U5_aMAR_reg(3) & (U5_aMAR_reg(1) $ (U5_aMAR_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a2_DATAA_driver,
	datab => U6_aMux11_a2_DATAB_driver,
	datac => U6_aMux11_a2_DATAC_driver,
	datad => U6_aMux11_a2_DATAD_driver,
	combout => U6_aMux11_a2_combout);

U6_aMux11_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a2_combout,
	dataout => U6_aMux11_a3_DATAA_driver);

U6_aMux11_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a1_combout,
	dataout => U6_aMux11_a3_DATAB_driver);

U6_aMux11_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux11_a3_DATAC_driver);

U6_aMux11_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux11_a3_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N20
U6_aMux11_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a3_combout = (U5_aMAR_reg(5) & (((U5_aMAR_reg(0))))) # (!U5_aMAR_reg(5) & ((U5_aMAR_reg(0) & ((U6_aMux11_a1_combout))) # (!U5_aMAR_reg(0) & (U6_aMux11_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a3_DATAA_driver,
	datab => U6_aMux11_a3_DATAB_driver,
	datac => U6_aMux11_a3_DATAC_driver,
	datad => U6_aMux11_a3_DATAD_driver,
	combout => U6_aMux11_a3_combout);

U6_aMux11_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux11_a4_DATAA_driver);

U6_aMux11_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux11_a4_DATAB_driver);

U6_aMux11_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux11_a4_DATAC_driver);

U6_aMux11_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux11_a4_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N30
U6_aMux11_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a4_combout = (!U5_aMAR_reg(6) & (U5_aMAR_reg(4) & (U5_aMAR_reg(3) $ (U5_aMAR_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a4_DATAA_driver,
	datab => U6_aMux11_a4_DATAB_driver,
	datac => U6_aMux11_a4_DATAC_driver,
	datad => U6_aMux11_a4_DATAD_driver,
	combout => U6_aMux11_a4_combout);

U6_aMux11_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a3_combout,
	dataout => U6_aMux11_a5_DATAA_driver);

U6_aMux11_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a4_combout,
	dataout => U6_aMux11_a5_DATAB_driver);

U6_aMux11_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux11_a5_DATAC_driver);

U6_aMux11_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a0_combout,
	dataout => U6_aMux11_a5_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N16
U6_aMux11_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux11_a5_combout = (U6_aMux11_a3_combout & ((U6_aMux11_a4_combout) # ((!U5_aMAR_reg(5))))) # (!U6_aMux11_a3_combout & (((U5_aMAR_reg(5) & !U6_aMux11_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux11_a5_DATAA_driver,
	datab => U6_aMux11_a5_DATAB_driver,
	datac => U6_aMux11_a5_DATAC_driver,
	datad => U6_aMux11_a5_DATAD_driver,
	combout => U6_aMux11_a5_combout);

U6_adata_rom_a0_a_a7_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a0_a_a28_combout,
	dataout => U6_adata_rom_a0_a_a7_DATAA_driver);

U6_adata_rom_a0_a_a7_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux11_a5_combout,
	dataout => U6_adata_rom_a0_a_a7_DATAB_driver);

U6_adata_rom_a0_a_a7_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a0_a_a7_DATAC_driver);

U6_adata_rom_a0_a_a7_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a1_combout,
	dataout => U6_adata_rom_a0_a_a7_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N30
U6_adata_rom_a0_a_a7 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a0_a_a7_combout = (U6_adata_rom_a0_a_a28_combout) # (((U6_aMux11_a5_combout & U6_aMux8_a1_combout)) # (!U2_apresent_state_aR1_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a0_a_a7_DATAA_driver,
	datab => U6_adata_rom_a0_a_a7_DATAB_driver,
	datac => U6_adata_rom_a0_a_a7_DATAC_driver,
	datad => U6_adata_rom_a0_a_a7_DATAD_driver,
	combout => U6_adata_rom_a0_a_a7_combout);

U1_adata_a0_a_a18_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(0),
	dataout => U1_adata_a0_a_a18_DATAA_driver);

U1_adata_a0_a_a18_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(0),
	dataout => U1_adata_a0_a_a18_DATAB_driver);

U1_adata_a0_a_a18_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a0_a_a18_DATAC_driver);

U1_adata_a0_a_a18_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a0_a_a18_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N24
U1_adata_a0_a_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a0_a_a18_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(0) & ((U7_apc_val(0)) # ((U2_apc_data_a2_combout)))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(0) & (U2_aWideOr2_a0_combout & ((U7_apc_val(0)) # (U2_apc_data_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a0_a_a18_DATAA_driver,
	datab => U1_adata_a0_a_a18_DATAB_driver,
	datac => U1_adata_a0_a_a18_DATAC_driver,
	datad => U1_adata_a0_a_a18_DATAD_driver,
	combout => U1_adata_a0_a_a18_combout);

U7_apc_val_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a7_a_CLK_driver);

U7_apc_val_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a17_combout,
	dataout => U7_apc_val_a7_a_DATAIN_driver);

U7_apc_val_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a7_a_ACLR_driver);

U7_apc_val_a7_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a7_a_ENA_driver);

-- Location: LCFF_X22_Y18_N25
U7_apc_val_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a7_a_CLK_driver,
	datain => U7_apc_val_a7_a_DATAIN_driver,
	aclr => U7_apc_val_a7_a_ACLR_driver,
	ena => U7_apc_val_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(7));

U6_adata_rom_a7_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(7),
	dataout => U6_adata_rom_a7_a_a9_DATAA_driver);

U6_adata_rom_a7_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(7),
	dataout => U6_adata_rom_a7_a_a9_DATAB_driver);

U6_adata_rom_a7_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U6_adata_rom_a7_a_a9_DATAC_driver);

U6_adata_rom_a7_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U6_adata_rom_a7_a_a9_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N26
U6_adata_rom_a7_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a7_a_a9_combout = (U7_apc_val(7) & ((U1_aaltsyncram_component_aauto_generated_aq_a(7)) # ((U2_aWideOr2_a0_combout)))) # (!U7_apc_val(7) & (U2_apc_data_a2_combout & ((U1_aaltsyncram_component_aauto_generated_aq_a(7)) # 
-- (U2_aWideOr2_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a7_a_a9_DATAA_driver,
	datab => U6_adata_rom_a7_a_a9_DATAB_driver,
	datac => U6_adata_rom_a7_a_a9_DATAC_driver,
	datad => U6_adata_rom_a7_a_a9_DATAD_driver,
	combout => U6_adata_rom_a7_a_a9_combout);

U3_aacc_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a5_a_CLK_driver);

U3_aacc_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a5_a_a48_combout,
	dataout => U3_aacc_a5_a_DATAIN_driver);

U3_aacc_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a5_a_ACLR_driver);

U3_aacc_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a5_a_ENA_driver);

-- Location: LCFF_X22_Y16_N11
U3_aacc_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a5_a_CLK_driver,
	datain => U3_aacc_a5_a_DATAIN_driver,
	aclr => U3_aacc_a5_a_ACLR_driver,
	ena => U3_aacc_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(5));

U6_adata_rom_a5_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a5_a_a12_DATAA_driver);

U6_adata_rom_a5_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a5_a_a12_DATAC_driver);

-- Location: LCCOMB_X20_Y18_N26
U6_adata_rom_a5_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a12_combout = (!U5_aMAR_reg(6) & !U5_aMAR_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a5_a_a12_DATAA_driver,
	datac => U6_adata_rom_a5_a_a12_DATAC_driver,
	combout => U6_adata_rom_a5_a_a12_combout);

U6_adata_rom_a5_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a5_a_a13_DATAB_driver);

U6_adata_rom_a5_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a5_a_a13_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N20
U6_adata_rom_a5_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a13_combout = (!U5_aMAR_reg(3) & !U5_aMAR_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_adata_rom_a5_a_a13_DATAB_driver,
	datad => U6_adata_rom_a5_a_a13_DATAD_driver,
	combout => U6_adata_rom_a5_a_a13_combout);

U6_aMux6_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux6_a2_DATAA_driver);

U6_aMux6_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux6_a2_DATAB_driver);

U6_aMux6_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux6_a2_DATAC_driver);

U6_aMux6_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux6_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N14
U6_aMux6_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux6_a2_combout = (U5_aMAR_reg(4) & ((U5_aMAR_reg(0)) # ((!U5_aMAR_reg(5)) # (!U5_aMAR_reg(1))))) # (!U5_aMAR_reg(4) & (U5_aMAR_reg(5) & ((U5_aMAR_reg(1)) # (!U5_aMAR_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux6_a2_DATAA_driver,
	datab => U6_aMux6_a2_DATAB_driver,
	datac => U6_aMux6_a2_DATAC_driver,
	datad => U6_aMux6_a2_DATAD_driver,
	combout => U6_aMux6_a2_combout);

U6_adata_rom_a5_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a2_combout,
	dataout => U6_adata_rom_a5_a_a14_DATAA_driver);

U6_adata_rom_a5_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a12_combout,
	dataout => U6_adata_rom_a5_a_a14_DATAB_driver);

U6_adata_rom_a5_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a13_combout,
	dataout => U6_adata_rom_a5_a_a14_DATAC_driver);

U6_adata_rom_a5_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a1_combout,
	dataout => U6_adata_rom_a5_a_a14_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N12
U6_adata_rom_a5_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a14_combout = (U6_adata_rom_a5_a_a12_combout & ((U6_aMux6_a1_combout) # ((!U6_aMux6_a2_combout & U6_adata_rom_a5_a_a13_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a5_a_a14_DATAA_driver,
	datab => U6_adata_rom_a5_a_a14_DATAB_driver,
	datac => U6_adata_rom_a5_a_a14_DATAC_driver,
	datad => U6_adata_rom_a5_a_a14_DATAD_driver,
	combout => U6_adata_rom_a5_a_a14_combout);

U13_aDataOUT_a6_a_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U13_aDataOUT_a6_a_a0_DATAC_driver);

U13_aDataOUT_a6_a_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(6),
	dataout => U13_aDataOUT_a6_a_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N6
U13_aDataOUT_a6_a_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U13_aDataOUT_a6_a_a0_combout = (PORT_IN_acombout(6)) # (!U2_apresent_state_aI8_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U13_aDataOUT_a6_a_a0_DATAC_driver,
	datad => U13_aDataOUT_a6_a_a0_DATAD_driver,
	combout => U13_aDataOUT_a6_a_a0_combout);

U6_aMux4_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux4_a0_DATAA_driver);

U6_aMux4_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux4_a0_DATAB_driver);

U6_aMux4_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux4_a0_DATAC_driver);

U6_aMux4_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux4_a0_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N28
U6_aMux4_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a0_combout = (!U5_aMAR_reg(3) & (U5_aMAR_reg(1) & (U5_aMAR_reg(0) & U5_aMAR_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux4_a0_DATAA_driver,
	datab => U6_aMux4_a0_DATAB_driver,
	datac => U6_aMux4_a0_DATAC_driver,
	datad => U6_aMux4_a0_DATAD_driver,
	combout => U6_aMux4_a0_combout);

U3_adata_bus_a6_a_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_adata_bus_a6_a_a0_DATAB_driver);

U3_adata_bus_a6_a_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U3_adata_bus_a6_a_a0_DATAC_driver);

U3_adata_bus_a6_a_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U3_adata_bus_a6_a_a0_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N6
U3_adata_bus_a6_a_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_adata_bus_a6_a_a0_combout = (U3_aacc(6)) # ((!U2_apresent_state_aI5_aregout & !U2_apresent_state_aI4_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_adata_bus_a6_a_a0_DATAB_driver,
	datac => U3_adata_bus_a6_a_a0_DATAC_driver,
	datad => U3_adata_bus_a6_a_a0_DATAD_driver,
	combout => U3_adata_bus_a6_a_a0_combout);

U6_aMux7_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux7_a0_DATAA_driver);

U6_aMux7_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux7_a0_DATAB_driver);

U6_aMux7_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux7_a0_DATAC_driver);

U6_aMux7_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux7_a0_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N12
U6_aMux7_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux7_a0_combout = (!U5_aMAR_reg(3) & (!U5_aMAR_reg(4) & ((U5_aMAR_reg(1)) # (U5_aMAR_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux7_a0_DATAA_driver,
	datab => U6_aMux7_a0_DATAB_driver,
	datac => U6_aMux7_a0_DATAC_driver,
	datad => U6_aMux7_a0_DATAD_driver,
	combout => U6_aMux7_a0_combout);

U6_aMux7_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux7_a2_DATAA_driver);

U6_aMux7_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux7_a2_DATAB_driver);

U6_aMux7_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux7_a2_DATAC_driver);

U6_aMux7_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux7_a2_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N2
U6_aMux7_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux7_a2_combout = (U5_aMAR_reg(0) & ((U5_aMAR_reg(1) & (U5_aMAR_reg(3))) # (!U5_aMAR_reg(1) & ((U5_aMAR_reg(2)))))) # (!U5_aMAR_reg(0) & ((U5_aMAR_reg(2) & (U5_aMAR_reg(3))) # (!U5_aMAR_reg(2) & ((U5_aMAR_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux7_a2_DATAA_driver,
	datab => U6_aMux7_a2_DATAB_driver,
	datac => U6_aMux7_a2_DATAC_driver,
	datad => U6_aMux7_a2_DATAD_driver,
	combout => U6_aMux7_a2_combout);

U6_adata_rom_a4_a_a24_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux7_a2_combout,
	dataout => U6_adata_rom_a4_a_a24_DATAA_driver);

U6_adata_rom_a4_a_a24_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a2_combout,
	dataout => U6_adata_rom_a4_a_a24_DATAB_driver);

U6_adata_rom_a4_a_a24_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a13_combout,
	dataout => U6_adata_rom_a4_a_a24_DATAC_driver);

U6_adata_rom_a4_a_a24_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_adata_rom_a4_a_a24_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N20
U6_adata_rom_a4_a_a24 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a4_a_a24_combout = (U6_aMux7_a2_combout & (U6_aMux8_a2_combout & (U6_adata_rom_a5_a_a13_combout))) # (!U6_aMux7_a2_combout & ((U5_aMAR_reg(4)) # ((U6_aMux8_a2_combout & U6_adata_rom_a5_a_a13_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a4_a_a24_DATAA_driver,
	datab => U6_adata_rom_a4_a_a24_DATAB_driver,
	datac => U6_adata_rom_a4_a_a24_DATAC_driver,
	datad => U6_adata_rom_a4_a_a24_DATAD_driver,
	combout => U6_adata_rom_a4_a_a24_combout);

U6_adata_rom_a4_a_a25_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a4_a_a25_DATAA_driver);

U6_adata_rom_a4_a_a25_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a12_combout,
	dataout => U6_adata_rom_a4_a_a25_DATAB_driver);

U6_adata_rom_a4_a_a25_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a4_a_a24_combout,
	dataout => U6_adata_rom_a4_a_a25_DATAC_driver);

U6_adata_rom_a4_a_a25_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a4_a_a25_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N14
U6_adata_rom_a4_a_a25 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a4_a_a25_combout = ((U6_adata_rom_a5_a_a12_combout & (U6_adata_rom_a4_a_a24_combout & U5_aMAR_reg(5)))) # (!U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a4_a_a25_DATAA_driver,
	datab => U6_adata_rom_a4_a_a25_DATAB_driver,
	datac => U6_adata_rom_a4_a_a25_DATAC_driver,
	datad => U6_adata_rom_a4_a_a25_DATAD_driver,
	combout => U6_adata_rom_a4_a_a25_combout);

U3_aacc_a3_a_a7_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aacc_a3_a_a7_DATAB_driver);

U3_aacc_a3_a_a7_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a3_a_a7_DATAC_driver);

U3_aacc_a3_a_a7_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a3_a_a7_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N20
U3_aacc_a3_a_a7 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a7_combout = (U3_aacc(4) & (U3_aacc_a2_a_a4_combout & !U3_aacc_a2_a_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a3_a_a7_DATAB_driver,
	datac => U3_aacc_a3_a_a7_DATAC_driver,
	datad => U3_aacc_a3_a_a7_DATAD_driver,
	combout => U3_aacc_a3_a_a7_combout);

U3_aacc_a2_a_a17_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a17_DATAA_driver);

U3_aacc_a2_a_a17_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a17_DATAC_driver);

U3_aacc_a2_a_a17_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a2_a_a17_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N10
U3_aacc_a2_a_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a17_combout = (U4_aIR_reg(5) & ((U4_aIR_reg(3)) # (U4_aIR_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a17_DATAA_driver,
	datac => U3_aacc_a2_a_a17_DATAC_driver,
	datad => U3_aacc_a2_a_a17_DATAD_driver,
	combout => U3_aacc_a2_a_a17_combout);

U3_aMux5_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux5_a0_DATAA_driver);

U3_aMux5_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux5_a0_DATAB_driver);

U3_aMux5_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aMux5_a0_DATAC_driver);

U3_aMux5_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aMux5_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N28
U3_aMux5_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux5_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(3) $ (((U1_adata_a3_a_a8_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U3_aacc_a2_a_a16_combout & (U3_aacc(3) & U1_adata_a3_a_a8_combout)) # 
-- (!U3_aacc_a2_a_a16_combout & ((U3_aacc(3)) # (U1_adata_a3_a_a8_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux5_a0_DATAA_driver,
	datab => U3_aMux5_a0_DATAB_driver,
	datac => U3_aMux5_a0_DATAC_driver,
	datad => U3_aMux5_a0_DATAD_driver,
	combout => U3_aMux5_a0_combout);

U3_aAdd0_aauto_generated_a_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a0_DATAA_driver);

U3_aAdd0_aauto_generated_a_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aAdd0_aauto_generated_a_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y17_N24
U3_aAdd0_aauto_generated_a_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a0_combout = U4_aIR_reg(4) $ (U1_adata_a3_a_a8_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a0_DATAA_driver,
	datad => U3_aAdd0_aauto_generated_a_a0_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a0_combout);

U3_aAdd0_aauto_generated_a_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a1_DATAA_driver);

U3_aAdd0_aauto_generated_a_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_a_a1_DATAB_driver);

U3_aAdd0_aauto_generated_a_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a2_a_a5_combout,
	dataout => U3_aAdd0_aauto_generated_a_a1_DATAC_driver);

U3_aAdd0_aauto_generated_a_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a15_combout,
	dataout => U3_aAdd0_aauto_generated_a_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N16
U3_aAdd0_aauto_generated_a_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a1_combout = U4_aIR_reg(4) $ ((((U6_adata_rom_a2_a_a5_combout & U1_adata_a2_a_a15_combout)) # (!U1_adata_a3_a_a7_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a1_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_a_a1_DATAB_driver,
	datac => U3_aAdd0_aauto_generated_a_a1_DATAC_driver,
	datad => U3_aAdd0_aauto_generated_a_a1_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a1_combout);

U3_aAdd0_aauto_generated_a_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a11_combout,
	dataout => U3_aAdd0_aauto_generated_a_a2_DATAA_driver);

U3_aAdd0_aauto_generated_a_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a1_a_a30_combout,
	dataout => U3_aAdd0_aauto_generated_a_a2_DATAB_driver);

U3_aAdd0_aauto_generated_a_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_a_a2_DATAC_driver);

U3_aAdd0_aauto_generated_a_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a2_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N16
U3_aAdd0_aauto_generated_a_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a2_combout = U4_aIR_reg(4) $ ((((U1_adata_a1_a_a11_combout & U6_adata_rom_a1_a_a30_combout)) # (!U1_adata_a3_a_a7_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a2_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_a_a2_DATAB_driver,
	datac => U3_aAdd0_aauto_generated_a_a2_DATAC_driver,
	datad => U3_aAdd0_aauto_generated_a_a2_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a2_combout);

U3_aAdd0_aauto_generated_a_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a0_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_a_a3_DATAA_driver);

U3_aAdd0_aauto_generated_a_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a19_combout,
	dataout => U3_aAdd0_aauto_generated_a_a3_DATAB_driver);

U3_aAdd0_aauto_generated_a_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a3_DATAC_driver);

U3_aAdd0_aauto_generated_a_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_a_a3_DATAD_driver);

-- Location: LCCOMB_X20_Y17_N26
U3_aAdd0_aauto_generated_a_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a3_combout = U4_aIR_reg(4) $ ((((U6_adata_rom_a0_a_a7_combout & U1_adata_a0_a_a19_combout)) # (!U1_adata_a3_a_a7_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a3_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_a_a3_DATAB_driver,
	datac => U3_aAdd0_aauto_generated_a_a3_DATAC_driver,
	datad => U3_aAdd0_aauto_generated_a_a3_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a3_combout);

U3_aacc_a8_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a8_a_CLK_driver);

U3_aacc_a8_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a8_a_a60_combout,
	dataout => U3_aacc_a8_a_DATAIN_driver);

U3_aacc_a8_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a8_a_ACLR_driver);

-- Location: LCFF_X19_Y17_N29
U3_aacc_a8_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a8_a_CLK_driver,
	datain => U3_aacc_a8_a_DATAIN_driver,
	aclr => U3_aacc_a8_a_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(8));

U3_aAdd1_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a1_DATAC_driver);

U3_aAdd1_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aAdd1_a1_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N10
U3_aAdd1_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a1_combout = U4_aIR_reg(4) $ (U3_aacc(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U3_aAdd1_a1_DATAC_driver,
	datad => U3_aAdd1_a1_DATAD_driver,
	combout => U3_aAdd1_a1_combout);

U3_aacc_a2_a_a19_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a19_DATAC_driver);

U3_aacc_a2_a_a19_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a2_a_a19_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N0
U3_aacc_a2_a_a19 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a19_combout = (U4_aIR_reg(5) & !U4_aIR_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U3_aacc_a2_a_a19_DATAC_driver,
	datad => U3_aacc_a2_a_a19_DATAD_driver,
	combout => U3_aacc_a2_a_a19_combout);

U3_aMux5_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a6_combout,
	dataout => U3_aMux5_a1_DATAA_driver);

U3_aMux5_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux5_a1_DATAB_driver);

U3_aMux5_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux5_a1_DATAC_driver);

U3_aMux5_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a10_combout,
	dataout => U3_aMux5_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N26
U3_aMux5_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux5_a1_combout = (U3_aacc_a2_a_a19_combout & (((U3_aacc_a2_a_a18_combout) # (U3_aAdd1_a10_combout)))) # (!U3_aacc_a2_a_a19_combout & (U3_aAdd0_a6_combout & (!U3_aacc_a2_a_a18_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux5_a1_DATAA_driver,
	datab => U3_aMux5_a1_DATAB_driver,
	datac => U3_aMux5_a1_DATAC_driver,
	datad => U3_aMux5_a1_DATAD_driver,
	combout => U3_aMux5_a1_combout);

U3_aMux5_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux5_a1_combout,
	dataout => U3_aMux5_a2_DATAA_driver);

U3_aMux5_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux5_a0_combout,
	dataout => U3_aMux5_a2_DATAB_driver);

U3_aMux5_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux5_a2_DATAC_driver);

U3_aMux5_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a6_combout,
	dataout => U3_aMux5_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N12
U3_aMux5_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux5_a2_combout = (U3_aMux5_a1_combout & (((U3_aAdd2_a6_combout) # (!U3_aacc_a2_a_a18_combout)))) # (!U3_aMux5_a1_combout & (U3_aMux5_a0_combout & (U3_aacc_a2_a_a18_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux5_a2_DATAA_driver,
	datab => U3_aMux5_a2_DATAB_driver,
	datac => U3_aMux5_a2_DATAC_driver,
	datad => U3_aMux5_a2_DATAD_driver,
	combout => U3_aMux5_a2_combout);

U2_anext_state_aI6_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U2_anext_state_aI6_a1_DATAA_driver);

U2_anext_state_aI6_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U2_anext_state_aI6_a1_DATAB_driver);

U2_anext_state_aI6_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U2_anext_state_aI6_a1_DATAC_driver);

U2_anext_state_aI6_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U2_anext_state_aI6_a1_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N4
U2_anext_state_aI6_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a1_combout = (!U3_aacc(2) & (!U3_aacc(0) & (!U3_aacc(1) & !U3_aacc(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a1_DATAA_driver,
	datab => U2_anext_state_aI6_a1_DATAB_driver,
	datac => U2_anext_state_aI6_a1_DATAC_driver,
	datad => U2_anext_state_aI6_a1_DATAD_driver,
	combout => U2_anext_state_aI6_a1_combout);

U3_aAdd1_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a12_DATAA_driver);

U3_aAdd1_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aAdd1_a12_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N30
U3_aAdd1_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a12_combout = (!U4_aIR_reg(4) & U3_aacc(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a12_DATAA_driver,
	datad => U3_aAdd1_a12_DATAD_driver,
	combout => U3_aAdd1_a12_combout);

U2_aWideOr2_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U2_aWideOr2_a1_DATAB_driver);

U2_aWideOr2_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U2_aWideOr2_a1_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N22
U2_aWideOr2_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aWideOr2_a1_combout = (U2_apresent_state_aI5_aregout) # (U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_aWideOr2_a1_DATAB_driver,
	datad => U2_aWideOr2_a1_DATAD_driver,
	combout => U2_aWideOr2_a1_combout);

U3_aacc_a1_a_a22_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aacc_a1_a_a22_DATAA_driver);

U3_aacc_a1_a_a22_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a1_a_a22_DATAB_driver);

U3_aacc_a1_a_a22_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aacc_a1_a_a22_DATAC_driver);

U3_aacc_a1_a_a22_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a1_a_a22_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N16
U3_aacc_a1_a_a22 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a1_a_a22_combout = (U3_aacc(0) & (!U3_aacc_a2_a_a14_combout & ((U1_adata_a1_a_a12_combout) # (U3_aacc_a3_a_a61_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a1_a_a22_DATAA_driver,
	datab => U3_aacc_a1_a_a22_DATAB_driver,
	datac => U3_aacc_a1_a_a22_DATAC_driver,
	datad => U3_aacc_a1_a_a22_DATAD_driver,
	combout => U3_aacc_a1_a_a22_combout);

U3_aMux7_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux7_a0_DATAA_driver);

U3_aMux7_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aMux7_a0_DATAB_driver);

U3_aMux7_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux7_a0_DATAC_driver);

U3_aMux7_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aMux7_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N30
U3_aMux7_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux7_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(1) $ (((U1_adata_a1_a_a12_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U1_adata_a1_a_a12_combout & ((U3_aacc(1)) # (!U3_aacc_a2_a_a16_combout))) # 
-- (!U1_adata_a1_a_a12_combout & (!U3_aacc_a2_a_a16_combout & U3_aacc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux7_a0_DATAA_driver,
	datab => U3_aMux7_a0_DATAB_driver,
	datac => U3_aMux7_a0_DATAC_driver,
	datad => U3_aMux7_a0_DATAD_driver,
	combout => U3_aMux7_a0_combout);

U3_aMux7_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux7_a1_DATAA_driver);

U3_aMux7_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a6_combout,
	dataout => U3_aMux7_a1_DATAB_driver);

U3_aMux7_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a2_combout,
	dataout => U3_aMux7_a1_DATAC_driver);

U3_aMux7_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux7_a1_DATAD_driver);

-- Location: LCCOMB_X21_Y16_N8
U3_aMux7_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux7_a1_combout = (U3_aacc_a2_a_a19_combout & ((U3_aAdd1_a6_combout) # ((U3_aacc_a2_a_a18_combout)))) # (!U3_aacc_a2_a_a19_combout & (((U3_aAdd0_a2_combout & !U3_aacc_a2_a_a18_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux7_a1_DATAA_driver,
	datab => U3_aMux7_a1_DATAB_driver,
	datac => U3_aMux7_a1_DATAC_driver,
	datad => U3_aMux7_a1_DATAD_driver,
	combout => U3_aMux7_a1_combout);

U3_aMux7_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux7_a0_combout,
	dataout => U3_aMux7_a2_DATAA_driver);

U3_aMux7_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux7_a1_combout,
	dataout => U3_aMux7_a2_DATAB_driver);

U3_aMux7_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a2_combout,
	dataout => U3_aMux7_a2_DATAC_driver);

U3_aMux7_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux7_a2_DATAD_driver);

-- Location: LCCOMB_X21_Y16_N10
U3_aMux7_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux7_a2_combout = (U3_aMux7_a1_combout & (((U3_aAdd2_a2_combout) # (!U3_aacc_a2_a_a18_combout)))) # (!U3_aMux7_a1_combout & (U3_aMux7_a0_combout & ((U3_aacc_a2_a_a18_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux7_a2_DATAA_driver,
	datab => U3_aMux7_a2_DATAB_driver,
	datac => U3_aMux7_a2_DATAC_driver,
	datad => U3_aMux7_a2_DATAD_driver,
	combout => U3_aMux7_a2_combout);

U7_aMux1_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_acombout(0),
	dataout => U7_aMux1_a1_DATAB_driver);

U7_aMux1_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_acombout(1),
	dataout => U7_aMux1_a1_DATAC_driver);

-- Location: LCCOMB_X22_Y18_N20
U7_aMux1_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aMux1_a1_combout = (Int_code_acombout(0) & Int_code_acombout(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U7_aMux1_a1_DATAB_driver,
	datac => U7_aMux1_a1_DATAC_driver,
	combout => U7_aMux1_a1_combout);

U3_aMux8_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aMux8_a1_DATAA_driver);

U3_aMux8_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aMux8_a1_DATAB_driver);

U3_aMux8_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux8_a1_DATAC_driver);

U3_aMux8_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a0_combout,
	dataout => U3_aMux8_a1_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N26
U3_aMux8_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a1_combout = (U4_aIR_reg(4) & ((U3_aacc(7)) # ((!U4_aIR_reg(5))))) # (!U4_aIR_reg(4) & (((U4_aIR_reg(5) & U3_aAdd2_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux8_a1_DATAA_driver,
	datab => U3_aMux8_a1_DATAB_driver,
	datac => U3_aMux8_a1_DATAC_driver,
	datad => U3_aMux8_a1_DATAD_driver,
	combout => U3_aMux8_a1_combout);

U3_aMux8_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux8_a2_DATAA_driver);

U3_aMux8_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a1_combout,
	dataout => U3_aMux8_a2_DATAB_driver);

U3_aMux8_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux8_a2_DATAC_driver);

U3_aMux8_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a4_combout,
	dataout => U3_aMux8_a2_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N12
U3_aMux8_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a2_combout = (U4_aIR_reg(3) & (U3_aMux8_a1_combout $ ((!U4_aIR_reg(5))))) # (!U4_aIR_reg(3) & ((U4_aIR_reg(5) & ((U3_aAdd1_a4_combout))) # (!U4_aIR_reg(5) & (U3_aMux8_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux8_a2_DATAA_driver,
	datab => U3_aMux8_a2_DATAB_driver,
	datac => U3_aMux8_a2_DATAC_driver,
	datad => U3_aMux8_a2_DATAD_driver,
	combout => U3_aMux8_a2_combout);

U3_aAdd1_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aAdd1_a15_DATAB_driver);

U3_aAdd1_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a15_DATAC_driver);

U3_aAdd1_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aAdd1_a15_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N6
U3_aAdd1_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a15_combout = (U4_aIR_reg(4) & (U3_aacc(1))) # (!U4_aIR_reg(4) & ((U3_aacc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aAdd1_a15_DATAB_driver,
	datac => U3_aAdd1_a15_DATAC_driver,
	datad => U3_aAdd1_a15_DATAD_driver,
	combout => U3_aAdd1_a15_combout);

U3_aAdd1_a16_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a16_DATAA_driver);

U3_aAdd1_a16_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd1_a16_DATAB_driver);

U3_aAdd1_a16_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a0_combout,
	dataout => U3_aAdd1_a16_DATAC_driver);

-- Location: LCCOMB_X19_Y16_N10
U3_aAdd1_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a16_combout = (U4_aIR_reg(4) & (U1_adata_a0_a_a20_combout)) # (!U4_aIR_reg(4) & ((U3_aAdd0_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a16_DATAA_driver,
	datab => U3_aAdd1_a16_DATAB_driver,
	datac => U3_aAdd1_a16_DATAC_driver,
	combout => U3_aAdd1_a16_combout);

U3_aacc_a0_a_a35_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a0_a_a35_DATAA_driver);

U3_aacc_a0_a_a35_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a0_a_a35_DATAB_driver);

U3_aacc_a0_a_a35_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a0_a_a35_DATAC_driver);

U3_aacc_a0_a_a35_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a5_combout,
	dataout => U3_aacc_a0_a_a35_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N6
U3_aacc_a0_a_a35 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a35_combout = (U4_aIR_reg(3) & (U4_aIR_reg(7) & (U3_aacc_a0_a_a31_combout & U3_aacc_a2_a_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a35_DATAA_driver,
	datab => U3_aacc_a0_a_a35_DATAB_driver,
	datac => U3_aacc_a0_a_a35_DATAC_driver,
	datad => U3_aacc_a0_a_a35_DATAD_driver,
	combout => U3_aacc_a0_a_a35_combout);

U3_aacc_a7_a_a37_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a7_a_a37_DATAA_driver);

U3_aacc_a7_a_a37_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a7_a_a37_DATAB_driver);

U3_aacc_a7_a_a37_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aacc_a7_a_a37_DATAC_driver);

U3_aacc_a7_a_a37_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aacc_a7_a_a37_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N30
U3_aacc_a7_a_a37 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a37_combout = (U4_aIR_reg(5)) # ((U4_aIR_reg(4) & (U3_aacc(7))) # (!U4_aIR_reg(4) & ((U6_adata_rom_a7_a_a11_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a37_DATAA_driver,
	datab => U3_aacc_a7_a_a37_DATAB_driver,
	datac => U3_aacc_a7_a_a37_DATAC_driver,
	datad => U3_aacc_a7_a_a37_DATAD_driver,
	combout => U3_aacc_a7_a_a37_combout);

U3_aacc_a7_a_a39_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a7_a_a39_DATAA_driver);

U3_aacc_a7_a_a39_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a14_combout,
	dataout => U3_aacc_a7_a_a39_DATAB_driver);

U3_aacc_a7_a_a39_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aacc_a7_a_a39_DATAD_driver);

-- Location: LCCOMB_X21_Y16_N0
U3_aacc_a7_a_a39 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a39_combout = (U4_aIR_reg(4) & ((U3_aacc(6)))) # (!U4_aIR_reg(4) & (U3_aAdd2_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a39_DATAA_driver,
	datab => U3_aacc_a7_a_a39_DATAB_driver,
	datad => U3_aacc_a7_a_a39_DATAD_driver,
	combout => U3_aacc_a7_a_a39_combout);

U3_aacc_a7_a_a40_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a7_a_a40_DATAB_driver);

U3_aacc_a7_a_a40_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a7_a_a40_DATAC_driver);

U3_aacc_a7_a_a40_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a7_a_a40_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N2
U3_aacc_a7_a_a40 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a40_combout = (!U4_aIR_reg(7) & (U3_aacc_a0_a_a31_combout & !U4_aIR_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a7_a_a40_DATAB_driver,
	datac => U3_aacc_a7_a_a40_DATAC_driver,
	datad => U3_aacc_a7_a_a40_DATAD_driver,
	combout => U3_aacc_a7_a_a40_combout);

U3_aacc_a7_a_a41_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a14_combout,
	dataout => U3_aacc_a7_a_a41_DATAA_driver);

U3_aacc_a7_a_a41_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a40_combout,
	dataout => U3_aacc_a7_a_a41_DATAB_driver);

U3_aacc_a7_a_a41_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a7_a_a41_DATAC_driver);

U3_aacc_a7_a_a41_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aacc_a7_a_a41_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N12
U3_aacc_a7_a_a41 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a41_combout = (U3_aacc_a7_a_a40_combout & ((U4_aIR_reg(4) & (U3_aAdd0_a14_combout)) # (!U4_aIR_reg(4) & ((U3_aacc(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a41_DATAA_driver,
	datab => U3_aacc_a7_a_a41_DATAB_driver,
	datac => U3_aacc_a7_a_a41_DATAC_driver,
	datad => U3_aacc_a7_a_a41_DATAD_driver,
	combout => U3_aacc_a7_a_a41_combout);

U3_aAdd0_aauto_generated_a_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a4_DATAB_driver);

U3_aAdd0_aauto_generated_a_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aAdd0_aauto_generated_a_a4_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N16
U3_aAdd0_aauto_generated_a_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a4_combout = U4_aIR_reg(4) $ (U6_adata_rom_a7_a_a11_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aAdd0_aauto_generated_a_a4_DATAB_driver,
	datad => U3_aAdd0_aauto_generated_a_a4_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a4_combout);

U3_aAdd0_aauto_generated_a_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aAdd0_aauto_generated_a_a5_DATAA_driver);

U3_aAdd0_aauto_generated_a_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a5_DATAC_driver);

-- Location: LCCOMB_X20_Y18_N18
U3_aAdd0_aauto_generated_a_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a5_combout = U1_adata_a6_a_a27_combout $ (U4_aIR_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a5_DATAA_driver,
	datac => U3_aAdd0_aauto_generated_a_a5_DATAC_driver,
	combout => U3_aAdd0_aauto_generated_a_a5_combout);

U3_aAdd0_aauto_generated_a_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a6_DATAA_driver);

U3_aAdd0_aauto_generated_a_a6_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aAdd0_aauto_generated_a_a6_DATAC_driver);

-- Location: LCCOMB_X20_Y17_N30
U3_aAdd0_aauto_generated_a_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a6_combout = U4_aIR_reg(4) $ (U1_adata_a5_a_a24_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a6_DATAA_driver,
	datac => U3_aAdd0_aauto_generated_a_a6_DATAC_driver,
	combout => U3_aAdd0_aauto_generated_a_a6_combout);

U13_aDataOUT_a4_a_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U13_aDataOUT_a4_a_a1_DATAA_driver);

U13_aDataOUT_a4_a_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(4),
	dataout => U13_aDataOUT_a4_a_a1_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N22
U13_aDataOUT_a4_a_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U13_aDataOUT_a4_a_a1_combout = (PORT_IN_acombout(4)) # (!U2_apresent_state_aI8_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U13_aDataOUT_a4_a_a1_DATAA_driver,
	datad => U13_aDataOUT_a4_a_a1_DATAD_driver,
	combout => U13_aDataOUT_a4_a_a1_combout);

U3_aAdd0_aauto_generated_a_a7_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_a_a7_DATAA_driver);

U3_aAdd0_aauto_generated_a_a7_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U13_aDataOUT_a4_a_a1_combout,
	dataout => U3_aAdd0_aauto_generated_a_a7_DATAB_driver);

U3_aAdd0_aauto_generated_a_a7_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U3_aAdd0_aauto_generated_a_a7_DATAC_driver);

U3_aAdd0_aauto_generated_a_a7_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a30_combout,
	dataout => U3_aAdd0_aauto_generated_a_a7_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N16
U3_aAdd0_aauto_generated_a_a7 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_a_a7_combout = U4_aIR_reg(4) $ ((((U13_aDataOUT_a4_a_a1_combout & U1_adata_a4_a_a30_combout)) # (!U1_adata_a3_a_a7_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_a_a7_DATAA_driver,
	datab => U3_aAdd0_aauto_generated_a_a7_DATAB_driver,
	datac => U3_aAdd0_aauto_generated_a_a7_DATAC_driver,
	datad => U3_aAdd0_aauto_generated_a_a7_DATAD_driver,
	combout => U3_aAdd0_aauto_generated_a_a7_combout);

U3_aAdd1_a26_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aAdd1_a26_DATAA_driver);

U3_aAdd1_a26_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a26_DATAB_driver);

U3_aAdd1_a26_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd1_a26_DATAC_driver);

U3_aAdd1_a26_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aAdd1_a26_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N10
U3_aAdd1_a26 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a26_combout = (U4_aIR_reg(4) & (U3_aacc(7) & ((U6_adata_rom_a7_a_a11_combout)))) # (!U4_aIR_reg(4) & (((U3_aacc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a26_DATAA_driver,
	datab => U3_aAdd1_a26_DATAB_driver,
	datac => U3_aAdd1_a26_DATAC_driver,
	datad => U3_aAdd1_a26_DATAD_driver,
	combout => U3_aAdd1_a26_combout);

U3_aAdd1_a27_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aAdd1_a27_DATAB_driver);

U3_aAdd1_a27_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a27_DATAC_driver);

U3_aAdd1_a27_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aAdd1_a27_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N28
U3_aAdd1_a27 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a27_combout = (U4_aIR_reg(4) & (U3_aacc(8))) # (!U4_aIR_reg(4) & ((U3_aacc(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aAdd1_a27_DATAB_driver,
	datac => U3_aAdd1_a27_DATAC_driver,
	datad => U3_aAdd1_a27_DATAD_driver,
	combout => U3_aAdd1_a27_combout);

U3_aMux1_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a26_combout,
	dataout => U3_aMux1_a1_DATAA_driver);

U3_aMux1_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a27_combout,
	dataout => U3_aMux1_a1_DATAB_driver);

U3_aMux1_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux1_a1_DATAC_driver);

U3_aMux1_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux1_a1_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N22
U3_aMux1_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux1_a1_combout = (U4_aIR_reg(5) & (((U4_aIR_reg(3))))) # (!U4_aIR_reg(5) & ((U4_aIR_reg(3) & (U3_aAdd1_a26_combout)) # (!U4_aIR_reg(3) & ((U3_aAdd1_a27_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux1_a1_DATAA_driver,
	datab => U3_aMux1_a1_DATAB_driver,
	datac => U3_aMux1_a1_DATAC_driver,
	datad => U3_aMux1_a1_DATAD_driver,
	combout => U3_aMux1_a1_combout);

U7_aAdd0_a17_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U7_aAdd0_a17_DATAA_driver);

U7_aAdd0_a17_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a15_combout,
	dataout => U7_aAdd0_a17_DATAB_driver);

U7_aAdd0_a17_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_aAdd0_a17_DATAC_driver);

U7_aAdd0_a17_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_aAdd0_a17_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N24
U7_aAdd0_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a17_combout = (!U8_aInt_req_aregout & ((U2_apresent_state_aI6_aregout & (U6_adata_rom_a7_a_a11_combout)) # (!U2_apresent_state_aI6_aregout & ((U7_aAdd0_a15_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a17_DATAA_driver,
	datab => U7_aAdd0_a17_DATAB_driver,
	datac => U7_aAdd0_a17_DATAC_driver,
	datad => U7_aAdd0_a17_DATAD_driver,
	combout => U7_aAdd0_a17_combout);

U3_aacc_a5_a_a44_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a5_a_a44_DATAA_driver);

U3_aacc_a5_a_a44_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aacc_a5_a_a44_DATAB_driver);

U3_aacc_a5_a_a44_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aacc_a5_a_a44_DATAC_driver);

U3_aacc_a5_a_a44_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a5_a_a44_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N14
U3_aacc_a5_a_a44 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a5_a_a44_combout = (!U3_aacc_a2_a_a14_combout & (U3_aacc(4) & ((U1_adata_a5_a_a24_combout) # (U3_aacc_a3_a_a61_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a5_a_a44_DATAA_driver,
	datab => U3_aacc_a5_a_a44_DATAB_driver,
	datac => U3_aacc_a5_a_a44_DATAC_driver,
	datad => U3_aacc_a5_a_a44_DATAD_driver,
	combout => U3_aacc_a5_a_a44_combout);

U3_aMux3_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux3_a0_DATAA_driver);

U3_aMux3_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aMux3_a0_DATAB_driver);

U3_aMux3_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aMux3_a0_DATAC_driver);

U3_aMux3_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux3_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N2
U3_aMux3_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux3_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(5) $ (((U1_adata_a5_a_a24_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U3_aacc(5) & ((U1_adata_a5_a_a24_combout) # (!U3_aacc_a2_a_a16_combout))) # (!U3_aacc(5) & 
-- (U1_adata_a5_a_a24_combout & !U3_aacc_a2_a_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux3_a0_DATAA_driver,
	datab => U3_aMux3_a0_DATAB_driver,
	datac => U3_aMux3_a0_DATAC_driver,
	datad => U3_aMux3_a0_DATAD_driver,
	combout => U3_aMux3_a0_combout);

U3_aMux3_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a10_combout,
	dataout => U3_aMux3_a1_DATAA_driver);

U3_aMux3_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux3_a1_DATAB_driver);

U3_aMux3_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux3_a1_DATAC_driver);

U3_aMux3_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a20_combout,
	dataout => U3_aMux3_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N20
U3_aMux3_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux3_a1_combout = (U3_aacc_a2_a_a19_combout & (((U3_aacc_a2_a_a18_combout) # (U3_aAdd1_a20_combout)))) # (!U3_aacc_a2_a_a19_combout & (U3_aAdd0_a10_combout & (!U3_aacc_a2_a_a18_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux3_a1_DATAA_driver,
	datab => U3_aMux3_a1_DATAB_driver,
	datac => U3_aMux3_a1_DATAC_driver,
	datad => U3_aMux3_a1_DATAD_driver,
	combout => U3_aMux3_a1_combout);

U3_aMux3_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux3_a1_combout,
	dataout => U3_aMux3_a2_DATAA_driver);

U3_aMux3_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux3_a0_combout,
	dataout => U3_aMux3_a2_DATAB_driver);

U3_aMux3_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux3_a2_DATAC_driver);

U3_aMux3_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a10_combout,
	dataout => U3_aMux3_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N6
U3_aMux3_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux3_a2_combout = (U3_aMux3_a1_combout & (((U3_aAdd2_a10_combout) # (!U3_aacc_a2_a_a18_combout)))) # (!U3_aMux3_a1_combout & (U3_aMux3_a0_combout & (U3_aacc_a2_a_a18_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux3_a2_DATAA_driver,
	datab => U3_aMux3_a2_DATAB_driver,
	datac => U3_aMux3_a2_DATAC_driver,
	datad => U3_aMux3_a2_DATAD_driver,
	combout => U3_aMux3_a2_combout);

U3_aacc_a5_a_a45_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aacc_a5_a_a45_DATAA_driver);

U3_aacc_a5_a_a45_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a5_a_a45_DATAB_driver);

U3_aacc_a5_a_a45_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux3_a2_combout,
	dataout => U3_aacc_a5_a_a45_DATAC_driver);

U3_aacc_a5_a_a45_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a62_combout,
	dataout => U3_aacc_a5_a_a45_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N8
U3_aacc_a5_a_a45 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a5_a_a45_combout = (U1_adata_a5_a_a24_combout & ((U3_aacc_a2_a_a10_combout) # ((U3_aMux3_a2_combout & U3_aacc_a3_a_a62_combout)))) # (!U1_adata_a5_a_a24_combout & (((U3_aMux3_a2_combout & U3_aacc_a3_a_a62_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a5_a_a45_DATAA_driver,
	datab => U3_aacc_a5_a_a45_DATAB_driver,
	datac => U3_aacc_a5_a_a45_DATAC_driver,
	datad => U3_aacc_a5_a_a45_DATAD_driver,
	combout => U3_aacc_a5_a_a45_combout);

U3_aacc_a5_a_a46_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a5_a_a46_DATAA_driver);

U3_aacc_a5_a_a46_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U3_aacc_a5_a_a46_DATAC_driver);

U3_aacc_a5_a_a46_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a5_a_a46_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N18
U3_aacc_a5_a_a46 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a5_a_a46_combout = (U1_adata_a5_a_a24_combout & (U3_aacc_a2_a_a8_combout)) # (!U1_adata_a5_a_a24_combout & ((U3_aacc_a3_a_a11_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a5_a_a46_DATAA_driver,
	datac => U3_aacc_a5_a_a46_DATAC_driver,
	datad => U3_aacc_a5_a_a46_DATAD_driver,
	combout => U3_aacc_a5_a_a46_combout);

U3_aacc_a5_a_a47_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a5_a_a47_DATAA_driver);

U3_aacc_a5_a_a47_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aacc_a5_a_a47_DATAC_driver);

U3_aacc_a5_a_a47_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a5_a_a47_DATAD_driver);

-- Location: LCCOMB_X18_Y16_N8
U3_aacc_a5_a_a47 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a5_a_a47_combout = (U3_aacc_a2_a_a4_combout & (U3_aacc(6) & !U3_aacc_a2_a_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a5_a_a47_DATAA_driver,
	datac => U3_aacc_a5_a_a47_DATAC_driver,
	datad => U3_aacc_a5_a_a47_DATAD_driver,
	combout => U3_aacc_a5_a_a47_combout);

U3_aacc_a5_a_a48_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a5_a_a44_combout,
	dataout => U3_aacc_a5_a_a48_DATAA_driver);

U3_aacc_a5_a_a48_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a5_a_a46_combout,
	dataout => U3_aacc_a5_a_a48_DATAB_driver);

U3_aacc_a5_a_a48_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a5_a_a45_combout,
	dataout => U3_aacc_a5_a_a48_DATAC_driver);

U3_aacc_a5_a_a48_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a5_a_a47_combout,
	dataout => U3_aacc_a5_a_a48_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N10
U3_aacc_a5_a_a48 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a5_a_a48_combout = (U3_aacc_a5_a_a44_combout) # ((U3_aacc_a5_a_a45_combout) # ((U3_aacc_a5_a_a46_combout & U3_aacc_a5_a_a47_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a5_a_a48_DATAA_driver,
	datab => U3_aacc_a5_a_a48_DATAB_driver,
	datac => U3_aacc_a5_a_a48_DATAC_driver,
	datad => U3_aacc_a5_a_a48_DATAD_driver,
	combout => U3_aacc_a5_a_a48_combout);

U3_aMux2_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux2_a0_DATAA_driver);

U3_aMux2_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aMux2_a0_DATAB_driver);

U3_aMux2_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux2_a0_DATAC_driver);

U3_aMux2_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U3_aMux2_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N24
U3_aMux2_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux2_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(6) $ (((U1_adata_a6_a_a27_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U1_adata_a6_a_a27_combout & ((U3_aacc(6)) # (!U3_aacc_a2_a_a16_combout))) # 
-- (!U1_adata_a6_a_a27_combout & (!U3_aacc_a2_a_a16_combout & U3_aacc(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux2_a0_DATAA_driver,
	datab => U3_aMux2_a0_DATAB_driver,
	datac => U3_aMux2_a0_DATAC_driver,
	datad => U3_aMux2_a0_DATAD_driver,
	combout => U3_aMux2_a0_combout);

U3_aMux2_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux2_a0_combout,
	dataout => U3_aMux2_a1_DATAA_driver);

U3_aMux2_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a12_combout,
	dataout => U3_aMux2_a1_DATAB_driver);

U3_aMux2_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux2_a1_DATAC_driver);

U3_aMux2_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux2_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N18
U3_aMux2_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux2_a1_combout = (U3_aacc_a2_a_a18_combout & ((U3_aMux2_a0_combout) # ((U3_aacc_a2_a_a19_combout)))) # (!U3_aacc_a2_a_a18_combout & (((U3_aAdd0_a12_combout & !U3_aacc_a2_a_a19_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux2_a1_DATAA_driver,
	datab => U3_aMux2_a1_DATAB_driver,
	datac => U3_aMux2_a1_DATAC_driver,
	datad => U3_aMux2_a1_DATAD_driver,
	combout => U3_aMux2_a1_combout);

U3_aMux2_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux2_a1_combout,
	dataout => U3_aMux2_a2_DATAA_driver);

U3_aMux2_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a12_combout,
	dataout => U3_aMux2_a2_DATAB_driver);

U3_aMux2_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux2_a2_DATAC_driver);

U3_aMux2_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a22_combout,
	dataout => U3_aMux2_a2_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N6
U3_aMux2_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux2_a2_combout = (U3_aMux2_a1_combout & ((U3_aAdd2_a12_combout) # ((!U3_aacc_a2_a_a19_combout)))) # (!U3_aMux2_a1_combout & (((U3_aacc_a2_a_a19_combout & U3_aAdd1_a22_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux2_a2_DATAA_driver,
	datab => U3_aMux2_a2_DATAB_driver,
	datac => U3_aMux2_a2_DATAC_driver,
	datad => U3_aMux2_a2_DATAD_driver,
	combout => U3_aMux2_a2_combout);

U3_aacc_a4_a_a53_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aacc_a4_a_a53_DATAA_driver);

U3_aacc_a4_a_a53_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a4_a_a53_DATAB_driver);

U3_aacc_a4_a_a53_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a4_a_a53_DATAC_driver);

U3_aacc_a4_a_a53_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aacc_a4_a_a53_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N24
U3_aacc_a4_a_a53 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a4_a_a53_combout = (U3_aacc(5) & ((U1_adata_a4_a_a31_combout & ((U3_aacc_a2_a_a8_combout))) # (!U1_adata_a4_a_a31_combout & (U3_aacc_a3_a_a11_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a4_a_a53_DATAA_driver,
	datab => U3_aacc_a4_a_a53_DATAB_driver,
	datac => U3_aacc_a4_a_a53_DATAC_driver,
	datad => U3_aacc_a4_a_a53_DATAD_driver,
	combout => U3_aacc_a4_a_a53_combout);

U3_aMux4_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux4_a0_DATAA_driver);

U3_aMux4_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux4_a0_DATAB_driver);

U3_aMux4_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aMux4_a0_DATAC_driver);

U3_aMux4_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U3_aMux4_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N4
U3_aMux4_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux4_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(4) $ (((U1_adata_a4_a_a31_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U3_aacc_a2_a_a16_combout & (U1_adata_a4_a_a31_combout & U3_aacc(4))) # 
-- (!U3_aacc_a2_a_a16_combout & ((U1_adata_a4_a_a31_combout) # (U3_aacc(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux4_a0_DATAA_driver,
	datab => U3_aMux4_a0_DATAB_driver,
	datac => U3_aMux4_a0_DATAC_driver,
	datad => U3_aMux4_a0_DATAD_driver,
	combout => U3_aMux4_a0_combout);

U3_aMux4_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a8_combout,
	dataout => U3_aMux4_a1_DATAA_driver);

U3_aMux4_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux4_a0_combout,
	dataout => U3_aMux4_a1_DATAB_driver);

U3_aMux4_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux4_a1_DATAC_driver);

U3_aMux4_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux4_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N22
U3_aMux4_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux4_a1_combout = (U3_aacc_a2_a_a18_combout & (((U3_aMux4_a0_combout) # (U3_aacc_a2_a_a19_combout)))) # (!U3_aacc_a2_a_a18_combout & (U3_aAdd0_a8_combout & ((!U3_aacc_a2_a_a19_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux4_a1_DATAA_driver,
	datab => U3_aMux4_a1_DATAB_driver,
	datac => U3_aMux4_a1_DATAC_driver,
	datad => U3_aMux4_a1_DATAD_driver,
	combout => U3_aMux4_a1_combout);

U3_aMux4_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a8_combout,
	dataout => U3_aMux4_a2_DATAA_driver);

U3_aMux4_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux4_a2_DATAB_driver);

U3_aMux4_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux4_a1_combout,
	dataout => U3_aMux4_a2_DATAC_driver);

U3_aMux4_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a18_combout,
	dataout => U3_aMux4_a2_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N26
U3_aMux4_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux4_a2_combout = (U3_aacc_a2_a_a19_combout & ((U3_aMux4_a1_combout & (U3_aAdd2_a8_combout)) # (!U3_aMux4_a1_combout & ((U3_aAdd1_a18_combout))))) # (!U3_aacc_a2_a_a19_combout & (((U3_aMux4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux4_a2_DATAA_driver,
	datab => U3_aMux4_a2_DATAB_driver,
	datac => U3_aMux4_a2_DATAC_driver,
	datad => U3_aMux4_a2_DATAD_driver,
	combout => U3_aMux4_a2_combout);

U3_aacc_a4_a_a54_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a4_a_a54_DATAA_driver);

U3_aacc_a4_a_a54_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux4_a2_combout,
	dataout => U3_aacc_a4_a_a54_DATAB_driver);

U3_aacc_a4_a_a54_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a4_a_a53_combout,
	dataout => U3_aacc_a4_a_a54_DATAC_driver);

U3_aacc_a4_a_a54_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a4_a_a54_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N12
U3_aacc_a4_a_a54 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a4_a_a54_combout = (U3_aacc_a2_a_a14_combout & ((U3_aacc_a4_a_a53_combout) # ((U3_aMux4_a2_combout & U3_aacc_a3_a_a61_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a4_a_a54_DATAA_driver,
	datab => U3_aacc_a4_a_a54_DATAB_driver,
	datac => U3_aacc_a4_a_a54_DATAC_driver,
	datad => U3_aacc_a4_a_a54_DATAD_driver,
	combout => U3_aacc_a4_a_a54_combout);

U1_adata_a14_a_a33_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U1_adata_a14_a_a33_DATAC_driver);

U1_adata_a14_a_a33_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a14_a_a33_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N12
U1_adata_a14_a_a33 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a33_combout = (!U5_aMAR_reg(0) & !U5_aMAR_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U1_adata_a14_a_a33_DATAC_driver,
	datad => U1_adata_a14_a_a33_DATAD_driver,
	combout => U1_adata_a14_a_a33_combout);

U1_adata_a14_a_a34_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a33_combout,
	dataout => U1_adata_a14_a_a34_DATAA_driver);

U1_adata_a14_a_a34_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U1_adata_a14_a_a34_DATAB_driver);

U1_adata_a14_a_a34_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U1_adata_a14_a_a34_DATAC_driver);

U1_adata_a14_a_a34_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a19_combout,
	dataout => U1_adata_a14_a_a34_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N14
U1_adata_a14_a_a34 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a34_combout = (U1_adata_a14_a_a33_combout & (!U5_aMAR_reg(3) & (U5_aMAR_reg(1) & U6_adata_rom_a6_a_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a34_DATAA_driver,
	datab => U1_adata_a14_a_a34_DATAB_driver,
	datac => U1_adata_a14_a_a34_DATAC_driver,
	datad => U1_adata_a14_a_a34_DATAD_driver,
	combout => U1_adata_a14_a_a34_combout);

U6_aMux1_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux1_a1_DATAA_driver);

U6_aMux1_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux1_a1_DATAB_driver);

U6_aMux1_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux1_a1_DATAC_driver);

U6_aMux1_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux1_a1_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N16
U6_aMux1_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux1_a1_combout = (U5_aMAR_reg(3) & ((U5_aMAR_reg(2)) # ((U5_aMAR_reg(1) & U5_aMAR_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux1_a1_DATAA_driver,
	datab => U6_aMux1_a1_DATAB_driver,
	datac => U6_aMux1_a1_DATAC_driver,
	datad => U6_aMux1_a1_DATAD_driver,
	combout => U6_aMux1_a1_combout);

U1_adata_a14_a_a36_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a1_combout,
	dataout => U1_adata_a14_a_a36_DATAA_driver);

U1_adata_a14_a_a36_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a14_a_a36_DATAB_driver);

U1_adata_a14_a_a36_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a35_combout,
	dataout => U1_adata_a14_a_a36_DATAC_driver);

U1_adata_a14_a_a36_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a14_a_a36_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N26
U1_adata_a14_a_a36 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a36_combout = ((U6_aMux1_a1_combout & (!U5_aMAR_reg(6) & U5_aMAR_reg(4)))) # (!U1_adata_a15_a_a35_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a36_DATAA_driver,
	datab => U1_adata_a14_a_a36_DATAB_driver,
	datac => U1_adata_a14_a_a36_DATAC_driver,
	datad => U1_adata_a14_a_a36_DATAD_driver,
	combout => U1_adata_a14_a_a36_combout);

U6_aMux1_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux1_a2_DATAA_driver);

U6_aMux1_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux1_a2_DATAB_driver);

U6_aMux1_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux1_a2_DATAC_driver);

U6_aMux1_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux1_a2_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N28
U6_aMux1_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux1_a2_combout = (U5_aMAR_reg(3) & (U5_aMAR_reg(2) & ((U5_aMAR_reg(1)) # (U5_aMAR_reg(0))))) # (!U5_aMAR_reg(3) & (!U5_aMAR_reg(1) & (U5_aMAR_reg(0) $ (U5_aMAR_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux1_a2_DATAA_driver,
	datab => U6_aMux1_a2_DATAB_driver,
	datac => U6_aMux1_a2_DATAC_driver,
	datad => U6_aMux1_a2_DATAD_driver,
	combout => U6_aMux1_a2_combout);

U6_aMux1_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux1_a3_DATAA_driver);

U6_aMux1_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux1_a3_DATAB_driver);

U6_aMux1_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux1_a3_DATAC_driver);

U6_aMux1_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux1_a3_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N30
U6_aMux1_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux1_a3_combout = (U5_aMAR_reg(3)) # ((U5_aMAR_reg(2) & ((U5_aMAR_reg(1)) # (U5_aMAR_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux1_a3_DATAA_driver,
	datab => U6_aMux1_a3_DATAB_driver,
	datac => U6_aMux1_a3_DATAC_driver,
	datad => U6_aMux1_a3_DATAD_driver,
	combout => U6_aMux1_a3_combout);

U1_adata_a14_a_a37_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a14_a_a37_DATAA_driver);

U1_adata_a14_a_a37_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a2_combout,
	dataout => U1_adata_a14_a_a37_DATAB_driver);

U1_adata_a14_a_a37_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a3_combout,
	dataout => U1_adata_a14_a_a37_DATAC_driver);

U1_adata_a14_a_a37_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a14_a_a37_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N0
U1_adata_a14_a_a37 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a37_combout = (U5_aMAR_reg(4) & ((U6_aMux1_a2_combout) # ((!U5_aMAR_reg(6))))) # (!U5_aMAR_reg(4) & (((U6_aMux1_a3_combout & !U5_aMAR_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a37_DATAA_driver,
	datab => U1_adata_a14_a_a37_DATAB_driver,
	datac => U1_adata_a14_a_a37_DATAC_driver,
	datad => U1_adata_a14_a_a37_DATAD_driver,
	combout => U1_adata_a14_a_a37_combout);

U1_adata_a14_a_a38_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_adata_a14_a_a38_DATAA_driver);

U1_adata_a14_a_a38_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a37_combout,
	dataout => U1_adata_a14_a_a38_DATAB_driver);

U1_adata_a14_a_a38_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a34_combout,
	dataout => U1_adata_a14_a_a38_DATAC_driver);

U1_adata_a14_a_a38_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a36_combout,
	dataout => U1_adata_a14_a_a38_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N10
U1_adata_a14_a_a38 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a38_combout = (U1_adata_a14_a_a34_combout) # ((U1_adata_a14_a_a36_combout) # ((!U5_aMAR_reg(5) & U1_adata_a14_a_a37_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a38_DATAA_driver,
	datab => U1_adata_a14_a_a38_DATAB_driver,
	datac => U1_adata_a14_a_a38_DATAC_driver,
	datad => U1_adata_a14_a_a38_DATAD_driver,
	combout => U1_adata_a14_a_a38_combout);

U6_aMux3_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux3_a0_DATAA_driver);

U6_aMux3_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux3_a0_DATAB_driver);

U6_aMux3_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux3_a0_DATAC_driver);

U6_aMux3_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux3_a0_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N20
U6_aMux3_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a0_combout = (U5_aMAR_reg(3) & ((U5_aMAR_reg(0) & ((!U5_aMAR_reg(2)))) # (!U5_aMAR_reg(0) & (!U5_aMAR_reg(1) & U5_aMAR_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a0_DATAA_driver,
	datab => U6_aMux3_a0_DATAB_driver,
	datac => U6_aMux3_a0_DATAC_driver,
	datad => U6_aMux3_a0_DATAD_driver,
	combout => U6_aMux3_a0_combout);

U6_aMux3_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux3_a1_DATAA_driver);

U6_aMux3_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux3_a1_DATAB_driver);

U6_aMux3_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux3_a1_DATAC_driver);

U6_aMux3_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux3_a1_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N6
U6_aMux3_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a1_combout = (U5_aMAR_reg(0) & (U5_aMAR_reg(1) & (U5_aMAR_reg(2) & U5_aMAR_reg(3)))) # (!U5_aMAR_reg(0) & ((U5_aMAR_reg(2) $ (U5_aMAR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a1_DATAA_driver,
	datab => U6_aMux3_a1_DATAB_driver,
	datac => U6_aMux3_a1_DATAC_driver,
	datad => U6_aMux3_a1_DATAD_driver,
	combout => U6_aMux3_a1_combout);

U6_aMux3_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a1_combout,
	dataout => U6_aMux3_a2_DATAA_driver);

U6_aMux3_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a0_combout,
	dataout => U6_aMux3_a2_DATAB_driver);

U6_aMux3_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a0_combout,
	dataout => U6_aMux3_a2_DATAC_driver);

U6_aMux3_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux3_a2_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N24
U6_aMux3_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a2_combout = (U6_aMux8_a0_combout & ((U5_aMAR_reg(4) & ((U6_aMux3_a0_combout))) # (!U5_aMAR_reg(4) & (U6_aMux3_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a2_DATAA_driver,
	datab => U6_aMux3_a2_DATAB_driver,
	datac => U6_aMux3_a2_DATAC_driver,
	datad => U6_aMux3_a2_DATAD_driver,
	combout => U6_aMux3_a2_combout);

U6_aMux3_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux3_a3_DATAA_driver);

U6_aMux3_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a3_combout,
	dataout => U6_aMux3_a3_DATAB_driver);

U6_aMux3_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a0_combout,
	dataout => U6_aMux3_a3_DATAC_driver);

U6_aMux3_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux3_a3_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N4
U6_aMux3_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a3_combout = (!U5_aMAR_reg(4) & ((U5_aMAR_reg(5) & ((U6_aMux1_a0_combout))) # (!U5_aMAR_reg(5) & (!U6_aMux1_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a3_DATAA_driver,
	datab => U6_aMux3_a3_DATAB_driver,
	datac => U6_aMux3_a3_DATAC_driver,
	datad => U6_aMux3_a3_DATAD_driver,
	combout => U6_aMux3_a3_combout);

U6_aMux3_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux3_a4_DATAA_driver);

U6_aMux3_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux3_a4_DATAB_driver);

U6_aMux3_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux3_a4_DATAC_driver);

U6_aMux3_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux3_a4_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N6
U6_aMux3_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a4_combout = (U5_aMAR_reg(0) & ((U5_aMAR_reg(3) & (!U5_aMAR_reg(1) & !U5_aMAR_reg(2))) # (!U5_aMAR_reg(3) & ((U5_aMAR_reg(2)))))) # (!U5_aMAR_reg(0) & (U5_aMAR_reg(1) & ((!U5_aMAR_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a4_DATAA_driver,
	datab => U6_aMux3_a4_DATAB_driver,
	datac => U6_aMux3_a4_DATAC_driver,
	datad => U6_aMux3_a4_DATAD_driver,
	combout => U6_aMux3_a4_combout);

U6_aMux3_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux3_a5_DATAA_driver);

U6_aMux3_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a4_combout,
	dataout => U6_aMux3_a5_DATAB_driver);

U6_aMux3_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a3_combout,
	dataout => U6_aMux3_a5_DATAC_driver);

U6_aMux3_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux3_a5_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N24
U6_aMux3_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux3_a5_combout = (U6_aMux3_a3_combout) # ((U5_aMAR_reg(4) & (U6_aMux3_a4_combout & U5_aMAR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux3_a5_DATAA_driver,
	datab => U6_aMux3_a5_DATAB_driver,
	datac => U6_aMux3_a5_DATAC_driver,
	datad => U6_aMux3_a5_DATAD_driver,
	combout => U6_aMux3_a5_combout);

U1_adata_a12_a_a40_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a12_a_a40_DATAA_driver);

U1_adata_a12_a_a40_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U1_adata_a12_a_a40_DATAB_driver);

U1_adata_a12_a_a40_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a2_combout,
	dataout => U1_adata_a12_a_a40_DATAC_driver);

U1_adata_a12_a_a40_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux3_a5_combout,
	dataout => U1_adata_a12_a_a40_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N2
U1_adata_a12_a_a40 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a12_a_a40_combout = (!U5_aMAR_reg(7) & ((U6_aMux3_a2_combout) # ((!U5_aMAR_reg(6) & U6_aMux3_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a12_a_a40_DATAA_driver,
	datab => U1_adata_a12_a_a40_DATAB_driver,
	datac => U1_adata_a12_a_a40_DATAC_driver,
	datad => U1_adata_a12_a_a40_DATAD_driver,
	combout => U1_adata_a12_a_a40_combout);

U6_aMux2_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux2_a3_DATAA_driver);

U6_aMux2_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux2_a3_DATAB_driver);

U6_aMux2_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux2_a3_DATAC_driver);

U6_aMux2_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux2_a3_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N8
U6_aMux2_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux2_a3_combout = (U5_aMAR_reg(3) & (!U5_aMAR_reg(1) & (U5_aMAR_reg(0) $ (U5_aMAR_reg(4))))) # (!U5_aMAR_reg(3) & (U5_aMAR_reg(0) & (U5_aMAR_reg(4) & U5_aMAR_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux2_a3_DATAA_driver,
	datab => U6_aMux2_a3_DATAB_driver,
	datac => U6_aMux2_a3_DATAC_driver,
	datad => U6_aMux2_a3_DATAD_driver,
	combout => U6_aMux2_a3_combout);

U6_aMux2_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux2_a4_DATAA_driver);

U6_aMux2_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux2_a4_DATAB_driver);

U6_aMux2_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a2_combout,
	dataout => U6_aMux2_a4_DATAC_driver);

U6_aMux2_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a2_combout,
	dataout => U6_aMux2_a4_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N2
U6_aMux2_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux2_a4_combout = (!U5_aMAR_reg(3) & ((U5_aMAR_reg(2) & ((!U6_aMux2_a2_combout))) # (!U5_aMAR_reg(2) & (!U6_aMux6_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux2_a4_DATAA_driver,
	datab => U6_aMux2_a4_DATAB_driver,
	datac => U6_aMux2_a4_DATAC_driver,
	datad => U6_aMux2_a4_DATAD_driver,
	combout => U6_aMux2_a4_combout);

U6_aMux2_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a1_combout,
	dataout => U6_aMux2_a5_DATAA_driver);

U6_aMux2_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a4_combout,
	dataout => U6_aMux2_a5_DATAB_driver);

U6_aMux2_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a6_combout,
	dataout => U6_aMux2_a5_DATAC_driver);

U6_aMux2_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux2_a5_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N12
U6_aMux2_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux2_a5_combout = (U6_aMux2_a6_combout) # ((!U5_aMAR_reg(6) & ((U6_aMux6_a1_combout) # (U6_aMux2_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux2_a5_DATAA_driver,
	datab => U6_aMux2_a5_DATAB_driver,
	datac => U6_aMux2_a5_DATAC_driver,
	datad => U6_aMux2_a5_DATAD_driver,
	combout => U6_aMux2_a5_combout);

U6_aMux0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux0_a0_DATAA_driver);

U6_aMux0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux0_a0_DATAB_driver);

U6_aMux0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux0_a0_DATAC_driver);

U6_aMux0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux0_a0_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N2
U6_aMux0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux0_a0_combout = (!U5_aMAR_reg(0) & ((U5_aMAR_reg(1) & (!U5_aMAR_reg(3) & U5_aMAR_reg(2))) # (!U5_aMAR_reg(1) & (U5_aMAR_reg(3) & !U5_aMAR_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux0_a0_DATAA_driver,
	datab => U6_aMux0_a0_DATAB_driver,
	datac => U6_aMux0_a0_DATAC_driver,
	datad => U6_aMux0_a0_DATAD_driver,
	combout => U6_aMux0_a0_combout);

U1_adata_a15_a_a46_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_adata_a15_a_a46_DATAA_driver);

U1_adata_a15_a_a46_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a15_a_a46_DATAB_driver);

U1_adata_a15_a_a46_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux0_a0_combout,
	dataout => U1_adata_a15_a_a46_DATAC_driver);

U1_adata_a15_a_a46_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a15_a_a46_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N20
U1_adata_a15_a_a46 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a15_a_a46_combout = (!U5_aMAR_reg(6) & (((!U5_aMAR_reg(4)) # (!U6_aMux0_a0_combout)) # (!U5_aMAR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a15_a_a46_DATAA_driver,
	datab => U1_adata_a15_a_a46_DATAB_driver,
	datac => U1_adata_a15_a_a46_DATAC_driver,
	datad => U1_adata_a15_a_a46_DATAD_driver,
	combout => U1_adata_a15_a_a46_combout);

U3_aacc_a8_a_a57_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a8_a_a57_DATAA_driver);

U3_aacc_a8_a_a57_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a8_a_a57_DATAB_driver);

U3_aacc_a8_a_a57_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a8_a_a57_DATAC_driver);

U3_aacc_a8_a_a57_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a8_a_a57_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N24
U3_aacc_a8_a_a57 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a8_a_a57_combout = (U4_aIR_reg(7)) # ((U4_aIR_reg(6) & ((U4_aIR_reg(3)) # (U4_aIR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a8_a_a57_DATAA_driver,
	datab => U3_aacc_a8_a_a57_DATAB_driver,
	datac => U3_aacc_a8_a_a57_DATAC_driver,
	datad => U3_aacc_a8_a_a57_DATAD_driver,
	combout => U3_aacc_a8_a_a57_combout);

U3_aMux0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aMux0_a0_DATAA_driver);

U3_aMux0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a16_combout,
	dataout => U3_aMux0_a0_DATAB_driver);

U3_aMux0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux0_a0_DATAC_driver);

U3_aMux0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aMux0_a0_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N24
U3_aMux0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux0_a0_combout = (U4_aIR_reg(4) & (((U3_aacc(8)) # (!U4_aIR_reg(5))))) # (!U4_aIR_reg(4) & (U3_aAdd2_a16_combout & (U4_aIR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux0_a0_DATAA_driver,
	datab => U3_aMux0_a0_DATAB_driver,
	datac => U3_aMux0_a0_DATAC_driver,
	datad => U3_aMux0_a0_DATAD_driver,
	combout => U3_aMux0_a0_combout);

U3_aMux0_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux0_a1_DATAA_driver);

U3_aMux0_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux0_a1_DATAB_driver);

U3_aMux0_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux0_a0_combout,
	dataout => U3_aMux0_a1_DATAC_driver);

U3_aMux0_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a16_combout,
	dataout => U3_aMux0_a1_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N26
U3_aMux0_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux0_a1_combout = (U4_aIR_reg(5) & (((!U3_aMux0_a0_combout)) # (!U4_aIR_reg(3)))) # (!U4_aIR_reg(5) & (U4_aIR_reg(3) & (U3_aMux0_a0_combout & !U3_aAdd0_a16_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux0_a1_DATAA_driver,
	datab => U3_aMux0_a1_DATAB_driver,
	datac => U3_aMux0_a1_DATAC_driver,
	datad => U3_aMux0_a1_DATAD_driver,
	combout => U3_aMux0_a1_combout);

U3_aMux0_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a12_combout,
	dataout => U3_aMux0_a2_DATAA_driver);

U3_aMux0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux0_a1_combout,
	dataout => U3_aMux0_a2_DATAB_driver);

U3_aMux0_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a29_combout,
	dataout => U3_aMux0_a2_DATAC_driver);

U3_aMux0_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux0_a2_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N28
U3_aMux0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux0_a2_combout = (U3_aMux0_a1_combout & (((U3_aAdd1_a29_combout & !U4_aIR_reg(3))))) # (!U3_aMux0_a1_combout & ((U3_aAdd1_a12_combout) # ((U4_aIR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux0_a2_DATAA_driver,
	datab => U3_aMux0_a2_DATAB_driver,
	datac => U3_aMux0_a2_DATAC_driver,
	datad => U3_aMux0_a2_DATAD_driver,
	combout => U3_aMux0_a2_combout);

U3_aacc_a8_a_a58_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aacc_a8_a_a58_DATAB_driver);

U3_aacc_a8_a_a58_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a8_a_a58_DATAC_driver);

U3_aacc_a8_a_a58_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aacc_a8_a_a58_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N26
U3_aacc_a8_a_a58 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a8_a_a58_combout = (U4_aIR_reg(4) & (U3_aacc(0))) # (!U4_aIR_reg(4) & ((U3_aacc(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a8_a_a58_DATAB_driver,
	datac => U3_aacc_a8_a_a58_DATAC_driver,
	datad => U3_aacc_a8_a_a58_DATAD_driver,
	combout => U3_aacc_a8_a_a58_combout);

U3_aacc_a8_a_a59_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a8_a_a59_DATAA_driver);

U3_aacc_a8_a_a59_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux0_a2_combout,
	dataout => U3_aacc_a8_a_a59_DATAC_driver);

U3_aacc_a8_a_a59_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a8_a_a58_combout,
	dataout => U3_aacc_a8_a_a59_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N4
U3_aacc_a8_a_a59 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a8_a_a59_combout = (U4_aIR_reg(6) & ((U3_aacc_a8_a_a58_combout))) # (!U4_aIR_reg(6) & (U3_aMux0_a2_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a8_a_a59_DATAA_driver,
	datac => U3_aacc_a8_a_a59_DATAC_driver,
	datad => U3_aacc_a8_a_a59_DATAD_driver,
	combout => U3_aacc_a8_a_a59_combout);

U3_aacc_a8_a_a60_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a8_a_a57_combout,
	dataout => U3_aacc_a8_a_a60_DATAA_driver);

U3_aacc_a8_a_a60_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a8_a_a59_combout,
	dataout => U3_aacc_a8_a_a60_DATAB_driver);

U3_aacc_a8_a_a60_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U3_aacc_a8_a_a60_DATAC_driver);

U3_aacc_a8_a_a60_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr4_a0_combout,
	dataout => U3_aacc_a8_a_a60_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N28
U3_aacc_a8_a_a60 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a8_a_a60_combout = (U3_aacc_a8_a_a57_combout & (((U3_aacc(8))))) # (!U3_aacc_a8_a_a57_combout & ((U2_aWideOr4_a0_combout & (U3_aacc_a8_a_a59_combout)) # (!U2_aWideOr4_a0_combout & ((U3_aacc(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a8_a_a60_DATAA_driver,
	datab => U3_aacc_a8_a_a60_DATAB_driver,
	datac => U3_aacc_a8_a_a60_DATAC_driver,
	datad => U3_aacc_a8_a_a60_DATAD_driver,
	combout => U3_aacc_a8_a_a60_combout);

U7_areset_int_req_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_areset_int_req_CLK_driver);

U7_areset_int_req_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_areset_int_req_a0_combout,
	dataout => U7_areset_int_req_DATAIN_driver);

U7_areset_int_req_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_areset_int_req_ACLR_driver);

-- Location: LCFF_X22_Y18_N7
U7_areset_int_req : cycloneii_lcell_ff
PORT MAP (
	clk => U7_areset_int_req_CLK_driver,
	datain => U7_areset_int_req_DATAIN_driver,
	aclr => U7_areset_int_req_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_areset_int_req_aregout);

U8_aEqual0_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(11),
	dataout => U8_aEqual0_a3_DATAA_driver);

U8_aEqual0_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(9),
	dataout => U8_aEqual0_a3_DATAB_driver);

U8_aEqual0_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(10),
	dataout => U8_aEqual0_a3_DATAC_driver);

U8_aEqual0_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(8),
	dataout => U8_aEqual0_a3_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N6
U8_aEqual0_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a3_combout = (U8_acounter(11)) # ((U8_acounter(9)) # ((U8_acounter(10)) # (U8_acounter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a3_DATAA_driver,
	datab => U8_aEqual0_a3_DATAB_driver,
	datac => U8_aEqual0_a3_DATAC_driver,
	datad => U8_aEqual0_a3_DATAD_driver,
	combout => U8_aEqual0_a3_combout);

U7_areset_int_req_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_areset_int_req_a0_DATAB_driver);

U7_areset_int_req_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_areset_int_req_a0_DATAC_driver);

-- Location: LCCOMB_X22_Y18_N6
U7_areset_int_req_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U7_areset_int_req_a0_combout = (U8_aInt_req_aregout & U2_aWideOr0_a1_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U7_areset_int_req_a0_DATAB_driver,
	datac => U7_areset_int_req_a0_DATAC_driver,
	combout => U7_areset_int_req_a0_combout);

U6_aMux2_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux2_a6_DATAA_driver);

U6_aMux2_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux2_a6_DATAB_driver);

U6_aMux2_a6_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a3_combout,
	dataout => U6_aMux2_a6_DATAC_driver);

U6_aMux2_a6_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux2_a6_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N28
U6_aMux2_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux2_a6_combout = (U5_aMAR_reg(2) & (U5_aMAR_reg(6) & (U6_aMux2_a3_combout & !U5_aMAR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux2_a6_DATAA_driver,
	datab => U6_aMux2_a6_DATAB_driver,
	datac => U6_aMux2_a6_DATAC_driver,
	datad => U6_aMux2_a6_DATAD_driver,
	combout => U6_aMux2_a6_combout);

U3_aMux1_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aMux1_a2_DATAA_driver);

U3_aMux1_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a1_combout,
	dataout => U3_aMux1_a2_DATAB_driver);

U3_aMux1_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aMux1_a2_DATAC_driver);

U3_aMux1_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aMux1_a2_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N4
U3_aMux1_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux1_a2_combout = (U3_aacc(7) & (U4_aIR_reg(4) $ (((!U6_adata_rom_a7_a_a11_combout) # (!U3_aMux1_a1_combout))))) # (!U3_aacc(7) & ((U6_adata_rom_a7_a_a11_combout) # ((!U3_aMux1_a1_combout & U4_aIR_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux1_a2_DATAA_driver,
	datab => U3_aMux1_a2_DATAB_driver,
	datac => U3_aMux1_a2_DATAC_driver,
	datad => U3_aMux1_a2_DATAD_driver,
	combout => U3_aMux1_a2_combout);

U3_aMux1_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux1_a3_DATAA_driver);

U3_aMux1_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a2_combout,
	dataout => U3_aMux1_a3_DATAC_driver);

U3_aMux1_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a1_combout,
	dataout => U3_aMux1_a3_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N14
U3_aMux1_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux1_a3_combout = (U4_aIR_reg(5) & (U3_aMux1_a2_combout)) # (!U4_aIR_reg(5) & ((U3_aMux1_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux1_a3_DATAA_driver,
	datac => U3_aMux1_a3_DATAC_driver,
	datad => U3_aMux1_a3_DATAD_driver,
	combout => U3_aMux1_a3_combout);

U6_adata_rom_a0_a_a27_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_adata_rom_a0_a_a27_DATAA_driver);

U6_adata_rom_a0_a_a27_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_adata_rom_a0_a_a27_DATAB_driver);

U6_adata_rom_a0_a_a27_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_adata_rom_a0_a_a27_DATAC_driver);

U6_adata_rom_a0_a_a27_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a0_a_a27_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N24
U6_adata_rom_a0_a_a27 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a0_a_a27_combout = (U5_aMAR_reg(0) & ((U5_aMAR_reg(4) & (U5_aMAR_reg(1) & U5_aMAR_reg(5))) # (!U5_aMAR_reg(4) & ((!U5_aMAR_reg(5)))))) # (!U5_aMAR_reg(0) & (U5_aMAR_reg(4) & (U5_aMAR_reg(1) $ (U5_aMAR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a0_a_a27_DATAA_driver,
	datab => U6_adata_rom_a0_a_a27_DATAB_driver,
	datac => U6_adata_rom_a0_a_a27_DATAC_driver,
	datad => U6_adata_rom_a0_a_a27_DATAD_driver,
	combout => U6_adata_rom_a0_a_a27_combout);

U6_adata_rom_a0_a_a28_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a0_a_a27_combout,
	dataout => U6_adata_rom_a0_a_a28_DATAA_driver);

U6_adata_rom_a0_a_a28_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a0_a_a6_combout,
	dataout => U6_adata_rom_a0_a_a28_DATAB_driver);

U6_adata_rom_a0_a_a28_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a0_a_a28_DATAC_driver);

U6_adata_rom_a0_a_a28_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a0_a_a28_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N18
U6_adata_rom_a0_a_a28 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a0_a_a28_combout = (U6_adata_rom_a0_a_a27_combout & (U6_adata_rom_a0_a_a6_combout & (U5_aMAR_reg(6) $ (U5_aMAR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a0_a_a28_DATAA_driver,
	datab => U6_adata_rom_a0_a_a28_DATAB_driver,
	datac => U6_adata_rom_a0_a_a28_DATAC_driver,
	datad => U6_adata_rom_a0_a_a28_DATAD_driver,
	combout => U6_adata_rom_a0_a_a28_combout);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(3),
	combout => PORT_IN_acombout(3));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(1),
	combout => PORT_IN_acombout(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(2),
	combout => PORT_IN_acombout(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(5),
	combout => PORT_IN_acombout(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(6),
	combout => PORT_IN_acombout(6));

clk_aclkctrl_INCLK_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => clk_aclkctrl_INCLK_bus(0));

clk_aclkctrl_INCLK_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clk_aclkctrl_INCLK_bus(1));

clk_aclkctrl_INCLK_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clk_aclkctrl_INCLK_bus(2));

clk_aclkctrl_INCLK_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clk_aclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G2
clk_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_aclkctrl_outclk);

U2_acnt_a0_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(0),
	dataout => U2_acnt_a0_a_a9_DATAA_driver);

-- Location: LCCOMB_X16_Y17_N12
U2_acnt_a0_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a0_a_a9_combout = U2_acnt(0) $ (VCC)
-- U2_acnt_a0_a_a10 = CARRY(U2_acnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_acnt_a0_a_a9_DATAA_driver,
	datad => VCC,
	combout => U2_acnt_a0_a_a9_combout,
	cout => U2_acnt_a0_a_a10);

U2_acnt_a1_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(1),
	dataout => U2_acnt_a1_a_a11_DATAB_driver);

U2_acnt_a1_a_a11_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a0_a_a10,
	dataout => U2_acnt_a1_a_a11_CIN_driver);

-- Location: LCCOMB_X16_Y17_N14
U2_acnt_a1_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a1_a_a11_combout = (U2_acnt(1) & (!U2_acnt_a0_a_a10)) # (!U2_acnt(1) & ((U2_acnt_a0_a_a10) # (GND)))
-- U2_acnt_a1_a_a12 = CARRY((!U2_acnt_a0_a_a10) # (!U2_acnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U2_acnt_a1_a_a11_DATAB_driver,
	datad => VCC,
	cin => U2_acnt_a1_a_a11_CIN_driver,
	combout => U2_acnt_a1_a_a11_combout,
	cout => U2_acnt_a1_a_a12);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
reset_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => reset_acombout);

U2_acnt_a3_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(3),
	dataout => U2_acnt_a3_a_a15_DATAB_driver);

U2_acnt_a3_a_a15_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a2_a_a14,
	dataout => U2_acnt_a3_a_a15_CIN_driver);

-- Location: LCCOMB_X16_Y17_N18
U2_acnt_a3_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a3_a_a15_combout = (U2_acnt(3) & (!U2_acnt_a2_a_a14)) # (!U2_acnt(3) & ((U2_acnt_a2_a_a14) # (GND)))
-- U2_acnt_a3_a_a16 = CARRY((!U2_acnt_a2_a_a14) # (!U2_acnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U2_acnt_a3_a_a15_DATAB_driver,
	datad => VCC,
	cin => U2_acnt_a3_a_a15_CIN_driver,
	combout => U2_acnt_a3_a_a15_combout,
	cout => U2_acnt_a3_a_a16);

U2_acnt_a5_a_a19_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(5),
	dataout => U2_acnt_a5_a_a19_DATAB_driver);

U2_acnt_a5_a_a19_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a4_a_a18,
	dataout => U2_acnt_a5_a_a19_CIN_driver);

-- Location: LCCOMB_X16_Y17_N22
U2_acnt_a5_a_a19 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a5_a_a19_combout = (U2_acnt(5) & (!U2_acnt_a4_a_a18)) # (!U2_acnt(5) & ((U2_acnt_a4_a_a18) # (GND)))
-- U2_acnt_a5_a_a20 = CARRY((!U2_acnt_a4_a_a18) # (!U2_acnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U2_acnt_a5_a_a19_DATAB_driver,
	datad => VCC,
	cin => U2_acnt_a5_a_a19_CIN_driver,
	combout => U2_acnt_a5_a_a19_combout,
	cout => U2_acnt_a5_a_a20);

U2_acnt_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a5_a_CLK_driver);

U2_acnt_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a5_a_a19_combout,
	dataout => U2_acnt_a5_a_DATAIN_driver);

U2_acnt_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a5_a_ACLR_driver);

U2_acnt_a5_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a5_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N23
U2_acnt_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a5_a_CLK_driver,
	datain => U2_acnt_a5_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a5_a_ACLR_driver,
	sload => U2_acnt_a5_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(5));

U2_acnt_a6_a_a21_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(6),
	dataout => U2_acnt_a6_a_a21_DATAA_driver);

U2_acnt_a6_a_a21_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a5_a_a20,
	dataout => U2_acnt_a6_a_a21_CIN_driver);

-- Location: LCCOMB_X16_Y17_N24
U2_acnt_a6_a_a21 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a6_a_a21_combout = (U2_acnt(6) & (U2_acnt_a5_a_a20 $ (GND))) # (!U2_acnt(6) & (!U2_acnt_a5_a_a20 & VCC))
-- U2_acnt_a6_a_a22 = CARRY((U2_acnt(6) & !U2_acnt_a5_a_a20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U2_acnt_a6_a_a21_DATAA_driver,
	datad => VCC,
	cin => U2_acnt_a6_a_a21_CIN_driver,
	combout => U2_acnt_a6_a_a21_combout,
	cout => U2_acnt_a6_a_a22);

U2_acnt_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a6_a_CLK_driver);

U2_acnt_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a6_a_a21_combout,
	dataout => U2_acnt_a6_a_DATAIN_driver);

U2_acnt_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a6_a_ACLR_driver);

U2_acnt_a6_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a6_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N25
U2_acnt_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a6_a_CLK_driver,
	datain => U2_acnt_a6_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a6_a_ACLR_driver,
	sload => U2_acnt_a6_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(6));

U2_acnt_a7_a_a23_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(7),
	dataout => U2_acnt_a7_a_a23_DATAB_driver);

U2_acnt_a7_a_a23_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a6_a_a22,
	dataout => U2_acnt_a7_a_a23_CIN_driver);

-- Location: LCCOMB_X16_Y17_N26
U2_acnt_a7_a_a23 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a7_a_a23_combout = (U2_acnt(7) & (!U2_acnt_a6_a_a22)) # (!U2_acnt(7) & ((U2_acnt_a6_a_a22) # (GND)))
-- U2_acnt_a7_a_a24 = CARRY((!U2_acnt_a6_a_a22) # (!U2_acnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U2_acnt_a7_a_a23_DATAB_driver,
	datad => VCC,
	cin => U2_acnt_a7_a_a23_CIN_driver,
	combout => U2_acnt_a7_a_a23_combout,
	cout => U2_acnt_a7_a_a24);

U2_acnt_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a7_a_CLK_driver);

U2_acnt_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a7_a_a23_combout,
	dataout => U2_acnt_a7_a_DATAIN_driver);

U2_acnt_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a7_a_ACLR_driver);

U2_acnt_a7_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a7_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N27
U2_acnt_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a7_a_CLK_driver,
	datain => U2_acnt_a7_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a7_a_ACLR_driver,
	sload => U2_acnt_a7_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(7));

U2_aEqual0_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(4),
	dataout => U2_aEqual0_a1_DATAA_driver);

U2_aEqual0_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(5),
	dataout => U2_aEqual0_a1_DATAB_driver);

U2_aEqual0_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(6),
	dataout => U2_aEqual0_a1_DATAC_driver);

U2_aEqual0_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(7),
	dataout => U2_aEqual0_a1_DATAD_driver);

-- Location: LCCOMB_X16_Y17_N4
U2_aEqual0_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aEqual0_a1_combout = (((!U2_acnt(7)) # (!U2_acnt(6))) # (!U2_acnt(5))) # (!U2_acnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aEqual0_a1_DATAA_driver,
	datab => U2_aEqual0_a1_DATAB_driver,
	datac => U2_aEqual0_a1_DATAC_driver,
	datad => U2_aEqual0_a1_DATAD_driver,
	combout => U2_aEqual0_a1_combout);

U2_acnt_a8_a_a25_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(8),
	dataout => U2_acnt_a8_a_a25_DATAD_driver);

U2_acnt_a8_a_a25_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a7_a_a24,
	dataout => U2_acnt_a8_a_a25_CIN_driver);

-- Location: LCCOMB_X16_Y17_N28
U2_acnt_a8_a_a25 : cycloneii_lcell_comb
-- Equation(s):
-- U2_acnt_a8_a_a25_combout = U2_acnt_a7_a_a24 $ (!U2_acnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => U2_acnt_a8_a_a25_DATAD_driver,
	cin => U2_acnt_a8_a_a25_CIN_driver,
	combout => U2_acnt_a8_a_a25_combout);

U2_acnt_a8_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a8_a_CLK_driver);

U2_acnt_a8_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a8_a_a25_combout,
	dataout => U2_acnt_a8_a_DATAIN_driver);

U2_acnt_a8_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a8_a_ACLR_driver);

U2_acnt_a8_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a8_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N29
U2_acnt_a8_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a8_a_CLK_driver,
	datain => U2_acnt_a8_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a8_a_ACLR_driver,
	sload => U2_acnt_a8_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(8));

U2_aEqual0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a0_combout,
	dataout => U2_aEqual0_a2_DATAB_driver);

U2_aEqual0_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a1_combout,
	dataout => U2_aEqual0_a2_DATAC_driver);

U2_aEqual0_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(8),
	dataout => U2_aEqual0_a2_DATAD_driver);

-- Location: LCCOMB_X16_Y17_N30
U2_aEqual0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aEqual0_a2_combout = (!U2_aEqual0_a0_combout & (!U2_aEqual0_a1_combout & U2_acnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_aEqual0_a2_DATAB_driver,
	datac => U2_aEqual0_a2_DATAC_driver,
	datad => U2_aEqual0_a2_DATAD_driver,
	combout => U2_aEqual0_a2_combout);

U2_acnt_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a1_a_CLK_driver);

U2_acnt_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a1_a_a11_combout,
	dataout => U2_acnt_a1_a_DATAIN_driver);

U2_acnt_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a1_a_ACLR_driver);

U2_acnt_a1_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a1_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N15
U2_acnt_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a1_a_CLK_driver,
	datain => U2_acnt_a1_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a1_a_ACLR_driver,
	sload => U2_acnt_a1_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(1));

U2_acnt_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a3_a_CLK_driver);

U2_acnt_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a3_a_a15_combout,
	dataout => U2_acnt_a3_a_DATAIN_driver);

U2_acnt_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a3_a_ACLR_driver);

U2_acnt_a3_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a3_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N19
U2_acnt_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a3_a_CLK_driver,
	datain => U2_acnt_a3_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a3_a_ACLR_driver,
	sload => U2_acnt_a3_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(3));

U2_acnt_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_acnt_a0_a_CLK_driver);

U2_acnt_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt_a0_a_a9_combout,
	dataout => U2_acnt_a0_a_DATAIN_driver);

U2_acnt_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_acnt_a0_a_ACLR_driver);

U2_acnt_a0_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_acnt_a0_a_SLOAD_driver);

-- Location: LCFF_X16_Y17_N13
U2_acnt_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U2_acnt_a0_a_CLK_driver,
	datain => U2_acnt_a0_a_DATAIN_driver,
	sdata => VCC,
	aclr => U2_acnt_a0_a_ACLR_driver,
	sload => U2_acnt_a0_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_acnt(0));

U2_aEqual0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(2),
	dataout => U2_aEqual0_a0_DATAA_driver);

U2_aEqual0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(3),
	dataout => U2_aEqual0_a0_DATAB_driver);

U2_aEqual0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(1),
	dataout => U2_aEqual0_a0_DATAC_driver);

U2_aEqual0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(0),
	dataout => U2_aEqual0_a0_DATAD_driver);

-- Location: LCCOMB_X16_Y17_N2
U2_aEqual0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aEqual0_a0_combout = (((!U2_acnt(0)) # (!U2_acnt(1))) # (!U2_acnt(3))) # (!U2_acnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aEqual0_a0_DATAA_driver,
	datab => U2_aEqual0_a0_DATAB_driver,
	datac => U2_aEqual0_a0_DATAC_driver,
	datad => U2_aEqual0_a0_DATAD_driver,
	combout => U2_aEqual0_a0_combout);

U2_anext_state_aR0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U2_anext_state_aR0_a0_DATAA_driver);

U2_anext_state_aR0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a0_combout,
	dataout => U2_anext_state_aR0_a0_DATAB_driver);

U2_anext_state_aR0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a1_combout,
	dataout => U2_anext_state_aR0_a0_DATAC_driver);

U2_anext_state_aR0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_acnt(8),
	dataout => U2_anext_state_aR0_a0_DATAD_driver);

-- Location: LCCOMB_X16_Y17_N8
U2_anext_state_aR0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aR0_a0_combout = ((!U2_aEqual0_a0_combout & (!U2_aEqual0_a1_combout & U2_acnt(8)))) # (!U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aR0_a0_DATAA_driver,
	datab => U2_anext_state_aR0_a0_DATAB_driver,
	datac => U2_anext_state_aR0_a0_DATAC_driver,
	datad => U2_anext_state_aR0_a0_DATAD_driver,
	combout => U2_anext_state_aR0_a0_combout);

U2_apresent_state_aR0_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aR0_CLK_driver);

U2_apresent_state_aR0_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aR0_a0_combout,
	dataout => U2_apresent_state_aR0_DATAIN_driver);

U2_apresent_state_aR0_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aR0_ACLR_driver);

-- Location: LCFF_X16_Y17_N9
U2_apresent_state_aR0 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aR0_CLK_driver,
	datain => U2_apresent_state_aR0_DATAIN_driver,
	aclr => U2_apresent_state_aR0_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aR0_aregout);

U2_apresent_state_aR1_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR0_aregout,
	dataout => U2_apresent_state_aR1_a0_DATAC_driver);

-- Location: LCCOMB_X23_Y17_N4
U2_apresent_state_aR1_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_apresent_state_aR1_a0_combout = !U2_apresent_state_aR0_aregout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U2_apresent_state_aR1_a0_DATAC_driver,
	combout => U2_apresent_state_aR1_a0_combout);

U2_apresent_state_aR1_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => U2_apresent_state_aR1_CLK_driver);

U2_apresent_state_aR1_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_a0_combout,
	dataout => U2_apresent_state_aR1_DATAIN_driver);

U2_apresent_state_aR1_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aR1_ACLR_driver);

-- Location: LCFF_X23_Y17_N5
U2_apresent_state_aR1 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aR1_CLK_driver,
	datain => U2_apresent_state_aR1_DATAIN_driver,
	aclr => U2_apresent_state_aR1_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aR1_aregout);

U2_apresent_state_aI3_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI3_CLK_driver);

U2_apresent_state_aI3_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U2_apresent_state_aI3_SDATA_driver);

U2_apresent_state_aI3_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI3_ACLR_driver);

-- Location: LCFF_X23_Y17_N25
U2_apresent_state_aI3 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI3_CLK_driver,
	sdata => U2_apresent_state_aI3_SDATA_driver,
	aclr => U2_apresent_state_aI3_ACLR_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI3_aregout);

U2_aWideOr0_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U2_aWideOr0_a1_DATAA_driver);

U2_aWideOr0_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI1_aregout,
	dataout => U2_aWideOr0_a1_DATAB_driver);

U2_aWideOr0_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR0_aregout,
	dataout => U2_aWideOr0_a1_DATAC_driver);

U2_aWideOr0_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_aWideOr0_a1_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N20
U2_aWideOr0_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aWideOr0_a1_combout = (!U2_apresent_state_aI2_aregout & (!U2_apresent_state_aI1_aregout & (U2_apresent_state_aR0_aregout & !U2_apresent_state_aI3_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aWideOr0_a1_DATAA_driver,
	datab => U2_aWideOr0_a1_DATAB_driver,
	datac => U2_aWideOr0_a1_DATAC_driver,
	datad => U2_aWideOr0_a1_DATAD_driver,
	combout => U2_aWideOr0_a1_combout);

U2_aSelector0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U2_aSelector0_a0_DATAB_driver);

U2_aSelector0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U2_aSelector0_a0_DATAC_driver);

U2_aSelector0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aEqual0_a2_combout,
	dataout => U2_aSelector0_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N12
U2_aSelector0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aSelector0_a0_combout = (U2_apresent_state_aR1_aregout & ((U2_aEqual0_a2_combout))) # (!U2_apresent_state_aR1_aregout & (U2_aWideOr0_a1_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_aSelector0_a0_DATAB_driver,
	datac => U2_aSelector0_a0_DATAC_driver,
	datad => U2_aSelector0_a0_DATAD_driver,
	combout => U2_aSelector0_a0_combout);

U2_apresent_state_aI1_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI1_CLK_driver);

U2_apresent_state_aI1_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aSelector0_a0_combout,
	dataout => U2_apresent_state_aI1_DATAIN_driver);

U2_apresent_state_aI1_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI1_ACLR_driver);

-- Location: LCFF_X23_Y17_N13
U2_apresent_state_aI1 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI1_CLK_driver,
	datain => U2_apresent_state_aI1_DATAIN_driver,
	aclr => U2_apresent_state_aI1_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI1_aregout);

U2_apresent_state_aI2_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => U2_apresent_state_aI2_CLK_driver);

U2_apresent_state_aI2_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI1_aregout,
	dataout => U2_apresent_state_aI2_SDATA_driver);

U2_apresent_state_aI2_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI2_ACLR_driver);

-- Location: LCFF_X23_Y17_N3
U2_apresent_state_aI2 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI2_CLK_driver,
	sdata => U2_apresent_state_aI2_SDATA_driver,
	aclr => U2_apresent_state_aI2_ACLR_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI2_aregout);

U2_aWideOr2_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U2_aWideOr2_a0_DATAA_driver);

U2_aWideOr2_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U2_aWideOr2_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N30
U2_aWideOr2_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aWideOr2_a0_combout = (!U2_apresent_state_aI10_aregout & !U2_apresent_state_aI2_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aWideOr2_a0_DATAA_driver,
	datad => U2_aWideOr2_a0_DATAD_driver,
	combout => U2_aWideOr2_a0_combout);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clk_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => clk_acombout);

U1_aclock_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U1_aclock_DATAA_driver);

U1_aclock_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_aclock_DATAB_driver);

U1_aclock_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_aclock_DATAC_driver);

U1_aclock_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => U1_aclock_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N22
U1_aclock : cycloneii_lcell_comb
-- Equation(s):
-- U1_aclock_acombout = LCELL((!clk_acombout & ((U2_apresent_state_aI5_aregout) # ((U2_apresent_state_aR1_aregout) # (!U2_aWideOr2_a0_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_aclock_DATAA_driver,
	datab => U1_aclock_DATAB_driver,
	datac => U1_aclock_DATAC_driver,
	datad => U1_aclock_DATAD_driver,
	combout => U1_aclock_acombout);

U1_aclock_aclkctrl_INCLK_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aclock_acombout,
	dataout => U1_aclock_aclkctrl_INCLK_bus(0));

U1_aclock_aclkctrl_INCLK_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => U1_aclock_aclkctrl_INCLK_bus(1));

U1_aclock_aclkctrl_INCLK_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => U1_aclock_aclkctrl_INCLK_bus(2));

U1_aclock_aclkctrl_INCLK_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => U1_aclock_aclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G8
U1_aclock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => U1_aclock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => U1_aclock_aclkctrl_outclk);

U2_aWideOr0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U2_aWideOr0_a0_DATAB_driver);

U2_aWideOr0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR0_aregout,
	dataout => U2_aWideOr0_a0_DATAC_driver);

U2_aWideOr0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI1_aregout,
	dataout => U2_aWideOr0_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N0
U2_aWideOr0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aWideOr0_a0_combout = (U2_apresent_state_aI2_aregout) # ((U2_apresent_state_aI1_aregout) # (!U2_apresent_state_aR0_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_aWideOr0_a0_DATAB_driver,
	datac => U2_aWideOr0_a0_DATAC_driver,
	datad => U2_aWideOr0_a0_DATAD_driver,
	combout => U2_aWideOr0_a0_combout);

U5_aMAR_reg_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a0_a_CLK_driver);

U5_aMAR_reg_a0_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U5_aMAR_reg_a0_a_SDATA_driver);

U5_aMAR_reg_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a0_a_ACLR_driver);

U5_aMAR_reg_a0_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a0_a_ENA_driver);

-- Location: LCFF_X15_Y18_N11
U5_aMAR_reg_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a0_a_CLK_driver,
	sdata => U5_aMAR_reg_a0_a_SDATA_driver,
	aclr => U5_aMAR_reg_a0_a_ACLR_driver,
	sload => VCC,
	ena => U5_aMAR_reg_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(0));

U8_acounter_a0_a_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(0),
	dataout => U8_acounter_a0_a_a20_DATAA_driver);

-- Location: LCCOMB_X25_Y18_N12
U8_acounter_a0_a_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a0_a_a20_combout = U8_acounter(0) $ (VCC)
-- U8_acounter_a0_a_a21 = CARRY(U8_acounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a0_a_a20_DATAA_driver,
	datad => VCC,
	combout => U8_acounter_a0_a_a20_combout,
	cout => U8_acounter_a0_a_a21);

U8_acounter_a1_a_a22_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(1),
	dataout => U8_acounter_a1_a_a22_DATAB_driver);

U8_acounter_a1_a_a22_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a0_a_a21,
	dataout => U8_acounter_a1_a_a22_CIN_driver);

-- Location: LCCOMB_X25_Y18_N14
U8_acounter_a1_a_a22 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a1_a_a22_combout = (U8_acounter(1) & (!U8_acounter_a0_a_a21)) # (!U8_acounter(1) & ((U8_acounter_a0_a_a21) # (GND)))
-- U8_acounter_a1_a_a23 = CARRY((!U8_acounter_a0_a_a21) # (!U8_acounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a1_a_a22_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a1_a_a22_CIN_driver,
	combout => U8_acounter_a1_a_a22_combout,
	cout => U8_acounter_a1_a_a23);

U8_acounter_a4_a_a28_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(4),
	dataout => U8_acounter_a4_a_a28_DATAA_driver);

U8_acounter_a4_a_a28_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a3_a_a27,
	dataout => U8_acounter_a4_a_a28_CIN_driver);

-- Location: LCCOMB_X25_Y18_N20
U8_acounter_a4_a_a28 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a4_a_a28_combout = (U8_acounter(4) & (U8_acounter_a3_a_a27 $ (GND))) # (!U8_acounter(4) & (!U8_acounter_a3_a_a27 & VCC))
-- U8_acounter_a4_a_a29 = CARRY((U8_acounter(4) & !U8_acounter_a3_a_a27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a4_a_a28_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a4_a_a28_CIN_driver,
	combout => U8_acounter_a4_a_a28_combout,
	cout => U8_acounter_a4_a_a29);

-- Location: LCCOMB_X25_Y17_N24
a_aGND : cycloneii_lcell_comb
-- Equation(s):
-- a_aGND_acombout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aGND_acombout);

U8_acounter_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a4_a_CLK_driver);

U8_acounter_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a4_a_a28_combout,
	dataout => U8_acounter_a4_a_DATAIN_driver);

U8_acounter_a4_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a4_a_SDATA_driver);

U8_acounter_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a4_a_ACLR_driver);

U8_acounter_a4_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a4_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N21
U8_acounter_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a4_a_CLK_driver,
	datain => U8_acounter_a4_a_DATAIN_driver,
	sdata => U8_acounter_a4_a_SDATA_driver,
	aclr => U8_acounter_a4_a_ACLR_driver,
	sload => U8_acounter_a4_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(4));

U8_aEqual0_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(6),
	dataout => U8_aEqual0_a2_DATAA_driver);

U8_aEqual0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(7),
	dataout => U8_aEqual0_a2_DATAB_driver);

U8_aEqual0_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(4),
	dataout => U8_aEqual0_a2_DATAC_driver);

U8_aEqual0_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(5),
	dataout => U8_aEqual0_a2_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N4
U8_aEqual0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a2_combout = (U8_acounter(6)) # ((U8_acounter(7)) # ((U8_acounter(4)) # (U8_acounter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a2_DATAA_driver,
	datab => U8_aEqual0_a2_DATAB_driver,
	datac => U8_aEqual0_a2_DATAC_driver,
	datad => U8_aEqual0_a2_DATAD_driver,
	combout => U8_aEqual0_a2_combout);

U8_acounter_a13_a_a46_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(13),
	dataout => U8_acounter_a13_a_a46_DATAA_driver);

U8_acounter_a13_a_a46_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a12_a_a45,
	dataout => U8_acounter_a13_a_a46_CIN_driver);

-- Location: LCCOMB_X25_Y17_N6
U8_acounter_a13_a_a46 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a13_a_a46_combout = (U8_acounter(13) & (!U8_acounter_a12_a_a45)) # (!U8_acounter(13) & ((U8_acounter_a12_a_a45) # (GND)))
-- U8_acounter_a13_a_a47 = CARRY((!U8_acounter_a12_a_a45) # (!U8_acounter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a13_a_a46_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a13_a_a46_CIN_driver,
	combout => U8_acounter_a13_a_a46_combout,
	cout => U8_acounter_a13_a_a47);

U8_acounter_a13_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a13_a_CLK_driver);

U8_acounter_a13_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a13_a_a46_combout,
	dataout => U8_acounter_a13_a_DATAIN_driver);

U8_acounter_a13_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a13_a_SDATA_driver);

U8_acounter_a13_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a13_a_ACLR_driver);

U8_acounter_a13_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a13_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N7
U8_acounter_a13_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a13_a_CLK_driver,
	datain => U8_acounter_a13_a_DATAIN_driver,
	sdata => U8_acounter_a13_a_SDATA_driver,
	aclr => U8_acounter_a13_a_ACLR_driver,
	sload => U8_acounter_a13_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(13));

U8_aEqual0_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(15),
	dataout => U8_aEqual0_a4_DATAA_driver);

U8_aEqual0_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(14),
	dataout => U8_aEqual0_a4_DATAB_driver);

U8_aEqual0_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(12),
	dataout => U8_aEqual0_a4_DATAC_driver);

U8_aEqual0_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(13),
	dataout => U8_aEqual0_a4_DATAD_driver);

-- Location: LCCOMB_X25_Y17_N22
U8_aEqual0_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a4_combout = (U8_acounter(15)) # ((U8_acounter(14)) # ((U8_acounter(12)) # (U8_acounter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a4_DATAA_driver,
	datab => U8_aEqual0_a4_DATAB_driver,
	datac => U8_aEqual0_a4_DATAC_driver,
	datad => U8_aEqual0_a4_DATAD_driver,
	combout => U8_aEqual0_a4_combout);

U8_acounter_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a0_a_CLK_driver);

U8_acounter_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a0_a_a20_combout,
	dataout => U8_acounter_a0_a_DATAIN_driver);

U8_acounter_a0_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_acounter_a0_a_SDATA_driver);

U8_acounter_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a0_a_ACLR_driver);

U8_acounter_a0_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a0_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N13
U8_acounter_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a0_a_CLK_driver,
	datain => U8_acounter_a0_a_DATAIN_driver,
	sdata => U8_acounter_a0_a_SDATA_driver,
	aclr => U8_acounter_a0_a_ACLR_driver,
	sload => U8_acounter_a0_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(0));

U8_aEqual0_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(2),
	dataout => U8_aEqual0_a1_DATAA_driver);

U8_aEqual0_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(3),
	dataout => U8_aEqual0_a1_DATAB_driver);

U8_aEqual0_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(1),
	dataout => U8_aEqual0_a1_DATAC_driver);

U8_aEqual0_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(0),
	dataout => U8_aEqual0_a1_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N2
U8_aEqual0_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a1_combout = (((!U8_acounter(0)) # (!U8_acounter(1))) # (!U8_acounter(3))) # (!U8_acounter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a1_DATAA_driver,
	datab => U8_aEqual0_a1_DATAB_driver,
	datac => U8_aEqual0_a1_DATAC_driver,
	datad => U8_aEqual0_a1_DATAD_driver,
	combout => U8_aEqual0_a1_combout);

U8_aEqual0_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a3_combout,
	dataout => U8_aEqual0_a5_DATAA_driver);

U8_aEqual0_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a2_combout,
	dataout => U8_aEqual0_a5_DATAB_driver);

U8_aEqual0_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a4_combout,
	dataout => U8_aEqual0_a5_DATAC_driver);

U8_aEqual0_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a1_combout,
	dataout => U8_aEqual0_a5_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N0
U8_aEqual0_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a5_combout = (U8_aEqual0_a3_combout) # ((U8_aEqual0_a2_combout) # ((U8_aEqual0_a4_combout) # (U8_aEqual0_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a5_DATAA_driver,
	datab => U8_aEqual0_a5_DATAB_driver,
	datac => U8_aEqual0_a5_DATAC_driver,
	datad => U8_aEqual0_a5_DATAD_driver,
	combout => U8_aEqual0_a5_combout);

U8_acounter_a19_a_a54_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_acounter_a19_a_a54_DATAA_driver);

U8_acounter_a19_a_a54_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a0_combout,
	dataout => U8_acounter_a19_a_a54_DATAC_driver);

U8_acounter_a19_a_a54_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a5_combout,
	dataout => U8_acounter_a19_a_a54_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N10
U8_acounter_a19_a_a54 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a19_a_a54_combout = ((!U8_aEqual0_a0_combout & !U8_aEqual0_a5_combout)) # (!U8_aTaster2_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a19_a_a54_DATAA_driver,
	datac => U8_acounter_a19_a_a54_DATAC_driver,
	datad => U8_acounter_a19_a_a54_DATAD_driver,
	combout => U8_acounter_a19_a_a54_combout);

U8_acounter_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a1_a_CLK_driver);

U8_acounter_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a1_a_a22_combout,
	dataout => U8_acounter_a1_a_DATAIN_driver);

U8_acounter_a1_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_acounter_a1_a_SDATA_driver);

U8_acounter_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a1_a_ACLR_driver);

U8_acounter_a1_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a1_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N15
U8_acounter_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a1_a_CLK_driver,
	datain => U8_acounter_a1_a_DATAIN_driver,
	sdata => U8_acounter_a1_a_SDATA_driver,
	aclr => U8_acounter_a1_a_ACLR_driver,
	sload => U8_acounter_a1_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(1));

U8_acounter_a3_a_a26_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(3),
	dataout => U8_acounter_a3_a_a26_DATAB_driver);

U8_acounter_a3_a_a26_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a2_a_a25,
	dataout => U8_acounter_a3_a_a26_CIN_driver);

-- Location: LCCOMB_X25_Y18_N18
U8_acounter_a3_a_a26 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a3_a_a26_combout = (U8_acounter(3) & (!U8_acounter_a2_a_a25)) # (!U8_acounter(3) & ((U8_acounter_a2_a_a25) # (GND)))
-- U8_acounter_a3_a_a27 = CARRY((!U8_acounter_a2_a_a25) # (!U8_acounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a3_a_a26_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a3_a_a26_CIN_driver,
	combout => U8_acounter_a3_a_a26_combout,
	cout => U8_acounter_a3_a_a27);

U8_acounter_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a3_a_CLK_driver);

U8_acounter_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a3_a_a26_combout,
	dataout => U8_acounter_a3_a_DATAIN_driver);

U8_acounter_a3_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_acounter_a3_a_SDATA_driver);

U8_acounter_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a3_a_ACLR_driver);

U8_acounter_a3_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a3_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N19
U8_acounter_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a3_a_CLK_driver,
	datain => U8_acounter_a3_a_DATAIN_driver,
	sdata => U8_acounter_a3_a_SDATA_driver,
	aclr => U8_acounter_a3_a_ACLR_driver,
	sload => U8_acounter_a3_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(3));

U8_acounter_a5_a_a30_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(5),
	dataout => U8_acounter_a5_a_a30_DATAB_driver);

U8_acounter_a5_a_a30_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a4_a_a29,
	dataout => U8_acounter_a5_a_a30_CIN_driver);

-- Location: LCCOMB_X25_Y18_N22
U8_acounter_a5_a_a30 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a5_a_a30_combout = (U8_acounter(5) & (!U8_acounter_a4_a_a29)) # (!U8_acounter(5) & ((U8_acounter_a4_a_a29) # (GND)))
-- U8_acounter_a5_a_a31 = CARRY((!U8_acounter_a4_a_a29) # (!U8_acounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a5_a_a30_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a5_a_a30_CIN_driver,
	combout => U8_acounter_a5_a_a30_combout,
	cout => U8_acounter_a5_a_a31);

U8_acounter_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a5_a_CLK_driver);

U8_acounter_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a5_a_a30_combout,
	dataout => U8_acounter_a5_a_DATAIN_driver);

U8_acounter_a5_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a5_a_SDATA_driver);

U8_acounter_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a5_a_ACLR_driver);

U8_acounter_a5_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a5_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N23
U8_acounter_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a5_a_CLK_driver,
	datain => U8_acounter_a5_a_DATAIN_driver,
	sdata => U8_acounter_a5_a_SDATA_driver,
	aclr => U8_acounter_a5_a_ACLR_driver,
	sload => U8_acounter_a5_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(5));

U8_acounter_a7_a_a34_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(7),
	dataout => U8_acounter_a7_a_a34_DATAB_driver);

U8_acounter_a7_a_a34_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a6_a_a33,
	dataout => U8_acounter_a7_a_a34_CIN_driver);

-- Location: LCCOMB_X25_Y18_N26
U8_acounter_a7_a_a34 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a7_a_a34_combout = (U8_acounter(7) & (!U8_acounter_a6_a_a33)) # (!U8_acounter(7) & ((U8_acounter_a6_a_a33) # (GND)))
-- U8_acounter_a7_a_a35 = CARRY((!U8_acounter_a6_a_a33) # (!U8_acounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a7_a_a34_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a7_a_a34_CIN_driver,
	combout => U8_acounter_a7_a_a34_combout,
	cout => U8_acounter_a7_a_a35);

U8_acounter_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a7_a_CLK_driver);

U8_acounter_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a7_a_a34_combout,
	dataout => U8_acounter_a7_a_DATAIN_driver);

U8_acounter_a7_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a7_a_SDATA_driver);

U8_acounter_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a7_a_ACLR_driver);

U8_acounter_a7_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a7_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N27
U8_acounter_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a7_a_CLK_driver,
	datain => U8_acounter_a7_a_DATAIN_driver,
	sdata => U8_acounter_a7_a_SDATA_driver,
	aclr => U8_acounter_a7_a_ACLR_driver,
	sload => U8_acounter_a7_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(7));

U8_acounter_a8_a_a36_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(8),
	dataout => U8_acounter_a8_a_a36_DATAB_driver);

U8_acounter_a8_a_a36_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a7_a_a35,
	dataout => U8_acounter_a8_a_a36_CIN_driver);

-- Location: LCCOMB_X25_Y18_N28
U8_acounter_a8_a_a36 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a8_a_a36_combout = (U8_acounter(8) & (U8_acounter_a7_a_a35 $ (GND))) # (!U8_acounter(8) & (!U8_acounter_a7_a_a35 & VCC))
-- U8_acounter_a8_a_a37 = CARRY((U8_acounter(8) & !U8_acounter_a7_a_a35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a8_a_a36_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a8_a_a36_CIN_driver,
	combout => U8_acounter_a8_a_a36_combout,
	cout => U8_acounter_a8_a_a37);

U8_acounter_a8_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a8_a_CLK_driver);

U8_acounter_a8_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a8_a_a36_combout,
	dataout => U8_acounter_a8_a_DATAIN_driver);

U8_acounter_a8_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a8_a_SDATA_driver);

U8_acounter_a8_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a8_a_ACLR_driver);

U8_acounter_a8_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a8_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N29
U8_acounter_a8_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a8_a_CLK_driver,
	datain => U8_acounter_a8_a_DATAIN_driver,
	sdata => U8_acounter_a8_a_SDATA_driver,
	aclr => U8_acounter_a8_a_ACLR_driver,
	sload => U8_acounter_a8_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(8));

U8_acounter_a9_a_a38_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(9),
	dataout => U8_acounter_a9_a_a38_DATAB_driver);

U8_acounter_a9_a_a38_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a8_a_a37,
	dataout => U8_acounter_a9_a_a38_CIN_driver);

-- Location: LCCOMB_X25_Y18_N30
U8_acounter_a9_a_a38 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a9_a_a38_combout = (U8_acounter(9) & (!U8_acounter_a8_a_a37)) # (!U8_acounter(9) & ((U8_acounter_a8_a_a37) # (GND)))
-- U8_acounter_a9_a_a39 = CARRY((!U8_acounter_a8_a_a37) # (!U8_acounter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a9_a_a38_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a9_a_a38_CIN_driver,
	combout => U8_acounter_a9_a_a38_combout,
	cout => U8_acounter_a9_a_a39);

U8_acounter_a9_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a9_a_CLK_driver);

U8_acounter_a9_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a9_a_a38_combout,
	dataout => U8_acounter_a9_a_DATAIN_driver);

U8_acounter_a9_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a9_a_SDATA_driver);

U8_acounter_a9_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a9_a_ACLR_driver);

U8_acounter_a9_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a9_a_SLOAD_driver);

-- Location: LCFF_X25_Y18_N31
U8_acounter_a9_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a9_a_CLK_driver,
	datain => U8_acounter_a9_a_DATAIN_driver,
	sdata => U8_acounter_a9_a_SDATA_driver,
	aclr => U8_acounter_a9_a_ACLR_driver,
	sload => U8_acounter_a9_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(9));

U8_acounter_a10_a_a40_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(10),
	dataout => U8_acounter_a10_a_a40_DATAB_driver);

U8_acounter_a10_a_a40_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a9_a_a39,
	dataout => U8_acounter_a10_a_a40_CIN_driver);

-- Location: LCCOMB_X25_Y17_N0
U8_acounter_a10_a_a40 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a10_a_a40_combout = (U8_acounter(10) & (U8_acounter_a9_a_a39 $ (GND))) # (!U8_acounter(10) & (!U8_acounter_a9_a_a39 & VCC))
-- U8_acounter_a10_a_a41 = CARRY((U8_acounter(10) & !U8_acounter_a9_a_a39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a10_a_a40_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a10_a_a40_CIN_driver,
	combout => U8_acounter_a10_a_a40_combout,
	cout => U8_acounter_a10_a_a41);

U8_acounter_a10_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a10_a_CLK_driver);

U8_acounter_a10_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a10_a_a40_combout,
	dataout => U8_acounter_a10_a_DATAIN_driver);

U8_acounter_a10_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a10_a_SDATA_driver);

U8_acounter_a10_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a10_a_ACLR_driver);

U8_acounter_a10_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a10_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N1
U8_acounter_a10_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a10_a_CLK_driver,
	datain => U8_acounter_a10_a_DATAIN_driver,
	sdata => U8_acounter_a10_a_SDATA_driver,
	aclr => U8_acounter_a10_a_ACLR_driver,
	sload => U8_acounter_a10_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(10));

U8_acounter_a11_a_a42_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(11),
	dataout => U8_acounter_a11_a_a42_DATAB_driver);

U8_acounter_a11_a_a42_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a10_a_a41,
	dataout => U8_acounter_a11_a_a42_CIN_driver);

-- Location: LCCOMB_X25_Y17_N2
U8_acounter_a11_a_a42 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a11_a_a42_combout = (U8_acounter(11) & (!U8_acounter_a10_a_a41)) # (!U8_acounter(11) & ((U8_acounter_a10_a_a41) # (GND)))
-- U8_acounter_a11_a_a43 = CARRY((!U8_acounter_a10_a_a41) # (!U8_acounter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a11_a_a42_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a11_a_a42_CIN_driver,
	combout => U8_acounter_a11_a_a42_combout,
	cout => U8_acounter_a11_a_a43);

U8_acounter_a11_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a11_a_CLK_driver);

U8_acounter_a11_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a11_a_a42_combout,
	dataout => U8_acounter_a11_a_DATAIN_driver);

U8_acounter_a11_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a11_a_SDATA_driver);

U8_acounter_a11_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a11_a_ACLR_driver);

U8_acounter_a11_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a11_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N3
U8_acounter_a11_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a11_a_CLK_driver,
	datain => U8_acounter_a11_a_DATAIN_driver,
	sdata => U8_acounter_a11_a_SDATA_driver,
	aclr => U8_acounter_a11_a_ACLR_driver,
	sload => U8_acounter_a11_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(11));

U8_acounter_a12_a_a44_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(12),
	dataout => U8_acounter_a12_a_a44_DATAB_driver);

U8_acounter_a12_a_a44_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a11_a_a43,
	dataout => U8_acounter_a12_a_a44_CIN_driver);

-- Location: LCCOMB_X25_Y17_N4
U8_acounter_a12_a_a44 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a12_a_a44_combout = (U8_acounter(12) & (U8_acounter_a11_a_a43 $ (GND))) # (!U8_acounter(12) & (!U8_acounter_a11_a_a43 & VCC))
-- U8_acounter_a12_a_a45 = CARRY((U8_acounter(12) & !U8_acounter_a11_a_a43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a12_a_a44_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a12_a_a44_CIN_driver,
	combout => U8_acounter_a12_a_a44_combout,
	cout => U8_acounter_a12_a_a45);

U8_acounter_a12_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a12_a_CLK_driver);

U8_acounter_a12_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a12_a_a44_combout,
	dataout => U8_acounter_a12_a_DATAIN_driver);

U8_acounter_a12_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a12_a_SDATA_driver);

U8_acounter_a12_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a12_a_ACLR_driver);

U8_acounter_a12_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a12_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N5
U8_acounter_a12_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a12_a_CLK_driver,
	datain => U8_acounter_a12_a_DATAIN_driver,
	sdata => U8_acounter_a12_a_SDATA_driver,
	aclr => U8_acounter_a12_a_ACLR_driver,
	sload => U8_acounter_a12_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(12));

U8_acounter_a14_a_a48_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(14),
	dataout => U8_acounter_a14_a_a48_DATAB_driver);

U8_acounter_a14_a_a48_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a13_a_a47,
	dataout => U8_acounter_a14_a_a48_CIN_driver);

-- Location: LCCOMB_X25_Y17_N8
U8_acounter_a14_a_a48 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a14_a_a48_combout = (U8_acounter(14) & (U8_acounter_a13_a_a47 $ (GND))) # (!U8_acounter(14) & (!U8_acounter_a13_a_a47 & VCC))
-- U8_acounter_a14_a_a49 = CARRY((U8_acounter(14) & !U8_acounter_a13_a_a47))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a14_a_a48_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a14_a_a48_CIN_driver,
	combout => U8_acounter_a14_a_a48_combout,
	cout => U8_acounter_a14_a_a49);

U8_acounter_a14_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a14_a_CLK_driver);

U8_acounter_a14_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a14_a_a48_combout,
	dataout => U8_acounter_a14_a_DATAIN_driver);

U8_acounter_a14_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a14_a_SDATA_driver);

U8_acounter_a14_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a14_a_ACLR_driver);

U8_acounter_a14_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a14_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N9
U8_acounter_a14_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a14_a_CLK_driver,
	datain => U8_acounter_a14_a_DATAIN_driver,
	sdata => U8_acounter_a14_a_SDATA_driver,
	aclr => U8_acounter_a14_a_ACLR_driver,
	sload => U8_acounter_a14_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(14));

U8_acounter_a16_a_a52_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(16),
	dataout => U8_acounter_a16_a_a52_DATAA_driver);

U8_acounter_a16_a_a52_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a15_a_a51,
	dataout => U8_acounter_a16_a_a52_CIN_driver);

-- Location: LCCOMB_X25_Y17_N12
U8_acounter_a16_a_a52 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a16_a_a52_combout = (U8_acounter(16) & (U8_acounter_a15_a_a51 $ (GND))) # (!U8_acounter(16) & (!U8_acounter_a15_a_a51 & VCC))
-- U8_acounter_a16_a_a53 = CARRY((U8_acounter(16) & !U8_acounter_a15_a_a51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U8_acounter_a16_a_a52_DATAA_driver,
	datad => VCC,
	cin => U8_acounter_a16_a_a52_CIN_driver,
	combout => U8_acounter_a16_a_a52_combout,
	cout => U8_acounter_a16_a_a53);

U8_acounter_a17_a_a55_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(17),
	dataout => U8_acounter_a17_a_a55_DATAB_driver);

U8_acounter_a17_a_a55_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a16_a_a53,
	dataout => U8_acounter_a17_a_a55_CIN_driver);

-- Location: LCCOMB_X25_Y17_N14
U8_acounter_a17_a_a55 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a17_a_a55_combout = (U8_acounter(17) & (!U8_acounter_a16_a_a53)) # (!U8_acounter(17) & ((U8_acounter_a16_a_a53) # (GND)))
-- U8_acounter_a17_a_a56 = CARRY((!U8_acounter_a16_a_a53) # (!U8_acounter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => U8_acounter_a17_a_a55_DATAB_driver,
	datad => VCC,
	cin => U8_acounter_a17_a_a55_CIN_driver,
	combout => U8_acounter_a17_a_a55_combout,
	cout => U8_acounter_a17_a_a56);

U8_acounter_a17_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a17_a_CLK_driver);

U8_acounter_a17_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a17_a_a55_combout,
	dataout => U8_acounter_a17_a_DATAIN_driver);

U8_acounter_a17_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a17_a_SDATA_driver);

U8_acounter_a17_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a17_a_ACLR_driver);

U8_acounter_a17_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a17_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N15
U8_acounter_a17_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a17_a_CLK_driver,
	datain => U8_acounter_a17_a_DATAIN_driver,
	sdata => U8_acounter_a17_a_SDATA_driver,
	aclr => U8_acounter_a17_a_ACLR_driver,
	sload => U8_acounter_a17_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(17));

U8_acounter_a19_a_a59_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(19),
	dataout => U8_acounter_a19_a_a59_DATAD_driver);

U8_acounter_a19_a_a59_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a18_a_a58,
	dataout => U8_acounter_a19_a_a59_CIN_driver);

-- Location: LCCOMB_X25_Y17_N18
U8_acounter_a19_a_a59 : cycloneii_lcell_comb
-- Equation(s):
-- U8_acounter_a19_a_a59_combout = U8_acounter_a18_a_a58 $ (U8_acounter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => U8_acounter_a19_a_a59_DATAD_driver,
	cin => U8_acounter_a19_a_a59_CIN_driver,
	combout => U8_acounter_a19_a_a59_combout);

U8_acounter_a19_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a19_a_CLK_driver);

U8_acounter_a19_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a59_combout,
	dataout => U8_acounter_a19_a_DATAIN_driver);

U8_acounter_a19_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a19_a_SDATA_driver);

U8_acounter_a19_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a19_a_ACLR_driver);

U8_acounter_a19_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a19_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N19
U8_acounter_a19_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a19_a_CLK_driver,
	datain => U8_acounter_a19_a_DATAIN_driver,
	sdata => U8_acounter_a19_a_SDATA_driver,
	aclr => U8_acounter_a19_a_ACLR_driver,
	sload => U8_acounter_a19_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(19));

U8_acounter_a16_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_acounter_a16_a_CLK_driver);

U8_acounter_a16_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a16_a_a52_combout,
	dataout => U8_acounter_a16_a_DATAIN_driver);

U8_acounter_a16_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => a_aGND_acombout,
	dataout => U8_acounter_a16_a_SDATA_driver);

U8_acounter_a16_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_acounter_a16_a_ACLR_driver);

U8_acounter_a16_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter_a19_a_a54_combout,
	dataout => U8_acounter_a16_a_SLOAD_driver);

-- Location: LCFF_X25_Y17_N13
U8_acounter_a16_a : cycloneii_lcell_ff
PORT MAP (
	clk => U8_acounter_a16_a_CLK_driver,
	datain => U8_acounter_a16_a_DATAIN_driver,
	sdata => U8_acounter_a16_a_SDATA_driver,
	aclr => U8_acounter_a16_a_ACLR_driver,
	sload => U8_acounter_a16_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_acounter(16));

U8_aEqual0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(18),
	dataout => U8_aEqual0_a0_DATAA_driver);

U8_aEqual0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(19),
	dataout => U8_aEqual0_a0_DATAB_driver);

U8_aEqual0_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(17),
	dataout => U8_aEqual0_a0_DATAC_driver);

U8_aEqual0_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_acounter(16),
	dataout => U8_aEqual0_a0_DATAD_driver);

-- Location: LCCOMB_X25_Y17_N28
U8_aEqual0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEqual0_a0_combout = (U8_acounter(18)) # ((U8_acounter(19)) # ((U8_acounter(17)) # (U8_acounter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEqual0_a0_DATAA_driver,
	datab => U8_aEqual0_a0_DATAB_driver,
	datac => U8_aEqual0_a0_DATAC_driver,
	datad => U8_aEqual0_a0_DATAD_driver,
	combout => U8_aEqual0_a0_combout);

U8_aEnable_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_aEnable_a0_DATAA_driver);

U8_aEnable_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a0_combout,
	dataout => U8_aEnable_a0_DATAC_driver);

U8_aEnable_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEqual0_a5_combout,
	dataout => U8_aEnable_a0_DATAD_driver);

-- Location: LCCOMB_X25_Y18_N8
U8_aEnable_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aEnable_a0_combout = (U8_aTaster2_a0_combout & (!U8_aEqual0_a0_combout & !U8_aEqual0_a5_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aEnable_a0_DATAA_driver,
	datac => U8_aEnable_a0_DATAC_driver,
	datad => U8_aEnable_a0_DATAD_driver,
	combout => U8_aEnable_a0_combout);

U8_aEnable_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_aEnable_CLK_driver);

U8_aEnable_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEnable_a0_combout,
	dataout => U8_aEnable_DATAIN_driver);

U8_aEnable_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_aEnable_ACLR_driver);

-- Location: LCFF_X25_Y18_N9
U8_aEnable : cycloneii_lcell_ff
PORT MAP (
	clk => U8_aEnable_CLK_driver,
	datain => U8_aEnable_DATAIN_driver,
	aclr => U8_aEnable_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_aEnable_aregout);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
Taster_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Taster,
	combout => Taster_acombout);

U8_aTaster1_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_aTaster1_CLK_driver);

U8_aTaster1_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Taster_acombout,
	dataout => U8_aTaster1_SDATA_driver);

U8_aTaster1_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_aTaster1_ACLR_driver);

-- Location: LCFF_X24_Y18_N9
U8_aTaster1 : cycloneii_lcell_ff
PORT MAP (
	clk => U8_aTaster1_CLK_driver,
	sdata => U8_aTaster1_SDATA_driver,
	aclr => U8_aTaster1_ACLR_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_aTaster1_aregout);

U8_aTaster2_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Taster_acombout,
	dataout => U8_aTaster2_a0_DATAA_driver);

U8_aTaster2_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aEnable_aregout,
	dataout => U8_aTaster2_a0_DATAB_driver);

U8_aTaster2_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster1_aregout,
	dataout => U8_aTaster2_a0_DATAC_driver);

-- Location: LCCOMB_X24_Y18_N8
U8_aTaster2_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aTaster2_a0_combout = ((U8_aTaster1_aregout) # (!U8_aEnable_aregout)) # (!Taster_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aTaster2_a0_DATAA_driver,
	datab => U8_aTaster2_a0_DATAB_driver,
	datac => U8_aTaster2_a0_DATAC_driver,
	combout => U8_aTaster2_a0_combout);

U8_aInt_req_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_areset_int_req_aregout,
	dataout => U8_aInt_req_a0_DATAA_driver);

U8_aInt_req_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U8_aInt_req_a0_DATAC_driver);

U8_aInt_req_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aTaster2_a0_combout,
	dataout => U8_aInt_req_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N0
U8_aInt_req_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U8_aInt_req_a0_combout = (!U7_areset_int_req_aregout & ((U8_aInt_req_aregout) # (!U8_aTaster2_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U8_aInt_req_a0_DATAA_driver,
	datac => U8_aInt_req_a0_DATAC_driver,
	datad => U8_aInt_req_a0_DATAD_driver,
	combout => U8_aInt_req_a0_combout);

U8_aInt_req_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U8_aInt_req_CLK_driver);

U8_aInt_req_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_a0_combout,
	dataout => U8_aInt_req_DATAIN_driver);

U8_aInt_req_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U8_aInt_req_ACLR_driver);

-- Location: LCFF_X22_Y18_N1
U8_aInt_req : cycloneii_lcell_ff
PORT MAP (
	clk => U8_aInt_req_CLK_driver,
	datain => U8_aInt_req_DATAIN_driver,
	aclr => U8_aInt_req_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U8_aInt_req_aregout);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(7),
	combout => PORT_IN_acombout(7));

U1_adata_a15_a_a35_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U1_adata_a15_a_a35_DATAC_driver);

U1_adata_a15_a_a35_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a15_a_a35_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N2
U1_adata_a15_a_a35 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a15_a_a35_combout = (!U5_aMAR_reg(7) & U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U1_adata_a15_a_a35_DATAC_driver,
	datad => U1_adata_a15_a_a35_DATAD_driver,
	combout => U1_adata_a15_a_a35_combout);

U5_aMAR_reg_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a3_a_CLK_driver);

U5_aMAR_reg_a3_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U5_aMAR_reg_a3_a_SDATA_driver);

U5_aMAR_reg_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a3_a_ACLR_driver);

U5_aMAR_reg_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a3_a_ENA_driver);

-- Location: LCFF_X15_Y18_N25
U5_aMAR_reg_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a3_a_CLK_driver,
	sdata => U5_aMAR_reg_a3_a_SDATA_driver,
	aclr => U5_aMAR_reg_a3_a_ACLR_driver,
	sload => VCC,
	ena => U5_aMAR_reg_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(3));

U6_aMux0_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux0_a2_DATAA_driver);

U6_aMux0_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux0_a2_DATAB_driver);

U6_aMux0_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux0_a2_DATAC_driver);

U6_aMux0_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux0_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N24
U6_aMux0_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux0_a2_combout = (U5_aMAR_reg(0) & ((U5_aMAR_reg(3) & (!U5_aMAR_reg(4) & U5_aMAR_reg(2))) # (!U5_aMAR_reg(3) & (U5_aMAR_reg(4) & !U5_aMAR_reg(2))))) # (!U5_aMAR_reg(0) & (U5_aMAR_reg(3) $ (((U5_aMAR_reg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux0_a2_DATAA_driver,
	datab => U6_aMux0_a2_DATAB_driver,
	datac => U6_aMux0_a2_DATAC_driver,
	datad => U6_aMux0_a2_DATAD_driver,
	combout => U6_aMux0_a2_combout);

U6_aMux0_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux0_a1_DATAA_driver);

U6_aMux0_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux0_a1_DATAB_driver);

U6_aMux0_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux0_a1_DATAC_driver);

U6_aMux0_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux0_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N6
U6_aMux0_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux0_a1_combout = (U5_aMAR_reg(0) & (U5_aMAR_reg(4) $ (((!U5_aMAR_reg(3) & !U5_aMAR_reg(2)))))) # (!U5_aMAR_reg(0) & (U5_aMAR_reg(3) & (U5_aMAR_reg(4) $ (!U5_aMAR_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux0_a1_DATAA_driver,
	datab => U6_aMux0_a1_DATAB_driver,
	datac => U6_aMux0_a1_DATAC_driver,
	datad => U6_aMux0_a1_DATAD_driver,
	combout => U6_aMux0_a1_combout);

U1_adata_a15_a_a47_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_adata_a15_a_a47_DATAA_driver);

U1_adata_a15_a_a47_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U1_adata_a15_a_a47_DATAB_driver);

U1_adata_a15_a_a47_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux0_a2_combout,
	dataout => U1_adata_a15_a_a47_DATAC_driver);

U1_adata_a15_a_a47_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux0_a1_combout,
	dataout => U1_adata_a15_a_a47_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N18
U1_adata_a15_a_a47 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a15_a_a47_combout = (U5_aMAR_reg(5)) # ((U5_aMAR_reg(1) & (!U6_aMux0_a2_combout)) # (!U5_aMAR_reg(1) & ((U6_aMux0_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a15_a_a47_DATAA_driver,
	datab => U1_adata_a15_a_a47_DATAB_driver,
	datac => U1_adata_a15_a_a47_DATAC_driver,
	datad => U1_adata_a15_a_a47_DATAD_driver,
	combout => U1_adata_a15_a_a47_combout);

U1_adata_a15_a_a48_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a46_combout,
	dataout => U1_adata_a15_a_a48_DATAA_driver);

U1_adata_a15_a_a48_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a15_a_a48_DATAB_driver);

U1_adata_a15_a_a48_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a35_combout,
	dataout => U1_adata_a15_a_a48_DATAC_driver);

U1_adata_a15_a_a48_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a47_combout,
	dataout => U1_adata_a15_a_a48_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N22
U1_adata_a15_a_a48 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a15_a_a48_combout = (U1_adata_a15_a_a46_combout) # (((U5_aMAR_reg(6) & U1_adata_a15_a_a47_combout)) # (!U1_adata_a15_a_a35_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a15_a_a48_DATAA_driver,
	datab => U1_adata_a15_a_a48_DATAB_driver,
	datac => U1_adata_a15_a_a48_DATAC_driver,
	datad => U1_adata_a15_a_a48_DATAD_driver,
	combout => U1_adata_a15_a_a48_combout);

U6_adata_rom_a5_a_a16_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_adata_rom_a5_a_a16_DATAA_driver);

U6_adata_rom_a5_a_a16_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_adata_rom_a5_a_a16_DATAB_driver);

U6_adata_rom_a5_a_a16_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a5_a_a16_DATAC_driver);

U6_adata_rom_a5_a_a16_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a5_a_a16_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N10
U6_adata_rom_a5_a_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a16_combout = (U5_aMAR_reg(4) & (!U5_aMAR_reg(1) & (U5_aMAR_reg(2) & !U5_aMAR_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a5_a_a16_DATAA_driver,
	datab => U6_adata_rom_a5_a_a16_DATAB_driver,
	datac => U6_adata_rom_a5_a_a16_DATAC_driver,
	datad => U6_adata_rom_a5_a_a16_DATAD_driver,
	combout => U6_adata_rom_a5_a_a16_combout);

U6_adata_rom_a5_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a5_a_a15_DATAA_driver);

U6_adata_rom_a5_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a5_a_a15_DATAB_driver);

U6_adata_rom_a5_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a5_a_a15_DATAC_driver);

U6_adata_rom_a5_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_adata_rom_a5_a_a15_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N2
U6_adata_rom_a5_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a15_combout = (U5_aMAR_reg(5) & (!U5_aMAR_reg(3) & (!U5_aMAR_reg(6) & U5_aMAR_reg(0)))) # (!U5_aMAR_reg(5) & (U5_aMAR_reg(3) & (U5_aMAR_reg(6) & !U5_aMAR_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a5_a_a15_DATAA_driver,
	datab => U6_adata_rom_a5_a_a15_DATAB_driver,
	datac => U6_adata_rom_a5_a_a15_DATAC_driver,
	datad => U6_adata_rom_a5_a_a15_DATAD_driver,
	combout => U6_adata_rom_a5_a_a15_combout);

U6_adata_rom_a5_a_a17_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a5_a_a17_DATAB_driver);

U6_adata_rom_a5_a_a17_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a16_combout,
	dataout => U6_adata_rom_a5_a_a17_DATAC_driver);

U6_adata_rom_a5_a_a17_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a15_combout,
	dataout => U6_adata_rom_a5_a_a17_DATAD_driver);

-- Location: LCCOMB_X15_Y18_N4
U6_adata_rom_a5_a_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a5_a_a17_combout = ((U6_adata_rom_a5_a_a16_combout & U6_adata_rom_a5_a_a15_combout)) # (!U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_adata_rom_a5_a_a17_DATAB_driver,
	datac => U6_adata_rom_a5_a_a17_DATAC_driver,
	datad => U6_adata_rom_a5_a_a17_DATAD_driver,
	combout => U6_adata_rom_a5_a_a17_combout);

U3_aAdd1_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a0_DATAA_driver);

U3_aAdd1_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aAdd1_a0_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N0
U3_aAdd1_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a0_combout = (U4_aIR_reg(4) & !U4_aIR_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a0_DATAA_driver,
	datad => U3_aAdd1_a0_DATAD_driver,
	combout => U3_aAdd1_a0_combout);

U2_anext_state_aI4_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a5_combout,
	dataout => U2_anext_state_aI4_a0_DATAA_driver);

U2_anext_state_aI4_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U2_anext_state_aI4_a0_DATAB_driver);

U2_anext_state_aI4_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI4_a0_DATAC_driver);

U2_anext_state_aI4_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_anext_state_aI4_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N6
U2_anext_state_aI4_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI4_a0_combout = (U3_aacc_a2_a_a5_combout & (U3_aAdd1_a0_combout & (U4_aIR_reg(7) & U2_apresent_state_aI3_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI4_a0_DATAA_driver,
	datab => U2_anext_state_aI4_a0_DATAB_driver,
	datac => U2_anext_state_aI4_a0_DATAC_driver,
	datad => U2_anext_state_aI4_a0_DATAD_driver,
	combout => U2_anext_state_aI4_a0_combout);

U2_apresent_state_aI4_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI4_CLK_driver);

U2_apresent_state_aI4_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI4_a0_combout,
	dataout => U2_apresent_state_aI4_DATAIN_driver);

U2_apresent_state_aI4_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI4_ACLR_driver);

-- Location: LCFF_X23_Y17_N7
U2_apresent_state_aI4 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI4_CLK_driver,
	datain => U2_apresent_state_aI4_DATAIN_driver,
	aclr => U2_apresent_state_aI4_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI4_aregout);

U2_aacc_bus_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U2_aacc_bus_DATAA_driver);

U2_aacc_bus_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U2_aacc_bus_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N18
U2_aacc_bus : cycloneii_lcell_comb
-- Equation(s):
-- U2_aacc_bus_acombout = (U2_apresent_state_aI5_aregout) # (U2_apresent_state_aI4_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aacc_bus_DATAA_driver,
	datad => U2_aacc_bus_DATAD_driver,
	combout => U2_aacc_bus_acombout);

U1_adata_a5_a_a21_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U1_adata_a5_a_a21_DATAA_driver);

U1_adata_a5_a_a21_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_adata_a5_a_a21_DATAB_driver);

U1_adata_a5_a_a21_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a5_a_a21_DATAC_driver);

U1_adata_a5_a_a21_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a5_a_a21_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N16
U1_adata_a5_a_a21 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a5_a_a21_combout = (U3_aacc(5) & ((U5_aMAR_reg(5)) # ((!U2_amar_data_acombout)))) # (!U3_aacc(5) & (!U2_aacc_bus_acombout & ((U5_aMAR_reg(5)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a5_a_a21_DATAA_driver,
	datab => U1_adata_a5_a_a21_DATAB_driver,
	datac => U1_adata_a5_a_a21_DATAC_driver,
	datad => U1_adata_a5_a_a21_DATAD_driver,
	combout => U1_adata_a5_a_a21_combout);

U7_aAdd0_a18_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a11_combout,
	dataout => U7_aAdd0_a18_DATAA_driver);

U7_aAdd0_a18_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_aAdd0_a18_DATAB_driver);

U7_aAdd0_a18_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U7_aAdd0_a18_DATAC_driver);

U7_aAdd0_a18_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_aAdd0_a18_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N10
U7_aAdd0_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a18_combout = (!U8_aInt_req_aregout & ((U2_apresent_state_aI6_aregout & ((U1_adata_a5_a_a24_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a11_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a18_DATAA_driver,
	datab => U7_aAdd0_a18_DATAB_driver,
	datac => U7_aAdd0_a18_DATAC_driver,
	datad => U7_aAdd0_a18_DATAD_driver,
	combout => U7_aAdd0_a18_combout);

U7_apc_val_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a5_a_CLK_driver);

U7_apc_val_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a18_combout,
	dataout => U7_apc_val_a5_a_DATAIN_driver);

U7_apc_val_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a5_a_ACLR_driver);

U7_apc_val_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a5_a_ENA_driver);

-- Location: LCFF_X22_Y18_N11
U7_apc_val_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a5_a_CLK_driver,
	datain => U7_apc_val_a5_a_DATAIN_driver,
	aclr => U7_apc_val_a5_a_ACLR_driver,
	ena => U7_apc_val_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(5));

U2_apc_data_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR0_aregout,
	dataout => U2_apc_data_a2_DATAC_driver);

U2_apc_data_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI1_aregout,
	dataout => U2_apc_data_a2_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N10
U2_apc_data_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U2_apc_data_a2_combout = (U2_apresent_state_aR0_aregout & !U2_apresent_state_aI1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U2_apc_data_a2_DATAC_driver,
	datad => U2_apc_data_a2_DATAD_driver,
	combout => U2_apc_data_a2_combout);

U1_adata_a5_a_a22_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(5),
	dataout => U1_adata_a5_a_a22_DATAA_driver);

U1_adata_a5_a_a22_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(5),
	dataout => U1_adata_a5_a_a22_DATAB_driver);

U1_adata_a5_a_a22_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a5_a_a22_DATAC_driver);

U1_adata_a5_a_a22_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a5_a_a22_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N28
U1_adata_a5_a_a22 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a5_a_a22_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(5) & ((U7_apc_val(5)) # ((U2_apc_data_a2_combout)))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(5) & (U2_aWideOr2_a0_combout & ((U7_apc_val(5)) # (U2_apc_data_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a5_a_a22_DATAA_driver,
	datab => U1_adata_a5_a_a22_DATAB_driver,
	datac => U1_adata_a5_a_a22_DATAC_driver,
	datad => U1_adata_a5_a_a22_DATAD_driver,
	combout => U1_adata_a5_a_a22_combout);

U1_adata_a5_a_a23_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(5),
	dataout => U1_adata_a5_a_a23_DATAA_driver);

U1_adata_a5_a_a23_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a21_combout,
	dataout => U1_adata_a5_a_a23_DATAB_driver);

U1_adata_a5_a_a23_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a5_a_a23_DATAC_driver);

U1_adata_a5_a_a23_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a22_combout,
	dataout => U1_adata_a5_a_a23_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N8
U1_adata_a5_a_a23 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a5_a_a23_combout = (U1_adata_a5_a_a21_combout & (U1_adata_a5_a_a22_combout & ((PORT_IN_acombout(5)) # (!U2_apresent_state_aI8_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a5_a_a23_DATAA_driver,
	datab => U1_adata_a5_a_a23_DATAB_driver,
	datac => U1_adata_a5_a_a23_DATAC_driver,
	datad => U1_adata_a5_a_a23_DATAD_driver,
	combout => U1_adata_a5_a_a23_combout);

U1_adata_a3_a_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U1_adata_a3_a_a6_DATAA_driver);

U1_adata_a3_a_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U1_adata_a3_a_a6_DATAB_driver);

U1_adata_a3_a_a6_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR0_aregout,
	dataout => U1_adata_a3_a_a6_DATAC_driver);

U1_adata_a3_a_a6_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI1_aregout,
	dataout => U1_adata_a3_a_a6_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N18
U1_adata_a3_a_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a6_combout = (U2_apresent_state_aI2_aregout) # ((U2_apresent_state_aI10_aregout) # ((U2_apresent_state_aI1_aregout) # (!U2_apresent_state_aR0_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a6_DATAA_driver,
	datab => U1_adata_a3_a_a6_DATAB_driver,
	datac => U1_adata_a3_a_a6_DATAC_driver,
	datad => U1_adata_a3_a_a6_DATAD_driver,
	combout => U1_adata_a3_a_a6_combout);

U1_adata_a13_a_a44_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U1_adata_a13_a_a44_DATAA_driver);

U1_adata_a13_a_a44_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U1_adata_a13_a_a44_DATAC_driver);

U1_adata_a13_a_a44_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(13),
	dataout => U1_adata_a13_a_a44_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N20
U1_adata_a13_a_a44 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a13_a_a44_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(13)) # ((!U2_apresent_state_aI2_aregout & !U2_apresent_state_aI10_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a13_a_a44_DATAA_driver,
	datac => U1_adata_a13_a_a44_DATAC_driver,
	datad => U1_adata_a13_a_a44_DATAD_driver,
	combout => U1_adata_a13_a_a44_combout);

U1_adata_a13_a_a45_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a5_combout,
	dataout => U1_adata_a13_a_a45_DATAA_driver);

U1_adata_a13_a_a45_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U1_adata_a13_a_a45_DATAB_driver);

U1_adata_a13_a_a45_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a13_a_a44_combout,
	dataout => U1_adata_a13_a_a45_DATAC_driver);

U1_adata_a13_a_a45_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a13_a_a45_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N24
U1_adata_a13_a_a45 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a13_a_a45_combout = (U1_adata_a13_a_a44_combout & (((U6_aMux2_a5_combout & !U5_aMAR_reg(7))) # (!U2_apresent_state_aR1_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a13_a_a45_DATAA_driver,
	datab => U1_adata_a13_a_a45_DATAB_driver,
	datac => U1_adata_a13_a_a45_DATAC_driver,
	datad => U1_adata_a13_a_a45_DATAD_driver,
	combout => U1_adata_a13_a_a45_combout);

U4_aIR_reg_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U4_aIR_reg_a5_a_CLK_driver);

U4_aIR_reg_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a13_a_a45_combout,
	dataout => U4_aIR_reg_a5_a_DATAIN_driver);

U4_aIR_reg_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U4_aIR_reg_a5_a_ACLR_driver);

U4_aIR_reg_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U4_aIR_reg_a5_a_ENA_driver);

-- Location: LCFF_X18_Y17_N25
U4_aIR_reg_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U4_aIR_reg_a5_a_CLK_driver,
	datain => U4_aIR_reg_a5_a_DATAIN_driver,
	aclr => U4_aIR_reg_a5_a_ACLR_driver,
	ena => U4_aIR_reg_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U4_aIR_reg(5));

U3_aacc_a2_a_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a5_DATAB_driver);

U3_aacc_a2_a_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a2_a_a5_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N10
U3_aacc_a2_a_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a5_combout = (!U4_aIR_reg(5) & !U4_aIR_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a2_a_a5_DATAB_driver,
	datad => U3_aacc_a2_a_a5_DATAD_driver,
	combout => U3_aacc_a2_a_a5_combout);

U2_anext_state_aI8_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U2_anext_state_aI8_a0_DATAA_driver);

U2_anext_state_aI8_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI8_a0_DATAB_driver);

U2_anext_state_aI8_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_anext_state_aI8_a0_DATAC_driver);

U2_anext_state_aI8_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a5_combout,
	dataout => U2_anext_state_aI8_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N24
U2_anext_state_aI8_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI8_a0_combout = (!U4_aIR_reg(4) & (U4_aIR_reg(7) & (U2_apresent_state_aI3_aregout & U3_aacc_a2_a_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI8_a0_DATAA_driver,
	datab => U2_anext_state_aI8_a0_DATAB_driver,
	datac => U2_anext_state_aI8_a0_DATAC_driver,
	datad => U2_anext_state_aI8_a0_DATAD_driver,
	combout => U2_anext_state_aI8_a0_combout);

U2_anext_state_aI5_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI5_a0_DATAB_driver);

U2_anext_state_aI5_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI8_a0_combout,
	dataout => U2_anext_state_aI5_a0_DATAC_driver);

-- Location: LCCOMB_X23_Y17_N14
U2_anext_state_aI5_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI5_a0_combout = (!U4_aIR_reg(3) & U2_anext_state_aI8_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_anext_state_aI5_a0_DATAB_driver,
	datac => U2_anext_state_aI5_a0_DATAC_driver,
	combout => U2_anext_state_aI5_a0_combout);

U2_apresent_state_aI5_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => U2_apresent_state_aI5_CLK_driver);

U2_apresent_state_aI5_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI5_a0_combout,
	dataout => U2_apresent_state_aI5_DATAIN_driver);

U2_apresent_state_aI5_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI5_ACLR_driver);

-- Location: LCFF_X23_Y17_N15
U2_apresent_state_aI5 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI5_CLK_driver,
	datain => U2_apresent_state_aI5_DATAIN_driver,
	aclr => U2_apresent_state_aI5_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI5_aregout);

U1_adata_a3_a_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U1_adata_a3_a_a5_DATAA_driver);

U1_adata_a3_a_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI9_aregout,
	dataout => U1_adata_a3_a_a5_DATAB_driver);

U1_adata_a3_a_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U1_adata_a3_a_a5_DATAC_driver);

U1_adata_a3_a_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U1_adata_a3_a_a5_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N28
U1_adata_a3_a_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a5_combout = (U2_apresent_state_aI4_aregout) # ((U2_apresent_state_aI9_aregout) # ((U2_apresent_state_aI5_aregout) # (U2_apresent_state_aI6_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a5_DATAA_driver,
	datab => U1_adata_a3_a_a5_DATAB_driver,
	datac => U1_adata_a3_a_a5_DATAC_driver,
	datad => U1_adata_a3_a_a5_DATAD_driver,
	combout => U1_adata_a3_a_a5_combout);

U1_adata_a3_a_a7_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a3_a_a7_DATAA_driver);

U1_adata_a3_a_a7_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a6_combout,
	dataout => U1_adata_a3_a_a7_DATAB_driver);

U1_adata_a3_a_a7_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a3_a_a7_DATAC_driver);

U1_adata_a3_a_a7_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a5_combout,
	dataout => U1_adata_a3_a_a7_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N30
U1_adata_a3_a_a7 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a7_combout = (U2_apresent_state_aR1_aregout) # ((U1_adata_a3_a_a6_combout) # ((U2_apresent_state_aI8_aregout) # (U1_adata_a3_a_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a7_DATAA_driver,
	datab => U1_adata_a3_a_a7_DATAB_driver,
	datac => U1_adata_a3_a_a7_DATAC_driver,
	datad => U1_adata_a3_a_a7_DATAD_driver,
	combout => U1_adata_a3_a_a7_combout);

U1_adata_a5_a_a24_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a14_combout,
	dataout => U1_adata_a5_a_a24_DATAA_driver);

U1_adata_a5_a_a24_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a5_a_a17_combout,
	dataout => U1_adata_a5_a_a24_DATAB_driver);

U1_adata_a5_a_a24_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a23_combout,
	dataout => U1_adata_a5_a_a24_DATAC_driver);

U1_adata_a5_a_a24_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a5_a_a24_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N10
U1_adata_a5_a_a24 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a5_a_a24_combout = ((U1_adata_a5_a_a23_combout & ((U6_adata_rom_a5_a_a14_combout) # (U6_adata_rom_a5_a_a17_combout)))) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a5_a_a24_DATAA_driver,
	datab => U1_adata_a5_a_a24_DATAB_driver,
	datac => U1_adata_a5_a_a24_DATAC_driver,
	datad => U1_adata_a5_a_a24_DATAD_driver,
	combout => U1_adata_a5_a_a24_combout);

U5_aMAR_reg_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a5_a_CLK_driver);

U5_aMAR_reg_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U5_aMAR_reg_a5_a_DATAIN_driver);

U5_aMAR_reg_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a5_a_ACLR_driver);

U5_aMAR_reg_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a5_a_ENA_driver);

-- Location: LCFF_X20_Y18_N11
U5_aMAR_reg_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a5_a_CLK_driver,
	datain => U5_aMAR_reg_a5_a_DATAIN_driver,
	aclr => U5_aMAR_reg_a5_a_ACLR_driver,
	ena => U5_aMAR_reg_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(5));

U1_adata_a12_a_a41_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a12_a_a40_combout,
	dataout => U1_adata_a12_a_a41_DATAA_driver);

U1_adata_a12_a_a41_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a12_a_a41_DATAB_driver);

U1_adata_a12_a_a41_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a12_a_a41_DATAC_driver);

U1_adata_a12_a_a41_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(12),
	dataout => U1_adata_a12_a_a41_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N20
U1_adata_a12_a_a41 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a12_a_a41_combout = (U1_adata_a12_a_a40_combout & (((U2_aWideOr2_a0_combout) # (U1_aaltsyncram_component_aauto_generated_aq_a(12))))) # (!U1_adata_a12_a_a40_combout & (!U2_apresent_state_aR1_aregout & ((U2_aWideOr2_a0_combout) # 
-- (U1_aaltsyncram_component_aauto_generated_aq_a(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a12_a_a41_DATAA_driver,
	datab => U1_adata_a12_a_a41_DATAB_driver,
	datac => U1_adata_a12_a_a41_DATAC_driver,
	datad => U1_adata_a12_a_a41_DATAD_driver,
	combout => U1_adata_a12_a_a41_combout);

U4_aIR_reg_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U4_aIR_reg_a4_a_CLK_driver);

U4_aIR_reg_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a12_a_a41_combout,
	dataout => U4_aIR_reg_a4_a_DATAIN_driver);

U4_aIR_reg_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U4_aIR_reg_a4_a_ACLR_driver);

U4_aIR_reg_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U4_aIR_reg_a4_a_ENA_driver);

-- Location: LCFF_X18_Y18_N21
U4_aIR_reg_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U4_aIR_reg_a4_a_CLK_driver,
	datain => U4_aIR_reg_a4_a_DATAIN_driver,
	aclr => U4_aIR_reg_a4_a_ACLR_driver,
	ena => U4_aIR_reg_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U4_aIR_reg(4));

U2_aMux6_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_aMux6_a0_DATAA_driver);

U2_aMux6_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U2_aMux6_a0_DATAB_driver);

U2_aMux6_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U2_aMux6_a0_DATAC_driver);

U2_aMux6_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U2_aMux6_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N28
U2_aMux6_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aMux6_a0_combout = (U4_aIR_reg(6) & ((U4_aIR_reg(3)) # ((U4_aIR_reg(4)) # (U4_aIR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_aMux6_a0_DATAA_driver,
	datab => U2_aMux6_a0_DATAB_driver,
	datac => U2_aMux6_a0_DATAC_driver,
	datad => U2_aMux6_a0_DATAD_driver,
	combout => U2_aMux6_a0_combout);

U2_anext_state_aI10_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a0_combout,
	dataout => U2_anext_state_aI10_a0_DATAA_driver);

U2_anext_state_aI10_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aMux6_a0_combout,
	dataout => U2_anext_state_aI10_a0_DATAB_driver);

U2_anext_state_aI10_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI10_a0_DATAC_driver);

U2_anext_state_aI10_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_anext_state_aI10_a0_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N16
U2_anext_state_aI10_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI10_a0_combout = (U2_apresent_state_aI3_aregout & ((U4_aIR_reg(7) & ((U2_aMux6_a0_combout))) # (!U4_aIR_reg(7) & (!U2_anext_state_aI9_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI10_a0_DATAA_driver,
	datab => U2_anext_state_aI10_a0_DATAB_driver,
	datac => U2_anext_state_aI10_a0_DATAC_driver,
	datad => U2_anext_state_aI10_a0_DATAD_driver,
	combout => U2_anext_state_aI10_a0_combout);

U2_apresent_state_aI10_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_acombout,
	dataout => U2_apresent_state_aI10_CLK_driver);

U2_apresent_state_aI10_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI10_a0_combout,
	dataout => U2_apresent_state_aI10_DATAIN_driver);

U2_apresent_state_aI10_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI10_ACLR_driver);

-- Location: LCFF_X23_Y17_N17
U2_apresent_state_aI10 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI10_CLK_driver,
	datain => U2_apresent_state_aI10_DATAIN_driver,
	aclr => U2_apresent_state_aI10_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI10_aregout);

U1_adata_a15_a_a49_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U1_adata_a15_a_a49_DATAA_driver);

U1_adata_a15_a_a49_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a48_combout,
	dataout => U1_adata_a15_a_a49_DATAB_driver);

U1_adata_a15_a_a49_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U1_adata_a15_a_a49_DATAC_driver);

U1_adata_a15_a_a49_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(15),
	dataout => U1_adata_a15_a_a49_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N16
U1_adata_a15_a_a49 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a15_a_a49_combout = (U1_adata_a15_a_a48_combout & ((U1_aaltsyncram_component_aauto_generated_aq_a(15)) # ((!U2_apresent_state_aI2_aregout & !U2_apresent_state_aI10_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a15_a_a49_DATAA_driver,
	datab => U1_adata_a15_a_a49_DATAB_driver,
	datac => U1_adata_a15_a_a49_DATAC_driver,
	datad => U1_adata_a15_a_a49_DATAD_driver,
	combout => U1_adata_a15_a_a49_combout);

U4_aIR_reg_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U4_aIR_reg_a7_a_CLK_driver);

U4_aIR_reg_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a15_a_a49_combout,
	dataout => U4_aIR_reg_a7_a_DATAIN_driver);

U4_aIR_reg_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U4_aIR_reg_a7_a_ACLR_driver);

U4_aIR_reg_a7_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U4_aIR_reg_a7_a_ENA_driver);

-- Location: LCFF_X18_Y18_N17
U4_aIR_reg_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U4_aIR_reg_a7_a_CLK_driver,
	datain => U4_aIR_reg_a7_a_DATAIN_driver,
	aclr => U4_aIR_reg_a7_a_ACLR_driver,
	ena => U4_aIR_reg_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U4_aIR_reg(7));

U2_anext_state_aI9_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a0_combout,
	dataout => U2_anext_state_aI9_a2_DATAA_driver);

U2_anext_state_aI9_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI9_a2_DATAB_driver);

U2_anext_state_aI9_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_anext_state_aI9_a2_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N2
U2_anext_state_aI9_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI9_a2_combout = (U2_anext_state_aI9_a0_combout & (!U4_aIR_reg(7) & U2_apresent_state_aI3_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI9_a2_DATAA_driver,
	datab => U2_anext_state_aI9_a2_DATAB_driver,
	datad => U2_anext_state_aI9_a2_DATAD_driver,
	combout => U2_anext_state_aI9_a2_combout);

U2_apresent_state_aI9_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI9_CLK_driver);

U2_apresent_state_aI9_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a2_combout,
	dataout => U2_apresent_state_aI9_SDATA_driver);

U2_apresent_state_aI9_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI9_ACLR_driver);

-- Location: LCFF_X23_Y17_N31
U2_apresent_state_aI9 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI9_CLK_driver,
	sdata => U2_apresent_state_aI9_SDATA_driver,
	aclr => U2_apresent_state_aI9_ACLR_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI9_aregout);

U2_amar_data_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U2_amar_data_DATAC_driver);

U2_amar_data_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI9_aregout,
	dataout => U2_amar_data_DATAD_driver);

-- Location: LCCOMB_X23_Y17_N26
U2_amar_data : cycloneii_lcell_comb
-- Equation(s):
-- U2_amar_data_acombout = (U2_apresent_state_aI6_aregout) # (U2_apresent_state_aI9_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U2_amar_data_DATAC_driver,
	datad => U2_amar_data_DATAD_driver,
	combout => U2_amar_data_acombout);

U3_aacc_a0_a_a31_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a0_combout,
	dataout => U3_aacc_a0_a_a31_DATAA_driver);

U3_aacc_a0_a_a31_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U3_aacc_a0_a_a31_DATAB_driver);

U3_aacc_a0_a_a31_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U3_aacc_a0_a_a31_DATAC_driver);

U3_aacc_a0_a_a31_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI9_aregout,
	dataout => U3_aacc_a0_a_a31_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N24
U3_aacc_a0_a_a31 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a31_combout = (!U3_aMux1_a0_combout & ((U2_apresent_state_aI8_aregout) # ((U2_apresent_state_aI10_aregout) # (U2_apresent_state_aI9_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a31_DATAA_driver,
	datab => U3_aacc_a0_a_a31_DATAB_driver,
	datac => U3_aacc_a0_a_a31_DATAC_driver,
	datad => U3_aacc_a0_a_a31_DATAD_driver,
	combout => U3_aacc_a0_a_a31_combout);

U3_aMux1_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aMux1_a0_DATAA_driver);

U3_aMux1_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux1_a0_DATAB_driver);

U3_aMux1_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux1_a0_DATAC_driver);

U3_aMux1_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aMux1_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N30
U3_aMux1_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux1_a0_combout = (U4_aIR_reg(7) & ((U4_aIR_reg(6)) # ((U4_aIR_reg(5)) # (!U4_aIR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux1_a0_DATAA_driver,
	datab => U3_aMux1_a0_DATAB_driver,
	datac => U3_aMux1_a0_DATAC_driver,
	datad => U3_aMux1_a0_DATAD_driver,
	combout => U3_aMux1_a0_combout);

U2_aWideOr4_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U2_aWideOr4_a0_DATAB_driver);

U2_aWideOr4_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI10_aregout,
	dataout => U2_aWideOr4_a0_DATAC_driver);

U2_aWideOr4_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI9_aregout,
	dataout => U2_aWideOr4_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N22
U2_aWideOr4_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_aWideOr4_a0_combout = (U2_apresent_state_aI8_aregout) # ((U2_apresent_state_aI10_aregout) # (U2_apresent_state_aI9_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_aWideOr4_a0_DATAB_driver,
	datac => U2_aWideOr4_a0_DATAC_driver,
	datad => U2_aWideOr4_a0_DATAD_driver,
	combout => U2_aWideOr4_a0_combout);

U3_aacc_a0_a_a33_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a0_a_a33_DATAA_driver);

U3_aacc_a0_a_a33_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a0_combout,
	dataout => U3_aacc_a0_a_a33_DATAB_driver);

U3_aacc_a0_a_a33_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a0_a_a33_DATAC_driver);

U3_aacc_a0_a_a33_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr4_a0_combout,
	dataout => U3_aacc_a0_a_a33_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N26
U3_aacc_a0_a_a33 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a33_combout = (!U4_aIR_reg(7) & (!U3_aMux1_a0_combout & (U4_aIR_reg(6) & U2_aWideOr4_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a33_DATAA_driver,
	datab => U3_aacc_a0_a_a33_DATAB_driver,
	datac => U3_aacc_a0_a_a33_DATAC_driver,
	datad => U3_aacc_a0_a_a33_DATAD_driver,
	combout => U3_aacc_a0_a_a33_combout);

U3_aacc_a7_a_a42_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux1_a3_combout,
	dataout => U3_aacc_a7_a_a42_DATAA_driver);

U3_aacc_a7_a_a42_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aacc_a7_a_a42_DATAB_driver);

U3_aacc_a7_a_a42_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a7_a_a42_DATAC_driver);

U3_aacc_a7_a_a42_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a33_combout,
	dataout => U3_aacc_a7_a_a42_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N14
U3_aacc_a7_a_a42 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a42_combout = (U3_aMux1_a3_combout & ((U3_aacc_a0_a_a33_combout) # ((U3_aacc(7) & !U3_aacc_a0_a_a31_combout)))) # (!U3_aMux1_a3_combout & (U3_aacc(7) & (!U3_aacc_a0_a_a31_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a42_DATAA_driver,
	datab => U3_aacc_a7_a_a42_DATAB_driver,
	datac => U3_aacc_a7_a_a42_DATAC_driver,
	datad => U3_aacc_a7_a_a42_DATAD_driver,
	combout => U3_aacc_a7_a_a42_combout);

U3_aAdd1_a28_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aAdd1_a28_DATAA_driver);

U3_aAdd1_a28_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a28_DATAB_driver);

U3_aAdd1_a28_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U3_aAdd1_a28_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N0
U3_aAdd1_a28 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a28_combout = (U4_aIR_reg(4) & (U3_aacc(7))) # (!U4_aIR_reg(4) & ((U6_adata_rom_a7_a_a11_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a28_DATAA_driver,
	datab => U3_aAdd1_a28_DATAB_driver,
	datad => U3_aAdd1_a28_DATAD_driver,
	combout => U3_aAdd1_a28_combout);

U3_aacc_a7_a_a38_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a37_combout,
	dataout => U3_aacc_a7_a_a38_DATAA_driver);

U3_aacc_a7_a_a38_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a7_a_a38_DATAB_driver);

U3_aacc_a7_a_a38_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a7_a_a38_DATAC_driver);

U3_aacc_a7_a_a38_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a7_a_a38_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N8
U3_aacc_a7_a_a38 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a38_combout = (U3_aacc_a7_a_a37_combout & (!U4_aIR_reg(7) & (U3_aacc_a0_a_a31_combout & !U4_aIR_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a38_DATAA_driver,
	datab => U3_aacc_a7_a_a38_DATAB_driver,
	datac => U3_aacc_a7_a_a38_DATAC_driver,
	datad => U3_aacc_a7_a_a38_DATAD_driver,
	combout => U3_aacc_a7_a_a38_combout);

U3_aAdd0_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd0_a0_DATAA_driver);

U3_aAdd0_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd0_a0_DATAB_driver);

-- Location: LCCOMB_X19_Y16_N14
U3_aAdd0_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_a0_combout = (U3_aacc(0) & (U1_adata_a0_a_a20_combout $ (VCC))) # (!U3_aacc(0) & (U1_adata_a0_a_a20_combout & VCC))
-- U3_aAdd0_a1 = CARRY((U3_aacc(0) & U1_adata_a0_a_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_a0_DATAA_driver,
	datab => U3_aAdd0_a0_DATAB_driver,
	datad => VCC,
	combout => U3_aAdd0_a0_combout,
	cout => U3_aAdd0_a1);

U3_aMux8_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a0_combout,
	dataout => U3_aMux8_a0_DATAB_driver);

U3_aMux8_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aMux8_a0_DATAC_driver);

U3_aMux8_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux8_a0_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N0
U3_aMux8_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a0_combout = (U4_aIR_reg(3) & (U3_aAdd0_a0_combout)) # (!U4_aIR_reg(3) & ((U1_adata_a0_a_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aMux8_a0_DATAB_driver,
	datac => U3_aMux8_a0_DATAC_driver,
	datad => U3_aMux8_a0_DATAD_driver,
	combout => U3_aMux8_a0_combout);

U3_aMux8_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a2_combout,
	dataout => U3_aMux8_a3_DATAA_driver);

U3_aMux8_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux8_a3_DATAB_driver);

U3_aMux8_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aMux8_a3_DATAC_driver);

U3_aMux8_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a0_combout,
	dataout => U3_aMux8_a3_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N2
U3_aMux8_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a3_combout = (U3_aMux8_a2_combout & ((U4_aIR_reg(5)) # ((U3_aacc(0))))) # (!U3_aMux8_a2_combout & (!U4_aIR_reg(5) & ((U3_aMux8_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux8_a3_DATAA_driver,
	datab => U3_aMux8_a3_DATAB_driver,
	datac => U3_aMux8_a3_DATAC_driver,
	datad => U3_aMux8_a3_DATAD_driver,
	combout => U3_aMux8_a3_combout);

U3_aacc_a0_a_a32_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a0_a_a32_DATAA_driver);

U3_aacc_a0_a_a32_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a0_a_a32_DATAB_driver);

U3_aacc_a0_a_a32_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a0_a_a32_DATAC_driver);

U3_aacc_a0_a_a32_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a3_combout,
	dataout => U3_aacc_a0_a_a32_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N30
U3_aacc_a0_a_a32 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a32_combout = (!U4_aIR_reg(6) & (!U4_aIR_reg(7) & (U3_aacc_a0_a_a31_combout & U3_aMux8_a3_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a32_DATAA_driver,
	datab => U3_aacc_a0_a_a32_DATAB_driver,
	datac => U3_aacc_a0_a_a32_DATAC_driver,
	datad => U3_aacc_a0_a_a32_DATAD_driver,
	combout => U3_aacc_a0_a_a32_combout);

U3_aAdd1_a17_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd1_a17_DATAB_driver);

U3_aAdd1_a17_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a17_DATAC_driver);

U3_aAdd1_a17_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd1_a17_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N20
U3_aAdd1_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a17_combout = (U4_aIR_reg(4) & (U3_aacc(0))) # (!U4_aIR_reg(4) & ((U1_adata_a0_a_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aAdd1_a17_DATAB_driver,
	datac => U3_aAdd1_a17_DATAC_driver,
	datad => U3_aAdd1_a17_DATAD_driver,
	combout => U3_aAdd1_a17_combout);

U3_aacc_a2_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a9_DATAA_driver);

U3_aacc_a2_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a5_combout,
	dataout => U3_aacc_a2_a_a9_DATAB_driver);

U3_aacc_a2_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a2_a_a9_DATAC_driver);

U3_aacc_a2_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a2_a_a9_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N0
U3_aacc_a2_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a9_combout = (U3_aacc_a2_a_a5_combout & (!U4_aIR_reg(4) & (U4_aIR_reg(3) $ (!U4_aIR_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a9_DATAA_driver,
	datab => U3_aacc_a2_a_a9_DATAB_driver,
	datac => U3_aacc_a2_a_a9_DATAC_driver,
	datad => U3_aacc_a2_a_a9_DATAD_driver,
	combout => U3_aacc_a2_a_a9_combout);

U2_anext_state_aI9_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI9_a0_DATAA_driver);

U2_anext_state_aI9_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U2_anext_state_aI9_a0_DATAB_driver);

U2_anext_state_aI9_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U2_anext_state_aI9_a0_DATAC_driver);

U2_anext_state_aI9_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U2_anext_state_aI9_a0_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N2
U2_anext_state_aI9_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI9_a0_combout = (U4_aIR_reg(3) & (U4_aIR_reg(4) & (U4_aIR_reg(6) & U4_aIR_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI9_a0_DATAA_driver,
	datab => U2_anext_state_aI9_a0_DATAB_driver,
	datac => U2_anext_state_aI9_a0_DATAC_driver,
	datad => U2_anext_state_aI9_a0_DATAD_driver,
	combout => U2_anext_state_aI9_a0_combout);

U3_aacc_a2_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a2_a_a10_DATAA_driver);

U3_aacc_a2_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a9_combout,
	dataout => U3_aacc_a2_a_a10_DATAB_driver);

U3_aacc_a2_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a0_combout,
	dataout => U3_aacc_a2_a_a10_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N12
U3_aacc_a2_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a10_combout = (U3_aacc_a2_a_a9_combout) # ((!U4_aIR_reg(7) & U2_anext_state_aI9_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a10_DATAA_driver,
	datab => U3_aacc_a2_a_a10_DATAB_driver,
	datad => U3_aacc_a2_a_a10_DATAD_driver,
	combout => U3_aacc_a2_a_a10_combout);

U3_aacc_a2_a_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a8_DATAA_driver);

U3_aacc_a2_a_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a2_a_a8_DATAB_driver);

U3_aacc_a2_a_a8_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a2_a_a8_DATAC_driver);

U3_aacc_a2_a_a8_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a8_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N6
U3_aacc_a2_a_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a8_combout = (U4_aIR_reg(6) & (!U4_aIR_reg(5) & ((!U4_aIR_reg(4)) # (!U4_aIR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a8_DATAA_driver,
	datab => U3_aacc_a2_a_a8_DATAB_driver,
	datac => U3_aacc_a2_a_a8_DATAC_driver,
	datad => U3_aacc_a2_a_a8_DATAD_driver,
	combout => U3_aacc_a2_a_a8_combout);

U3_aacc_a2_a_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a4_DATAA_driver);

U3_aacc_a2_a_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a2_a_a4_DATAB_driver);

U3_aacc_a2_a_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a2_a_a4_DATAC_driver);

U3_aacc_a2_a_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a4_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N16
U3_aacc_a2_a_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a4_combout = (U4_aIR_reg(3) & (((U4_aIR_reg(6)) # (!U4_aIR_reg(5))) # (!U4_aIR_reg(4)))) # (!U4_aIR_reg(3) & ((U4_aIR_reg(4)) # ((U4_aIR_reg(5)) # (!U4_aIR_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a4_DATAA_driver,
	datab => U3_aacc_a2_a_a4_DATAB_driver,
	datac => U3_aacc_a2_a_a4_DATAC_driver,
	datad => U3_aacc_a2_a_a4_DATAD_driver,
	combout => U3_aacc_a2_a_a4_combout);

U3_aacc_a2_a_a6_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a6_DATAA_driver);

U3_aacc_a2_a_a6_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a5_combout,
	dataout => U3_aacc_a2_a_a6_DATAB_driver);

U3_aacc_a2_a_a6_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aacc_a2_a_a6_DATAC_driver);

U3_aacc_a2_a_a6_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U3_aacc_a2_a_a6_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N4
U3_aacc_a2_a_a6 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a6_combout = (U4_aIR_reg(7)) # ((U3_aacc_a2_a_a5_combout & ((!U4_aIR_reg(4)) # (!U4_aIR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a6_DATAA_driver,
	datab => U3_aacc_a2_a_a6_DATAB_driver,
	datac => U3_aacc_a2_a_a6_DATAC_driver,
	datad => U3_aacc_a2_a_a6_DATAD_driver,
	combout => U3_aacc_a2_a_a6_combout);

U3_aacc_a3_a_a62_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a3_a_a62_DATAA_driver);

U3_aacc_a3_a_a62_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a3_a_a62_DATAB_driver);

U3_aacc_a3_a_a62_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a3_a_a62_DATAC_driver);

U3_aacc_a3_a_a62_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a3_a_a62_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N6
U3_aacc_a3_a_a62 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a62_combout = (!U3_aacc_a2_a_a10_combout & (!U3_aacc_a2_a_a8_combout & (U3_aacc_a2_a_a4_combout & !U3_aacc_a2_a_a6_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a62_DATAA_driver,
	datab => U3_aacc_a3_a_a62_DATAB_driver,
	datac => U3_aacc_a3_a_a62_DATAC_driver,
	datad => U3_aacc_a3_a_a62_DATAD_driver,
	combout => U3_aacc_a3_a_a62_combout);

U3_aacc_a1_a_a23_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux7_a2_combout,
	dataout => U3_aacc_a1_a_a23_DATAA_driver);

U3_aacc_a1_a_a23_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a1_a_a23_DATAB_driver);

U3_aacc_a1_a_a23_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aacc_a1_a_a23_DATAC_driver);

U3_aacc_a1_a_a23_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a62_combout,
	dataout => U3_aacc_a1_a_a23_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N2
U3_aacc_a1_a_a23 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a1_a_a23_combout = (U3_aMux7_a2_combout & ((U3_aacc_a3_a_a62_combout) # ((U3_aacc_a2_a_a10_combout & U1_adata_a1_a_a12_combout)))) # (!U3_aMux7_a2_combout & (U3_aacc_a2_a_a10_combout & (U1_adata_a1_a_a12_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a1_a_a23_DATAA_driver,
	datab => U3_aacc_a1_a_a23_DATAB_driver,
	datac => U3_aacc_a1_a_a23_DATAC_driver,
	datad => U3_aacc_a1_a_a23_DATAD_driver,
	combout => U3_aacc_a1_a_a23_combout);

U3_aacc_a3_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a3_a_a11_DATAA_driver);

U3_aacc_a3_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a3_a_a11_DATAB_driver);

U3_aacc_a3_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a3_a_a11_DATAC_driver);

U3_aacc_a3_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a3_a_a11_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N30
U3_aacc_a3_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a11_combout = (!U3_aacc_a2_a_a10_combout & ((U3_aacc_a2_a_a6_combout) # ((U3_aacc_a2_a_a8_combout & U3_aacc_a2_a_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a11_DATAA_driver,
	datab => U3_aacc_a3_a_a11_DATAB_driver,
	datac => U3_aacc_a3_a_a11_DATAC_driver,
	datad => U3_aacc_a3_a_a11_DATAD_driver,
	combout => U3_aacc_a3_a_a11_combout);

U3_aacc_a1_a_a24_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U3_aacc_a1_a_a24_DATAA_driver);

U3_aacc_a1_a_a24_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a1_a_a24_DATAC_driver);

U3_aacc_a1_a_a24_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a1_a_a24_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N20
U3_aacc_a1_a_a24 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a1_a_a24_combout = (U1_adata_a1_a_a12_combout & (U3_aacc_a2_a_a8_combout)) # (!U1_adata_a1_a_a12_combout & ((U3_aacc_a3_a_a11_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a1_a_a24_DATAA_driver,
	datac => U3_aacc_a1_a_a24_DATAC_driver,
	datad => U3_aacc_a1_a_a24_DATAD_driver,
	combout => U3_aacc_a1_a_a24_combout);

U3_aacc_a2_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a2_a_a14_DATAC_driver);

U3_aacc_a2_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a2_a_a14_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N4
U3_aacc_a2_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a14_combout = (U3_aacc_a2_a_a4_combout & !U3_aacc_a2_a_a6_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => U3_aacc_a2_a_a14_DATAC_driver,
	datad => U3_aacc_a2_a_a14_DATAD_driver,
	combout => U3_aacc_a2_a_a14_combout);

U3_aacc_a3_a_a61_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a3_a_a61_DATAA_driver);

U3_aacc_a3_a_a61_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a3_a_a61_DATAB_driver);

U3_aacc_a3_a_a61_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a3_a_a61_DATAC_driver);

U3_aacc_a3_a_a61_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a3_a_a61_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N28
U3_aacc_a3_a_a61 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a61_combout = (!U3_aacc_a2_a_a10_combout & (!U3_aacc_a2_a_a6_combout & ((!U3_aacc_a2_a_a4_combout) # (!U3_aacc_a2_a_a8_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a61_DATAA_driver,
	datab => U3_aacc_a3_a_a61_DATAB_driver,
	datac => U3_aacc_a3_a_a61_DATAC_driver,
	datad => U3_aacc_a3_a_a61_DATAD_driver,
	combout => U3_aacc_a3_a_a61_combout);

U3_aacc_a2_a_a29_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aacc_a2_a_a29_DATAA_driver);

U3_aacc_a2_a_a29_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a2_a_a29_DATAB_driver);

U3_aacc_a2_a_a29_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a2_a_a29_DATAC_driver);

U3_aacc_a2_a_a29_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aacc_a2_a_a29_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N22
U3_aacc_a2_a_a29 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a29_combout = (!U3_aacc_a2_a_a14_combout & (U3_aacc(1) & ((U1_adata_a2_a_a16_combout) # (U3_aacc_a3_a_a61_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a29_DATAA_driver,
	datab => U3_aacc_a2_a_a29_DATAB_driver,
	datac => U3_aacc_a2_a_a29_DATAC_driver,
	datad => U3_aacc_a2_a_a29_DATAD_driver,
	combout => U3_aacc_a2_a_a29_combout);

U3_aacc_a3_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a3_a_a13_DATAB_driver);

U3_aacc_a3_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a3_a_a13_DATAC_driver);

U3_aacc_a3_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aacc_a3_a_a13_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N18
U3_aacc_a3_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a13_combout = (U3_aacc(2) & ((U3_aacc_a2_a_a6_combout) # (!U3_aacc_a2_a_a4_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a3_a_a13_DATAB_driver,
	datac => U3_aacc_a3_a_a13_DATAC_driver,
	datad => U3_aacc_a3_a_a13_DATAD_driver,
	combout => U3_aacc_a3_a_a13_combout);

U3_aacc_a3_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a3_a_a15_DATAA_driver);

U3_aacc_a3_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aacc_a3_a_a15_DATAB_driver);

U3_aacc_a3_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a3_a_a15_DATAC_driver);

U3_aacc_a3_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a13_combout,
	dataout => U3_aacc_a3_a_a15_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N14
U3_aacc_a3_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a15_combout = (U1_adata_a3_a_a8_combout & ((U3_aacc_a2_a_a10_combout) # ((U3_aacc_a3_a_a13_combout)))) # (!U1_adata_a3_a_a8_combout & (((U3_aacc_a3_a_a61_combout & U3_aacc_a3_a_a13_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a15_DATAA_driver,
	datab => U3_aacc_a3_a_a15_DATAB_driver,
	datac => U3_aacc_a3_a_a15_DATAC_driver,
	datad => U3_aacc_a3_a_a15_DATAD_driver,
	combout => U3_aacc_a3_a_a15_combout);

U3_aacc_a3_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a7_combout,
	dataout => U3_aacc_a3_a_a12_DATAA_driver);

U3_aacc_a3_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a3_a_a12_DATAB_driver);

U3_aacc_a3_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a3_a_a12_DATAC_driver);

U3_aacc_a3_a_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U3_aacc_a3_a_a12_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N16
U3_aacc_a3_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a12_combout = (U3_aacc_a3_a_a7_combout & ((U1_adata_a3_a_a8_combout & (U3_aacc_a2_a_a8_combout)) # (!U1_adata_a3_a_a8_combout & ((U3_aacc_a3_a_a11_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a12_DATAA_driver,
	datab => U3_aacc_a3_a_a12_DATAB_driver,
	datac => U3_aacc_a3_a_a12_DATAC_driver,
	datad => U3_aacc_a3_a_a12_DATAD_driver,
	combout => U3_aacc_a3_a_a12_combout);

U3_aacc_a3_a_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux5_a2_combout,
	dataout => U3_aacc_a3_a_a20_DATAA_driver);

U3_aacc_a3_a_a20_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a15_combout,
	dataout => U3_aacc_a3_a_a20_DATAB_driver);

U3_aacc_a3_a_a20_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a12_combout,
	dataout => U3_aacc_a3_a_a20_DATAC_driver);

U3_aacc_a3_a_a20_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a62_combout,
	dataout => U3_aacc_a3_a_a20_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N0
U3_aacc_a3_a_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a3_a_a20_combout = (U3_aacc_a3_a_a15_combout) # ((U3_aacc_a3_a_a12_combout) # ((U3_aMux5_a2_combout & U3_aacc_a3_a_a62_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a3_a_a20_DATAA_driver,
	datab => U3_aacc_a3_a_a20_DATAB_driver,
	datac => U3_aacc_a3_a_a20_DATAC_driver,
	datad => U3_aacc_a3_a_a20_DATAD_driver,
	combout => U3_aacc_a3_a_a20_combout);

U2_anext_state_aI9_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI9_a1_DATAA_driver);

U2_anext_state_aI9_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a0_combout,
	dataout => U2_anext_state_aI9_a1_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N8
U2_anext_state_aI9_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI9_a1_combout = (!U4_aIR_reg(7) & U2_anext_state_aI9_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI9_a1_DATAA_driver,
	datad => U2_anext_state_aI9_a1_DATAD_driver,
	combout => U2_anext_state_aI9_a1_combout);

U3_aacc_a6_a_a21_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a6_a_a21_DATAA_driver);

U3_aacc_a6_a_a21_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a9_combout,
	dataout => U3_aacc_a6_a_a21_DATAB_driver);

U3_aacc_a6_a_a21_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI9_a1_combout,
	dataout => U3_aacc_a6_a_a21_DATAC_driver);

U3_aacc_a6_a_a21_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr4_a0_combout,
	dataout => U3_aacc_a6_a_a21_DATAD_driver);

-- Location: LCCOMB_X22_Y17_N18
U3_aacc_a6_a_a21 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a6_a_a21_combout = (U2_aWideOr4_a0_combout & (((U3_aacc_a2_a_a9_combout) # (U2_anext_state_aI9_a1_combout)) # (!U3_aacc_a2_a_a6_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a6_a_a21_DATAA_driver,
	datab => U3_aacc_a6_a_a21_DATAB_driver,
	datac => U3_aacc_a6_a_a21_DATAC_driver,
	datad => U3_aacc_a6_a_a21_DATAD_driver,
	combout => U3_aacc_a6_a_a21_combout);

U3_aacc_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a3_a_CLK_driver);

U3_aacc_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a20_combout,
	dataout => U3_aacc_a3_a_DATAIN_driver);

U3_aacc_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a3_a_ACLR_driver);

U3_aacc_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a3_a_ENA_driver);

-- Location: LCFF_X23_Y16_N1
U3_aacc_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a3_a_CLK_driver,
	datain => U3_aacc_a3_a_DATAIN_driver,
	aclr => U3_aacc_a3_a_ACLR_driver,
	ena => U3_aacc_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(3));

U3_aacc_a2_a_a27_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aacc_a2_a_a27_DATAA_driver);

U3_aacc_a2_a_a27_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a2_a_a27_DATAB_driver);

U3_aacc_a2_a_a27_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a2_a_a27_DATAC_driver);

U3_aacc_a2_a_a27_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aacc_a2_a_a27_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N26
U3_aacc_a2_a_a27 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a27_combout = (U3_aacc(3) & ((U1_adata_a2_a_a16_combout & (U3_aacc_a2_a_a8_combout)) # (!U1_adata_a2_a_a16_combout & ((U3_aacc_a3_a_a11_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a27_DATAA_driver,
	datab => U3_aacc_a2_a_a27_DATAB_driver,
	datac => U3_aacc_a2_a_a27_DATAC_driver,
	datad => U3_aacc_a2_a_a27_DATAD_driver,
	combout => U3_aacc_a2_a_a27_combout);

U3_aAdd1_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout,
	dataout => U3_aAdd1_a8_DATAA_driver);

U3_aAdd1_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a0_combout,
	dataout => U3_aAdd1_a8_DATAB_driver);

U3_aAdd1_a8_CIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a7,
	dataout => U3_aAdd1_a8_CIN_driver);

-- Location: LCCOMB_X21_Y17_N8
U3_aAdd1_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a8_combout = (U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout & ((U3_aAdd1_a0_combout & (U3_aAdd1_a7 & VCC)) # (!U3_aAdd1_a0_combout & (!U3_aAdd1_a7)))) # (!U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout & ((U3_aAdd1_a0_combout & 
-- (!U3_aAdd1_a7)) # (!U3_aAdd1_a0_combout & ((U3_aAdd1_a7) # (GND)))))
-- U3_aAdd1_a9 = CARRY((U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout & (!U3_aAdd1_a0_combout & !U3_aAdd1_a7)) # (!U3_aAdd0_aauto_generated_aresult_int_a3_a_a6_combout & ((!U3_aAdd1_a7) # (!U3_aAdd1_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a8_DATAA_driver,
	datab => U3_aAdd1_a8_DATAB_driver,
	datad => VCC,
	cin => U3_aAdd1_a8_CIN_driver,
	combout => U3_aAdd1_a8_combout,
	cout => U3_aAdd1_a9);

U3_aacc_a2_a_a16_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a16_DATAA_driver);

U3_aacc_a2_a_a16_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a16_DATAC_driver);

-- Location: LCCOMB_X20_Y16_N8
U3_aacc_a2_a_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a16_combout = (U4_aIR_reg(3)) # (!U4_aIR_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a16_DATAA_driver,
	datac => U3_aacc_a2_a_a16_DATAC_driver,
	combout => U3_aacc_a2_a_a16_combout);

U3_aMux6_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a17_combout,
	dataout => U3_aMux6_a0_DATAA_driver);

U3_aMux6_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aMux6_a0_DATAB_driver);

U3_aMux6_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a16_combout,
	dataout => U3_aMux6_a0_DATAC_driver);

U3_aMux6_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aMux6_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N16
U3_aMux6_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux6_a0_combout = (U3_aacc_a2_a_a17_combout & (U3_aacc(2) $ (((U1_adata_a2_a_a16_combout) # (!U3_aacc_a2_a_a16_combout))))) # (!U3_aacc_a2_a_a17_combout & ((U1_adata_a2_a_a16_combout & ((U3_aacc(2)) # (!U3_aacc_a2_a_a16_combout))) # 
-- (!U1_adata_a2_a_a16_combout & (!U3_aacc_a2_a_a16_combout & U3_aacc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux6_a0_DATAA_driver,
	datab => U3_aMux6_a0_DATAB_driver,
	datac => U3_aMux6_a0_DATAC_driver,
	datad => U3_aMux6_a0_DATAD_driver,
	combout => U3_aMux6_a0_combout);

U3_aacc_a2_a_a18_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a2_a_a18_DATAA_driver);

U3_aacc_a2_a_a18_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a2_a_a18_DATAC_driver);

U3_aacc_a2_a_a18_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U3_aacc_a2_a_a18_DATAD_driver);

-- Location: LCCOMB_X20_Y16_N14
U3_aacc_a2_a_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a18_combout = (U4_aIR_reg(6)) # ((U4_aIR_reg(3) & U4_aIR_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a18_DATAA_driver,
	datac => U3_aacc_a2_a_a18_DATAC_driver,
	datad => U3_aacc_a2_a_a18_DATAD_driver,
	combout => U3_aacc_a2_a_a18_combout);

U3_aMux6_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux6_a1_DATAA_driver);

U3_aMux6_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux6_a0_combout,
	dataout => U3_aMux6_a1_DATAB_driver);

U3_aMux6_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd0_a4_combout,
	dataout => U3_aMux6_a1_DATAC_driver);

U3_aMux6_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a18_combout,
	dataout => U3_aMux6_a1_DATAD_driver);

-- Location: LCCOMB_X21_Y16_N12
U3_aMux6_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux6_a1_combout = (U3_aacc_a2_a_a19_combout & (((U3_aacc_a2_a_a18_combout)))) # (!U3_aacc_a2_a_a19_combout & ((U3_aacc_a2_a_a18_combout & (U3_aMux6_a0_combout)) # (!U3_aacc_a2_a_a18_combout & ((U3_aAdd0_a4_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux6_a1_DATAA_driver,
	datab => U3_aMux6_a1_DATAB_driver,
	datac => U3_aMux6_a1_DATAC_driver,
	datad => U3_aMux6_a1_DATAD_driver,
	combout => U3_aMux6_a1_combout);

U3_aMux6_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a19_combout,
	dataout => U3_aMux6_a2_DATAA_driver);

U3_aMux6_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd2_a4_combout,
	dataout => U3_aMux6_a2_DATAB_driver);

U3_aMux6_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a8_combout,
	dataout => U3_aMux6_a2_DATAC_driver);

U3_aMux6_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux6_a1_combout,
	dataout => U3_aMux6_a2_DATAD_driver);

-- Location: LCCOMB_X21_Y16_N6
U3_aMux6_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux6_a2_combout = (U3_aacc_a2_a_a19_combout & ((U3_aMux6_a1_combout & (U3_aAdd2_a4_combout)) # (!U3_aMux6_a1_combout & ((U3_aAdd1_a8_combout))))) # (!U3_aacc_a2_a_a19_combout & (((U3_aMux6_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux6_a2_DATAA_driver,
	datab => U3_aMux6_a2_DATAB_driver,
	datac => U3_aMux6_a2_DATAC_driver,
	datad => U3_aMux6_a2_DATAD_driver,
	combout => U3_aMux6_a2_combout);

U3_aacc_a2_a_a28_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a2_a_a28_DATAA_driver);

U3_aacc_a2_a_a28_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a27_combout,
	dataout => U3_aacc_a2_a_a28_DATAB_driver);

U3_aacc_a2_a_a28_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a2_a_a28_DATAC_driver);

U3_aacc_a2_a_a28_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux6_a2_combout,
	dataout => U3_aacc_a2_a_a28_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N12
U3_aacc_a2_a_a28 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a28_combout = (U3_aacc_a2_a_a14_combout & ((U3_aacc_a2_a_a27_combout) # ((U3_aacc_a3_a_a61_combout & U3_aMux6_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a28_DATAA_driver,
	datab => U3_aacc_a2_a_a28_DATAB_driver,
	datac => U3_aacc_a2_a_a28_DATAC_driver,
	datad => U3_aacc_a2_a_a28_DATAD_driver,
	combout => U3_aacc_a2_a_a28_combout);

U3_aacc_a2_a_a30_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U3_aacc_a2_a_a30_DATAA_driver);

U3_aacc_a2_a_a30_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a29_combout,
	dataout => U3_aacc_a2_a_a30_DATAB_driver);

U3_aacc_a2_a_a30_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a2_a_a30_DATAC_driver);

U3_aacc_a2_a_a30_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a28_combout,
	dataout => U3_aacc_a2_a_a30_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N2
U3_aacc_a2_a_a30 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a2_a_a30_combout = (U3_aacc_a2_a_a29_combout) # ((U3_aacc_a2_a_a28_combout) # ((U1_adata_a2_a_a16_combout & U3_aacc_a2_a_a10_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a2_a_a30_DATAA_driver,
	datab => U3_aacc_a2_a_a30_DATAB_driver,
	datac => U3_aacc_a2_a_a30_DATAC_driver,
	datad => U3_aacc_a2_a_a30_DATAD_driver,
	combout => U3_aacc_a2_a_a30_combout);

U3_aacc_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a2_a_CLK_driver);

U3_aacc_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a30_combout,
	dataout => U3_aacc_a2_a_DATAIN_driver);

U3_aacc_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a2_a_ACLR_driver);

U3_aacc_a2_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a2_a_ENA_driver);

-- Location: LCFF_X23_Y16_N3
U3_aacc_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a2_a_CLK_driver,
	datain => U3_aacc_a2_a_DATAIN_driver,
	aclr => U3_aacc_a2_a_ACLR_driver,
	ena => U3_aacc_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(2));

U3_aacc_a1_a_a25_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a6_combout,
	dataout => U3_aacc_a1_a_a25_DATAB_driver);

U3_aacc_a1_a_a25_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a4_combout,
	dataout => U3_aacc_a1_a_a25_DATAC_driver);

U3_aacc_a1_a_a25_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(2),
	dataout => U3_aacc_a1_a_a25_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N24
U3_aacc_a1_a_a25 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a1_a_a25_combout = (!U3_aacc_a2_a_a6_combout & (U3_aacc_a2_a_a4_combout & U3_aacc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aacc_a1_a_a25_DATAB_driver,
	datac => U3_aacc_a1_a_a25_DATAC_driver,
	datad => U3_aacc_a1_a_a25_DATAD_driver,
	combout => U3_aacc_a1_a_a25_combout);

U3_aacc_a1_a_a26_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a1_a_a22_combout,
	dataout => U3_aacc_a1_a_a26_DATAA_driver);

U3_aacc_a1_a_a26_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a1_a_a23_combout,
	dataout => U3_aacc_a1_a_a26_DATAB_driver);

U3_aacc_a1_a_a26_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a1_a_a24_combout,
	dataout => U3_aacc_a1_a_a26_DATAC_driver);

U3_aacc_a1_a_a26_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a1_a_a25_combout,
	dataout => U3_aacc_a1_a_a26_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N0
U3_aacc_a1_a_a26 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a1_a_a26_combout = (U3_aacc_a1_a_a22_combout) # ((U3_aacc_a1_a_a23_combout) # ((U3_aacc_a1_a_a24_combout & U3_aacc_a1_a_a25_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a1_a_a26_DATAA_driver,
	datab => U3_aacc_a1_a_a26_DATAB_driver,
	datac => U3_aacc_a1_a_a26_DATAC_driver,
	datad => U3_aacc_a1_a_a26_DATAD_driver,
	combout => U3_aacc_a1_a_a26_combout);

U3_aacc_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a1_a_CLK_driver);

U3_aacc_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a1_a_a26_combout,
	dataout => U3_aacc_a1_a_DATAIN_driver);

U3_aacc_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a1_a_ACLR_driver);

U3_aacc_a1_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a1_a_ENA_driver);

-- Location: LCFF_X22_Y16_N1
U3_aacc_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a1_a_CLK_driver,
	datain => U3_aacc_a1_a_DATAIN_driver,
	aclr => U3_aacc_a1_a_ACLR_driver,
	ena => U3_aacc_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(1));

U3_aAdd1_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a14_DATAA_driver);

U3_aAdd1_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd1_a14_DATAB_driver);

U3_aAdd1_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(1),
	dataout => U3_aAdd1_a14_DATAC_driver);

U3_aAdd1_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd1_a14_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N12
U3_aAdd1_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a14_combout = (U4_aIR_reg(4) & (U1_adata_a0_a_a20_combout & ((U3_aacc(0))))) # (!U4_aIR_reg(4) & (((U3_aacc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a14_DATAA_driver,
	datab => U3_aAdd1_a14_DATAB_driver,
	datac => U3_aAdd1_a14_DATAC_driver,
	datad => U3_aAdd1_a14_DATAD_driver,
	combout => U3_aAdd1_a14_combout);

U3_aMux8_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a15_combout,
	dataout => U3_aMux8_a4_DATAA_driver);

U3_aMux8_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux8_a4_DATAB_driver);

U3_aMux8_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aMux8_a4_DATAC_driver);

U3_aMux8_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a14_combout,
	dataout => U3_aMux8_a4_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N8
U3_aMux8_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a4_combout = (U4_aIR_reg(5) & (((U4_aIR_reg(3))))) # (!U4_aIR_reg(5) & ((U4_aIR_reg(3) & ((U3_aAdd1_a14_combout))) # (!U4_aIR_reg(3) & (U3_aAdd1_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux8_a4_DATAA_driver,
	datab => U3_aMux8_a4_DATAB_driver,
	datac => U3_aMux8_a4_DATAC_driver,
	datad => U3_aMux8_a4_DATAD_driver,
	combout => U3_aMux8_a4_combout);

U3_aAdd1_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aAdd1_a13_DATAB_driver);

U3_aAdd1_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a13_DATAC_driver);

U3_aAdd1_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U3_aAdd1_a13_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N16
U3_aAdd1_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a13_combout = (U3_aacc(0) & (!U4_aIR_reg(4))) # (!U3_aacc(0) & ((U4_aIR_reg(4)) # (U1_adata_a0_a_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U3_aAdd1_a13_DATAB_driver,
	datac => U3_aAdd1_a13_DATAC_driver,
	datad => U3_aAdd1_a13_DATAD_driver,
	combout => U3_aAdd1_a13_combout);

U3_aMux8_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a16_combout,
	dataout => U3_aMux8_a5_DATAA_driver);

U3_aMux8_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a4_combout,
	dataout => U3_aMux8_a5_DATAB_driver);

U3_aMux8_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a13_combout,
	dataout => U3_aMux8_a5_DATAC_driver);

U3_aMux8_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aMux8_a5_DATAD_driver);

-- Location: LCCOMB_X19_Y16_N4
U3_aMux8_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aMux8_a5_combout = (U3_aMux8_a4_combout & ((U3_aAdd1_a16_combout) # ((!U4_aIR_reg(5))))) # (!U3_aMux8_a4_combout & (((U3_aAdd1_a13_combout & U4_aIR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aMux8_a5_DATAA_driver,
	datab => U3_aMux8_a5_DATAB_driver,
	datac => U3_aMux8_a5_DATAC_driver,
	datad => U3_aMux8_a5_DATAD_driver,
	combout => U3_aMux8_a5_combout);

U3_aacc_a0_a_a34_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a33_combout,
	dataout => U3_aacc_a0_a_a34_DATAA_driver);

U3_aacc_a0_a_a34_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U3_aacc_a0_a_a34_DATAB_driver);

U3_aacc_a0_a_a34_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a31_combout,
	dataout => U3_aacc_a0_a_a34_DATAC_driver);

U3_aacc_a0_a_a34_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux8_a5_combout,
	dataout => U3_aacc_a0_a_a34_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N10
U3_aacc_a0_a_a34 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a34_combout = (U3_aacc_a0_a_a33_combout & ((U3_aMux8_a5_combout) # ((U3_aacc(0) & !U3_aacc_a0_a_a31_combout)))) # (!U3_aacc_a0_a_a33_combout & (U3_aacc(0) & (!U3_aacc_a0_a_a31_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a34_DATAA_driver,
	datab => U3_aacc_a0_a_a34_DATAB_driver,
	datac => U3_aacc_a0_a_a34_DATAC_driver,
	datad => U3_aacc_a0_a_a34_DATAD_driver,
	combout => U3_aacc_a0_a_a34_combout);

U3_aacc_a0_a_a36_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a35_combout,
	dataout => U3_aacc_a0_a_a36_DATAA_driver);

U3_aacc_a0_a_a36_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a32_combout,
	dataout => U3_aacc_a0_a_a36_DATAB_driver);

U3_aacc_a0_a_a36_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a17_combout,
	dataout => U3_aacc_a0_a_a36_DATAC_driver);

U3_aacc_a0_a_a36_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a34_combout,
	dataout => U3_aacc_a0_a_a36_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N0
U3_aacc_a0_a_a36 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a0_a_a36_combout = (U3_aacc_a0_a_a32_combout) # ((U3_aacc_a0_a_a34_combout) # ((U3_aacc_a0_a_a35_combout & U3_aAdd1_a17_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a0_a_a36_DATAA_driver,
	datab => U3_aacc_a0_a_a36_DATAB_driver,
	datac => U3_aacc_a0_a_a36_DATAC_driver,
	datad => U3_aacc_a0_a_a36_DATAD_driver,
	combout => U3_aacc_a0_a_a36_combout);

U3_aacc_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a0_a_CLK_driver);

U3_aacc_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a36_combout,
	dataout => U3_aacc_a0_a_DATAIN_driver);

U3_aacc_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a0_a_ACLR_driver);

-- Location: LCFF_X19_Y17_N1
U3_aacc_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a0_a_CLK_driver,
	datain => U3_aacc_a0_a_DATAIN_driver,
	aclr => U3_aacc_a0_a_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(0));

U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_DATAA_driver);

-- Location: LCCOMB_X20_Y17_N2
U3_aAdd0_aauto_generated_aresult_int_a0_a_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout = CARRY(U4_aIR_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_DATAA_driver,
	datad => VCC,
	cout => U3_aAdd0_aauto_generated_aresult_int_a0_a_a1_cout);

U3_aAdd1_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U3_aAdd1_a3_DATAA_driver);

U3_aAdd1_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aAdd1_a3_DATAB_driver);

-- Location: LCCOMB_X21_Y17_N2
U3_aAdd1_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aAdd1_a3_cout = CARRY((U4_aIR_reg(4) & !U4_aIR_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aAdd1_a3_DATAA_driver,
	datab => U3_aAdd1_a3_DATAB_driver,
	datad => VCC,
	cout => U3_aAdd1_a3_cout);

U3_aacc_a7_a_a63_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a39_combout,
	dataout => U3_aacc_a7_a_a63_DATAA_driver);

U3_aacc_a7_a_a63_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U3_aacc_a7_a_a63_DATAB_driver);

U3_aacc_a7_a_a63_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a7_a_a63_DATAC_driver);

U3_aacc_a7_a_a63_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a24_combout,
	dataout => U3_aacc_a7_a_a63_DATAD_driver);

-- Location: LCCOMB_X21_Y17_N22
U3_aacc_a7_a_a63 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a63_combout = (U4_aIR_reg(3) & ((U3_aacc_a7_a_a39_combout) # ((!U4_aIR_reg(5))))) # (!U4_aIR_reg(3) & (((U4_aIR_reg(5) & U3_aAdd1_a24_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a63_DATAA_driver,
	datab => U3_aacc_a7_a_a63_DATAB_driver,
	datac => U3_aacc_a7_a_a63_DATAC_driver,
	datad => U3_aacc_a7_a_a63_DATAD_driver,
	combout => U3_aacc_a7_a_a63_combout);

U3_aacc_a7_a_a64_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a41_combout,
	dataout => U3_aacc_a7_a_a64_DATAA_driver);

U3_aacc_a7_a_a64_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U3_aacc_a7_a_a64_DATAB_driver);

U3_aacc_a7_a_a64_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a38_combout,
	dataout => U3_aacc_a7_a_a64_DATAC_driver);

U3_aacc_a7_a_a64_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a63_combout,
	dataout => U3_aacc_a7_a_a64_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N22
U3_aacc_a7_a_a64 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a64_combout = (U4_aIR_reg(5) & (((U3_aacc_a7_a_a38_combout & U3_aacc_a7_a_a63_combout)))) # (!U4_aIR_reg(5) & ((U3_aacc_a7_a_a63_combout & (U3_aacc_a7_a_a41_combout)) # (!U3_aacc_a7_a_a63_combout & ((U3_aacc_a7_a_a38_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a64_DATAA_driver,
	datab => U3_aacc_a7_a_a64_DATAB_driver,
	datac => U3_aacc_a7_a_a64_DATAC_driver,
	datad => U3_aacc_a7_a_a64_DATAD_driver,
	combout => U3_aacc_a7_a_a64_combout);

U3_aacc_a7_a_a43_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a0_a_a35_combout,
	dataout => U3_aacc_a7_a_a43_DATAA_driver);

U3_aacc_a7_a_a43_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a42_combout,
	dataout => U3_aacc_a7_a_a43_DATAB_driver);

U3_aacc_a7_a_a43_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a28_combout,
	dataout => U3_aacc_a7_a_a43_DATAC_driver);

U3_aacc_a7_a_a43_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a64_combout,
	dataout => U3_aacc_a7_a_a43_DATAD_driver);

-- Location: LCCOMB_X19_Y17_N18
U3_aacc_a7_a_a43 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a7_a_a43_combout = (U3_aacc_a7_a_a42_combout) # ((U3_aacc_a7_a_a64_combout) # ((U3_aacc_a0_a_a35_combout & U3_aAdd1_a28_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a7_a_a43_DATAA_driver,
	datab => U3_aacc_a7_a_a43_DATAB_driver,
	datac => U3_aacc_a7_a_a43_DATAC_driver,
	datad => U3_aacc_a7_a_a43_DATAD_driver,
	combout => U3_aacc_a7_a_a43_combout);

U3_aacc_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a7_a_CLK_driver);

U3_aacc_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a7_a_a43_combout,
	dataout => U3_aacc_a7_a_DATAIN_driver);

U3_aacc_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a7_a_ACLR_driver);

-- Location: LCFF_X19_Y17_N19
U3_aacc_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a7_a_CLK_driver,
	datain => U3_aacc_a7_a_DATAIN_driver,
	aclr => U3_aacc_a7_a_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(7));

U6_adata_rom_a7_a_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI5_aregout,
	dataout => U6_adata_rom_a7_a_a8_DATAA_driver);

U6_adata_rom_a7_a_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a7_a_a8_DATAB_driver);

U6_adata_rom_a7_a_a8_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U6_adata_rom_a7_a_a8_DATAC_driver);

U6_adata_rom_a7_a_a8_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U6_adata_rom_a7_a_a8_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N18
U6_adata_rom_a7_a_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a7_a_a8_combout = (!U2_apresent_state_aR1_aregout & ((U3_aacc(7)) # ((!U2_apresent_state_aI5_aregout & !U2_apresent_state_aI4_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a7_a_a8_DATAA_driver,
	datab => U6_adata_rom_a7_a_a8_DATAB_driver,
	datac => U6_adata_rom_a7_a_a8_DATAC_driver,
	datad => U6_adata_rom_a7_a_a8_DATAD_driver,
	combout => U6_adata_rom_a7_a_a8_combout);

U6_adata_rom_a7_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a9_combout,
	dataout => U6_adata_rom_a7_a_a10_DATAA_driver);

U6_adata_rom_a7_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a7_a_a10_DATAB_driver);

U6_adata_rom_a7_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U6_adata_rom_a7_a_a10_DATAC_driver);

U6_adata_rom_a7_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a8_combout,
	dataout => U6_adata_rom_a7_a_a10_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N20
U6_adata_rom_a7_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a7_a_a10_combout = (U6_adata_rom_a7_a_a9_combout & (U6_adata_rom_a7_a_a8_combout & ((U5_aMAR_reg(7)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a7_a_a10_DATAA_driver,
	datab => U6_adata_rom_a7_a_a10_DATAB_driver,
	datac => U6_adata_rom_a7_a_a10_DATAC_driver,
	datad => U6_adata_rom_a7_a_a10_DATAD_driver,
	combout => U6_adata_rom_a7_a_a10_combout);

U6_adata_rom_a7_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U6_adata_rom_a7_a_a11_DATAA_driver);

U6_adata_rom_a7_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(7),
	dataout => U6_adata_rom_a7_a_a11_DATAB_driver);

U6_adata_rom_a7_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a10_combout,
	dataout => U6_adata_rom_a7_a_a11_DATAC_driver);

U6_adata_rom_a7_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U6_adata_rom_a7_a_a11_DATAD_driver);

-- Location: LCCOMB_X18_Y17_N8
U6_adata_rom_a7_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a7_a_a11_combout = ((U6_adata_rom_a7_a_a10_combout & ((PORT_IN_acombout(7)) # (!U2_apresent_state_aI8_aregout)))) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a7_a_a11_DATAA_driver,
	datab => U6_adata_rom_a7_a_a11_DATAB_driver,
	datac => U6_adata_rom_a7_a_a11_DATAC_driver,
	datad => U6_adata_rom_a7_a_a11_DATAD_driver,
	combout => U6_adata_rom_a7_a_a11_combout);

U5_aMAR_reg_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a7_a_CLK_driver);

U5_aMAR_reg_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U5_aMAR_reg_a7_a_DATAIN_driver);

U5_aMAR_reg_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a7_a_ACLR_driver);

U5_aMAR_reg_a7_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a7_a_ENA_driver);

-- Location: LCFF_X18_Y17_N9
U5_aMAR_reg_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a7_a_CLK_driver,
	datain => U5_aMAR_reg_a7_a_DATAIN_driver,
	aclr => U5_aMAR_reg_a7_a_ACLR_driver,
	ena => U5_aMAR_reg_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(7));

U6_adata_rom_a2_a_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a2_a_a3_combout,
	dataout => U6_adata_rom_a2_a_a4_DATAA_driver);

U6_adata_rom_a2_a_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a2_a_a4_DATAB_driver);

U6_adata_rom_a2_a_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a2_a_a4_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N8
U6_adata_rom_a2_a_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a2_a_a4_combout = (U6_adata_rom_a2_a_a3_combout & (!U5_aMAR_reg(7) & U5_aMAR_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a2_a_a4_DATAA_driver,
	datab => U6_adata_rom_a2_a_a4_DATAB_driver,
	datad => U6_adata_rom_a2_a_a4_DATAD_driver,
	combout => U6_adata_rom_a2_a_a4_combout);

U6_aMux8_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_aMux8_a1_DATAB_driver);

U6_aMux8_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux8_a1_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N26
U6_aMux8_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux8_a1_combout = (!U5_aMAR_reg(7) & !U5_aMAR_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_aMux8_a1_DATAB_driver,
	datad => U6_aMux8_a1_DATAD_driver,
	combout => U6_aMux8_a1_combout);

U6_adata_rom_a2_a_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux9_a5_combout,
	dataout => U6_adata_rom_a2_a_a5_DATAA_driver);

U6_adata_rom_a2_a_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a2_a_a5_DATAB_driver);

U6_adata_rom_a2_a_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a2_a_a4_combout,
	dataout => U6_adata_rom_a2_a_a5_DATAC_driver);

U6_adata_rom_a2_a_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a1_combout,
	dataout => U6_adata_rom_a2_a_a5_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N10
U6_adata_rom_a2_a_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a2_a_a5_combout = ((U6_adata_rom_a2_a_a4_combout) # ((U6_aMux9_a5_combout & U6_aMux8_a1_combout))) # (!U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a2_a_a5_DATAA_driver,
	datab => U6_adata_rom_a2_a_a5_DATAB_driver,
	datac => U6_adata_rom_a2_a_a5_DATAC_driver,
	datad => U6_adata_rom_a2_a_a5_DATAD_driver,
	combout => U6_adata_rom_a2_a_a5_combout);

U1_adata_a2_a_a16_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a15_combout,
	dataout => U1_adata_a2_a_a16_DATAA_driver);

U1_adata_a2_a_a16_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a2_a_a5_combout,
	dataout => U1_adata_a2_a_a16_DATAC_driver);

U1_adata_a2_a_a16_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a2_a_a16_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N28
U1_adata_a2_a_a16 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a2_a_a16_combout = ((U1_adata_a2_a_a15_combout & U6_adata_rom_a2_a_a5_combout)) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a2_a_a16_DATAA_driver,
	datac => U1_adata_a2_a_a16_DATAC_driver,
	datad => U1_adata_a2_a_a16_DATAD_driver,
	combout => U1_adata_a2_a_a16_combout);

U5_aMAR_reg_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a2_a_CLK_driver);

U5_aMAR_reg_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U5_aMAR_reg_a2_a_DATAIN_driver);

U5_aMAR_reg_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a2_a_ACLR_driver);

U5_aMAR_reg_a2_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a2_a_ENA_driver);

-- Location: LCFF_X20_Y18_N29
U5_aMAR_reg_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a2_a_CLK_driver,
	datain => U5_aMAR_reg_a2_a_DATAIN_driver,
	aclr => U5_aMAR_reg_a2_a_ACLR_driver,
	ena => U5_aMAR_reg_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(2));

U1_adata_a3_a_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a3_a_a3_DATAA_driver);

U1_adata_a3_a_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(3),
	dataout => U1_adata_a3_a_a3_DATAB_driver);

U1_adata_a3_a_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(3),
	dataout => U1_adata_a3_a_a3_DATAC_driver);

U1_adata_a3_a_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a3_a_a3_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N30
U1_adata_a3_a_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a3_combout = (U2_apc_data_a2_combout & (((U1_aaltsyncram_component_aauto_generated_aq_a(3)) # (U2_aWideOr2_a0_combout)))) # (!U2_apc_data_a2_combout & (U7_apc_val(3) & ((U1_aaltsyncram_component_aauto_generated_aq_a(3)) # 
-- (U2_aWideOr2_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a3_DATAA_driver,
	datab => U1_adata_a3_a_a3_DATAB_driver,
	datac => U1_adata_a3_a_a3_DATAC_driver,
	datad => U1_adata_a3_a_a3_DATAD_driver,
	combout => U1_adata_a3_a_a3_combout);

U1_adata_a3_a_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U1_adata_a3_a_a2_DATAA_driver);

U1_adata_a3_a_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a3_a_a2_DATAB_driver);

U1_adata_a3_a_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U1_adata_a3_a_a2_DATAC_driver);

U1_adata_a3_a_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a3_a_a2_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N20
U1_adata_a3_a_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a2_combout = (U3_aacc(3) & (((U5_aMAR_reg(3))) # (!U2_amar_data_acombout))) # (!U3_aacc(3) & (!U2_aacc_bus_acombout & ((U5_aMAR_reg(3)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a2_DATAA_driver,
	datab => U1_adata_a3_a_a2_DATAB_driver,
	datac => U1_adata_a3_a_a2_DATAC_driver,
	datad => U1_adata_a3_a_a2_DATAD_driver,
	combout => U1_adata_a3_a_a2_combout);

U1_adata_a3_a_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(3),
	dataout => U1_adata_a3_a_a4_DATAA_driver);

U1_adata_a3_a_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a3_combout,
	dataout => U1_adata_a3_a_a4_DATAB_driver);

U1_adata_a3_a_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a2_combout,
	dataout => U1_adata_a3_a_a4_DATAC_driver);

U1_adata_a3_a_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a3_a_a4_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N0
U1_adata_a3_a_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a4_combout = (U1_adata_a3_a_a3_combout & (U1_adata_a3_a_a2_combout & ((PORT_IN_acombout(3)) # (!U2_apresent_state_aI8_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a4_DATAA_driver,
	datab => U1_adata_a3_a_a4_DATAB_driver,
	datac => U1_adata_a3_a_a4_DATAC_driver,
	datad => U1_adata_a3_a_a4_DATAD_driver,
	combout => U1_adata_a3_a_a4_combout);

U1_adata_a3_a_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a3_combout,
	dataout => U1_adata_a3_a_a8_DATAA_driver);

U1_adata_a3_a_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a4_combout,
	dataout => U1_adata_a3_a_a8_DATAB_driver);

U1_adata_a3_a_a8_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a3_a_a8_DATAC_driver);

U1_adata_a3_a_a8_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a3_a_a8_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N8
U1_adata_a3_a_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a3_a_a8_combout = ((U1_adata_a3_a_a4_combout & ((U6_aMux8_a3_combout) # (!U2_apresent_state_aR1_aregout)))) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a3_a_a8_DATAA_driver,
	datab => U1_adata_a3_a_a8_DATAB_driver,
	datac => U1_adata_a3_a_a8_DATAC_driver,
	datad => U1_adata_a3_a_a8_DATAD_driver,
	combout => U1_adata_a3_a_a8_combout);

U7_aAdd0_a8_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a6_combout,
	dataout => U7_aAdd0_a8_DATAA_driver);

U7_aAdd0_a8_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U7_aAdd0_a8_DATAB_driver);

U7_aAdd0_a8_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_aAdd0_a8_DATAC_driver);

U7_aAdd0_a8_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_aAdd0_a8_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N22
U7_aAdd0_a8 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a8_combout = (!U8_aInt_req_aregout & ((U2_apresent_state_aI6_aregout & ((U1_adata_a3_a_a8_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a8_DATAA_driver,
	datab => U7_aAdd0_a8_DATAB_driver,
	datac => U7_aAdd0_a8_DATAC_driver,
	datad => U7_aAdd0_a8_DATAD_driver,
	combout => U7_aAdd0_a8_combout);

U7_apc_val_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a3_a_CLK_driver);

U7_apc_val_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a8_combout,
	dataout => U7_apc_val_a3_a_DATAIN_driver);

U7_apc_val_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a3_a_ACLR_driver);

U7_apc_val_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a3_a_ENA_driver);

-- Location: LCFF_X22_Y18_N23
U7_apc_val_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a3_a_CLK_driver,
	datain => U7_apc_val_a3_a_DATAIN_driver,
	aclr => U7_apc_val_a3_a_ACLR_driver,
	ena => U7_apc_val_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(3));

U7_apc_val_a1_a_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a2_combout,
	dataout => U7_apc_val_a1_a_a1_DATAA_driver);

U7_apc_val_a1_a_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_apc_val_a1_a_a1_DATAB_driver);

U7_apc_val_a1_a_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U7_apc_val_a1_a_a1_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N8
U7_apc_val_a1_a_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U7_apc_val_a1_a_a1_combout = (U2_apresent_state_aI6_aregout & ((U1_adata_a1_a_a12_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a2_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_apc_val_a1_a_a1_DATAA_driver,
	datab => U7_apc_val_a1_a_a1_DATAB_driver,
	datad => U7_apc_val_a1_a_a1_DATAD_driver,
	combout => U7_apc_val_a1_a_a1_combout);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
Int_code_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Int_code(0),
	combout => Int_code_acombout(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
Int_code_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Int_code(1),
	combout => Int_code_acombout(1));

U7_aMux1_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_acombout(0),
	dataout => U7_aMux1_a0_DATAB_driver);

U7_aMux1_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_acombout(1),
	dataout => U7_aMux1_a0_DATAC_driver);

-- Location: LCCOMB_X22_Y18_N2
U7_aMux1_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aMux1_a0_combout = Int_code_acombout(0) $ (Int_code_acombout(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U7_aMux1_a0_DATAB_driver,
	datac => U7_aMux1_a0_DATAC_driver,
	combout => U7_aMux1_a0_combout);

U7_apc_val_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a1_a_CLK_driver);

U7_apc_val_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val_a1_a_a1_combout,
	dataout => U7_apc_val_a1_a_DATAIN_driver);

U7_apc_val_a1_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aMux1_a0_combout,
	dataout => U7_apc_val_a1_a_SDATA_driver);

U7_apc_val_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a1_a_ACLR_driver);

U7_apc_val_a1_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_apc_val_a1_a_SLOAD_driver);

U7_apc_val_a1_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a1_a_ENA_driver);

-- Location: LCFF_X22_Y18_N9
U7_apc_val_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a1_a_CLK_driver,
	datain => U7_apc_val_a1_a_DATAIN_driver,
	sdata => U7_apc_val_a1_a_SDATA_driver,
	aclr => U7_apc_val_a1_a_ACLR_driver,
	sload => U7_apc_val_a1_a_SLOAD_driver,
	ena => U7_apc_val_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(1));

U7_apc_val_a0_a_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a0_combout,
	dataout => U7_apc_val_a0_a_a2_DATAA_driver);

U7_apc_val_a0_a_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_apc_val_a0_a_a2_DATAB_driver);

U7_apc_val_a0_a_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U7_apc_val_a0_a_a2_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N12
U7_apc_val_a0_a_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U7_apc_val_a0_a_a2_combout = (U2_apresent_state_aI6_aregout & ((U1_adata_a0_a_a20_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_apc_val_a0_a_a2_DATAA_driver,
	datab => U7_apc_val_a0_a_a2_DATAB_driver,
	datad => U7_apc_val_a0_a_a2_DATAD_driver,
	combout => U7_apc_val_a0_a_a2_combout);

Int_code_a0_a_a_wirecell_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_acombout(0),
	dataout => Int_code_a0_a_a_wirecell_DATAC_driver);

-- Location: LCCOMB_X22_Y18_N16
Int_code_a0_a_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- Int_code_a0_a_a_wirecell_combout = !Int_code_acombout(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Int_code_a0_a_a_wirecell_DATAC_driver,
	combout => Int_code_a0_a_a_wirecell_combout);

U7_apc_val_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a0_a_CLK_driver);

U7_apc_val_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val_a0_a_a2_combout,
	dataout => U7_apc_val_a0_a_DATAIN_driver);

U7_apc_val_a0_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => Int_code_a0_a_a_wirecell_combout,
	dataout => U7_apc_val_a0_a_SDATA_driver);

U7_apc_val_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a0_a_ACLR_driver);

U7_apc_val_a0_a_SLOAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_apc_val_a0_a_SLOAD_driver);

U7_apc_val_a0_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a0_a_ENA_driver);

-- Location: LCFF_X22_Y18_N13
U7_apc_val_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a0_a_CLK_driver,
	datain => U7_apc_val_a0_a_DATAIN_driver,
	sdata => U7_apc_val_a0_a_SDATA_driver,
	aclr => U7_apc_val_a0_a_ACLR_driver,
	sload => U7_apc_val_a0_a_SLOAD_driver,
	ena => U7_apc_val_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(0));

U7_aAdd0_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U7_aAdd0_a20_DATAA_driver);

U7_aAdd0_a20_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_aAdd0_a20_DATAB_driver);

U7_aAdd0_a20_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_aAdd0_a20_DATAC_driver);

U7_aAdd0_a20_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a9_combout,
	dataout => U7_aAdd0_a20_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N30
U7_aAdd0_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a20_combout = (!U8_aInt_req_aregout & ((U2_apresent_state_aI6_aregout & (U1_adata_a4_a_a31_combout)) # (!U2_apresent_state_aI6_aregout & ((U7_aAdd0_a9_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a20_DATAA_driver,
	datab => U7_aAdd0_a20_DATAB_driver,
	datac => U7_aAdd0_a20_DATAC_driver,
	datad => U7_aAdd0_a20_DATAD_driver,
	combout => U7_aAdd0_a20_combout);

U7_apc_val_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a4_a_CLK_driver);

U7_apc_val_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a20_combout,
	dataout => U7_apc_val_a4_a_DATAIN_driver);

U7_apc_val_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a4_a_ACLR_driver);

U7_apc_val_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a4_a_ENA_driver);

-- Location: LCFF_X22_Y18_N31
U7_apc_val_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a4_a_CLK_driver,
	datain => U7_apc_val_a4_a_DATAIN_driver,
	aclr => U7_apc_val_a4_a_ACLR_driver,
	ena => U7_apc_val_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(4));

U1_adata_a4_a_a29_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(4),
	dataout => U1_adata_a4_a_a29_DATAA_driver);

U1_adata_a4_a_a29_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(4),
	dataout => U1_adata_a4_a_a29_DATAB_driver);

U1_adata_a4_a_a29_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a4_a_a29_DATAC_driver);

U1_adata_a4_a_a29_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a4_a_a29_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N18
U1_adata_a4_a_a29 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a4_a_a29_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(4) & ((U7_apc_val(4)) # ((U2_apc_data_a2_combout)))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(4) & (U2_aWideOr2_a0_combout & ((U7_apc_val(4)) # (U2_apc_data_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a4_a_a29_DATAA_driver,
	datab => U1_adata_a4_a_a29_DATAB_driver,
	datac => U1_adata_a4_a_a29_DATAC_driver,
	datad => U1_adata_a4_a_a29_DATAD_driver,
	combout => U1_adata_a4_a_a29_combout);

U6_aMux10_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux10_a3_DATAA_driver);

U6_aMux10_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux10_a3_DATAB_driver);

U6_aMux10_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux10_a3_DATAC_driver);

U6_aMux10_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux10_a3_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N0
U6_aMux10_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux10_a3_combout = (!U5_aMAR_reg(1) & ((U5_aMAR_reg(3) & (!U5_aMAR_reg(0) & !U5_aMAR_reg(4))) # (!U5_aMAR_reg(3) & (U5_aMAR_reg(0) & U5_aMAR_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux10_a3_DATAA_driver,
	datab => U6_aMux10_a3_DATAB_driver,
	datac => U6_aMux10_a3_DATAC_driver,
	datad => U6_aMux10_a3_DATAD_driver,
	combout => U6_aMux10_a3_combout);

U6_adata_rom_a4_a_a22_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux7_a0_combout,
	dataout => U6_adata_rom_a4_a_a22_DATAA_driver);

U6_adata_rom_a4_a_a22_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a4_a_a22_DATAB_driver);

U6_adata_rom_a4_a_a22_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a4_a_a22_DATAC_driver);

U6_adata_rom_a4_a_a22_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux10_a3_combout,
	dataout => U6_adata_rom_a4_a_a22_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N14
U6_adata_rom_a4_a_a22 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a4_a_a22_combout = (!U5_aMAR_reg(2) & ((U5_aMAR_reg(6) & ((!U6_aMux10_a3_combout))) # (!U5_aMAR_reg(6) & (U6_aMux7_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a4_a_a22_DATAA_driver,
	datab => U6_adata_rom_a4_a_a22_DATAB_driver,
	datac => U6_adata_rom_a4_a_a22_DATAC_driver,
	datad => U6_adata_rom_a4_a_a22_DATAD_driver,
	combout => U6_adata_rom_a4_a_a22_combout);

U6_aMux7_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux7_a1_DATAA_driver);

U6_aMux7_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux7_a1_DATAB_driver);

U6_aMux7_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux7_a1_DATAC_driver);

U6_aMux7_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux7_a1_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N8
U6_aMux7_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux7_a1_combout = (U5_aMAR_reg(3) & (!U5_aMAR_reg(4) & ((!U5_aMAR_reg(0)) # (!U5_aMAR_reg(1))))) # (!U5_aMAR_reg(3) & (U5_aMAR_reg(0) $ (((U5_aMAR_reg(1) & U5_aMAR_reg(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux7_a1_DATAA_driver,
	datab => U6_aMux7_a1_DATAB_driver,
	datac => U6_aMux7_a1_DATAC_driver,
	datad => U6_aMux7_a1_DATAD_driver,
	combout => U6_aMux7_a1_combout);

U6_adata_rom_a6_a_a21_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a6_a_a21_DATAB_driver);

U6_adata_rom_a6_a_a21_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a6_a_a21_DATAC_driver);

-- Location: LCCOMB_X18_Y19_N26
U6_adata_rom_a6_a_a21 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a6_a_a21_combout = (!U5_aMAR_reg(7) & !U5_aMAR_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_adata_rom_a6_a_a21_DATAB_driver,
	datac => U6_adata_rom_a6_a_a21_DATAC_driver,
	combout => U6_adata_rom_a6_a_a21_combout);

U6_adata_rom_a4_a_a23_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a19_combout,
	dataout => U6_adata_rom_a4_a_a23_DATAA_driver);

U6_adata_rom_a4_a_a23_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a4_a_a22_combout,
	dataout => U6_adata_rom_a4_a_a23_DATAB_driver);

U6_adata_rom_a4_a_a23_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux7_a1_combout,
	dataout => U6_adata_rom_a4_a_a23_DATAC_driver);

U6_adata_rom_a4_a_a23_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a21_combout,
	dataout => U6_adata_rom_a4_a_a23_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N18
U6_adata_rom_a4_a_a23 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a4_a_a23_combout = (U6_adata_rom_a6_a_a21_combout & ((U6_adata_rom_a4_a_a22_combout) # ((U6_adata_rom_a6_a_a19_combout & U6_aMux7_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a4_a_a23_DATAA_driver,
	datab => U6_adata_rom_a4_a_a23_DATAB_driver,
	datac => U6_adata_rom_a4_a_a23_DATAC_driver,
	datad => U6_adata_rom_a4_a_a23_DATAD_driver,
	combout => U6_adata_rom_a4_a_a23_combout);

U3_aacc_a4_a_a55_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a4_a_a55_DATAA_driver);

U3_aacc_a4_a_a55_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(3),
	dataout => U3_aacc_a4_a_a55_DATAB_driver);

U3_aacc_a4_a_a55_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aacc_a4_a_a55_DATAC_driver);

U3_aacc_a4_a_a55_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a4_a_a55_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N30
U3_aacc_a4_a_a55 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a4_a_a55_combout = (!U3_aacc_a2_a_a14_combout & (U3_aacc(3) & ((U1_adata_a4_a_a31_combout) # (U3_aacc_a3_a_a61_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a4_a_a55_DATAA_driver,
	datab => U3_aacc_a4_a_a55_DATAB_driver,
	datac => U3_aacc_a4_a_a55_DATAC_driver,
	datad => U3_aacc_a4_a_a55_DATAD_driver,
	combout => U3_aacc_a4_a_a55_combout);

U3_aacc_a4_a_a56_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a4_a_a54_combout,
	dataout => U3_aacc_a4_a_a56_DATAA_driver);

U3_aacc_a4_a_a56_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a4_a_a55_combout,
	dataout => U3_aacc_a4_a_a56_DATAB_driver);

U3_aacc_a4_a_a56_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U3_aacc_a4_a_a56_DATAC_driver);

U3_aacc_a4_a_a56_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a4_a_a56_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N22
U3_aacc_a4_a_a56 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a4_a_a56_combout = (U3_aacc_a4_a_a54_combout) # ((U3_aacc_a4_a_a55_combout) # ((U1_adata_a4_a_a31_combout & U3_aacc_a2_a_a10_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a4_a_a56_DATAA_driver,
	datab => U3_aacc_a4_a_a56_DATAB_driver,
	datac => U3_aacc_a4_a_a56_DATAC_driver,
	datad => U3_aacc_a4_a_a56_DATAD_driver,
	combout => U3_aacc_a4_a_a56_combout);

U3_aacc_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a4_a_CLK_driver);

U3_aacc_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a4_a_a56_combout,
	dataout => U3_aacc_a4_a_DATAIN_driver);

U3_aacc_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a4_a_ACLR_driver);

U3_aacc_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a4_a_ENA_driver);

-- Location: LCFF_X22_Y16_N23
U3_aacc_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a4_a_CLK_driver,
	datain => U3_aacc_a4_a_DATAIN_driver,
	aclr => U3_aacc_a4_a_ACLR_driver,
	ena => U3_aacc_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(4));

U1_adata_a4_a_a28_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a4_a_a28_DATAA_driver);

U1_adata_a4_a_a28_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a4_a_a28_DATAB_driver);

U1_adata_a4_a_a28_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U1_adata_a4_a_a28_DATAC_driver);

U1_adata_a4_a_a28_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a4_a_a28_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N0
U1_adata_a4_a_a28 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a4_a_a28_combout = (U5_aMAR_reg(4) & (((U3_aacc(4))) # (!U2_aacc_bus_acombout))) # (!U5_aMAR_reg(4) & (!U2_amar_data_acombout & ((U3_aacc(4)) # (!U2_aacc_bus_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a4_a_a28_DATAA_driver,
	datab => U1_adata_a4_a_a28_DATAB_driver,
	datac => U1_adata_a4_a_a28_DATAC_driver,
	datad => U1_adata_a4_a_a28_DATAD_driver,
	combout => U1_adata_a4_a_a28_combout);

U1_adata_a4_a_a30_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a4_a_a25_combout,
	dataout => U1_adata_a4_a_a30_DATAA_driver);

U1_adata_a4_a_a30_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a29_combout,
	dataout => U1_adata_a4_a_a30_DATAB_driver);

U1_adata_a4_a_a30_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a4_a_a23_combout,
	dataout => U1_adata_a4_a_a30_DATAC_driver);

U1_adata_a4_a_a30_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a28_combout,
	dataout => U1_adata_a4_a_a30_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N20
U1_adata_a4_a_a30 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a4_a_a30_combout = (U1_adata_a4_a_a29_combout & (U1_adata_a4_a_a28_combout & ((U6_adata_rom_a4_a_a25_combout) # (U6_adata_rom_a4_a_a23_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a4_a_a30_DATAA_driver,
	datab => U1_adata_a4_a_a30_DATAB_driver,
	datac => U1_adata_a4_a_a30_DATAC_driver,
	datad => U1_adata_a4_a_a30_DATAD_driver,
	combout => U1_adata_a4_a_a30_combout);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(4),
	combout => PORT_IN_acombout(4));

U1_adata_a4_a_a31_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a4_a_a31_DATAA_driver);

U1_adata_a4_a_a31_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a30_combout,
	dataout => U1_adata_a4_a_a31_DATAB_driver);

U1_adata_a4_a_a31_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a4_a_a31_DATAC_driver);

U1_adata_a4_a_a31_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(4),
	dataout => U1_adata_a4_a_a31_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N10
U1_adata_a4_a_a31 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a4_a_a31_combout = ((U1_adata_a4_a_a30_combout & ((PORT_IN_acombout(4)) # (!U2_apresent_state_aI8_aregout)))) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a4_a_a31_DATAA_driver,
	datab => U1_adata_a4_a_a31_DATAB_driver,
	datac => U1_adata_a4_a_a31_DATAC_driver,
	datad => U1_adata_a4_a_a31_DATAD_driver,
	combout => U1_adata_a4_a_a31_combout);

U5_aMAR_reg_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a4_a_CLK_driver);

U5_aMAR_reg_a4_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U5_aMAR_reg_a4_a_SDATA_driver);

U5_aMAR_reg_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a4_a_ACLR_driver);

U5_aMAR_reg_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a4_a_ENA_driver);

-- Location: LCFF_X15_Y18_N15
U5_aMAR_reg_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a4_a_CLK_driver,
	sdata => U5_aMAR_reg_a4_a_SDATA_driver,
	aclr => U5_aMAR_reg_a4_a_ACLR_driver,
	sload => VCC,
	ena => U5_aMAR_reg_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(4));

U6_aMux10_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux10_a2_DATAA_driver);

U6_aMux10_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux10_a2_DATAB_driver);

U6_aMux10_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux10_a2_DATAC_driver);

U6_aMux10_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux10_a2_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N20
U6_aMux10_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux10_a2_combout = (U5_aMAR_reg(4) & (U5_aMAR_reg(1) & (U5_aMAR_reg(0) $ (U5_aMAR_reg(3))))) # (!U5_aMAR_reg(4) & ((U5_aMAR_reg(0) & (U5_aMAR_reg(1) $ (!U5_aMAR_reg(3)))) # (!U5_aMAR_reg(0) & ((U5_aMAR_reg(1)) # (U5_aMAR_reg(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux10_a2_DATAA_driver,
	datab => U6_aMux10_a2_DATAB_driver,
	datac => U6_aMux10_a2_DATAC_driver,
	datad => U6_aMux10_a2_DATAD_driver,
	combout => U6_aMux10_a2_combout);

U6_adata_rom_a1_a_a29_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux10_a3_combout,
	dataout => U6_adata_rom_a1_a_a29_DATAA_driver);

U6_adata_rom_a1_a_a29_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a0_combout,
	dataout => U6_adata_rom_a1_a_a29_DATAB_driver);

U6_adata_rom_a1_a_a29_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux10_a2_combout,
	dataout => U6_adata_rom_a1_a_a29_DATAC_driver);

U6_adata_rom_a1_a_a29_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a1_a_a29_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N4
U6_adata_rom_a1_a_a29 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a1_a_a29_combout = (U6_aMux8_a0_combout & ((U5_aMAR_reg(2) & (U6_aMux10_a3_combout)) # (!U5_aMAR_reg(2) & ((U6_aMux10_a2_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a1_a_a29_DATAA_driver,
	datab => U6_adata_rom_a1_a_a29_DATAB_driver,
	datac => U6_adata_rom_a1_a_a29_DATAC_driver,
	datad => U6_adata_rom_a1_a_a29_DATAD_driver,
	combout => U6_adata_rom_a1_a_a29_combout);

U6_adata_rom_a1_a_a30_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux10_a1_combout,
	dataout => U6_adata_rom_a1_a_a30_DATAA_driver);

U6_adata_rom_a1_a_a30_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a1_a_a30_DATAB_driver);

U6_adata_rom_a1_a_a30_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a1_a_a29_combout,
	dataout => U6_adata_rom_a1_a_a30_DATAC_driver);

U6_adata_rom_a1_a_a30_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a1_a_a30_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N22
U6_adata_rom_a1_a_a30 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a1_a_a30_combout = (U6_aMux10_a1_combout) # (((U6_adata_rom_a1_a_a29_combout & !U5_aMAR_reg(7))) # (!U2_apresent_state_aR1_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a1_a_a30_DATAA_driver,
	datab => U6_adata_rom_a1_a_a30_DATAB_driver,
	datac => U6_adata_rom_a1_a_a30_DATAC_driver,
	datad => U6_adata_rom_a1_a_a30_DATAD_driver,
	combout => U6_adata_rom_a1_a_a30_combout);

U1_adata_a1_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a11_combout,
	dataout => U1_adata_a1_a_a12_DATAA_driver);

U1_adata_a1_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a1_a_a30_combout,
	dataout => U1_adata_a1_a_a12_DATAB_driver);

U1_adata_a1_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a1_a_a12_DATAC_driver);

-- Location: LCCOMB_X8_Y18_N2
U1_adata_a1_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a1_a_a12_combout = ((U1_adata_a1_a_a11_combout & U6_adata_rom_a1_a_a30_combout)) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a1_a_a12_DATAA_driver,
	datab => U1_adata_a1_a_a12_DATAB_driver,
	datac => U1_adata_a1_a_a12_DATAC_driver,
	combout => U1_adata_a1_a_a12_combout);

U5_aMAR_reg_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a1_a_CLK_driver);

U5_aMAR_reg_a1_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U5_aMAR_reg_a1_a_SDATA_driver);

U5_aMAR_reg_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a1_a_ACLR_driver);

U5_aMAR_reg_a1_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a1_a_ENA_driver);

-- Location: LCFF_X15_Y18_N29
U5_aMAR_reg_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a1_a_CLK_driver,
	sdata => U5_aMAR_reg_a1_a_SDATA_driver,
	aclr => U5_aMAR_reg_a1_a_ACLR_driver,
	sload => VCC,
	ena => U5_aMAR_reg_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(1));

U6_aMux1_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux1_a0_DATAA_driver);

U6_aMux1_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux1_a0_DATAB_driver);

U6_aMux1_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux1_a0_DATAC_driver);

U6_aMux1_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux1_a0_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N8
U6_aMux1_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux1_a0_combout = (!U5_aMAR_reg(1) & (!U5_aMAR_reg(3) & (U5_aMAR_reg(0) & !U5_aMAR_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux1_a0_DATAA_driver,
	datab => U6_aMux1_a0_DATAB_driver,
	datac => U6_aMux1_a0_DATAC_driver,
	datad => U6_aMux1_a0_DATAD_driver,
	combout => U6_aMux1_a0_combout);

U1_adata_a14_a_a32_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U1_adata_a14_a_a32_DATAA_driver);

U1_adata_a14_a_a32_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a14_a_a32_DATAB_driver);

U1_adata_a14_a_a32_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux1_a0_combout,
	dataout => U1_adata_a14_a_a32_DATAC_driver);

U1_adata_a14_a_a32_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U1_adata_a14_a_a32_DATAD_driver);

-- Location: LCCOMB_X19_Y19_N18
U1_adata_a14_a_a32 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a32_combout = (U5_aMAR_reg(5) & ((U5_aMAR_reg(6)) # ((!U6_aMux1_a0_combout & !U5_aMAR_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a32_DATAA_driver,
	datab => U1_adata_a14_a_a32_DATAB_driver,
	datac => U1_adata_a14_a_a32_DATAC_driver,
	datad => U1_adata_a14_a_a32_DATAD_driver,
	combout => U1_adata_a14_a_a32_combout);

U1_adata_a14_a_a39_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a38_combout,
	dataout => U1_adata_a14_a_a39_DATAA_driver);

U1_adata_a14_a_a39_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(14),
	dataout => U1_adata_a14_a_a39_DATAB_driver);

U1_adata_a14_a_a39_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a14_a_a39_DATAC_driver);

U1_adata_a14_a_a39_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a32_combout,
	dataout => U1_adata_a14_a_a39_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N26
U1_adata_a14_a_a39 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a14_a_a39_combout = (U1_adata_a14_a_a38_combout & ((U1_aaltsyncram_component_aauto_generated_aq_a(14)) # ((U2_aWideOr2_a0_combout)))) # (!U1_adata_a14_a_a38_combout & (U1_adata_a14_a_a32_combout & 
-- ((U1_aaltsyncram_component_aauto_generated_aq_a(14)) # (U2_aWideOr2_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a14_a_a39_DATAA_driver,
	datab => U1_adata_a14_a_a39_DATAB_driver,
	datac => U1_adata_a14_a_a39_DATAC_driver,
	datad => U1_adata_a14_a_a39_DATAD_driver,
	combout => U1_adata_a14_a_a39_combout);

U4_aIR_reg_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U4_aIR_reg_a6_a_CLK_driver);

U4_aIR_reg_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a14_a_a39_combout,
	dataout => U4_aIR_reg_a6_a_DATAIN_driver);

U4_aIR_reg_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U4_aIR_reg_a6_a_ACLR_driver);

U4_aIR_reg_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U4_aIR_reg_a6_a_ENA_driver);

-- Location: LCFF_X18_Y18_N27
U4_aIR_reg_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U4_aIR_reg_a6_a_CLK_driver,
	datain => U4_aIR_reg_a6_a_DATAIN_driver,
	aclr => U4_aIR_reg_a6_a_ACLR_driver,
	ena => U4_aIR_reg_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U4_aIR_reg(6));

U3_aacc_a6_a_a51_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U3_aacc_a6_a_a51_DATAA_driver);

U3_aacc_a6_a_a51_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a61_combout,
	dataout => U3_aacc_a6_a_a51_DATAB_driver);

U3_aacc_a6_a_a51_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aacc_a6_a_a51_DATAC_driver);

U3_aacc_a6_a_a51_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a6_a_a51_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N28
U3_aacc_a6_a_a51 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a6_a_a51_combout = (U3_aacc(5) & (!U3_aacc_a2_a_a14_combout & ((U3_aacc_a3_a_a61_combout) # (U1_adata_a6_a_a27_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a6_a_a51_DATAA_driver,
	datab => U3_aacc_a6_a_a51_DATAB_driver,
	datac => U3_aacc_a6_a_a51_DATAC_driver,
	datad => U3_aacc_a6_a_a51_DATAD_driver,
	combout => U3_aacc_a6_a_a51_combout);

U3_aacc_a6_a_a49_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U3_aacc_a6_a_a49_DATAA_driver);

U3_aacc_a6_a_a49_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aacc_a6_a_a49_DATAB_driver);

U3_aacc_a6_a_a49_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a14_combout,
	dataout => U3_aacc_a6_a_a49_DATAC_driver);

U3_aacc_a6_a_a49_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a11_combout,
	dataout => U3_aacc_a6_a_a49_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N8
U3_aacc_a6_a_a49 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a6_a_a49_combout = (U3_aacc(7) & (U3_aacc_a2_a_a14_combout & ((U1_adata_a6_a_a27_combout) # (U3_aacc_a3_a_a11_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a6_a_a49_DATAA_driver,
	datab => U3_aacc_a6_a_a49_DATAB_driver,
	datac => U3_aacc_a6_a_a49_DATAC_driver,
	datad => U3_aacc_a6_a_a49_DATAD_driver,
	combout => U3_aacc_a6_a_a49_combout);

U3_aacc_a6_a_a50_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a10_combout,
	dataout => U3_aacc_a6_a_a50_DATAA_driver);

U3_aacc_a6_a_a50_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U3_aacc_a6_a_a50_DATAB_driver);

U3_aacc_a6_a_a50_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a49_combout,
	dataout => U3_aacc_a6_a_a50_DATAC_driver);

U3_aacc_a6_a_a50_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a2_a_a8_combout,
	dataout => U3_aacc_a6_a_a50_DATAD_driver);

-- Location: LCCOMB_X23_Y16_N10
U3_aacc_a6_a_a50 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a6_a_a50_combout = (U1_adata_a6_a_a27_combout & ((U3_aacc_a2_a_a10_combout) # ((U3_aacc_a6_a_a49_combout & U3_aacc_a2_a_a8_combout)))) # (!U1_adata_a6_a_a27_combout & (((U3_aacc_a6_a_a49_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a6_a_a50_DATAA_driver,
	datab => U3_aacc_a6_a_a50_DATAB_driver,
	datac => U3_aacc_a6_a_a50_DATAC_driver,
	datad => U3_aacc_a6_a_a50_DATAD_driver,
	combout => U3_aacc_a6_a_a50_combout);

U3_aacc_a6_a_a52_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aMux2_a2_combout,
	dataout => U3_aacc_a6_a_a52_DATAA_driver);

U3_aacc_a6_a_a52_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a51_combout,
	dataout => U3_aacc_a6_a_a52_DATAB_driver);

U3_aacc_a6_a_a52_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a50_combout,
	dataout => U3_aacc_a6_a_a52_DATAC_driver);

U3_aacc_a6_a_a52_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a3_a_a62_combout,
	dataout => U3_aacc_a6_a_a52_DATAD_driver);

-- Location: LCCOMB_X22_Y16_N4
U3_aacc_a6_a_a52 : cycloneii_lcell_comb
-- Equation(s):
-- U3_aacc_a6_a_a52_combout = (U3_aacc_a6_a_a51_combout) # ((U3_aacc_a6_a_a50_combout) # ((U3_aMux2_a2_combout & U3_aacc_a3_a_a62_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U3_aacc_a6_a_a52_DATAA_driver,
	datab => U3_aacc_a6_a_a52_DATAB_driver,
	datac => U3_aacc_a6_a_a52_DATAC_driver,
	datad => U3_aacc_a6_a_a52_DATAD_driver,
	combout => U3_aacc_a6_a_a52_combout);

U3_aacc_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U3_aacc_a6_a_CLK_driver);

U3_aacc_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a52_combout,
	dataout => U3_aacc_a6_a_DATAIN_driver);

U3_aacc_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U3_aacc_a6_a_ACLR_driver);

U3_aacc_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc_a6_a_a21_combout,
	dataout => U3_aacc_a6_a_ENA_driver);

-- Location: LCFF_X22_Y16_N5
U3_aacc_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U3_aacc_a6_a_CLK_driver,
	datain => U3_aacc_a6_a_DATAIN_driver,
	aclr => U3_aacc_a6_a_ACLR_driver,
	ena => U3_aacc_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U3_aacc(6));

U2_anext_state_aI6_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(5),
	dataout => U2_anext_state_aI6_a0_DATAA_driver);

U2_anext_state_aI6_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(7),
	dataout => U2_anext_state_aI6_a0_DATAB_driver);

U2_anext_state_aI6_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(4),
	dataout => U2_anext_state_aI6_a0_DATAC_driver);

U2_anext_state_aI6_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(6),
	dataout => U2_anext_state_aI6_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y17_N28
U2_anext_state_aI6_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a0_combout = (!U3_aacc(5) & (!U3_aacc(7) & (!U3_aacc(4) & !U3_aacc(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a0_DATAA_driver,
	datab => U2_anext_state_aI6_a0_DATAB_driver,
	datac => U2_anext_state_aI6_a0_DATAC_driver,
	datad => U2_anext_state_aI6_a0_DATAD_driver,
	combout => U2_anext_state_aI6_a0_combout);

U2_anext_state_aI6_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a1_combout,
	dataout => U2_anext_state_aI6_a2_DATAA_driver);

U2_anext_state_aI6_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI6_a2_DATAB_driver);

U2_anext_state_aI6_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U2_anext_state_aI6_a2_DATAC_driver);

U2_anext_state_aI6_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a0_combout,
	dataout => U2_anext_state_aI6_a2_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N28
U2_anext_state_aI6_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a2_combout = (U2_anext_state_aI6_a1_combout & ((U2_anext_state_aI6_a0_combout & ((U4_aIR_reg(4)))) # (!U2_anext_state_aI6_a0_combout & (U4_aIR_reg(3))))) # (!U2_anext_state_aI6_a1_combout & (U4_aIR_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a2_DATAA_driver,
	datab => U2_anext_state_aI6_a2_DATAB_driver,
	datac => U2_anext_state_aI6_a2_DATAC_driver,
	datad => U2_anext_state_aI6_a2_DATAD_driver,
	combout => U2_anext_state_aI6_a2_combout);

U2_anext_state_aI6_a3_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aAdd1_a12_combout,
	dataout => U2_anext_state_aI6_a3_DATAA_driver);

U2_anext_state_aI6_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a2_combout,
	dataout => U2_anext_state_aI6_a3_DATAB_driver);

U2_anext_state_aI6_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(5),
	dataout => U2_anext_state_aI6_a3_DATAC_driver);

U2_anext_state_aI6_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI6_a3_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N30
U2_anext_state_aI6_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a3_combout = (U4_aIR_reg(5) & ((U2_anext_state_aI6_a2_combout) # ((U3_aAdd1_a12_combout & !U4_aIR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a3_DATAA_driver,
	datab => U2_anext_state_aI6_a3_DATAB_driver,
	datac => U2_anext_state_aI6_a3_DATAC_driver,
	datad => U2_anext_state_aI6_a3_DATAD_driver,
	combout => U2_anext_state_aI6_a3_combout);

U2_anext_state_aI6_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(8),
	dataout => U2_anext_state_aI6_a4_DATAA_driver);

U2_anext_state_aI6_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a3_combout,
	dataout => U2_anext_state_aI6_a4_DATAB_driver);

U2_anext_state_aI6_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(4),
	dataout => U2_anext_state_aI6_a4_DATAC_driver);

U2_anext_state_aI6_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI6_a4_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N24
U2_anext_state_aI6_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a4_combout = (U2_anext_state_aI6_a3_combout) # ((!U3_aacc(8) & (U4_aIR_reg(4) & U4_aIR_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a4_DATAA_driver,
	datab => U2_anext_state_aI6_a4_DATAB_driver,
	datac => U2_anext_state_aI6_a4_DATAC_driver,
	datad => U2_anext_state_aI6_a4_DATAD_driver,
	combout => U2_anext_state_aI6_a4_combout);

U2_anext_state_aI6_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(7),
	dataout => U2_anext_state_aI6_a5_DATAA_driver);

U2_anext_state_aI6_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(6),
	dataout => U2_anext_state_aI6_a5_DATAB_driver);

U2_anext_state_aI6_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a4_combout,
	dataout => U2_anext_state_aI6_a5_DATAC_driver);

U2_anext_state_aI6_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI3_aregout,
	dataout => U2_anext_state_aI6_a5_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N8
U2_anext_state_aI6_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI6_a5_combout = (U4_aIR_reg(7) & (!U4_aIR_reg(6) & (U2_anext_state_aI6_a4_combout & U2_apresent_state_aI3_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U2_anext_state_aI6_a5_DATAA_driver,
	datab => U2_anext_state_aI6_a5_DATAB_driver,
	datac => U2_anext_state_aI6_a5_DATAC_driver,
	datad => U2_anext_state_aI6_a5_DATAD_driver,
	combout => U2_anext_state_aI6_a5_combout);

U2_apresent_state_aI6_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI6_CLK_driver);

U2_apresent_state_aI6_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI6_a5_combout,
	dataout => U2_apresent_state_aI6_DATAIN_driver);

U2_apresent_state_aI6_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI6_ACLR_driver);

-- Location: LCFF_X18_Y18_N9
U2_apresent_state_aI6 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI6_CLK_driver,
	datain => U2_apresent_state_aI6_DATAIN_driver,
	aclr => U2_apresent_state_aI6_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI6_aregout);

U7_aAdd0_a19_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a13_combout,
	dataout => U7_aAdd0_a19_DATAA_driver);

U7_aAdd0_a19_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U7_aAdd0_a19_DATAB_driver);

U7_aAdd0_a19_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI6_aregout,
	dataout => U7_aAdd0_a19_DATAC_driver);

U7_aAdd0_a19_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U8_aInt_req_aregout,
	dataout => U7_aAdd0_a19_DATAD_driver);

-- Location: LCCOMB_X22_Y18_N28
U7_aAdd0_a19 : cycloneii_lcell_comb
-- Equation(s):
-- U7_aAdd0_a19_combout = (!U8_aInt_req_aregout & ((U2_apresent_state_aI6_aregout & ((U1_adata_a6_a_a27_combout))) # (!U2_apresent_state_aI6_aregout & (U7_aAdd0_a13_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U7_aAdd0_a19_DATAA_driver,
	datab => U7_aAdd0_a19_DATAB_driver,
	datac => U7_aAdd0_a19_DATAC_driver,
	datad => U7_aAdd0_a19_DATAD_driver,
	combout => U7_aAdd0_a19_combout);

U7_apc_val_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U7_apc_val_a6_a_CLK_driver);

U7_apc_val_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_aAdd0_a19_combout,
	dataout => U7_apc_val_a6_a_DATAIN_driver);

U7_apc_val_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U7_apc_val_a6_a_ACLR_driver);

U7_apc_val_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a1_combout,
	dataout => U7_apc_val_a6_a_ENA_driver);

-- Location: LCFF_X22_Y18_N29
U7_apc_val_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U7_apc_val_a6_a_CLK_driver,
	datain => U7_apc_val_a6_a_DATAIN_driver,
	aclr => U7_apc_val_a6_a_ACLR_driver,
	ena => U7_apc_val_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U7_apc_val(6));

U1_adata_a6_a_a25_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(6),
	dataout => U1_adata_a6_a_a25_DATAA_driver);

U1_adata_a6_a_a25_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U7_apc_val(6),
	dataout => U1_adata_a6_a_a25_DATAB_driver);

U1_adata_a6_a_a25_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a6_a_a25_DATAC_driver);

U1_adata_a6_a_a25_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apc_data_a2_combout,
	dataout => U1_adata_a6_a_a25_DATAD_driver);

-- Location: LCCOMB_X21_Y18_N30
U1_adata_a6_a_a25 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a6_a_a25_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(6) & ((U7_apc_val(6)) # ((U2_apc_data_a2_combout)))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(6) & (U2_aWideOr2_a0_combout & ((U7_apc_val(6)) # (U2_apc_data_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a6_a_a25_DATAA_driver,
	datab => U1_adata_a6_a_a25_DATAB_driver,
	datac => U1_adata_a6_a_a25_DATAC_driver,
	datad => U1_adata_a6_a_a25_DATAD_driver,
	combout => U1_adata_a6_a_a25_combout);

U1_adata_a6_a_a26_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_adata_bus_a6_a_a0_combout,
	dataout => U1_adata_a6_a_a26_DATAA_driver);

U1_adata_a6_a_a26_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a25_combout,
	dataout => U1_adata_a6_a_a26_DATAB_driver);

U1_adata_a6_a_a26_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U1_adata_a6_a_a26_DATAC_driver);

U1_adata_a6_a_a26_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a6_a_a26_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N2
U1_adata_a6_a_a26 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a6_a_a26_combout = (U3_adata_bus_a6_a_a0_combout & (U1_adata_a6_a_a25_combout & ((U5_aMAR_reg(6)) # (!U2_amar_data_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a6_a_a26_DATAA_driver,
	datab => U1_adata_a6_a_a26_DATAB_driver,
	datac => U1_adata_a6_a_a26_DATAC_driver,
	datad => U1_adata_a6_a_a26_DATAD_driver,
	combout => U1_adata_a6_a_a26_combout);

U6_aMux8_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux8_a2_DATAA_driver);

U6_aMux8_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux8_a2_DATAB_driver);

U6_aMux8_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux8_a2_DATAD_driver);

-- Location: LCCOMB_X16_Y18_N12
U6_aMux8_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux8_a2_combout = (!U5_aMAR_reg(0) & (!U5_aMAR_reg(4) & !U5_aMAR_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux8_a2_DATAA_driver,
	datab => U6_aMux8_a2_DATAB_driver,
	datad => U6_aMux8_a2_DATAD_driver,
	combout => U6_aMux8_a2_combout);

U6_adata_rom_a6_a_a19_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a6_a_a19_DATAA_driver);

U6_adata_rom_a6_a_a19_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a6_a_a19_DATAC_driver);

-- Location: LCCOMB_X18_Y19_N16
U6_adata_rom_a6_a_a19 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a6_a_a19_combout = (U5_aMAR_reg(6) & U5_aMAR_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a6_a_a19_DATAA_driver,
	datac => U6_adata_rom_a6_a_a19_DATAC_driver,
	combout => U6_adata_rom_a6_a_a19_combout);

U6_adata_rom_a6_a_a18_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_adata_rom_a6_a_a18_DATAA_driver);

U6_adata_rom_a6_a_a18_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_adata_rom_a6_a_a18_DATAC_driver);

U6_adata_rom_a6_a_a18_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_adata_rom_a6_a_a18_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N22
U6_adata_rom_a6_a_a18 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a6_a_a18_combout = (U5_aMAR_reg(6) & (!U5_aMAR_reg(2) & U5_aMAR_reg(3))) # (!U5_aMAR_reg(6) & (U5_aMAR_reg(2) & !U5_aMAR_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a6_a_a18_DATAA_driver,
	datac => U6_adata_rom_a6_a_a18_DATAC_driver,
	datad => U6_adata_rom_a6_a_a18_DATAD_driver,
	combout => U6_adata_rom_a6_a_a18_combout);

U6_adata_rom_a6_a_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a0_combout,
	dataout => U6_adata_rom_a6_a_a20_DATAA_driver);

U6_adata_rom_a6_a_a20_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a2_combout,
	dataout => U6_adata_rom_a6_a_a20_DATAB_driver);

U6_adata_rom_a6_a_a20_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a19_combout,
	dataout => U6_adata_rom_a6_a_a20_DATAC_driver);

U6_adata_rom_a6_a_a20_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a18_combout,
	dataout => U6_adata_rom_a6_a_a20_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N0
U6_adata_rom_a6_a_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a6_a_a20_combout = (U6_aMux4_a0_combout & ((U6_adata_rom_a6_a_a19_combout) # ((U6_aMux8_a2_combout & U6_adata_rom_a6_a_a18_combout)))) # (!U6_aMux4_a0_combout & (U6_aMux8_a2_combout & ((U6_adata_rom_a6_a_a18_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a6_a_a20_DATAA_driver,
	datab => U6_adata_rom_a6_a_a20_DATAB_driver,
	datac => U6_adata_rom_a6_a_a20_DATAC_driver,
	datad => U6_adata_rom_a6_a_a20_DATAD_driver,
	combout => U6_adata_rom_a6_a_a20_combout);

U6_adata_rom_a6_a_a26_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U6_adata_rom_a6_a_a26_DATAA_driver);

U6_adata_rom_a6_a_a26_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U6_adata_rom_a6_a_a26_DATAB_driver);

U6_adata_rom_a6_a_a26_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a20_combout,
	dataout => U6_adata_rom_a6_a_a26_DATAC_driver);

U6_adata_rom_a6_a_a26_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_adata_rom_a6_a_a26_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N4
U6_adata_rom_a6_a_a26 : cycloneii_lcell_comb
-- Equation(s):
-- U6_adata_rom_a6_a_a26_combout = ((!U5_aMAR_reg(7) & (U6_adata_rom_a6_a_a20_combout & !U5_aMAR_reg(5)))) # (!U2_apresent_state_aR1_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_adata_rom_a6_a_a26_DATAA_driver,
	datab => U6_adata_rom_a6_a_a26_DATAB_driver,
	datac => U6_adata_rom_a6_a_a26_DATAC_driver,
	datad => U6_adata_rom_a6_a_a26_DATAD_driver,
	combout => U6_adata_rom_a6_a_a26_combout);

U1_adata_a6_a_a27_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U13_aDataOUT_a6_a_a0_combout,
	dataout => U1_adata_a6_a_a27_DATAA_driver);

U1_adata_a6_a_a27_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a26_combout,
	dataout => U1_adata_a6_a_a27_DATAB_driver);

U1_adata_a6_a_a27_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a6_a_a26_combout,
	dataout => U1_adata_a6_a_a27_DATAC_driver);

U1_adata_a6_a_a27_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a6_a_a27_DATAD_driver);

-- Location: LCCOMB_X20_Y18_N24
U1_adata_a6_a_a27 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a6_a_a27_combout = ((U13_aDataOUT_a6_a_a0_combout & (U1_adata_a6_a_a26_combout & U6_adata_rom_a6_a_a26_combout))) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a6_a_a27_DATAA_driver,
	datab => U1_adata_a6_a_a27_DATAB_driver,
	datac => U1_adata_a6_a_a27_DATAC_driver,
	datad => U1_adata_a6_a_a27_DATAD_driver,
	combout => U1_adata_a6_a_a27_combout);

U5_aMAR_reg_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U5_aMAR_reg_a6_a_CLK_driver);

U5_aMAR_reg_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U5_aMAR_reg_a6_a_DATAIN_driver);

U5_aMAR_reg_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U5_aMAR_reg_a6_a_ACLR_driver);

U5_aMAR_reg_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr0_a0_combout,
	dataout => U5_aMAR_reg_a6_a_ENA_driver);

-- Location: LCFF_X20_Y18_N25
U5_aMAR_reg_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U5_aMAR_reg_a6_a_CLK_driver,
	datain => U5_aMAR_reg_a6_a_DATAIN_driver,
	aclr => U5_aMAR_reg_a6_a_ACLR_driver,
	ena => U5_aMAR_reg_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U5_aMAR_reg(6));

U6_aMux8_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux8_a0_DATAA_driver);

U6_aMux8_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux8_a0_DATAC_driver);

-- Location: LCCOMB_X16_Y18_N0
U6_aMux8_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux8_a0_combout = (!U5_aMAR_reg(5) & U5_aMAR_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux8_a0_DATAA_driver,
	datac => U6_aMux8_a0_DATAC_driver,
	combout => U6_aMux8_a0_combout);

U6_aMux4_a4_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux4_a4_DATAA_driver);

U6_aMux4_a4_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux4_a4_DATAB_driver);

U6_aMux4_a4_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux4_a4_DATAC_driver);

U6_aMux4_a4_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux4_a4_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N4
U6_aMux4_a4 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a4_combout = (U5_aMAR_reg(0)) # ((U5_aMAR_reg(2) & ((U5_aMAR_reg(1)) # (!U5_aMAR_reg(4)))) # (!U5_aMAR_reg(2) & ((U5_aMAR_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux4_a4_DATAA_driver,
	datab => U6_aMux4_a4_DATAB_driver,
	datac => U6_aMux4_a4_DATAC_driver,
	datad => U6_aMux4_a4_DATAD_driver,
	combout => U6_aMux4_a4_combout);

U6_aMux4_a5_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a0_combout,
	dataout => U6_aMux4_a5_DATAA_driver);

U6_aMux4_a5_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a4_combout,
	dataout => U6_aMux4_a5_DATAB_driver);

U6_aMux4_a5_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux4_a5_DATAC_driver);

U6_aMux4_a5_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux4_a5_DATAD_driver);

-- Location: LCCOMB_X18_Y19_N30
U6_aMux4_a5 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a5_combout = (U6_aMux4_a0_combout & ((U5_aMAR_reg(2)) # ((!U6_aMux4_a4_combout & U5_aMAR_reg(3))))) # (!U6_aMux4_a0_combout & (!U6_aMux4_a4_combout & ((U5_aMAR_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux4_a5_DATAA_driver,
	datab => U6_aMux4_a5_DATAB_driver,
	datac => U6_aMux4_a5_DATAC_driver,
	datad => U6_aMux4_a5_DATAD_driver,
	combout => U6_aMux4_a5_combout);

U6_aMux4_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux4_a1_DATAA_driver);

U6_aMux4_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux4_a1_DATAB_driver);

U6_aMux4_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux4_a1_DATAC_driver);

U6_aMux4_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux4_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N16
U6_aMux4_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a1_combout = U5_aMAR_reg(4) $ (((U5_aMAR_reg(5) & ((U5_aMAR_reg(1)) # (!U5_aMAR_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux4_a1_DATAA_driver,
	datab => U6_aMux4_a1_DATAB_driver,
	datac => U6_aMux4_a1_DATAC_driver,
	datad => U6_aMux4_a1_DATAD_driver,
	combout => U6_aMux4_a1_combout);

U6_aMux2_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux2_a2_DATAA_driver);

U6_aMux2_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux2_a2_DATAB_driver);

U6_aMux2_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux2_a2_DATAC_driver);

U6_aMux2_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux2_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N26
U6_aMux2_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux2_a2_combout = (U5_aMAR_reg(1)) # ((U5_aMAR_reg(0) & ((!U5_aMAR_reg(5)) # (!U5_aMAR_reg(4)))) # (!U5_aMAR_reg(0) & ((U5_aMAR_reg(4)) # (U5_aMAR_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux2_a2_DATAA_driver,
	datab => U6_aMux2_a2_DATAB_driver,
	datac => U6_aMux2_a2_DATAC_driver,
	datad => U6_aMux2_a2_DATAD_driver,
	combout => U6_aMux2_a2_combout);

U6_aMux4_a2_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux4_a2_DATAA_driver);

U6_aMux4_a2_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux4_a2_DATAB_driver);

U6_aMux4_a2_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a1_combout,
	dataout => U6_aMux4_a2_DATAC_driver);

U6_aMux4_a2_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux2_a2_combout,
	dataout => U6_aMux4_a2_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N4
U6_aMux4_a2 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a2_combout = (!U5_aMAR_reg(3) & ((U5_aMAR_reg(2) & ((!U6_aMux2_a2_combout))) # (!U5_aMAR_reg(2) & (!U6_aMux4_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux4_a2_DATAA_driver,
	datab => U6_aMux4_a2_DATAB_driver,
	datac => U6_aMux4_a2_DATAC_driver,
	datad => U6_aMux4_a2_DATAD_driver,
	combout => U6_aMux4_a2_combout);

U6_aMux6_a0_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(5),
	dataout => U6_aMux6_a0_DATAA_driver);

U6_aMux6_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(3),
	dataout => U6_aMux6_a0_DATAB_driver);

U6_aMux6_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(4),
	dataout => U6_aMux6_a0_DATAC_driver);

U6_aMux6_a0_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(2),
	dataout => U6_aMux6_a0_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N0
U6_aMux6_a0 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux6_a0_combout = (U5_aMAR_reg(5) & (U5_aMAR_reg(3) & (U5_aMAR_reg(4) & !U5_aMAR_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux6_a0_DATAA_driver,
	datab => U6_aMux6_a0_DATAB_driver,
	datac => U6_aMux6_a0_DATAC_driver,
	datad => U6_aMux6_a0_DATAD_driver,
	combout => U6_aMux6_a0_combout);

U6_aMux6_a1_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U6_aMux6_a1_DATAA_driver);

U6_aMux6_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(1),
	dataout => U6_aMux6_a1_DATAB_driver);

U6_aMux6_a1_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a0_combout,
	dataout => U6_aMux6_a1_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N10
U6_aMux6_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux6_a1_combout = (!U5_aMAR_reg(0) & (U5_aMAR_reg(1) & U6_aMux6_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U6_aMux6_a1_DATAA_driver,
	datab => U6_aMux6_a1_DATAB_driver,
	datad => U6_aMux6_a1_DATAD_driver,
	combout => U6_aMux6_a1_combout);

U6_aMux4_a3_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(6),
	dataout => U6_aMux4_a3_DATAB_driver);

U6_aMux4_a3_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a2_combout,
	dataout => U6_aMux4_a3_DATAC_driver);

U6_aMux4_a3_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux6_a1_combout,
	dataout => U6_aMux4_a3_DATAD_driver);

-- Location: LCCOMB_X20_Y19_N22
U6_aMux4_a3 : cycloneii_lcell_comb
-- Equation(s):
-- U6_aMux4_a3_combout = (!U5_aMAR_reg(6) & ((U6_aMux4_a2_combout) # (U6_aMux6_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U6_aMux4_a3_DATAB_driver,
	datac => U6_aMux4_a3_DATAC_driver,
	datad => U6_aMux4_a3_DATAD_driver,
	combout => U6_aMux4_a3_combout);

U1_adata_a11_a_a42_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(7),
	dataout => U1_adata_a11_a_a42_DATAA_driver);

U1_adata_a11_a_a42_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux8_a0_combout,
	dataout => U1_adata_a11_a_a42_DATAB_driver);

U1_adata_a11_a_a42_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a5_combout,
	dataout => U1_adata_a11_a_a42_DATAC_driver);

U1_adata_a11_a_a42_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_aMux4_a3_combout,
	dataout => U1_adata_a11_a_a42_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N2
U1_adata_a11_a_a42 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a11_a_a42_combout = (!U5_aMAR_reg(7) & ((U6_aMux4_a3_combout) # ((U6_aMux8_a0_combout & U6_aMux4_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a11_a_a42_DATAA_driver,
	datab => U1_adata_a11_a_a42_DATAB_driver,
	datac => U1_adata_a11_a_a42_DATAC_driver,
	datad => U1_adata_a11_a_a42_DATAD_driver,
	combout => U1_adata_a11_a_a42_combout);

U1_adata_a11_a_a43_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_aaltsyncram_component_aauto_generated_aq_a(11),
	dataout => U1_adata_a11_a_a43_DATAA_driver);

U1_adata_a11_a_a43_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aR1_aregout,
	dataout => U1_adata_a11_a_a43_DATAB_driver);

U1_adata_a11_a_a43_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aWideOr2_a0_combout,
	dataout => U1_adata_a11_a_a43_DATAC_driver);

U1_adata_a11_a_a43_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a11_a_a42_combout,
	dataout => U1_adata_a11_a_a43_DATAD_driver);

-- Location: LCCOMB_X18_Y18_N22
U1_adata_a11_a_a43 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a11_a_a43_combout = (U1_aaltsyncram_component_aauto_generated_aq_a(11) & (((U1_adata_a11_a_a42_combout)) # (!U2_apresent_state_aR1_aregout))) # (!U1_aaltsyncram_component_aauto_generated_aq_a(11) & (U2_aWideOr2_a0_combout & 
-- ((U1_adata_a11_a_a42_combout) # (!U2_apresent_state_aR1_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a11_a_a43_DATAA_driver,
	datab => U1_adata_a11_a_a43_DATAB_driver,
	datac => U1_adata_a11_a_a43_DATAC_driver,
	datad => U1_adata_a11_a_a43_DATAD_driver,
	combout => U1_adata_a11_a_a43_combout);

U4_aIR_reg_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U4_aIR_reg_a3_a_CLK_driver);

U4_aIR_reg_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a11_a_a43_combout,
	dataout => U4_aIR_reg_a3_a_DATAIN_driver);

U4_aIR_reg_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U4_aIR_reg_a3_a_ACLR_driver);

U4_aIR_reg_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI2_aregout,
	dataout => U4_aIR_reg_a3_a_ENA_driver);

-- Location: LCFF_X18_Y18_N23
U4_aIR_reg_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U4_aIR_reg_a3_a_CLK_driver,
	datain => U4_aIR_reg_a3_a_DATAIN_driver,
	aclr => U4_aIR_reg_a3_a_ACLR_driver,
	ena => U4_aIR_reg_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U4_aIR_reg(3));

U2_anext_state_aI8_a1_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U4_aIR_reg(3),
	dataout => U2_anext_state_aI8_a1_DATAB_driver);

U2_anext_state_aI8_a1_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI8_a0_combout,
	dataout => U2_anext_state_aI8_a1_DATAC_driver);

-- Location: LCCOMB_X23_Y17_N8
U2_anext_state_aI8_a1 : cycloneii_lcell_comb
-- Equation(s):
-- U2_anext_state_aI8_a1_combout = (U4_aIR_reg(3) & U2_anext_state_aI8_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U2_anext_state_aI8_a1_DATAB_driver,
	datac => U2_anext_state_aI8_a1_DATAC_driver,
	combout => U2_anext_state_aI8_a1_combout);

U2_apresent_state_aI8_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U2_apresent_state_aI8_CLK_driver);

U2_apresent_state_aI8_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_anext_state_aI8_a1_combout,
	dataout => U2_apresent_state_aI8_DATAIN_driver);

U2_apresent_state_aI8_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U2_apresent_state_aI8_ACLR_driver);

-- Location: LCFF_X23_Y17_N9
U2_apresent_state_aI8 : cycloneii_lcell_ff
PORT MAP (
	clk => U2_apresent_state_aI8_CLK_driver,
	datain => U2_apresent_state_aI8_DATAIN_driver,
	aclr => U2_apresent_state_aI8_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U2_apresent_state_aI8_aregout);

U1_adata_a0_a_a17_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U5_aMAR_reg(0),
	dataout => U1_adata_a0_a_a17_DATAA_driver);

U1_adata_a0_a_a17_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_aacc_bus_acombout,
	dataout => U1_adata_a0_a_a17_DATAB_driver);

U1_adata_a0_a_a17_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_amar_data_acombout,
	dataout => U1_adata_a0_a_a17_DATAC_driver);

U1_adata_a0_a_a17_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U3_aacc(0),
	dataout => U1_adata_a0_a_a17_DATAD_driver);

-- Location: LCCOMB_X19_Y18_N14
U1_adata_a0_a_a17 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a0_a_a17_combout = (U5_aMAR_reg(0) & (((U3_aacc(0))) # (!U2_aacc_bus_acombout))) # (!U5_aMAR_reg(0) & (!U2_amar_data_acombout & ((U3_aacc(0)) # (!U2_aacc_bus_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a0_a_a17_DATAA_driver,
	datab => U1_adata_a0_a_a17_DATAB_driver,
	datac => U1_adata_a0_a_a17_DATAC_driver,
	datad => U1_adata_a0_a_a17_DATAD_driver,
	combout => U1_adata_a0_a_a17_combout);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
PORT_IN_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PORT_IN(0),
	combout => PORT_IN_acombout(0));

U1_adata_a0_a_a19_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a18_combout,
	dataout => U1_adata_a0_a_a19_DATAA_driver);

U1_adata_a0_a_a19_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI8_aregout,
	dataout => U1_adata_a0_a_a19_DATAB_driver);

U1_adata_a0_a_a19_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a17_combout,
	dataout => U1_adata_a0_a_a19_DATAC_driver);

U1_adata_a0_a_a19_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => PORT_IN_acombout(0),
	dataout => U1_adata_a0_a_a19_DATAD_driver);

-- Location: LCCOMB_X20_Y17_N22
U1_adata_a0_a_a19 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a0_a_a19_combout = (U1_adata_a0_a_a18_combout & (U1_adata_a0_a_a17_combout & ((PORT_IN_acombout(0)) # (!U2_apresent_state_aI8_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a0_a_a19_DATAA_driver,
	datab => U1_adata_a0_a_a19_DATAB_driver,
	datac => U1_adata_a0_a_a19_DATAC_driver,
	datad => U1_adata_a0_a_a19_DATAD_driver,
	combout => U1_adata_a0_a_a19_combout);

U1_adata_a0_a_a20_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a0_a_a7_combout,
	dataout => U1_adata_a0_a_a20_DATAA_driver);

U1_adata_a0_a_a20_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a19_combout,
	dataout => U1_adata_a0_a_a20_DATAB_driver);

U1_adata_a0_a_a20_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a7_combout,
	dataout => U1_adata_a0_a_a20_DATAD_driver);

-- Location: LCCOMB_X20_Y17_N0
U1_adata_a0_a_a20 : cycloneii_lcell_comb
-- Equation(s):
-- U1_adata_a0_a_a20_combout = ((U6_adata_rom_a0_a_a7_combout & U1_adata_a0_a_a19_combout)) # (!U1_adata_a3_a_a7_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_adata_a0_a_a20_DATAA_driver,
	datab => U1_adata_a0_a_a20_DATAB_driver,
	datad => U1_adata_a0_a_a20_DATAD_driver,
	combout => U1_adata_a0_a_a20_combout);

U12_aQ_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a0_a_CLK_driver);

U12_aQ_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a0_a_a20_combout,
	dataout => U12_aQ_a0_a_DATAIN_driver);

U12_aQ_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a0_a_ACLR_driver);

U12_aQ_a0_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a0_a_ENA_driver);

-- Location: LCFF_X20_Y17_N1
U12_aQ_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a0_a_CLK_driver,
	datain => U12_aQ_a0_a_DATAIN_driver,
	aclr => U12_aQ_a0_a_ACLR_driver,
	ena => U12_aQ_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(0));

U12_aQ_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a3_a_CLK_driver);

U12_aQ_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a3_a_a8_combout,
	dataout => U12_aQ_a3_a_DATAIN_driver);

U12_aQ_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a3_a_ACLR_driver);

U12_aQ_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a3_a_ENA_driver);

-- Location: LCFF_X19_Y18_N9
U12_aQ_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a3_a_CLK_driver,
	datain => U12_aQ_a3_a_DATAIN_driver,
	aclr => U12_aQ_a3_a_ACLR_driver,
	ena => U12_aQ_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(3));

U12_aQ_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a2_a_CLK_driver);

U12_aQ_a2_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a2_a_a16_combout,
	dataout => U12_aQ_a2_a_SDATA_driver);

U12_aQ_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a2_a_ACLR_driver);

U12_aQ_a2_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a2_a_ENA_driver);

-- Location: LCFF_X8_Y18_N13
U12_aQ_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a2_a_CLK_driver,
	sdata => U12_aQ_a2_a_SDATA_driver,
	aclr => U12_aQ_a2_a_ACLR_driver,
	sload => VCC,
	ena => U12_aQ_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(2));

U12_aQ_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a1_a_CLK_driver);

U12_aQ_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a1_a_a12_combout,
	dataout => U12_aQ_a1_a_DATAIN_driver);

U12_aQ_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a1_a_ACLR_driver);

U12_aQ_a1_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a1_a_ENA_driver);

-- Location: LCFF_X8_Y18_N3
U12_aQ_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a1_a_CLK_driver,
	datain => U12_aQ_a1_a_DATAIN_driver,
	aclr => U12_aQ_a1_a_ACLR_driver,
	ena => U12_aQ_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(1));

U10_apom1_a7_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a7_a_a9_DATAA_driver);

U10_apom1_a7_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a7_a_a9_DATAB_driver);

U10_apom1_a7_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a7_a_a9_DATAC_driver);

U10_apom1_a7_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a7_a_a9_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N12
U10_apom1_a7_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a7_a_a9_combout = (U12_aQ(3)) # ((U12_aQ(1)) # (U12_aQ(0) $ (!U12_aQ(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a7_a_a9_DATAA_driver,
	datab => U10_apom1_a7_a_a9_DATAB_driver,
	datac => U10_apom1_a7_a_a9_DATAC_driver,
	datad => U10_apom1_a7_a_a9_DATAD_driver,
	combout => U10_apom1_a7_a_a9_combout);

U10_apom1_a6_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a6_a_a14_DATAA_driver);

U10_apom1_a6_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a6_a_a14_DATAB_driver);

U10_apom1_a6_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a6_a_a14_DATAC_driver);

U10_apom1_a6_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a6_a_a14_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N14
U10_apom1_a6_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a6_a_a14_combout = ((U12_aQ(1) & (!U12_aQ(3) & U12_aQ(0))) # (!U12_aQ(1) & (U12_aQ(3) $ (!U12_aQ(0))))) # (!U12_aQ(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a6_a_a14_DATAA_driver,
	datab => U10_apom1_a6_a_a14_DATAB_driver,
	datac => U10_apom1_a6_a_a14_DATAC_driver,
	datad => U10_apom1_a6_a_a14_DATAD_driver,
	combout => U10_apom1_a6_a_a14_combout);

U10_apom1_a5_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a5_a_a15_DATAA_driver);

U10_apom1_a5_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a5_a_a15_DATAB_driver);

U10_apom1_a5_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a5_a_a15_DATAC_driver);

U10_apom1_a5_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a5_a_a15_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N28
U10_apom1_a5_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a5_a_a15_combout = (U12_aQ(2) & (((!U12_aQ(1) & U12_aQ(0))) # (!U12_aQ(3)))) # (!U12_aQ(2) & (((U12_aQ(3)) # (U12_aQ(0))) # (!U12_aQ(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a5_a_a15_DATAA_driver,
	datab => U10_apom1_a5_a_a15_DATAB_driver,
	datac => U10_apom1_a5_a_a15_DATAC_driver,
	datad => U10_apom1_a5_a_a15_DATAD_driver,
	combout => U10_apom1_a5_a_a15_combout);

U10_apom1_a4_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a4_a_a10_DATAA_driver);

U10_apom1_a4_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a4_a_a10_DATAB_driver);

U10_apom1_a4_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a4_a_a10_DATAC_driver);

U10_apom1_a4_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a4_a_a10_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N20
U10_apom1_a4_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a4_a_a10_combout = (U12_aQ(1) & ((U12_aQ(2) & ((U12_aQ(0)))) # (!U12_aQ(2) & (U12_aQ(3) & !U12_aQ(0))))) # (!U12_aQ(1) & (!U12_aQ(3) & (U12_aQ(2) $ (U12_aQ(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a4_a_a10_DATAA_driver,
	datab => U10_apom1_a4_a_a10_DATAB_driver,
	datac => U10_apom1_a4_a_a10_DATAC_driver,
	datad => U10_apom1_a4_a_a10_DATAD_driver,
	combout => U10_apom1_a4_a_a10_combout);

U10_apom1_a3_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a3_a_a11_DATAA_driver);

U10_apom1_a3_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a3_a_a11_DATAB_driver);

U10_apom1_a3_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a3_a_a11_DATAC_driver);

U10_apom1_a3_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a3_a_a11_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N8
U10_apom1_a3_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a3_a_a11_combout = (U12_aQ(1) & (((!U12_aQ(3) & U12_aQ(0))))) # (!U12_aQ(1) & ((U12_aQ(2) & (!U12_aQ(3))) # (!U12_aQ(2) & ((U12_aQ(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a3_a_a11_DATAA_driver,
	datab => U10_apom1_a3_a_a11_DATAB_driver,
	datac => U10_apom1_a3_a_a11_DATAC_driver,
	datad => U10_apom1_a3_a_a11_DATAD_driver,
	combout => U10_apom1_a3_a_a11_combout);

U10_apom1_a2_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a2_a_a12_DATAA_driver);

U10_apom1_a2_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a2_a_a12_DATAB_driver);

U10_apom1_a2_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a2_a_a12_DATAC_driver);

U10_apom1_a2_a_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a2_a_a12_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N26
U10_apom1_a2_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a2_a_a12_combout = (!U12_aQ(3) & ((U12_aQ(2) & (U12_aQ(1) & U12_aQ(0))) # (!U12_aQ(2) & ((U12_aQ(1)) # (U12_aQ(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a2_a_a12_DATAA_driver,
	datab => U10_apom1_a2_a_a12_DATAB_driver,
	datac => U10_apom1_a2_a_a12_DATAC_driver,
	datad => U10_apom1_a2_a_a12_DATAD_driver,
	combout => U10_apom1_a2_a_a12_combout);

U10_apom1_a1_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U10_apom1_a1_a_a13_DATAA_driver);

U10_apom1_a1_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U10_apom1_a1_a_a13_DATAB_driver);

U10_apom1_a1_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U10_apom1_a1_a_a13_DATAC_driver);

U10_apom1_a1_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U10_apom1_a1_a_a13_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N6
U10_apom1_a1_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom1_a1_a_a13_combout = (U12_aQ(1) & (((U12_aQ(3)) # (!U12_aQ(0))) # (!U12_aQ(2)))) # (!U12_aQ(1) & (U12_aQ(2) $ ((U12_aQ(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom1_a1_a_a13_DATAA_driver,
	datab => U10_apom1_a1_a_a13_DATAB_driver,
	datac => U10_apom1_a1_a_a13_DATAC_driver,
	datad => U10_apom1_a1_a_a13_DATAD_driver,
	combout => U10_apom1_a1_a_a13_combout);

U12_aQ_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a4_a_CLK_driver);

U12_aQ_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a4_a_a31_combout,
	dataout => U12_aQ_a4_a_DATAIN_driver);

U12_aQ_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a4_a_ACLR_driver);

U12_aQ_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a4_a_ENA_driver);

-- Location: LCFF_X9_Y18_N11
U12_aQ_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a4_a_CLK_driver,
	datain => U12_aQ_a4_a_DATAIN_driver,
	aclr => U12_aQ_a4_a_ACLR_driver,
	ena => U12_aQ_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(4));

U12_aQ_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a5_a_CLK_driver);

U12_aQ_a5_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a5_a_a24_combout,
	dataout => U12_aQ_a5_a_SDATA_driver);

U12_aQ_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a5_a_ACLR_driver);

U12_aQ_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a5_a_ENA_driver);

-- Location: LCFF_X9_Y18_N15
U12_aQ_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a5_a_CLK_driver,
	sdata => U12_aQ_a5_a_SDATA_driver,
	aclr => U12_aQ_a5_a_ACLR_driver,
	sload => VCC,
	ena => U12_aQ_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(5));

U12_aQ_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a7_a_CLK_driver);

U12_aQ_a7_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U6_adata_rom_a7_a_a11_combout,
	dataout => U12_aQ_a7_a_SDATA_driver);

U12_aQ_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a7_a_ACLR_driver);

U12_aQ_a7_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a7_a_ENA_driver);

-- Location: LCFF_X9_Y18_N19
U12_aQ_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a7_a_CLK_driver,
	sdata => U12_aQ_a7_a_SDATA_driver,
	aclr => U12_aQ_a7_a_ACLR_driver,
	sload => VCC,
	ena => U12_aQ_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(7));

U12_aQ_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U12_aQ_a6_a_CLK_driver);

U12_aQ_a6_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U1_adata_a6_a_a27_combout,
	dataout => U12_aQ_a6_a_SDATA_driver);

U12_aQ_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U12_aQ_a6_a_ACLR_driver);

U12_aQ_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U12_aQ_a6_a_ENA_driver);

-- Location: LCFF_X9_Y18_N27
U12_aQ_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U12_aQ_a6_a_CLK_driver,
	sdata => U12_aQ_a6_a_SDATA_driver,
	aclr => U12_aQ_a6_a_ACLR_driver,
	sload => VCC,
	ena => U12_aQ_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U12_aQ(6));

U10_apom2_a7_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a7_a_a9_DATAA_driver);

U10_apom2_a7_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a7_a_a9_DATAB_driver);

U10_apom2_a7_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a7_a_a9_DATAC_driver);

U10_apom2_a7_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a7_a_a9_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N18
U10_apom2_a7_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a7_a_a9_combout = (U12_aQ(5)) # ((U12_aQ(7)) # (U12_aQ(4) $ (!U12_aQ(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a7_a_a9_DATAA_driver,
	datab => U10_apom2_a7_a_a9_DATAB_driver,
	datac => U10_apom2_a7_a_a9_DATAC_driver,
	datad => U10_apom2_a7_a_a9_DATAD_driver,
	combout => U10_apom2_a7_a_a9_combout);

U10_apom2_a6_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a6_a_a14_DATAA_driver);

U10_apom2_a6_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a6_a_a14_DATAB_driver);

U10_apom2_a6_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a6_a_a14_DATAC_driver);

U10_apom2_a6_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a6_a_a14_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N20
U10_apom2_a6_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a6_a_a14_combout = ((U12_aQ(7) & (!U12_aQ(5) & U12_aQ(4))) # (!U12_aQ(7) & (U12_aQ(5) $ (!U12_aQ(4))))) # (!U12_aQ(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a6_a_a14_DATAA_driver,
	datab => U10_apom2_a6_a_a14_DATAB_driver,
	datac => U10_apom2_a6_a_a14_DATAC_driver,
	datad => U10_apom2_a6_a_a14_DATAD_driver,
	combout => U10_apom2_a6_a_a14_combout);

U10_apom2_a5_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a5_a_a15_DATAA_driver);

U10_apom2_a5_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a5_a_a15_DATAB_driver);

U10_apom2_a5_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a5_a_a15_DATAC_driver);

U10_apom2_a5_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a5_a_a15_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N2
U10_apom2_a5_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a5_a_a15_combout = (U12_aQ(6) & (((!U12_aQ(5) & U12_aQ(4))) # (!U12_aQ(7)))) # (!U12_aQ(6) & ((U12_aQ(7)) # ((U12_aQ(4)) # (!U12_aQ(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a5_a_a15_DATAA_driver,
	datab => U10_apom2_a5_a_a15_DATAB_driver,
	datac => U10_apom2_a5_a_a15_DATAC_driver,
	datad => U10_apom2_a5_a_a15_DATAD_driver,
	combout => U10_apom2_a5_a_a15_combout);

U10_apom2_a4_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a4_a_a10_DATAA_driver);

U10_apom2_a4_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a4_a_a10_DATAB_driver);

U10_apom2_a4_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a4_a_a10_DATAC_driver);

U10_apom2_a4_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a4_a_a10_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N14
U10_apom2_a4_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a4_a_a10_combout = (U12_aQ(5) & ((U12_aQ(4) & ((U12_aQ(6)))) # (!U12_aQ(4) & (U12_aQ(7) & !U12_aQ(6))))) # (!U12_aQ(5) & (!U12_aQ(7) & (U12_aQ(4) $ (U12_aQ(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a4_a_a10_DATAA_driver,
	datab => U10_apom2_a4_a_a10_DATAB_driver,
	datac => U10_apom2_a4_a_a10_DATAC_driver,
	datad => U10_apom2_a4_a_a10_DATAD_driver,
	combout => U10_apom2_a4_a_a10_combout);

U10_apom2_a3_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a3_a_a11_DATAA_driver);

U10_apom2_a3_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a3_a_a11_DATAB_driver);

U10_apom2_a3_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a3_a_a11_DATAC_driver);

U10_apom2_a3_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a3_a_a11_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N6
U10_apom2_a3_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a3_a_a11_combout = (U12_aQ(5) & (U12_aQ(4) & ((!U12_aQ(7))))) # (!U12_aQ(5) & ((U12_aQ(6) & ((!U12_aQ(7)))) # (!U12_aQ(6) & (U12_aQ(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a3_a_a11_DATAA_driver,
	datab => U10_apom2_a3_a_a11_DATAB_driver,
	datac => U10_apom2_a3_a_a11_DATAC_driver,
	datad => U10_apom2_a3_a_a11_DATAD_driver,
	combout => U10_apom2_a3_a_a11_combout);

U10_apom2_a2_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a2_a_a12_DATAA_driver);

U10_apom2_a2_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a2_a_a12_DATAB_driver);

U10_apom2_a2_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a2_a_a12_DATAC_driver);

U10_apom2_a2_a_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a2_a_a12_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N28
U10_apom2_a2_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a2_a_a12_combout = (!U12_aQ(7) & ((U12_aQ(6) & (U12_aQ(5) & U12_aQ(4))) # (!U12_aQ(6) & ((U12_aQ(5)) # (U12_aQ(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a2_a_a12_DATAA_driver,
	datab => U10_apom2_a2_a_a12_DATAB_driver,
	datac => U10_apom2_a2_a_a12_DATAC_driver,
	datad => U10_apom2_a2_a_a12_DATAD_driver,
	combout => U10_apom2_a2_a_a12_combout);

U10_apom2_a1_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U10_apom2_a1_a_a13_DATAA_driver);

U10_apom2_a1_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U10_apom2_a1_a_a13_DATAB_driver);

U10_apom2_a1_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U10_apom2_a1_a_a13_DATAC_driver);

U10_apom2_a1_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U10_apom2_a1_a_a13_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N26
U10_apom2_a1_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U10_apom2_a1_a_a13_combout = (U12_aQ(5) & ((U12_aQ(7)) # ((!U12_aQ(4)) # (!U12_aQ(6))))) # (!U12_aQ(5) & (U12_aQ(7) $ ((U12_aQ(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U10_apom2_a1_a_a13_DATAA_driver,
	datab => U10_apom2_a1_a_a13_DATAB_driver,
	datac => U10_apom2_a1_a_a13_DATAC_driver,
	datad => U10_apom2_a1_a_a13_DATAD_driver,
	combout => U10_apom2_a1_a_a13_combout);

U11_aQ_a0_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a0_a_CLK_driver);

U11_aQ_a0_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(0),
	dataout => U11_aQ_a0_a_SDATA_driver);

U11_aQ_a0_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a0_a_ACLR_driver);

U11_aQ_a0_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a0_a_ENA_driver);

-- Location: LCFF_X8_Y18_N11
U11_aQ_a0_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a0_a_CLK_driver,
	sdata => U11_aQ_a0_a_SDATA_driver,
	aclr => U11_aQ_a0_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(0));

U11_aQ_a1_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a1_a_CLK_driver);

U11_aQ_a1_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(1),
	dataout => U11_aQ_a1_a_SDATA_driver);

U11_aQ_a1_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a1_a_ACLR_driver);

U11_aQ_a1_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a1_a_ENA_driver);

-- Location: LCFF_X8_Y18_N31
U11_aQ_a1_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a1_a_CLK_driver,
	sdata => U11_aQ_a1_a_SDATA_driver,
	aclr => U11_aQ_a1_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(1));

U11_aQ_a3_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a3_a_CLK_driver);

U11_aQ_a3_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(3),
	dataout => U11_aQ_a3_a_SDATA_driver);

U11_aQ_a3_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a3_a_ACLR_driver);

U11_aQ_a3_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a3_a_ENA_driver);

-- Location: LCFF_X8_Y18_N19
U11_aQ_a3_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a3_a_CLK_driver,
	sdata => U11_aQ_a3_a_SDATA_driver,
	aclr => U11_aQ_a3_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(3));

U11_aQ_a2_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a2_a_CLK_driver);

U11_aQ_a2_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(2),
	dataout => U11_aQ_a2_a_SDATA_driver);

U11_aQ_a2_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a2_a_ACLR_driver);

U11_aQ_a2_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a2_a_ENA_driver);

-- Location: LCFF_X8_Y18_N23
U11_aQ_a2_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a2_a_CLK_driver,
	sdata => U11_aQ_a2_a_SDATA_driver,
	aclr => U11_aQ_a2_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(2));

U9_apom1_a7_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a7_a_a9_DATAA_driver);

U9_apom1_a7_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a7_a_a9_DATAB_driver);

U9_apom1_a7_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a7_a_a9_DATAC_driver);

U9_apom1_a7_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a7_a_a9_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N18
U9_apom1_a7_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a7_a_a9_combout = (U11_aQ(1)) # ((U11_aQ(3)) # (U11_aQ(0) $ (!U11_aQ(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a7_a_a9_DATAA_driver,
	datab => U9_apom1_a7_a_a9_DATAB_driver,
	datac => U9_apom1_a7_a_a9_DATAC_driver,
	datad => U9_apom1_a7_a_a9_DATAD_driver,
	combout => U9_apom1_a7_a_a9_combout);

U9_apom1_a6_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a6_a_a14_DATAA_driver);

U9_apom1_a6_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a6_a_a14_DATAB_driver);

U9_apom1_a6_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a6_a_a14_DATAC_driver);

U9_apom1_a6_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a6_a_a14_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N0
U9_apom1_a6_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a6_a_a14_combout = ((U11_aQ(0) & (U11_aQ(1) $ (U11_aQ(3)))) # (!U11_aQ(0) & (!U11_aQ(1) & !U11_aQ(3)))) # (!U11_aQ(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a6_a_a14_DATAA_driver,
	datab => U9_apom1_a6_a_a14_DATAB_driver,
	datac => U9_apom1_a6_a_a14_DATAC_driver,
	datad => U9_apom1_a6_a_a14_DATAD_driver,
	combout => U9_apom1_a6_a_a14_combout);

U9_apom1_a5_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a5_a_a15_DATAA_driver);

U9_apom1_a5_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a5_a_a15_DATAB_driver);

U9_apom1_a5_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a5_a_a15_DATAC_driver);

U9_apom1_a5_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a5_a_a15_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N24
U9_apom1_a5_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a5_a_a15_combout = (U11_aQ(2) & (((U11_aQ(0) & !U11_aQ(1))) # (!U11_aQ(3)))) # (!U11_aQ(2) & ((U11_aQ(0)) # ((U11_aQ(3)) # (!U11_aQ(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a5_a_a15_DATAA_driver,
	datab => U9_apom1_a5_a_a15_DATAB_driver,
	datac => U9_apom1_a5_a_a15_DATAC_driver,
	datad => U9_apom1_a5_a_a15_DATAD_driver,
	combout => U9_apom1_a5_a_a15_combout);

U9_apom1_a4_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a4_a_a10_DATAA_driver);

U9_apom1_a4_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a4_a_a10_DATAB_driver);

U9_apom1_a4_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a4_a_a10_DATAC_driver);

U9_apom1_a4_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a4_a_a10_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N30
U9_apom1_a4_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a4_a_a10_combout = (U11_aQ(1) & ((U11_aQ(2) & ((U11_aQ(0)))) # (!U11_aQ(2) & (U11_aQ(3) & !U11_aQ(0))))) # (!U11_aQ(1) & (!U11_aQ(3) & (U11_aQ(2) $ (U11_aQ(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a4_a_a10_DATAA_driver,
	datab => U9_apom1_a4_a_a10_DATAB_driver,
	datac => U9_apom1_a4_a_a10_DATAC_driver,
	datad => U9_apom1_a4_a_a10_DATAD_driver,
	combout => U9_apom1_a4_a_a10_combout);

U9_apom1_a3_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a3_a_a11_DATAA_driver);

U9_apom1_a3_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a3_a_a11_DATAB_driver);

U9_apom1_a3_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a3_a_a11_DATAC_driver);

U9_apom1_a3_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a3_a_a11_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N22
U9_apom1_a3_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a3_a_a11_combout = (U11_aQ(1) & (!U11_aQ(3) & ((U11_aQ(0))))) # (!U11_aQ(1) & ((U11_aQ(2) & (!U11_aQ(3))) # (!U11_aQ(2) & ((U11_aQ(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a3_a_a11_DATAA_driver,
	datab => U9_apom1_a3_a_a11_DATAB_driver,
	datac => U9_apom1_a3_a_a11_DATAC_driver,
	datad => U9_apom1_a3_a_a11_DATAD_driver,
	combout => U9_apom1_a3_a_a11_combout);

U9_apom1_a2_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a2_a_a12_DATAA_driver);

U9_apom1_a2_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a2_a_a12_DATAB_driver);

U9_apom1_a2_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a2_a_a12_DATAC_driver);

U9_apom1_a2_a_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a2_a_a12_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N10
U9_apom1_a2_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a2_a_a12_combout = (!U11_aQ(3) & ((U11_aQ(1) & ((U11_aQ(0)) # (!U11_aQ(2)))) # (!U11_aQ(1) & (!U11_aQ(2) & U11_aQ(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a2_a_a12_DATAA_driver,
	datab => U9_apom1_a2_a_a12_DATAB_driver,
	datac => U9_apom1_a2_a_a12_DATAC_driver,
	datad => U9_apom1_a2_a_a12_DATAD_driver,
	combout => U9_apom1_a2_a_a12_combout);

U9_apom1_a1_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(2),
	dataout => U9_apom1_a1_a_a13_DATAA_driver);

U9_apom1_a1_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(0),
	dataout => U9_apom1_a1_a_a13_DATAB_driver);

U9_apom1_a1_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(1),
	dataout => U9_apom1_a1_a_a13_DATAC_driver);

U9_apom1_a1_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(3),
	dataout => U9_apom1_a1_a_a13_DATAD_driver);

-- Location: LCCOMB_X8_Y18_N4
U9_apom1_a1_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom1_a1_a_a13_combout = (U11_aQ(1) & (((U11_aQ(3)) # (!U11_aQ(0))) # (!U11_aQ(2)))) # (!U11_aQ(1) & (U11_aQ(2) $ (((U11_aQ(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom1_a1_a_a13_DATAA_driver,
	datab => U9_apom1_a1_a_a13_DATAB_driver,
	datac => U9_apom1_a1_a_a13_DATAC_driver,
	datad => U9_apom1_a1_a_a13_DATAD_driver,
	combout => U9_apom1_a1_a_a13_combout);

U11_aQ_a5_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a5_a_CLK_driver);

U11_aQ_a5_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(5),
	dataout => U11_aQ_a5_a_SDATA_driver);

U11_aQ_a5_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a5_a_ACLR_driver);

U11_aQ_a5_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a5_a_ENA_driver);

-- Location: LCFF_X9_Y18_N25
U11_aQ_a5_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a5_a_CLK_driver,
	sdata => U11_aQ_a5_a_SDATA_driver,
	aclr => U11_aQ_a5_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(5));

U11_aQ_a7_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a7_a_CLK_driver);

U11_aQ_a7_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(7),
	dataout => U11_aQ_a7_a_SDATA_driver);

U11_aQ_a7_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a7_a_ACLR_driver);

U11_aQ_a7_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a7_a_ENA_driver);

-- Location: LCFF_X9_Y18_N31
U11_aQ_a7_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a7_a_CLK_driver,
	sdata => U11_aQ_a7_a_SDATA_driver,
	aclr => U11_aQ_a7_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(7));

U11_aQ_a4_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a4_a_CLK_driver);

U11_aQ_a4_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(4),
	dataout => U11_aQ_a4_a_SDATA_driver);

U11_aQ_a4_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a4_a_ACLR_driver);

U11_aQ_a4_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a4_a_ENA_driver);

-- Location: LCFF_X9_Y18_N9
U11_aQ_a4_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a4_a_CLK_driver,
	sdata => U11_aQ_a4_a_SDATA_driver,
	aclr => U11_aQ_a4_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(4));

U11_aQ_a6_a_CLK_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clk_aclkctrl_outclk,
	dataout => U11_aQ_a6_a_CLK_driver);

U11_aQ_a6_a_SDATA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U12_aQ(6),
	dataout => U11_aQ_a6_a_SDATA_driver);

U11_aQ_a6_a_ACLR_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_reset_acombout,
	dataout => U11_aQ_a6_a_ACLR_driver);

U11_aQ_a6_a_ENA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U2_apresent_state_aI4_aregout,
	dataout => U11_aQ_a6_a_ENA_driver);

-- Location: LCFF_X9_Y18_N13
U11_aQ_a6_a : cycloneii_lcell_ff
PORT MAP (
	clk => U11_aQ_a6_a_CLK_driver,
	sdata => U11_aQ_a6_a_SDATA_driver,
	aclr => U11_aQ_a6_a_ACLR_driver,
	sload => VCC,
	ena => U11_aQ_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => U11_aQ(6));

U9_apom2_a7_a_a9_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a7_a_a9_DATAA_driver);

U9_apom2_a7_a_a9_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a7_a_a9_DATAB_driver);

U9_apom2_a7_a_a9_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a7_a_a9_DATAC_driver);

U9_apom2_a7_a_a9_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a7_a_a9_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N8
U9_apom2_a7_a_a9 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a7_a_a9_combout = (U11_aQ(5)) # ((U11_aQ(7)) # (U11_aQ(4) $ (!U11_aQ(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a7_a_a9_DATAA_driver,
	datab => U9_apom2_a7_a_a9_DATAB_driver,
	datac => U9_apom2_a7_a_a9_DATAC_driver,
	datad => U9_apom2_a7_a_a9_DATAD_driver,
	combout => U9_apom2_a7_a_a9_combout);

U9_apom2_a6_a_a14_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a6_a_a14_DATAA_driver);

U9_apom2_a6_a_a14_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a6_a_a14_DATAB_driver);

U9_apom2_a6_a_a14_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a6_a_a14_DATAC_driver);

U9_apom2_a6_a_a14_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a6_a_a14_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N4
U9_apom2_a6_a_a14 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a6_a_a14_combout = ((U11_aQ(4) & (U11_aQ(5) $ (U11_aQ(7)))) # (!U11_aQ(4) & (!U11_aQ(5) & !U11_aQ(7)))) # (!U11_aQ(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a6_a_a14_DATAA_driver,
	datab => U9_apom2_a6_a_a14_DATAB_driver,
	datac => U9_apom2_a6_a_a14_DATAC_driver,
	datad => U9_apom2_a6_a_a14_DATAD_driver,
	combout => U9_apom2_a6_a_a14_combout);

U9_apom2_a5_a_a15_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a5_a_a15_DATAA_driver);

U9_apom2_a5_a_a15_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a5_a_a15_DATAB_driver);

U9_apom2_a5_a_a15_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a5_a_a15_DATAC_driver);

U9_apom2_a5_a_a15_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a5_a_a15_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N12
U9_apom2_a5_a_a15 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a5_a_a15_combout = (U11_aQ(6) & (((!U11_aQ(5) & U11_aQ(4))) # (!U11_aQ(7)))) # (!U11_aQ(6) & (((U11_aQ(4)) # (U11_aQ(7))) # (!U11_aQ(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a5_a_a15_DATAA_driver,
	datab => U9_apom2_a5_a_a15_DATAB_driver,
	datac => U9_apom2_a5_a_a15_DATAC_driver,
	datad => U9_apom2_a5_a_a15_DATAD_driver,
	combout => U9_apom2_a5_a_a15_combout);

U9_apom2_a4_a_a10_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a4_a_a10_DATAA_driver);

U9_apom2_a4_a_a10_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a4_a_a10_DATAB_driver);

U9_apom2_a4_a_a10_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a4_a_a10_DATAC_driver);

U9_apom2_a4_a_a10_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a4_a_a10_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N30
U9_apom2_a4_a_a10 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a4_a_a10_combout = (U11_aQ(5) & ((U11_aQ(4) & ((U11_aQ(6)))) # (!U11_aQ(4) & (U11_aQ(7) & !U11_aQ(6))))) # (!U11_aQ(5) & (!U11_aQ(7) & (U11_aQ(4) $ (U11_aQ(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a4_a_a10_DATAA_driver,
	datab => U9_apom2_a4_a_a10_DATAB_driver,
	datac => U9_apom2_a4_a_a10_DATAC_driver,
	datad => U9_apom2_a4_a_a10_DATAD_driver,
	combout => U9_apom2_a4_a_a10_combout);

U9_apom2_a3_a_a11_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a3_a_a11_DATAA_driver);

U9_apom2_a3_a_a11_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a3_a_a11_DATAB_driver);

U9_apom2_a3_a_a11_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a3_a_a11_DATAC_driver);

U9_apom2_a3_a_a11_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a3_a_a11_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N24
U9_apom2_a3_a_a11 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a3_a_a11_combout = (U11_aQ(5) & (((U11_aQ(4) & !U11_aQ(7))))) # (!U11_aQ(5) & ((U11_aQ(6) & ((!U11_aQ(7)))) # (!U11_aQ(6) & (U11_aQ(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a3_a_a11_DATAA_driver,
	datab => U9_apom2_a3_a_a11_DATAB_driver,
	datac => U9_apom2_a3_a_a11_DATAC_driver,
	datad => U9_apom2_a3_a_a11_DATAD_driver,
	combout => U9_apom2_a3_a_a11_combout);

U9_apom2_a2_a_a12_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a2_a_a12_DATAA_driver);

U9_apom2_a2_a_a12_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a2_a_a12_DATAB_driver);

U9_apom2_a2_a_a12_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a2_a_a12_DATAC_driver);

U9_apom2_a2_a_a12_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a2_a_a12_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N0
U9_apom2_a2_a_a12 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a2_a_a12_combout = (!U11_aQ(7) & ((U11_aQ(6) & (U11_aQ(4) & U11_aQ(5))) # (!U11_aQ(6) & ((U11_aQ(4)) # (U11_aQ(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a2_a_a12_DATAA_driver,
	datab => U9_apom2_a2_a_a12_DATAB_driver,
	datac => U9_apom2_a2_a_a12_DATAC_driver,
	datad => U9_apom2_a2_a_a12_DATAD_driver,
	combout => U9_apom2_a2_a_a12_combout);

U9_apom2_a1_a_a13_DATAA_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(6),
	dataout => U9_apom2_a1_a_a13_DATAA_driver);

U9_apom2_a1_a_a13_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(4),
	dataout => U9_apom2_a1_a_a13_DATAB_driver);

U9_apom2_a1_a_a13_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(5),
	dataout => U9_apom2_a1_a_a13_DATAC_driver);

U9_apom2_a1_a_a13_DATAD_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U11_aQ(7),
	dataout => U9_apom2_a1_a_a13_DATAD_driver);

-- Location: LCCOMB_X9_Y18_N22
U9_apom2_a1_a_a13 : cycloneii_lcell_comb
-- Equation(s):
-- U9_apom2_a1_a_a13_combout = (U11_aQ(5) & (((U11_aQ(7)) # (!U11_aQ(4))) # (!U11_aQ(6)))) # (!U11_aQ(5) & (U11_aQ(6) $ (((U11_aQ(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U9_apom2_a1_a_a13_DATAA_driver,
	datab => U9_apom2_a1_a_a13_DATAB_driver,
	datac => U9_apom2_a1_a_a13_DATAC_driver,
	datad => U9_apom2_a1_a_a13_DATAD_driver,
	combout => U9_apom2_a1_a_a13_combout);

Seg0_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom1_a7_a_a9_combout,
	dataout => Seg0_a0_a_DATAIN_driver);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a0_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(0));

Seg0_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom1_a6_a_a14_combout,
	dataout => Seg0_a1_a_DATAIN_driver);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a1_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(1));

Seg0_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom1_a5_a_a15_combout,
	dataout => Seg0_a2_a_DATAIN_driver);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a2_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(2));

Seg0_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom1_a4_a_a10_combout,
	dataout => Seg0_a3_a_DATAIN_driver);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a3_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(3));

Seg0_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom1_a3_a_a11_combout,
	dataout => Seg0_a4_a_DATAIN_driver);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a4_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(4));

Seg0_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom1_a2_a_a12_combout,
	dataout => Seg0_a5_a_DATAIN_driver);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a5_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(5));

Seg0_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom1_a1_a_a13_combout,
	dataout => Seg0_a6_a_DATAIN_driver);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg0_a6_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(6));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg0_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg0(7));

Seg1_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom2_a7_a_a9_combout,
	dataout => Seg1_a0_a_DATAIN_driver);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a0_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(0));

Seg1_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom2_a6_a_a14_combout,
	dataout => Seg1_a1_a_DATAIN_driver);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a1_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(1));

Seg1_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom2_a5_a_a15_combout,
	dataout => Seg1_a2_a_DATAIN_driver);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a2_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(2));

Seg1_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom2_a4_a_a10_combout,
	dataout => Seg1_a3_a_DATAIN_driver);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a3_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(3));

Seg1_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom2_a3_a_a11_combout,
	dataout => Seg1_a4_a_DATAIN_driver);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a4_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(4));

Seg1_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U10_apom2_a2_a_a12_combout,
	dataout => Seg1_a5_a_DATAIN_driver);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a5_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(5));

Seg1_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U10_apom2_a1_a_a13_combout,
	dataout => Seg1_a6_a_DATAIN_driver);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg1_a6_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(6));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg1_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg1(7));

Seg2_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom1_a7_a_a9_combout,
	dataout => Seg2_a0_a_DATAIN_driver);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a0_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(0));

Seg2_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom1_a6_a_a14_combout,
	dataout => Seg2_a1_a_DATAIN_driver);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a1_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(1));

Seg2_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom1_a5_a_a15_combout,
	dataout => Seg2_a2_a_DATAIN_driver);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a2_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(2));

Seg2_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom1_a4_a_a10_combout,
	dataout => Seg2_a3_a_DATAIN_driver);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a3_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(3));

Seg2_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom1_a3_a_a11_combout,
	dataout => Seg2_a4_a_DATAIN_driver);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a4_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(4));

Seg2_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom1_a2_a_a12_combout,
	dataout => Seg2_a5_a_DATAIN_driver);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a5_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(5));

Seg2_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom1_a1_a_a13_combout,
	dataout => Seg2_a6_a_DATAIN_driver);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg2_a6_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(6));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg2_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg2(7));

Seg3_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom2_a7_a_a9_combout,
	dataout => Seg3_a0_a_DATAIN_driver);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a0_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(0));

Seg3_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom2_a6_a_a14_combout,
	dataout => Seg3_a1_a_DATAIN_driver);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a1_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(1));

Seg3_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom2_a5_a_a15_combout,
	dataout => Seg3_a2_a_DATAIN_driver);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a2_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(2));

Seg3_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom2_a4_a_a10_combout,
	dataout => Seg3_a3_a_DATAIN_driver);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a3_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(3));

Seg3_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom2_a3_a_a11_combout,
	dataout => Seg3_a4_a_DATAIN_driver);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a4_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(4));

Seg3_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => U9_apom2_a2_a_a12_combout,
	dataout => Seg3_a5_a_DATAIN_driver);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a5_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(5));

Seg3_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => ALT_INV_U9_apom2_a1_a_a13_combout,
	dataout => Seg3_a6_a_DATAIN_driver);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Seg3_a6_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(6));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
Seg3_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Seg3(7));
END structure;


