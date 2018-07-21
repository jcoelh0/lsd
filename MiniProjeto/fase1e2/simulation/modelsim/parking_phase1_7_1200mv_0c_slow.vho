-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "03/29/2017 12:58:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parking_Phase2 IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	CLOCK_50 : IN std_logic
	);
END parking_Phase2;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking_Phase2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|Add0~65_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|s_count[25]~31_combout\ : std_logic;
SIGNAL \t1|p1~2_combout\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Add0~55_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Add0~53_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~57_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|s_count[7]~24_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|Add0~59_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|Add0~60_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Add0~61_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|Add0~62_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|s_count[12]~25_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|s_count[13]~26_combout\ : std_logic;
SIGNAL \t1|p1~0_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|s_count[14]~27_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|s_count[15]~28_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|Add0~63_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|s_count[17]~29_combout\ : std_logic;
SIGNAL \t1|p1~1_combout\ : std_logic;
SIGNAL \t1|p1~3_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|Add0~64_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|s_count[19]~30_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|s_count[20]~32_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|s_count[21]~33_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|s_count[22]~34_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|s_count[23]~35_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Equal0~9_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~66_combout\ : std_logic;
SIGNAL \t1|Add0~68_combout\ : std_logic;
SIGNAL \t1|Add0~67\ : std_logic;
SIGNAL \t1|Add0~69_combout\ : std_logic;
SIGNAL \t1|Add0~71_combout\ : std_logic;
SIGNAL \t1|Add0~70\ : std_logic;
SIGNAL \t1|Add0~72_combout\ : std_logic;
SIGNAL \t1|Add0~74_combout\ : std_logic;
SIGNAL \t1|Add0~73\ : std_logic;
SIGNAL \t1|Add0~75_combout\ : std_logic;
SIGNAL \t1|Add0~77_combout\ : std_logic;
SIGNAL \t1|Add0~76\ : std_logic;
SIGNAL \t1|Add0~78_combout\ : std_logic;
SIGNAL \t1|Add0~80_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|pulseOut~0_combout\ : std_logic;
SIGNAL \t1|pulseOut~q\ : std_logic;
SIGNAL \t1|pulseOut~_Duplicate_1_q\ : std_logic;
SIGNAL \t3|Add0~0_combout\ : std_logic;
SIGNAL \t3|Add0~61_combout\ : std_logic;
SIGNAL \t3|Add0~1\ : std_logic;
SIGNAL \t3|Add0~2_combout\ : std_logic;
SIGNAL \t3|Add0~60_combout\ : std_logic;
SIGNAL \t3|Add0~3\ : std_logic;
SIGNAL \t3|Add0~4_combout\ : std_logic;
SIGNAL \t3|Add0~59_combout\ : std_logic;
SIGNAL \t3|Add0~5\ : std_logic;
SIGNAL \t3|Add0~6_combout\ : std_logic;
SIGNAL \t3|Add0~58_combout\ : std_logic;
SIGNAL \t3|Add0~7\ : std_logic;
SIGNAL \t3|Add0~8_combout\ : std_logic;
SIGNAL \t3|Add0~62_combout\ : std_logic;
SIGNAL \t3|Add0~9\ : std_logic;
SIGNAL \t3|Add0~10_combout\ : std_logic;
SIGNAL \t3|Add0~63_combout\ : std_logic;
SIGNAL \t3|Add0~11\ : std_logic;
SIGNAL \t3|Add0~12_combout\ : std_logic;
SIGNAL \t3|Add0~64_combout\ : std_logic;
SIGNAL \t3|Add0~13\ : std_logic;
SIGNAL \t3|Add0~14_combout\ : std_logic;
SIGNAL \t3|Add0~65_combout\ : std_logic;
SIGNAL \t3|Add0~15\ : std_logic;
SIGNAL \t3|Add0~16_combout\ : std_logic;
SIGNAL \t3|Add0~66_combout\ : std_logic;
SIGNAL \t3|Add0~17\ : std_logic;
SIGNAL \t3|Add0~18_combout\ : std_logic;
SIGNAL \t3|Add0~67_combout\ : std_logic;
SIGNAL \t3|Add0~19\ : std_logic;
SIGNAL \t3|Add0~20_combout\ : std_logic;
SIGNAL \t3|s_count[10]~24_combout\ : std_logic;
SIGNAL \t3|Add0~21\ : std_logic;
SIGNAL \t3|Add0~23\ : std_logic;
SIGNAL \t3|Add0~24_combout\ : std_logic;
SIGNAL \t3|Add0~69_combout\ : std_logic;
SIGNAL \t3|Add0~25\ : std_logic;
SIGNAL \t3|Add0~26_combout\ : std_logic;
SIGNAL \t3|Add0~70_combout\ : std_logic;
SIGNAL \t3|Add0~27\ : std_logic;
SIGNAL \t3|Add0~28_combout\ : std_logic;
SIGNAL \t3|Add0~71_combout\ : std_logic;
SIGNAL \t3|Add0~29\ : std_logic;
SIGNAL \t3|Add0~31\ : std_logic;
SIGNAL \t3|Add0~32_combout\ : std_logic;
SIGNAL \t3|s_count[16]~26_combout\ : std_logic;
SIGNAL \t3|Add0~33\ : std_logic;
SIGNAL \t3|Add0~34_combout\ : std_logic;
SIGNAL \t3|s_count[17]~27_combout\ : std_logic;
SIGNAL \t3|Add0~35\ : std_logic;
SIGNAL \t3|Add0~36_combout\ : std_logic;
SIGNAL \t3|s_count[18]~28_combout\ : std_logic;
SIGNAL \t3|Add0~37\ : std_logic;
SIGNAL \t3|Add0~38_combout\ : std_logic;
SIGNAL \t3|Add0~72_combout\ : std_logic;
SIGNAL \t3|Add0~39\ : std_logic;
SIGNAL \t3|Add0~40_combout\ : std_logic;
SIGNAL \t3|s_count[20]~29_combout\ : std_logic;
SIGNAL \t3|Add0~41\ : std_logic;
SIGNAL \t3|Add0~42_combout\ : std_logic;
SIGNAL \t3|Add0~73_combout\ : std_logic;
SIGNAL \t3|Add0~43\ : std_logic;
SIGNAL \t3|Add0~44_combout\ : std_logic;
SIGNAL \t3|s_count[22]~30_combout\ : std_logic;
SIGNAL \t3|Add0~45\ : std_logic;
SIGNAL \t3|Add0~46_combout\ : std_logic;
SIGNAL \t3|s_count[23]~32_combout\ : std_logic;
SIGNAL \t3|Add0~47\ : std_logic;
SIGNAL \t3|Add0~48_combout\ : std_logic;
SIGNAL \t3|s_count[24]~33_combout\ : std_logic;
SIGNAL \t3|Add0~49\ : std_logic;
SIGNAL \t3|Add0~50_combout\ : std_logic;
SIGNAL \t3|s_count[25]~34_combout\ : std_logic;
SIGNAL \t3|Add0~51\ : std_logic;
SIGNAL \t3|Add0~52_combout\ : std_logic;
SIGNAL \t3|s_count[26]~35_combout\ : std_logic;
SIGNAL \t3|Add0~53\ : std_logic;
SIGNAL \t3|Add0~54_combout\ : std_logic;
SIGNAL \t3|Add0~74_combout\ : std_logic;
SIGNAL \t3|Add0~55\ : std_logic;
SIGNAL \t3|Add0~56_combout\ : std_logic;
SIGNAL \t3|s_count[28]~31_combout\ : std_logic;
SIGNAL \t3|Equal0~8_combout\ : std_logic;
SIGNAL \t3|Equal0~6_combout\ : std_logic;
SIGNAL \t3|Equal0~7_combout\ : std_logic;
SIGNAL \t3|Equal0~9_combout\ : std_logic;
SIGNAL \t3|Add0~30_combout\ : std_logic;
SIGNAL \t3|s_count[15]~25_combout\ : std_logic;
SIGNAL \t3|p1~0_combout\ : std_logic;
SIGNAL \t3|p1~1_combout\ : std_logic;
SIGNAL \t3|p1~2_combout\ : std_logic;
SIGNAL \t3|p1~3_combout\ : std_logic;
SIGNAL \t3|Add0~22_combout\ : std_logic;
SIGNAL \t3|Add0~68_combout\ : std_logic;
SIGNAL \t3|Equal0~2_combout\ : std_logic;
SIGNAL \t3|Equal0~1_combout\ : std_logic;
SIGNAL \t3|Equal0~3_combout\ : std_logic;
SIGNAL \t3|Equal0~0_combout\ : std_logic;
SIGNAL \t3|Equal0~4_combout\ : std_logic;
SIGNAL \t3|Add0~57\ : std_logic;
SIGNAL \t3|Add0~75_combout\ : std_logic;
SIGNAL \t3|Add0~77_combout\ : std_logic;
SIGNAL \t3|Add0~76\ : std_logic;
SIGNAL \t3|Add0~78_combout\ : std_logic;
SIGNAL \t3|Add0~80_combout\ : std_logic;
SIGNAL \t3|Equal0~5_combout\ : std_logic;
SIGNAL \t3|pulseOut~0_combout\ : std_logic;
SIGNAL \t3|pulseOut~q\ : std_logic;
SIGNAL \t0|p1~5_combout\ : std_logic;
SIGNAL \t0|Add0~23\ : std_logic;
SIGNAL \t0|Add0~24_combout\ : std_logic;
SIGNAL \t0|Add0~69_combout\ : std_logic;
SIGNAL \t0|Add0~25\ : std_logic;
SIGNAL \t0|Add0~26_combout\ : std_logic;
SIGNAL \t0|Add0~70_combout\ : std_logic;
SIGNAL \t0|Add0~27\ : std_logic;
SIGNAL \t0|Add0~28_combout\ : std_logic;
SIGNAL \t0|s_count[13]~2_combout\ : std_logic;
SIGNAL \t0|Add0~29\ : std_logic;
SIGNAL \t0|Add0~30_combout\ : std_logic;
SIGNAL \t0|s_count[14]~3_combout\ : std_logic;
SIGNAL \t0|p1~0_combout\ : std_logic;
SIGNAL \t0|Add0~31\ : std_logic;
SIGNAL \t0|Add0~32_combout\ : std_logic;
SIGNAL \t0|Add0~71_combout\ : std_logic;
SIGNAL \t0|Add0~33\ : std_logic;
SIGNAL \t0|Add0~34_combout\ : std_logic;
SIGNAL \t0|s_count[16]~4_combout\ : std_logic;
SIGNAL \t0|Add0~35\ : std_logic;
SIGNAL \t0|Add0~36_combout\ : std_logic;
SIGNAL \t0|Add0~72_combout\ : std_logic;
SIGNAL \t0|Add0~37\ : std_logic;
SIGNAL \t0|Add0~38_combout\ : std_logic;
SIGNAL \t0|s_count[18]~5_combout\ : std_logic;
SIGNAL \t0|Add0~39\ : std_logic;
SIGNAL \t0|Add0~40_combout\ : std_logic;
SIGNAL \t0|s_count[19]~6_combout\ : std_logic;
SIGNAL \t0|Add0~41\ : std_logic;
SIGNAL \t0|Add0~42_combout\ : std_logic;
SIGNAL \t0|Add0~73_combout\ : std_logic;
SIGNAL \t0|Add0~43\ : std_logic;
SIGNAL \t0|Add0~44_combout\ : std_logic;
SIGNAL \t0|Add0~74_combout\ : std_logic;
SIGNAL \t0|Add0~45\ : std_logic;
SIGNAL \t0|Add0~46_combout\ : std_logic;
SIGNAL \t0|s_count[22]~7_combout\ : std_logic;
SIGNAL \t0|p1~1_combout\ : std_logic;
SIGNAL \t0|Add0~47\ : std_logic;
SIGNAL \t0|Add0~48_combout\ : std_logic;
SIGNAL \t0|s_count[23]~8_combout\ : std_logic;
SIGNAL \t0|Add0~49\ : std_logic;
SIGNAL \t0|Add0~50_combout\ : std_logic;
SIGNAL \t0|s_count[24]~9_combout\ : std_logic;
SIGNAL \t0|p1~2_combout\ : std_logic;
SIGNAL \t0|p1~3_combout\ : std_logic;
SIGNAL \t0|p1~4_combout\ : std_logic;
SIGNAL \t0|Add0~51\ : std_logic;
SIGNAL \t0|Add0~52_combout\ : std_logic;
SIGNAL \t0|Add0~75_combout\ : std_logic;
SIGNAL \t0|Add0~53\ : std_logic;
SIGNAL \t0|Add0~54_combout\ : std_logic;
SIGNAL \t0|s_count[26]~10_combout\ : std_logic;
SIGNAL \t0|Add0~55\ : std_logic;
SIGNAL \t0|Add0~56_combout\ : std_logic;
SIGNAL \t0|s_count[27]~11_combout\ : std_logic;
SIGNAL \t0|Add0~57\ : std_logic;
SIGNAL \t0|Add0~58_combout\ : std_logic;
SIGNAL \t0|s_count[28]~12_combout\ : std_logic;
SIGNAL \t0|Add0~59\ : std_logic;
SIGNAL \t0|Add0~76_combout\ : std_logic;
SIGNAL \t0|Add0~78_combout\ : std_logic;
SIGNAL \t0|Add0~77\ : std_logic;
SIGNAL \t0|Add0~79_combout\ : std_logic;
SIGNAL \t0|Add0~81_combout\ : std_logic;
SIGNAL \t0|Equal0~6_combout\ : std_logic;
SIGNAL \t0|Add0~2_combout\ : std_logic;
SIGNAL \t0|Add0~63_combout\ : std_logic;
SIGNAL \t0|Add0~3\ : std_logic;
SIGNAL \t0|Add0~4_combout\ : std_logic;
SIGNAL \t0|Add0~62_combout\ : std_logic;
SIGNAL \t0|Add0~5\ : std_logic;
SIGNAL \t0|Add0~6_combout\ : std_logic;
SIGNAL \t0|Add0~61_combout\ : std_logic;
SIGNAL \t0|Add0~7\ : std_logic;
SIGNAL \t0|Add0~8_combout\ : std_logic;
SIGNAL \t0|Add0~60_combout\ : std_logic;
SIGNAL \t0|Equal0~4_combout\ : std_logic;
SIGNAL \t0|Equal0~7_combout\ : std_logic;
SIGNAL \t0|Add0~9\ : std_logic;
SIGNAL \t0|Add0~10_combout\ : std_logic;
SIGNAL \t0|Add0~64_combout\ : std_logic;
SIGNAL \t0|Add0~11\ : std_logic;
SIGNAL \t0|Add0~12_combout\ : std_logic;
SIGNAL \t0|Add0~65_combout\ : std_logic;
SIGNAL \t0|Add0~13\ : std_logic;
SIGNAL \t0|Add0~14_combout\ : std_logic;
SIGNAL \t0|Add0~66_combout\ : std_logic;
SIGNAL \t0|Equal0~5_combout\ : std_logic;
SIGNAL \t0|Equal0~8_combout\ : std_logic;
SIGNAL \t0|Equal0~9_combout\ : std_logic;
SIGNAL \t0|Add0~15\ : std_logic;
SIGNAL \t0|Add0~16_combout\ : std_logic;
SIGNAL \t0|Add0~67_combout\ : std_logic;
SIGNAL \t0|Add0~17\ : std_logic;
SIGNAL \t0|Add0~18_combout\ : std_logic;
SIGNAL \t0|s_count[8]~0_combout\ : std_logic;
SIGNAL \t0|Add0~19\ : std_logic;
SIGNAL \t0|Add0~20_combout\ : std_logic;
SIGNAL \t0|Add0~68_combout\ : std_logic;
SIGNAL \t0|Add0~21\ : std_logic;
SIGNAL \t0|Add0~22_combout\ : std_logic;
SIGNAL \t0|s_count[10]~1_combout\ : std_logic;
SIGNAL \t0|Equal0~0_combout\ : std_logic;
SIGNAL \t0|Equal0~2_combout\ : std_logic;
SIGNAL \t0|Equal0~1_combout\ : std_logic;
SIGNAL \t0|Equal0~3_combout\ : std_logic;
SIGNAL \t0|pulseOut~0_combout\ : std_logic;
SIGNAL \t0|pulseOut~q\ : std_logic;
SIGNAL \t2|Add0~0_combout\ : std_logic;
SIGNAL \t2|Add0~57_combout\ : std_logic;
SIGNAL \t2|Add0~1\ : std_logic;
SIGNAL \t2|Add0~2_combout\ : std_logic;
SIGNAL \t2|Add0~56_combout\ : std_logic;
SIGNAL \t2|Add0~3\ : std_logic;
SIGNAL \t2|Add0~4_combout\ : std_logic;
SIGNAL \t2|Add0~55_combout\ : std_logic;
SIGNAL \t2|Add0~5\ : std_logic;
SIGNAL \t2|Add0~6_combout\ : std_logic;
SIGNAL \t2|Add0~54_combout\ : std_logic;
SIGNAL \t2|Add0~7\ : std_logic;
SIGNAL \t2|Add0~8_combout\ : std_logic;
SIGNAL \t2|Add0~58_combout\ : std_logic;
SIGNAL \t2|Add0~9\ : std_logic;
SIGNAL \t2|Add0~10_combout\ : std_logic;
SIGNAL \t2|Add0~59_combout\ : std_logic;
SIGNAL \t2|Add0~11\ : std_logic;
SIGNAL \t2|Add0~12_combout\ : std_logic;
SIGNAL \t2|Add0~60_combout\ : std_logic;
SIGNAL \t2|Add0~13\ : std_logic;
SIGNAL \t2|Add0~14_combout\ : std_logic;
SIGNAL \t2|Add0~61_combout\ : std_logic;
SIGNAL \t2|Add0~15\ : std_logic;
SIGNAL \t2|Add0~16_combout\ : std_logic;
SIGNAL \t2|s_count[8]~1_combout\ : std_logic;
SIGNAL \t2|Add0~17\ : std_logic;
SIGNAL \t2|Add0~18_combout\ : std_logic;
SIGNAL \t2|Add0~62_combout\ : std_logic;
SIGNAL \t2|Add0~19\ : std_logic;
SIGNAL \t2|Add0~20_combout\ : std_logic;
SIGNAL \t2|Add0~63_combout\ : std_logic;
SIGNAL \t2|Add0~21\ : std_logic;
SIGNAL \t2|Add0~22_combout\ : std_logic;
SIGNAL \t2|Add0~64_combout\ : std_logic;
SIGNAL \t2|Add0~23\ : std_logic;
SIGNAL \t2|Add0~24_combout\ : std_logic;
SIGNAL \t2|Add0~65_combout\ : std_logic;
SIGNAL \t2|Add0~25\ : std_logic;
SIGNAL \t2|Add0~26_combout\ : std_logic;
SIGNAL \t2|s_count[13]~2_combout\ : std_logic;
SIGNAL \t2|Add0~27\ : std_logic;
SIGNAL \t2|Add0~28_combout\ : std_logic;
SIGNAL \t2|s_count[14]~3_combout\ : std_logic;
SIGNAL \t2|Add0~29\ : std_logic;
SIGNAL \t2|Add0~30_combout\ : std_logic;
SIGNAL \t2|s_count[15]~4_combout\ : std_logic;
SIGNAL \t2|Add0~31\ : std_logic;
SIGNAL \t2|Add0~32_combout\ : std_logic;
SIGNAL \t2|s_count[16]~5_combout\ : std_logic;
SIGNAL \t2|Add0~33\ : std_logic;
SIGNAL \t2|Add0~34_combout\ : std_logic;
SIGNAL \t2|Add0~66_combout\ : std_logic;
SIGNAL \t2|Add0~35\ : std_logic;
SIGNAL \t2|Add0~36_combout\ : std_logic;
SIGNAL \t2|s_count[18]~6_combout\ : std_logic;
SIGNAL \t2|Add0~37\ : std_logic;
SIGNAL \t2|Add0~38_combout\ : std_logic;
SIGNAL \t2|Add0~67_combout\ : std_logic;
SIGNAL \t2|Add0~39\ : std_logic;
SIGNAL \t2|Add0~40_combout\ : std_logic;
SIGNAL \t2|s_count[20]~7_combout\ : std_logic;
SIGNAL \t2|Add0~41\ : std_logic;
SIGNAL \t2|Add0~42_combout\ : std_logic;
SIGNAL \t2|s_count[21]~8_combout\ : std_logic;
SIGNAL \t2|Add0~43\ : std_logic;
SIGNAL \t2|Add0~44_combout\ : std_logic;
SIGNAL \t2|s_count[22]~9_combout\ : std_logic;
SIGNAL \t2|Add0~45\ : std_logic;
SIGNAL \t2|Add0~46_combout\ : std_logic;
SIGNAL \t2|s_count[23]~10_combout\ : std_logic;
SIGNAL \t2|Add0~47\ : std_logic;
SIGNAL \t2|Add0~48_combout\ : std_logic;
SIGNAL \t2|s_count[24]~11_combout\ : std_logic;
SIGNAL \t2|Equal0~8_combout\ : std_logic;
SIGNAL \t2|Equal0~6_combout\ : std_logic;
SIGNAL \t2|Equal0~7_combout\ : std_logic;
SIGNAL \t2|Equal0~9_combout\ : std_logic;
SIGNAL \t2|s_count[30]~0_combout\ : std_logic;
SIGNAL \t2|Add0~49\ : std_logic;
SIGNAL \t2|Add0~50_combout\ : std_logic;
SIGNAL \t2|Add0~68_combout\ : std_logic;
SIGNAL \t2|Add0~51\ : std_logic;
SIGNAL \t2|Add0~52_combout\ : std_logic;
SIGNAL \t2|s_count[26]~12_combout\ : std_logic;
SIGNAL \t2|Add0~53\ : std_logic;
SIGNAL \t2|Add0~69_combout\ : std_logic;
SIGNAL \t2|Add0~71_combout\ : std_logic;
SIGNAL \t2|Add0~70\ : std_logic;
SIGNAL \t2|Add0~72_combout\ : std_logic;
SIGNAL \t2|Add0~74_combout\ : std_logic;
SIGNAL \t2|Add0~73\ : std_logic;
SIGNAL \t2|Add0~75_combout\ : std_logic;
SIGNAL \t2|Add0~77_combout\ : std_logic;
SIGNAL \t2|Add0~76\ : std_logic;
SIGNAL \t2|Add0~78_combout\ : std_logic;
SIGNAL \t2|Add0~80_combout\ : std_logic;
SIGNAL \t2|Equal0~3_combout\ : std_logic;
SIGNAL \t2|Equal0~1_combout\ : std_logic;
SIGNAL \t2|Equal0~2_combout\ : std_logic;
SIGNAL \t2|Equal0~0_combout\ : std_logic;
SIGNAL \t2|Equal0~4_combout\ : std_logic;
SIGNAL \t2|Equal0~5_combout\ : std_logic;
SIGNAL \t2|p1~0_combout\ : std_logic;
SIGNAL \t2|p1~2_combout\ : std_logic;
SIGNAL \t2|p1~1_combout\ : std_logic;
SIGNAL \t2|p1~3_combout\ : std_logic;
SIGNAL \t2|pulseOut~0_combout\ : std_logic;
SIGNAL \t2|pulseOut~q\ : std_logic;
SIGNAL \t2|pulseOut~_Duplicate_1_q\ : std_logic;
SIGNAL \f1|Add0~0_combout\ : std_logic;
SIGNAL \f1|Add0~1\ : std_logic;
SIGNAL \f1|Add0~2_combout\ : std_logic;
SIGNAL \f1|Add0~3\ : std_logic;
SIGNAL \f1|Add0~4_combout\ : std_logic;
SIGNAL \f1|Add0~5\ : std_logic;
SIGNAL \f1|Add0~6_combout\ : std_logic;
SIGNAL \f1|Add0~7\ : std_logic;
SIGNAL \f1|Add0~8_combout\ : std_logic;
SIGNAL \f1|Add0~9\ : std_logic;
SIGNAL \f1|Add0~10_combout\ : std_logic;
SIGNAL \f1|Add0~11\ : std_logic;
SIGNAL \f1|Add0~12_combout\ : std_logic;
SIGNAL \f1|s_count~7_combout\ : std_logic;
SIGNAL \f1|Add0~13\ : std_logic;
SIGNAL \f1|Add0~14_combout\ : std_logic;
SIGNAL \f1|Add0~15\ : std_logic;
SIGNAL \f1|Add0~16_combout\ : std_logic;
SIGNAL \f1|Add0~17\ : std_logic;
SIGNAL \f1|Add0~18_combout\ : std_logic;
SIGNAL \f1|Add0~19\ : std_logic;
SIGNAL \f1|Add0~20_combout\ : std_logic;
SIGNAL \f1|Add0~21\ : std_logic;
SIGNAL \f1|Add0~22_combout\ : std_logic;
SIGNAL \f1|s_count~6_combout\ : std_logic;
SIGNAL \f1|Add0~23\ : std_logic;
SIGNAL \f1|Add0~24_combout\ : std_logic;
SIGNAL \f1|s_count~5_combout\ : std_logic;
SIGNAL \f1|Add0~25\ : std_logic;
SIGNAL \f1|Add0~26_combout\ : std_logic;
SIGNAL \f1|s_count~4_combout\ : std_logic;
SIGNAL \f1|Add0~27\ : std_logic;
SIGNAL \f1|Add0~28_combout\ : std_logic;
SIGNAL \f1|s_count~11_combout\ : std_logic;
SIGNAL \f1|Add0~29\ : std_logic;
SIGNAL \f1|Add0~30_combout\ : std_logic;
SIGNAL \f1|Add0~31\ : std_logic;
SIGNAL \f1|Add0~32_combout\ : std_logic;
SIGNAL \f1|s_count~10_combout\ : std_logic;
SIGNAL \f1|Add0~33\ : std_logic;
SIGNAL \f1|Add0~34_combout\ : std_logic;
SIGNAL \f1|Add0~35\ : std_logic;
SIGNAL \f1|Add0~36_combout\ : std_logic;
SIGNAL \f1|s_count~3_combout\ : std_logic;
SIGNAL \f1|Add0~37\ : std_logic;
SIGNAL \f1|Add0~38_combout\ : std_logic;
SIGNAL \f1|s_count~2_combout\ : std_logic;
SIGNAL \f1|Add0~39\ : std_logic;
SIGNAL \f1|Add0~40_combout\ : std_logic;
SIGNAL \f1|s_count~1_combout\ : std_logic;
SIGNAL \f1|Add0~41\ : std_logic;
SIGNAL \f1|Add0~42_combout\ : std_logic;
SIGNAL \f1|s_count~0_combout\ : std_logic;
SIGNAL \f1|Add0~43\ : std_logic;
SIGNAL \f1|Add0~44_combout\ : std_logic;
SIGNAL \f1|s_count~9_combout\ : std_logic;
SIGNAL \f1|Add0~45\ : std_logic;
SIGNAL \f1|Add0~46_combout\ : std_logic;
SIGNAL \f1|Add0~47\ : std_logic;
SIGNAL \f1|Add0~48_combout\ : std_logic;
SIGNAL \f1|s_count~8_combout\ : std_logic;
SIGNAL \f1|Equal0~7_combout\ : std_logic;
SIGNAL \f1|Equal0~8_combout\ : std_logic;
SIGNAL \f1|Add0~49\ : std_logic;
SIGNAL \f1|Add0~50_combout\ : std_logic;
SIGNAL \f1|Add0~51\ : std_logic;
SIGNAL \f1|Add0~52_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Add0~53\ : std_logic;
SIGNAL \f1|Add0~54_combout\ : std_logic;
SIGNAL \f1|Add0~55\ : std_logic;
SIGNAL \f1|Add0~56_combout\ : std_logic;
SIGNAL \f1|Add0~57\ : std_logic;
SIGNAL \f1|Add0~58_combout\ : std_logic;
SIGNAL \f1|Add0~59\ : std_logic;
SIGNAL \f1|Add0~60_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal0~9_combout\ : std_logic;
SIGNAL \f1|Equal1~0_combout\ : std_logic;
SIGNAL \f1|Equal1~1_combout\ : std_logic;
SIGNAL \f1|Equal1~2_combout\ : std_logic;
SIGNAL \f1|clkOut~0_combout\ : std_logic;
SIGNAL \f1|clkOut~q\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \t3|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t0|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \f1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t2|s_count\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|pulseOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|pulseOut~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X82_Y63_N16
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|s_count\(23) & (!\t1|Add0~45\)) # (!\t1|s_count\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X82_Y63_N18
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|s_count\(24) & (\t1|Add0~47\ $ (GND))) # (!\t1|s_count\(24) & (!\t1|Add0~47\ & VCC))
-- \t1|Add0~49\ = CARRY((\t1|s_count\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X82_Y67_N10
\t1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~65_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~48_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|Add0~65_combout\);

-- Location: FF_X82_Y67_N11
\t1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(24));

-- Location: LCCOMB_X82_Y63_N20
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|s_count\(25) & (!\t1|Add0~49\)) # (!\t1|s_count\(25) & ((\t1|Add0~49\) # (GND)))
-- \t1|Add0~51\ = CARRY((!\t1|Add0~49\) # (!\t1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X83_Y63_N6
\t1|s_count[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[25]~31_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~50_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~50_combout\,
	combout => \t1|s_count[25]~31_combout\);

-- Location: FF_X83_Y63_N7
\t1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[25]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(25));

-- Location: LCCOMB_X83_Y63_N24
\t1|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~2_combout\ = (\t1|s_count\(23)) # ((\t1|s_count\(22)) # ((\t1|s_count\(21)) # (\t1|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(23),
	datab => \t1|s_count\(22),
	datac => \t1|s_count\(21),
	datad => \t1|s_count\(20),
	combout => \t1|p1~2_combout\);

-- Location: LCCOMB_X82_Y64_N2
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|s_count\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X83_Y64_N20
\t1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~55_combout\ = (\t1|Add0~0_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~0_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~55_combout\);

-- Location: FF_X83_Y64_N21
\t1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(0));

-- Location: LCCOMB_X82_Y64_N4
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|s_count\(1) & (!\t1|Add0~1\)) # (!\t1|s_count\(1) & ((\t1|Add0~1\) # (GND)))
-- \t1|Add0~3\ = CARRY((!\t1|Add0~1\) # (!\t1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X83_Y64_N14
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|Add0~2_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~2_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~54_combout\);

-- Location: FF_X83_Y64_N15
\t1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(1));

-- Location: LCCOMB_X82_Y64_N6
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|s_count\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|s_count\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|s_count\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: LCCOMB_X82_Y64_N0
\t1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~53_combout\ = (\t1|Add0~4_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Add0~4_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~53_combout\);

-- Location: FF_X82_Y64_N1
\t1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(2));

-- Location: LCCOMB_X82_Y64_N8
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|s_count\(3) & (!\t1|Add0~5\)) # (!\t1|s_count\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X83_Y64_N24
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|Add0~6_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Add0~6_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~52_combout\);

-- Location: FF_X83_Y64_N25
\t1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(3));

-- Location: LCCOMB_X82_Y64_N10
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|s_count\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|s_count\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|s_count\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: LCCOMB_X82_Y67_N14
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~8_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~8_combout\,
	combout => \t1|Add0~56_combout\);

-- Location: FF_X82_Y67_N15
\t1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(4));

-- Location: LCCOMB_X82_Y64_N12
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|s_count\(5) & (!\t1|Add0~9\)) # (!\t1|s_count\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X82_Y67_N16
\t1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~57_combout\ = (\t1|Add0~10_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~10_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~57_combout\);

-- Location: FF_X82_Y67_N17
\t1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(5));

-- Location: LCCOMB_X82_Y64_N14
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|s_count\(6) & (\t1|Add0~11\ $ (GND))) # (!\t1|s_count\(6) & (!\t1|Add0~11\ & VCC))
-- \t1|Add0~13\ = CARRY((\t1|s_count\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X82_Y67_N30
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~12_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~12_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~58_combout\);

-- Location: FF_X82_Y67_N31
\t1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(6));

-- Location: LCCOMB_X82_Y64_N16
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|s_count\(7) & (!\t1|Add0~13\)) # (!\t1|s_count\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X83_Y64_N16
\t1|s_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[7]~24_combout\ = (\t1|Add0~14_combout\ & ((\t1|pulseOut~0_combout\) # ((\t1|Equal0~9_combout\ & !\KEY[0]~input_o\)))) # (!\t1|Add0~14_combout\ & (\t1|Equal0~9_combout\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~14_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|pulseOut~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \t1|s_count[7]~24_combout\);

-- Location: FF_X83_Y64_N17
\t1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(7));

-- Location: LCCOMB_X82_Y64_N18
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|s_count\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|s_count\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|s_count\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X82_Y67_N28
\t1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~59_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~16_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~16_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~59_combout\);

-- Location: FF_X82_Y67_N29
\t1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(8));

-- Location: LCCOMB_X82_Y64_N20
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|s_count\(9) & (!\t1|Add0~17\)) # (!\t1|s_count\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X83_Y64_N4
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = (\t1|Add0~18_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~18_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~60_combout\);

-- Location: FF_X83_Y64_N5
\t1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(9));

-- Location: LCCOMB_X82_Y64_N22
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|s_count\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|s_count\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|s_count\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: LCCOMB_X83_Y64_N10
\t1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~61_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~20_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|Add0~20_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~61_combout\);

-- Location: FF_X83_Y64_N11
\t1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(10));

-- Location: LCCOMB_X82_Y64_N24
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|s_count\(11) & (!\t1|Add0~21\)) # (!\t1|s_count\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X83_Y64_N8
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = (\t1|Add0~22_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~22_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~62_combout\);

-- Location: FF_X83_Y64_N9
\t1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(11));

-- Location: LCCOMB_X82_Y64_N26
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|s_count\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|s_count\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|s_count\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X83_Y64_N22
\t1|s_count[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[12]~25_combout\ = (\t1|Add0~24_combout\ & ((\t1|pulseOut~0_combout\) # ((\t1|Equal0~9_combout\ & !\KEY[0]~input_o\)))) # (!\t1|Add0~24_combout\ & (\t1|Equal0~9_combout\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~24_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|pulseOut~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \t1|s_count[12]~25_combout\);

-- Location: FF_X83_Y64_N23
\t1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(12));

-- Location: LCCOMB_X82_Y64_N28
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|s_count\(13) & (!\t1|Add0~25\)) # (!\t1|s_count\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X83_Y64_N28
\t1|s_count[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[13]~26_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~26_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~26_combout\,
	combout => \t1|s_count[13]~26_combout\);

-- Location: FF_X83_Y64_N29
\t1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(13));

-- Location: LCCOMB_X83_Y64_N30
\t1|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~0_combout\ = ((\t1|s_count\(7)) # ((\t1|s_count\(12)) # (\t1|s_count\(13)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|s_count\(7),
	datac => \t1|s_count\(12),
	datad => \t1|s_count\(13),
	combout => \t1|p1~0_combout\);

-- Location: LCCOMB_X82_Y64_N30
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|s_count\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|s_count\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|s_count\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X83_Y63_N0
\t1|s_count[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[14]~27_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~28_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|s_count[14]~27_combout\);

-- Location: FF_X83_Y63_N1
\t1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[14]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(14));

-- Location: LCCOMB_X82_Y63_N0
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|s_count\(15) & (!\t1|Add0~29\)) # (!\t1|s_count\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X83_Y63_N30
\t1|s_count[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[15]~28_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~30_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|s_count[15]~28_combout\);

-- Location: FF_X83_Y63_N31
\t1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(15));

-- Location: LCCOMB_X82_Y63_N2
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|s_count\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|s_count\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|s_count\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X83_Y64_N6
\t1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~63_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~32_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~32_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~63_combout\);

-- Location: FF_X83_Y64_N7
\t1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(16));

-- Location: LCCOMB_X82_Y63_N4
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|s_count\(17) & (!\t1|Add0~33\)) # (!\t1|s_count\(17) & ((\t1|Add0~33\) # (GND)))
-- \t1|Add0~35\ = CARRY((!\t1|Add0~33\) # (!\t1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: LCCOMB_X83_Y63_N8
\t1|s_count[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[17]~29_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~34_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|s_count[17]~29_combout\);

-- Location: FF_X83_Y63_N9
\t1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(17));

-- Location: LCCOMB_X83_Y63_N12
\t1|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~1_combout\ = (\t1|s_count\(15)) # ((\t1|s_count\(14)) # ((\t1|s_count\(17)) # (\t1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datab => \t1|s_count\(14),
	datac => \t1|s_count\(17),
	datad => \t1|s_count\(19),
	combout => \t1|p1~1_combout\);

-- Location: LCCOMB_X83_Y63_N14
\t1|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~3_combout\ = (\t1|s_count\(25)) # ((\t1|p1~2_combout\) # ((\t1|p1~0_combout\) # (\t1|p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(25),
	datab => \t1|p1~2_combout\,
	datac => \t1|p1~0_combout\,
	datad => \t1|p1~1_combout\,
	combout => \t1|p1~3_combout\);

-- Location: LCCOMB_X82_Y63_N6
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|s_count\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|s_count\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|s_count\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X82_Y67_N0
\t1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~64_combout\ = (\t1|Add0~36_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~36_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~64_combout\);

-- Location: FF_X82_Y67_N1
\t1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(18));

-- Location: LCCOMB_X82_Y63_N8
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|s_count\(19) & (!\t1|Add0~37\)) # (!\t1|s_count\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X83_Y63_N18
\t1|s_count[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[19]~30_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~38_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|s_count[19]~30_combout\);

-- Location: FF_X83_Y63_N19
\t1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[19]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(19));

-- Location: LCCOMB_X82_Y63_N10
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|s_count\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|s_count\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|s_count\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X83_Y63_N28
\t1|s_count[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[20]~32_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~40_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|s_count[20]~32_combout\);

-- Location: FF_X83_Y63_N29
\t1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[20]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(20));

-- Location: LCCOMB_X82_Y63_N12
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|s_count\(21) & (!\t1|Add0~41\)) # (!\t1|s_count\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X83_Y63_N22
\t1|s_count[21]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[21]~33_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~42_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|s_count[21]~33_combout\);

-- Location: FF_X83_Y63_N23
\t1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[21]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(21));

-- Location: LCCOMB_X82_Y63_N14
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|s_count\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|s_count\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|s_count\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X83_Y63_N16
\t1|s_count[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[22]~34_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~44_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & (\t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~44_combout\,
	combout => \t1|s_count[22]~34_combout\);

-- Location: FF_X83_Y63_N17
\t1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[22]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(22));

-- Location: LCCOMB_X83_Y63_N26
\t1|s_count[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[23]~35_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~46_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|pulseOut~0_combout\ & (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|Add0~46_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|s_count[23]~35_combout\);

-- Location: FF_X83_Y63_N27
\t1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(23));

-- Location: LCCOMB_X83_Y63_N4
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (\t1|s_count\(23) & (\t1|s_count\(22) & (\t1|s_count\(21) & \t1|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(23),
	datab => \t1|s_count\(22),
	datac => \t1|s_count\(21),
	datad => \t1|s_count\(25),
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X83_Y64_N18
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (\t1|s_count\(7) & (\t1|s_count\(13) & (\t1|s_count\(12) & \t1|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(7),
	datab => \t1|s_count\(13),
	datac => \t1|s_count\(12),
	datad => \t1|s_count\(14),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X83_Y63_N10
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (\t1|s_count\(15) & (\t1|s_count\(20) & (\t1|s_count\(17) & \t1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datab => \t1|s_count\(20),
	datac => \t1|s_count\(17),
	datad => \t1|s_count\(19),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y67_N6
\t1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~9_combout\ = (\t1|Equal0~8_combout\ & (\t1|Equal0~6_combout\ & (\t1|Equal0~7_combout\ & \t1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \t1|Equal0~6_combout\,
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y63_N22
\t1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~66_combout\ = (\t1|s_count\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|s_count\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~67\ = CARRY((\t1|s_count\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~66_combout\,
	cout => \t1|Add0~67\);

-- Location: LCCOMB_X82_Y67_N4
\t1|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~68_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~66_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Add0~66_combout\,
	combout => \t1|Add0~68_combout\);

-- Location: FF_X82_Y67_N5
\t1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(26));

-- Location: LCCOMB_X82_Y63_N24
\t1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~69_combout\ = (\t1|s_count\(27) & (!\t1|Add0~67\)) # (!\t1|s_count\(27) & ((\t1|Add0~67\) # (GND)))
-- \t1|Add0~70\ = CARRY((!\t1|Add0~67\) # (!\t1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(27),
	datad => VCC,
	cin => \t1|Add0~67\,
	combout => \t1|Add0~69_combout\,
	cout => \t1|Add0~70\);

-- Location: LCCOMB_X82_Y67_N22
\t1|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~71_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~69_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Add0~69_combout\,
	combout => \t1|Add0~71_combout\);

-- Location: FF_X82_Y67_N23
\t1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(27));

-- Location: LCCOMB_X82_Y63_N26
\t1|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~72_combout\ = (\t1|s_count\(28) & (\t1|Add0~70\ $ (GND))) # (!\t1|s_count\(28) & (!\t1|Add0~70\ & VCC))
-- \t1|Add0~73\ = CARRY((\t1|s_count\(28) & !\t1|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(28),
	datad => VCC,
	cin => \t1|Add0~70\,
	combout => \t1|Add0~72_combout\,
	cout => \t1|Add0~73\);

-- Location: LCCOMB_X82_Y67_N8
\t1|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~74_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~72_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~72_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~74_combout\);

-- Location: FF_X82_Y67_N9
\t1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(28));

-- Location: LCCOMB_X82_Y63_N28
\t1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~75_combout\ = (\t1|s_count\(29) & (!\t1|Add0~73\)) # (!\t1|s_count\(29) & ((\t1|Add0~73\) # (GND)))
-- \t1|Add0~76\ = CARRY((!\t1|Add0~73\) # (!\t1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(29),
	datad => VCC,
	cin => \t1|Add0~73\,
	combout => \t1|Add0~75_combout\,
	cout => \t1|Add0~76\);

-- Location: LCCOMB_X83_Y63_N20
\t1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~77_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~75_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~75_combout\,
	combout => \t1|Add0~77_combout\);

-- Location: FF_X83_Y63_N21
\t1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(29));

-- Location: LCCOMB_X82_Y63_N30
\t1|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~78_combout\ = \t1|Add0~76\ $ (!\t1|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|s_count\(30),
	cin => \t1|Add0~76\,
	combout => \t1|Add0~78_combout\);

-- Location: LCCOMB_X82_Y67_N18
\t1|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~80_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~78_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~78_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Add0~80_combout\);

-- Location: FF_X82_Y67_N19
\t1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(30));

-- Location: LCCOMB_X82_Y67_N26
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|s_count\(6) & (!\t1|s_count\(8) & (!\t1|s_count\(4) & !\t1|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(6),
	datab => \t1|s_count\(8),
	datac => \t1|s_count\(4),
	datad => \t1|s_count\(5),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y67_N24
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (!\t1|s_count\(27) & (!\t1|s_count\(18) & (!\t1|s_count\(26) & !\t1|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(27),
	datab => \t1|s_count\(18),
	datac => \t1|s_count\(26),
	datad => \t1|s_count\(24),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X83_Y64_N12
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (!\t1|s_count\(10) & (!\t1|s_count\(11) & (!\t1|s_count\(9) & !\t1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(10),
	datab => \t1|s_count\(11),
	datac => \t1|s_count\(9),
	datad => \t1|s_count\(16),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X83_Y64_N26
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|s_count\(0) & (!\t1|s_count\(3) & (!\t1|s_count\(2) & !\t1|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(0),
	datab => \t1|s_count\(3),
	datac => \t1|s_count\(2),
	datad => \t1|s_count\(1),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y67_N2
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~1_combout\ & (\t1|Equal0~3_combout\ & (\t1|Equal0~2_combout\ & \t1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datab => \t1|Equal0~3_combout\,
	datac => \t1|Equal0~2_combout\,
	datad => \t1|Equal0~0_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y67_N12
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (!\t1|s_count\(28) & (!\t1|s_count\(30) & (!\t1|s_count\(29) & \t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(28),
	datab => \t1|s_count\(30),
	datac => \t1|s_count\(29),
	datad => \t1|Equal0~4_combout\,
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X82_Y67_N20
\t1|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut~0_combout\ = (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|pulseOut~0_combout\);

-- Location: DDIOOUTCELL_X69_Y73_N18
\t1|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut~q\);

-- Location: FF_X82_Y67_N21
\t1|pulseOut~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut~_Duplicate_1_q\);

-- Location: LCCOMB_X91_Y71_N2
\t3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~0_combout\ = \t3|s_count\(0) $ (VCC)
-- \t3|Add0~1\ = CARRY(\t3|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(0),
	datad => VCC,
	combout => \t3|Add0~0_combout\,
	cout => \t3|Add0~1\);

-- Location: LCCOMB_X90_Y71_N14
\t3|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~61_combout\ = (\t3|Add0~0_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Add0~0_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~61_combout\);

-- Location: FF_X90_Y71_N15
\t3|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(0));

-- Location: LCCOMB_X91_Y71_N4
\t3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~2_combout\ = (\t3|s_count\(1) & (!\t3|Add0~1\)) # (!\t3|s_count\(1) & ((\t3|Add0~1\) # (GND)))
-- \t3|Add0~3\ = CARRY((!\t3|Add0~1\) # (!\t3|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(1),
	datad => VCC,
	cin => \t3|Add0~1\,
	combout => \t3|Add0~2_combout\,
	cout => \t3|Add0~3\);

-- Location: LCCOMB_X90_Y71_N12
\t3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~60_combout\ = (\t3|Add0~2_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Add0~2_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~60_combout\);

-- Location: FF_X90_Y71_N13
\t3|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(1));

-- Location: LCCOMB_X91_Y71_N6
\t3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~4_combout\ = (\t3|s_count\(2) & (\t3|Add0~3\ $ (GND))) # (!\t3|s_count\(2) & (!\t3|Add0~3\ & VCC))
-- \t3|Add0~5\ = CARRY((\t3|s_count\(2) & !\t3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(2),
	datad => VCC,
	cin => \t3|Add0~3\,
	combout => \t3|Add0~4_combout\,
	cout => \t3|Add0~5\);

-- Location: LCCOMB_X90_Y71_N10
\t3|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~59_combout\ = (\t3|Add0~4_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Add0~4_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~59_combout\);

-- Location: FF_X90_Y71_N11
\t3|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(2));

-- Location: LCCOMB_X91_Y71_N8
\t3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~6_combout\ = (\t3|s_count\(3) & (!\t3|Add0~5\)) # (!\t3|s_count\(3) & ((\t3|Add0~5\) # (GND)))
-- \t3|Add0~7\ = CARRY((!\t3|Add0~5\) # (!\t3|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(3),
	datad => VCC,
	cin => \t3|Add0~5\,
	combout => \t3|Add0~6_combout\,
	cout => \t3|Add0~7\);

-- Location: LCCOMB_X91_Y71_N0
\t3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~58_combout\ = (\t3|Add0~6_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~5_combout\,
	datab => \t3|Add0~6_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~58_combout\);

-- Location: FF_X91_Y71_N1
\t3|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(3));

-- Location: LCCOMB_X91_Y71_N10
\t3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~8_combout\ = (\t3|s_count\(4) & (\t3|Add0~7\ $ (GND))) # (!\t3|s_count\(4) & (!\t3|Add0~7\ & VCC))
-- \t3|Add0~9\ = CARRY((\t3|s_count\(4) & !\t3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(4),
	datad => VCC,
	cin => \t3|Add0~7\,
	combout => \t3|Add0~8_combout\,
	cout => \t3|Add0~9\);

-- Location: LCCOMB_X90_Y71_N6
\t3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~62_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~8_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Add0~8_combout\,
	combout => \t3|Add0~62_combout\);

-- Location: FF_X90_Y71_N7
\t3|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(4));

-- Location: LCCOMB_X91_Y71_N12
\t3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~10_combout\ = (\t3|s_count\(5) & (!\t3|Add0~9\)) # (!\t3|s_count\(5) & ((\t3|Add0~9\) # (GND)))
-- \t3|Add0~11\ = CARRY((!\t3|Add0~9\) # (!\t3|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(5),
	datad => VCC,
	cin => \t3|Add0~9\,
	combout => \t3|Add0~10_combout\,
	cout => \t3|Add0~11\);

-- Location: LCCOMB_X90_Y71_N4
\t3|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~63_combout\ = (\t3|Add0~10_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Add0~10_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|Add0~63_combout\);

-- Location: FF_X90_Y71_N5
\t3|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(5));

-- Location: LCCOMB_X91_Y71_N14
\t3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~12_combout\ = (\t3|s_count\(6) & (\t3|Add0~11\ $ (GND))) # (!\t3|s_count\(6) & (!\t3|Add0~11\ & VCC))
-- \t3|Add0~13\ = CARRY((\t3|s_count\(6) & !\t3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(6),
	datad => VCC,
	cin => \t3|Add0~11\,
	combout => \t3|Add0~12_combout\,
	cout => \t3|Add0~13\);

-- Location: LCCOMB_X90_Y71_N22
\t3|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~64_combout\ = (\t3|Add0~12_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Add0~12_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~64_combout\);

-- Location: FF_X90_Y71_N23
\t3|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(6));

-- Location: LCCOMB_X91_Y71_N16
\t3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~14_combout\ = (\t3|s_count\(7) & (!\t3|Add0~13\)) # (!\t3|s_count\(7) & ((\t3|Add0~13\) # (GND)))
-- \t3|Add0~15\ = CARRY((!\t3|Add0~13\) # (!\t3|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(7),
	datad => VCC,
	cin => \t3|Add0~13\,
	combout => \t3|Add0~14_combout\,
	cout => \t3|Add0~15\);

-- Location: LCCOMB_X90_Y71_N16
\t3|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~65_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~14_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Add0~14_combout\,
	combout => \t3|Add0~65_combout\);

-- Location: FF_X90_Y71_N17
\t3|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(7));

-- Location: LCCOMB_X91_Y71_N18
\t3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~16_combout\ = (\t3|s_count\(8) & (\t3|Add0~15\ $ (GND))) # (!\t3|s_count\(8) & (!\t3|Add0~15\ & VCC))
-- \t3|Add0~17\ = CARRY((\t3|s_count\(8) & !\t3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(8),
	datad => VCC,
	cin => \t3|Add0~15\,
	combout => \t3|Add0~16_combout\,
	cout => \t3|Add0~17\);

-- Location: LCCOMB_X92_Y71_N20
\t3|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~66_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~16_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|Add0~16_combout\,
	combout => \t3|Add0~66_combout\);

-- Location: FF_X92_Y71_N21
\t3|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(8));

-- Location: LCCOMB_X91_Y71_N20
\t3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~18_combout\ = (\t3|s_count\(9) & (!\t3|Add0~17\)) # (!\t3|s_count\(9) & ((\t3|Add0~17\) # (GND)))
-- \t3|Add0~19\ = CARRY((!\t3|Add0~17\) # (!\t3|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(9),
	datad => VCC,
	cin => \t3|Add0~17\,
	combout => \t3|Add0~18_combout\,
	cout => \t3|Add0~19\);

-- Location: LCCOMB_X92_Y71_N30
\t3|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~67_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~18_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|Add0~18_combout\,
	combout => \t3|Add0~67_combout\);

-- Location: FF_X92_Y71_N31
\t3|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(9));

-- Location: LCCOMB_X91_Y71_N22
\t3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~20_combout\ = (\t3|s_count\(10) & (\t3|Add0~19\ $ (GND))) # (!\t3|s_count\(10) & (!\t3|Add0~19\ & VCC))
-- \t3|Add0~21\ = CARRY((\t3|s_count\(10) & !\t3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(10),
	datad => VCC,
	cin => \t3|Add0~19\,
	combout => \t3|Add0~20_combout\,
	cout => \t3|Add0~21\);

-- Location: LCCOMB_X90_Y71_N0
\t3|s_count[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[10]~24_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|Add0~20_combout\ & \t3|pulseOut~0_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|Add0~20_combout\ & ((\t3|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|Add0~20_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|pulseOut~0_combout\,
	combout => \t3|s_count[10]~24_combout\);

-- Location: FF_X90_Y71_N1
\t3|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[10]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(10));

-- Location: LCCOMB_X91_Y71_N24
\t3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~22_combout\ = (\t3|s_count\(11) & (!\t3|Add0~21\)) # (!\t3|s_count\(11) & ((\t3|Add0~21\) # (GND)))
-- \t3|Add0~23\ = CARRY((!\t3|Add0~21\) # (!\t3|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(11),
	datad => VCC,
	cin => \t3|Add0~21\,
	combout => \t3|Add0~22_combout\,
	cout => \t3|Add0~23\);

-- Location: LCCOMB_X91_Y71_N26
\t3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~24_combout\ = (\t3|s_count\(12) & (\t3|Add0~23\ $ (GND))) # (!\t3|s_count\(12) & (!\t3|Add0~23\ & VCC))
-- \t3|Add0~25\ = CARRY((\t3|s_count\(12) & !\t3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(12),
	datad => VCC,
	cin => \t3|Add0~23\,
	combout => \t3|Add0~24_combout\,
	cout => \t3|Add0~25\);

-- Location: LCCOMB_X92_Y71_N10
\t3|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~69_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~24_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Add0~24_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~69_combout\);

-- Location: FF_X92_Y71_N11
\t3|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(12));

-- Location: LCCOMB_X91_Y71_N28
\t3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~26_combout\ = (\t3|s_count\(13) & (!\t3|Add0~25\)) # (!\t3|s_count\(13) & ((\t3|Add0~25\) # (GND)))
-- \t3|Add0~27\ = CARRY((!\t3|Add0~25\) # (!\t3|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(13),
	datad => VCC,
	cin => \t3|Add0~25\,
	combout => \t3|Add0~26_combout\,
	cout => \t3|Add0~27\);

-- Location: LCCOMB_X90_Y71_N24
\t3|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~70_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~26_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Add0~26_combout\,
	combout => \t3|Add0~70_combout\);

-- Location: FF_X90_Y71_N25
\t3|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(13));

-- Location: LCCOMB_X91_Y71_N30
\t3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~28_combout\ = (\t3|s_count\(14) & (\t3|Add0~27\ $ (GND))) # (!\t3|s_count\(14) & (!\t3|Add0~27\ & VCC))
-- \t3|Add0~29\ = CARRY((\t3|s_count\(14) & !\t3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(14),
	datad => VCC,
	cin => \t3|Add0~27\,
	combout => \t3|Add0~28_combout\,
	cout => \t3|Add0~29\);

-- Location: LCCOMB_X90_Y71_N18
\t3|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~71_combout\ = (\t3|Add0~28_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Add0~28_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|Add0~71_combout\);

-- Location: FF_X90_Y71_N19
\t3|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(14));

-- Location: LCCOMB_X91_Y70_N0
\t3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~30_combout\ = (\t3|s_count\(15) & (!\t3|Add0~29\)) # (!\t3|s_count\(15) & ((\t3|Add0~29\) # (GND)))
-- \t3|Add0~31\ = CARRY((!\t3|Add0~29\) # (!\t3|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(15),
	datad => VCC,
	cin => \t3|Add0~29\,
	combout => \t3|Add0~30_combout\,
	cout => \t3|Add0~31\);

-- Location: LCCOMB_X91_Y70_N2
\t3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~32_combout\ = (\t3|s_count\(16) & (\t3|Add0~31\ $ (GND))) # (!\t3|s_count\(16) & (!\t3|Add0~31\ & VCC))
-- \t3|Add0~33\ = CARRY((\t3|s_count\(16) & !\t3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(16),
	datad => VCC,
	cin => \t3|Add0~31\,
	combout => \t3|Add0~32_combout\,
	cout => \t3|Add0~33\);

-- Location: LCCOMB_X90_Y70_N16
\t3|s_count[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[16]~26_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~32_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|pulseOut~0_combout\ & ((\t3|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|Add0~32_combout\,
	combout => \t3|s_count[16]~26_combout\);

-- Location: FF_X90_Y70_N17
\t3|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(16));

-- Location: LCCOMB_X91_Y70_N4
\t3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~34_combout\ = (\t3|s_count\(17) & (!\t3|Add0~33\)) # (!\t3|s_count\(17) & ((\t3|Add0~33\) # (GND)))
-- \t3|Add0~35\ = CARRY((!\t3|Add0~33\) # (!\t3|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(17),
	datad => VCC,
	cin => \t3|Add0~33\,
	combout => \t3|Add0~34_combout\,
	cout => \t3|Add0~35\);

-- Location: LCCOMB_X90_Y70_N12
\t3|s_count[17]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[17]~27_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|Add0~34_combout\ & \t3|pulseOut~0_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|Add0~34_combout\ & ((\t3|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|Add0~34_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|pulseOut~0_combout\,
	combout => \t3|s_count[17]~27_combout\);

-- Location: FF_X90_Y70_N13
\t3|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[17]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(17));

-- Location: LCCOMB_X91_Y70_N6
\t3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~36_combout\ = (\t3|s_count\(18) & (\t3|Add0~35\ $ (GND))) # (!\t3|s_count\(18) & (!\t3|Add0~35\ & VCC))
-- \t3|Add0~37\ = CARRY((\t3|s_count\(18) & !\t3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(18),
	datad => VCC,
	cin => \t3|Add0~35\,
	combout => \t3|Add0~36_combout\,
	cout => \t3|Add0~37\);

-- Location: LCCOMB_X90_Y70_N22
\t3|s_count[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[18]~28_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~36_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|pulseOut~0_combout\ & ((\t3|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|Add0~36_combout\,
	combout => \t3|s_count[18]~28_combout\);

-- Location: FF_X90_Y70_N23
\t3|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[18]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(18));

-- Location: LCCOMB_X91_Y70_N8
\t3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~38_combout\ = (\t3|s_count\(19) & (!\t3|Add0~37\)) # (!\t3|s_count\(19) & ((\t3|Add0~37\) # (GND)))
-- \t3|Add0~39\ = CARRY((!\t3|Add0~37\) # (!\t3|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(19),
	datad => VCC,
	cin => \t3|Add0~37\,
	combout => \t3|Add0~38_combout\,
	cout => \t3|Add0~39\);

-- Location: LCCOMB_X90_Y71_N20
\t3|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~72_combout\ = (\t3|Add0~38_combout\ & (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Add0~38_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|Add0~72_combout\);

-- Location: FF_X90_Y71_N21
\t3|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(19));

-- Location: LCCOMB_X91_Y70_N10
\t3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~40_combout\ = (\t3|s_count\(20) & (\t3|Add0~39\ $ (GND))) # (!\t3|s_count\(20) & (!\t3|Add0~39\ & VCC))
-- \t3|Add0~41\ = CARRY((\t3|s_count\(20) & !\t3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(20),
	datad => VCC,
	cin => \t3|Add0~39\,
	combout => \t3|Add0~40_combout\,
	cout => \t3|Add0~41\);

-- Location: LCCOMB_X90_Y70_N4
\t3|s_count[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[20]~29_combout\ = (\t3|Equal0~9_combout\ & ((\t1|pulseOut~_Duplicate_1_q\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~40_combout\)))) # (!\t3|Equal0~9_combout\ & (\t3|pulseOut~0_combout\ & (\t3|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Add0~40_combout\,
	datad => \t1|pulseOut~_Duplicate_1_q\,
	combout => \t3|s_count[20]~29_combout\);

-- Location: FF_X90_Y70_N5
\t3|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[20]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(20));

-- Location: LCCOMB_X91_Y70_N12
\t3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~42_combout\ = (\t3|s_count\(21) & (!\t3|Add0~41\)) # (!\t3|s_count\(21) & ((\t3|Add0~41\) # (GND)))
-- \t3|Add0~43\ = CARRY((!\t3|Add0~41\) # (!\t3|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(21),
	datad => VCC,
	cin => \t3|Add0~41\,
	combout => \t3|Add0~42_combout\,
	cout => \t3|Add0~43\);

-- Location: LCCOMB_X90_Y71_N26
\t3|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~73_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~42_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Add0~42_combout\,
	combout => \t3|Add0~73_combout\);

-- Location: FF_X90_Y71_N27
\t3|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(21));

-- Location: LCCOMB_X91_Y70_N14
\t3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~44_combout\ = (\t3|s_count\(22) & (\t3|Add0~43\ $ (GND))) # (!\t3|s_count\(22) & (!\t3|Add0~43\ & VCC))
-- \t3|Add0~45\ = CARRY((\t3|s_count\(22) & !\t3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(22),
	datad => VCC,
	cin => \t3|Add0~43\,
	combout => \t3|Add0~44_combout\,
	cout => \t3|Add0~45\);

-- Location: LCCOMB_X90_Y70_N10
\t3|s_count[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[22]~30_combout\ = (\t3|Equal0~9_combout\ & ((\t1|pulseOut~_Duplicate_1_q\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~44_combout\)))) # (!\t3|Equal0~9_combout\ & (\t3|pulseOut~0_combout\ & (\t3|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Add0~44_combout\,
	datad => \t1|pulseOut~_Duplicate_1_q\,
	combout => \t3|s_count[22]~30_combout\);

-- Location: FF_X90_Y70_N11
\t3|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[22]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(22));

-- Location: LCCOMB_X91_Y70_N16
\t3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~46_combout\ = (\t3|s_count\(23) & (!\t3|Add0~45\)) # (!\t3|s_count\(23) & ((\t3|Add0~45\) # (GND)))
-- \t3|Add0~47\ = CARRY((!\t3|Add0~45\) # (!\t3|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(23),
	datad => VCC,
	cin => \t3|Add0~45\,
	combout => \t3|Add0~46_combout\,
	cout => \t3|Add0~47\);

-- Location: LCCOMB_X92_Y70_N6
\t3|s_count[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[23]~32_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~46_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|pulseOut~0_combout\ & (\t3|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Add0~46_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|s_count[23]~32_combout\);

-- Location: FF_X92_Y70_N7
\t3|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[23]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(23));

-- Location: LCCOMB_X91_Y70_N18
\t3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~48_combout\ = (\t3|s_count\(24) & (\t3|Add0~47\ $ (GND))) # (!\t3|s_count\(24) & (!\t3|Add0~47\ & VCC))
-- \t3|Add0~49\ = CARRY((\t3|s_count\(24) & !\t3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(24),
	datad => VCC,
	cin => \t3|Add0~47\,
	combout => \t3|Add0~48_combout\,
	cout => \t3|Add0~49\);

-- Location: LCCOMB_X92_Y70_N4
\t3|s_count[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[24]~33_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~48_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (((\t3|pulseOut~0_combout\ & \t3|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|pulseOut~0_combout\,
	datad => \t3|Add0~48_combout\,
	combout => \t3|s_count[24]~33_combout\);

-- Location: FF_X92_Y70_N5
\t3|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(24));

-- Location: LCCOMB_X91_Y70_N20
\t3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~50_combout\ = (\t3|s_count\(25) & (!\t3|Add0~49\)) # (!\t3|s_count\(25) & ((\t3|Add0~49\) # (GND)))
-- \t3|Add0~51\ = CARRY((!\t3|Add0~49\) # (!\t3|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(25),
	datad => VCC,
	cin => \t3|Add0~49\,
	combout => \t3|Add0~50_combout\,
	cout => \t3|Add0~51\);

-- Location: LCCOMB_X92_Y70_N10
\t3|s_count[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[25]~34_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~50_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (((\t3|pulseOut~0_combout\ & \t3|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|pulseOut~0_combout\,
	datad => \t3|Add0~50_combout\,
	combout => \t3|s_count[25]~34_combout\);

-- Location: FF_X92_Y70_N11
\t3|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(25));

-- Location: LCCOMB_X91_Y70_N22
\t3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~52_combout\ = (\t3|s_count\(26) & (\t3|Add0~51\ $ (GND))) # (!\t3|s_count\(26) & (!\t3|Add0~51\ & VCC))
-- \t3|Add0~53\ = CARRY((\t3|s_count\(26) & !\t3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(26),
	datad => VCC,
	cin => \t3|Add0~51\,
	combout => \t3|Add0~52_combout\,
	cout => \t3|Add0~53\);

-- Location: LCCOMB_X92_Y70_N28
\t3|s_count[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[26]~35_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~52_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (((\t3|pulseOut~0_combout\ & \t3|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|pulseOut~0_combout\,
	datad => \t3|Add0~52_combout\,
	combout => \t3|s_count[26]~35_combout\);

-- Location: FF_X92_Y70_N29
\t3|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(26));

-- Location: LCCOMB_X91_Y70_N24
\t3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~54_combout\ = (\t3|s_count\(27) & (!\t3|Add0~53\)) # (!\t3|s_count\(27) & ((\t3|Add0~53\) # (GND)))
-- \t3|Add0~55\ = CARRY((!\t3|Add0~53\) # (!\t3|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(27),
	datad => VCC,
	cin => \t3|Add0~53\,
	combout => \t3|Add0~54_combout\,
	cout => \t3|Add0~55\);

-- Location: LCCOMB_X90_Y70_N20
\t3|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~74_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~54_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|p1~3_combout\,
	datad => \t3|Add0~54_combout\,
	combout => \t3|Add0~74_combout\);

-- Location: FF_X90_Y70_N21
\t3|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(27));

-- Location: LCCOMB_X91_Y70_N26
\t3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~56_combout\ = (\t3|s_count\(28) & (\t3|Add0~55\ $ (GND))) # (!\t3|s_count\(28) & (!\t3|Add0~55\ & VCC))
-- \t3|Add0~57\ = CARRY((\t3|s_count\(28) & !\t3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(28),
	datad => VCC,
	cin => \t3|Add0~55\,
	combout => \t3|Add0~56_combout\,
	cout => \t3|Add0~57\);

-- Location: LCCOMB_X92_Y70_N8
\t3|s_count[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[28]~31_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & ((\t3|Equal0~9_combout\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~56_combout\)))) # (!\t1|pulseOut~_Duplicate_1_q\ & (\t3|pulseOut~0_combout\ & (\t3|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Add0~56_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|s_count[28]~31_combout\);

-- Location: FF_X92_Y70_N9
\t3|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(28));

-- Location: LCCOMB_X92_Y70_N18
\t3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~8_combout\ = (\t3|s_count\(25) & (\t3|s_count\(28) & (\t3|s_count\(24) & \t3|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(25),
	datab => \t3|s_count\(28),
	datac => \t3|s_count\(24),
	datad => \t3|s_count\(26),
	combout => \t3|Equal0~8_combout\);

-- Location: LCCOMB_X90_Y70_N18
\t3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~6_combout\ = (\t3|s_count\(17) & (\t3|s_count\(16) & (\t3|s_count\(10) & \t3|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(17),
	datab => \t3|s_count\(16),
	datac => \t3|s_count\(10),
	datad => \t3|s_count\(15),
	combout => \t3|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y70_N8
\t3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~7_combout\ = (\t3|s_count\(22) & (\t3|s_count\(20) & (\t3|s_count\(18) & \t3|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(22),
	datab => \t3|s_count\(20),
	datac => \t3|s_count\(18),
	datad => \t3|s_count\(23),
	combout => \t3|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y70_N30
\t3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~9_combout\ = (\t3|Equal0~8_combout\ & (\t3|Equal0~6_combout\ & (\t3|Equal0~7_combout\ & \t3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~8_combout\,
	datab => \t3|Equal0~6_combout\,
	datac => \t3|Equal0~7_combout\,
	datad => \t3|Equal0~5_combout\,
	combout => \t3|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y70_N6
\t3|s_count[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[15]~25_combout\ = (\t3|Equal0~9_combout\ & ((\t1|pulseOut~_Duplicate_1_q\) # ((\t3|pulseOut~0_combout\ & \t3|Add0~30_combout\)))) # (!\t3|Equal0~9_combout\ & (\t3|pulseOut~0_combout\ & (\t3|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|pulseOut~0_combout\,
	datac => \t3|Add0~30_combout\,
	datad => \t1|pulseOut~_Duplicate_1_q\,
	combout => \t3|s_count[15]~25_combout\);

-- Location: FF_X90_Y70_N7
\t3|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[15]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(15));

-- Location: LCCOMB_X90_Y70_N26
\t3|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~0_combout\ = (\t3|s_count\(15)) # ((\t3|s_count\(16)) # ((\t3|s_count\(10)) # (\t1|pulseOut~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(15),
	datab => \t3|s_count\(16),
	datac => \t3|s_count\(10),
	datad => \t1|pulseOut~_Duplicate_1_q\,
	combout => \t3|p1~0_combout\);

-- Location: LCCOMB_X90_Y70_N28
\t3|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~1_combout\ = (\t3|s_count\(22)) # ((\t3|s_count\(20)) # ((\t3|s_count\(18)) # (\t3|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(22),
	datab => \t3|s_count\(20),
	datac => \t3|s_count\(18),
	datad => \t3|s_count\(17),
	combout => \t3|p1~1_combout\);

-- Location: LCCOMB_X92_Y70_N22
\t3|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~2_combout\ = (\t3|s_count\(23)) # ((\t3|s_count\(26)) # ((\t3|s_count\(24)) # (\t3|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(23),
	datab => \t3|s_count\(26),
	datac => \t3|s_count\(24),
	datad => \t3|s_count\(25),
	combout => \t3|p1~2_combout\);

-- Location: LCCOMB_X90_Y70_N2
\t3|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~3_combout\ = (\t3|p1~0_combout\) # ((\t3|p1~1_combout\) # ((\t3|s_count\(28)) # (\t3|p1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~0_combout\,
	datab => \t3|p1~1_combout\,
	datac => \t3|s_count\(28),
	datad => \t3|p1~2_combout\,
	combout => \t3|p1~3_combout\);

-- Location: LCCOMB_X92_Y71_N12
\t3|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~68_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~22_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~3_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|Add0~22_combout\,
	combout => \t3|Add0~68_combout\);

-- Location: FF_X92_Y71_N13
\t3|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(11));

-- Location: LCCOMB_X92_Y71_N24
\t3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~2_combout\ = (!\t3|s_count\(11) & (!\t3|s_count\(8) & (!\t3|s_count\(9) & !\t3|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(11),
	datab => \t3|s_count\(8),
	datac => \t3|s_count\(9),
	datad => \t3|s_count\(12),
	combout => \t3|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y71_N2
\t3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~1_combout\ = (!\t3|s_count\(4) & (!\t3|s_count\(5) & (!\t3|s_count\(6) & !\t3|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(4),
	datab => \t3|s_count\(5),
	datac => \t3|s_count\(6),
	datad => \t3|s_count\(7),
	combout => \t3|Equal0~1_combout\);

-- Location: LCCOMB_X90_Y71_N8
\t3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~3_combout\ = (!\t3|s_count\(21) & (!\t3|s_count\(14) & (!\t3|s_count\(19) & !\t3|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(21),
	datab => \t3|s_count\(14),
	datac => \t3|s_count\(19),
	datad => \t3|s_count\(13),
	combout => \t3|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y71_N28
\t3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~0_combout\ = (!\t3|s_count\(1) & (!\t3|s_count\(0) & (!\t3|s_count\(3) & !\t3|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(1),
	datab => \t3|s_count\(0),
	datac => \t3|s_count\(3),
	datad => \t3|s_count\(2),
	combout => \t3|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y71_N30
\t3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~4_combout\ = (\t3|Equal0~2_combout\ & (\t3|Equal0~1_combout\ & (\t3|Equal0~3_combout\ & \t3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~2_combout\,
	datab => \t3|Equal0~1_combout\,
	datac => \t3|Equal0~3_combout\,
	datad => \t3|Equal0~0_combout\,
	combout => \t3|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y70_N28
\t3|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~75_combout\ = (\t3|s_count\(29) & (!\t3|Add0~57\)) # (!\t3|s_count\(29) & ((\t3|Add0~57\) # (GND)))
-- \t3|Add0~76\ = CARRY((!\t3|Add0~57\) # (!\t3|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(29),
	datad => VCC,
	cin => \t3|Add0~57\,
	combout => \t3|Add0~75_combout\,
	cout => \t3|Add0~76\);

-- Location: LCCOMB_X90_Y70_N14
\t3|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~77_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~75_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~9_combout\,
	datab => \t3|Equal0~5_combout\,
	datac => \t3|p1~3_combout\,
	datad => \t3|Add0~75_combout\,
	combout => \t3|Add0~77_combout\);

-- Location: FF_X90_Y70_N15
\t3|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(29));

-- Location: LCCOMB_X91_Y70_N30
\t3|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~78_combout\ = \t3|Add0~76\ $ (!\t3|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t3|s_count\(30),
	cin => \t3|Add0~76\,
	combout => \t3|Add0~78_combout\);

-- Location: LCCOMB_X92_Y70_N12
\t3|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Add0~80_combout\ = (!\t3|Equal0~9_combout\ & (\t3|Add0~78_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~5_combout\,
	datab => \t3|Equal0~9_combout\,
	datac => \t3|p1~3_combout\,
	datad => \t3|Add0~78_combout\,
	combout => \t3|Add0~80_combout\);

-- Location: FF_X92_Y70_N13
\t3|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(30));

-- Location: LCCOMB_X90_Y70_N24
\t3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~5_combout\ = (\t3|Equal0~4_combout\ & (!\t3|s_count\(27) & (!\t3|s_count\(29) & !\t3|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~4_combout\,
	datab => \t3|s_count\(27),
	datac => \t3|s_count\(29),
	datad => \t3|s_count\(30),
	combout => \t3|Equal0~5_combout\);

-- Location: LCCOMB_X90_Y70_N0
\t3|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|pulseOut~0_combout\ = (!\t3|Equal0~9_combout\ & ((\t3|p1~3_combout\) # (!\t3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t3|Equal0~5_combout\,
	datac => \t3|Equal0~9_combout\,
	datad => \t3|p1~3_combout\,
	combout => \t3|pulseOut~0_combout\);

-- Location: FF_X90_Y70_N1
\t3|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|pulseOut~q\);

-- Location: LCCOMB_X96_Y62_N12
\t0|p1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~5_combout\ = (\t1|pulseOut~_Duplicate_1_q\ & (\t0|Equal0~9_combout\ & \t0|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~_Duplicate_1_q\,
	datab => \t0|Equal0~9_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|p1~5_combout\);

-- Location: LCCOMB_X97_Y62_N22
\t0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~22_combout\ = (\t0|s_count\(10) & (\t0|Add0~21\ $ (GND))) # (!\t0|s_count\(10) & (!\t0|Add0~21\ & VCC))
-- \t0|Add0~23\ = CARRY((\t0|s_count\(10) & !\t0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datad => VCC,
	cin => \t0|Add0~21\,
	combout => \t0|Add0~22_combout\,
	cout => \t0|Add0~23\);

-- Location: LCCOMB_X97_Y62_N24
\t0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~24_combout\ = (\t0|s_count\(11) & (!\t0|Add0~23\)) # (!\t0|s_count\(11) & ((\t0|Add0~23\) # (GND)))
-- \t0|Add0~25\ = CARRY((!\t0|Add0~23\) # (!\t0|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(11),
	datad => VCC,
	cin => \t0|Add0~23\,
	combout => \t0|Add0~24_combout\,
	cout => \t0|Add0~25\);

-- Location: LCCOMB_X98_Y62_N4
\t0|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~69_combout\ = (\t0|Add0~24_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Add0~24_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~69_combout\);

-- Location: FF_X98_Y62_N5
\t0|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(11));

-- Location: LCCOMB_X97_Y62_N26
\t0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~26_combout\ = (\t0|s_count\(12) & (\t0|Add0~25\ $ (GND))) # (!\t0|s_count\(12) & (!\t0|Add0~25\ & VCC))
-- \t0|Add0~27\ = CARRY((\t0|s_count\(12) & !\t0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(12),
	datad => VCC,
	cin => \t0|Add0~25\,
	combout => \t0|Add0~26_combout\,
	cout => \t0|Add0~27\);

-- Location: LCCOMB_X98_Y62_N2
\t0|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~70_combout\ = (\t0|Add0~26_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~26_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Equal0~3_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~70_combout\);

-- Location: FF_X98_Y62_N3
\t0|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(12));

-- Location: LCCOMB_X97_Y62_N28
\t0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~28_combout\ = (\t0|s_count\(13) & (!\t0|Add0~27\)) # (!\t0|s_count\(13) & ((\t0|Add0~27\) # (GND)))
-- \t0|Add0~29\ = CARRY((!\t0|Add0~27\) # (!\t0|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(13),
	datad => VCC,
	cin => \t0|Add0~27\,
	combout => \t0|Add0~28_combout\,
	cout => \t0|Add0~29\);

-- Location: LCCOMB_X96_Y61_N20
\t0|s_count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[13]~2_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~28_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datac => \t0|Add0~28_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[13]~2_combout\);

-- Location: FF_X96_Y61_N21
\t0|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(13));

-- Location: LCCOMB_X97_Y62_N30
\t0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~30_combout\ = (\t0|s_count\(14) & (\t0|Add0~29\ $ (GND))) # (!\t0|s_count\(14) & (!\t0|Add0~29\ & VCC))
-- \t0|Add0~31\ = CARRY((\t0|s_count\(14) & !\t0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(14),
	datad => VCC,
	cin => \t0|Add0~29\,
	combout => \t0|Add0~30_combout\,
	cout => \t0|Add0~31\);

-- Location: LCCOMB_X96_Y61_N18
\t0|s_count[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[14]~3_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~30_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datac => \t0|Add0~30_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[14]~3_combout\);

-- Location: FF_X96_Y61_N19
\t0|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(14));

-- Location: LCCOMB_X96_Y61_N12
\t0|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~0_combout\ = (\t0|s_count\(10)) # ((\t0|s_count\(14)) # ((\t0|s_count\(8)) # (\t0|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datab => \t0|s_count\(14),
	datac => \t0|s_count\(8),
	datad => \t0|s_count\(13),
	combout => \t0|p1~0_combout\);

-- Location: LCCOMB_X97_Y61_N0
\t0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~32_combout\ = (\t0|s_count\(15) & (!\t0|Add0~31\)) # (!\t0|s_count\(15) & ((\t0|Add0~31\) # (GND)))
-- \t0|Add0~33\ = CARRY((!\t0|Add0~31\) # (!\t0|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(15),
	datad => VCC,
	cin => \t0|Add0~31\,
	combout => \t0|Add0~32_combout\,
	cout => \t0|Add0~33\);

-- Location: LCCOMB_X98_Y62_N20
\t0|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~71_combout\ = (\t0|Add0~32_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~32_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~71_combout\);

-- Location: FF_X98_Y62_N21
\t0|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(15));

-- Location: LCCOMB_X97_Y61_N2
\t0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~34_combout\ = (\t0|s_count\(16) & (\t0|Add0~33\ $ (GND))) # (!\t0|s_count\(16) & (!\t0|Add0~33\ & VCC))
-- \t0|Add0~35\ = CARRY((\t0|s_count\(16) & !\t0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(16),
	datad => VCC,
	cin => \t0|Add0~33\,
	combout => \t0|Add0~34_combout\,
	cout => \t0|Add0~35\);

-- Location: LCCOMB_X96_Y62_N30
\t0|s_count[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[16]~4_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|Add0~34_combout\,
	combout => \t0|s_count[16]~4_combout\);

-- Location: FF_X96_Y62_N31
\t0|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(16));

-- Location: LCCOMB_X97_Y61_N4
\t0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~36_combout\ = (\t0|s_count\(17) & (!\t0|Add0~35\)) # (!\t0|s_count\(17) & ((\t0|Add0~35\) # (GND)))
-- \t0|Add0~37\ = CARRY((!\t0|Add0~35\) # (!\t0|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(17),
	datad => VCC,
	cin => \t0|Add0~35\,
	combout => \t0|Add0~36_combout\,
	cout => \t0|Add0~37\);

-- Location: LCCOMB_X98_Y62_N28
\t0|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~72_combout\ = (\t0|Add0~36_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|p1~4_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~36_combout\,
	combout => \t0|Add0~72_combout\);

-- Location: FF_X98_Y62_N29
\t0|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(17));

-- Location: LCCOMB_X97_Y61_N6
\t0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~38_combout\ = (\t0|s_count\(18) & (\t0|Add0~37\ $ (GND))) # (!\t0|s_count\(18) & (!\t0|Add0~37\ & VCC))
-- \t0|Add0~39\ = CARRY((\t0|s_count\(18) & !\t0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datad => VCC,
	cin => \t0|Add0~37\,
	combout => \t0|Add0~38_combout\,
	cout => \t0|Add0~39\);

-- Location: LCCOMB_X96_Y62_N28
\t0|s_count[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[18]~5_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|pulseOut~0_combout\,
	datac => \t0|Add0~38_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[18]~5_combout\);

-- Location: FF_X96_Y62_N29
\t0|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(18));

-- Location: LCCOMB_X97_Y61_N8
\t0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~40_combout\ = (\t0|s_count\(19) & (!\t0|Add0~39\)) # (!\t0|s_count\(19) & ((\t0|Add0~39\) # (GND)))
-- \t0|Add0~41\ = CARRY((!\t0|Add0~39\) # (!\t0|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(19),
	datad => VCC,
	cin => \t0|Add0~39\,
	combout => \t0|Add0~40_combout\,
	cout => \t0|Add0~41\);

-- Location: LCCOMB_X96_Y62_N14
\t0|s_count[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[19]~6_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datab => \t0|pulseOut~0_combout\,
	datad => \t0|Add0~40_combout\,
	combout => \t0|s_count[19]~6_combout\);

-- Location: FF_X96_Y62_N15
\t0|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[19]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(19));

-- Location: LCCOMB_X97_Y61_N10
\t0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~42_combout\ = (\t0|s_count\(20) & (\t0|Add0~41\ $ (GND))) # (!\t0|s_count\(20) & (!\t0|Add0~41\ & VCC))
-- \t0|Add0~43\ = CARRY((\t0|s_count\(20) & !\t0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(20),
	datad => VCC,
	cin => \t0|Add0~41\,
	combout => \t0|Add0~42_combout\,
	cout => \t0|Add0~43\);

-- Location: LCCOMB_X98_Y62_N30
\t0|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~73_combout\ = (\t0|Add0~42_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~42_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~73_combout\);

-- Location: FF_X98_Y62_N31
\t0|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(20));

-- Location: LCCOMB_X97_Y61_N12
\t0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~44_combout\ = (\t0|s_count\(21) & (!\t0|Add0~43\)) # (!\t0|s_count\(21) & ((\t0|Add0~43\) # (GND)))
-- \t0|Add0~45\ = CARRY((!\t0|Add0~43\) # (!\t0|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(21),
	datad => VCC,
	cin => \t0|Add0~43\,
	combout => \t0|Add0~44_combout\,
	cout => \t0|Add0~45\);

-- Location: LCCOMB_X98_Y62_N24
\t0|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~74_combout\ = (\t0|Add0~44_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|p1~4_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~44_combout\,
	combout => \t0|Add0~74_combout\);

-- Location: FF_X98_Y62_N25
\t0|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(21));

-- Location: LCCOMB_X97_Y61_N14
\t0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~46_combout\ = (\t0|s_count\(22) & (\t0|Add0~45\ $ (GND))) # (!\t0|s_count\(22) & (!\t0|Add0~45\ & VCC))
-- \t0|Add0~47\ = CARRY((\t0|s_count\(22) & !\t0|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(22),
	datad => VCC,
	cin => \t0|Add0~45\,
	combout => \t0|Add0~46_combout\,
	cout => \t0|Add0~47\);

-- Location: LCCOMB_X96_Y62_N16
\t0|s_count[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[22]~7_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|pulseOut~0_combout\,
	datac => \t0|Add0~46_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[22]~7_combout\);

-- Location: FF_X96_Y62_N17
\t0|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[22]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(22));

-- Location: LCCOMB_X96_Y62_N22
\t0|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~1_combout\ = (\t0|s_count\(16)) # ((\t0|s_count\(22)) # ((\t0|s_count\(19)) # (\t0|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(16),
	datab => \t0|s_count\(22),
	datac => \t0|s_count\(19),
	datad => \t0|s_count\(18),
	combout => \t0|p1~1_combout\);

-- Location: LCCOMB_X97_Y61_N16
\t0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~48_combout\ = (\t0|s_count\(23) & (!\t0|Add0~47\)) # (!\t0|s_count\(23) & ((\t0|Add0~47\) # (GND)))
-- \t0|Add0~49\ = CARRY((!\t0|Add0~47\) # (!\t0|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(23),
	datad => VCC,
	cin => \t0|Add0~47\,
	combout => \t0|Add0~48_combout\,
	cout => \t0|Add0~49\);

-- Location: LCCOMB_X96_Y61_N14
\t0|s_count[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[23]~8_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~48_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datac => \t0|Add0~48_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[23]~8_combout\);

-- Location: FF_X96_Y61_N15
\t0|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(23));

-- Location: LCCOMB_X97_Y61_N18
\t0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~50_combout\ = (\t0|s_count\(24) & (\t0|Add0~49\ $ (GND))) # (!\t0|s_count\(24) & (!\t0|Add0~49\ & VCC))
-- \t0|Add0~51\ = CARRY((\t0|s_count\(24) & !\t0|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(24),
	datad => VCC,
	cin => \t0|Add0~49\,
	combout => \t0|Add0~50_combout\,
	cout => \t0|Add0~51\);

-- Location: LCCOMB_X96_Y61_N24
\t0|s_count[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[24]~9_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~50_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~50_combout\,
	datac => \t0|p1~5_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[24]~9_combout\);

-- Location: FF_X96_Y61_N25
\t0|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(24));

-- Location: LCCOMB_X96_Y61_N22
\t0|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~2_combout\ = (\t0|s_count\(26)) # ((\t0|s_count\(24)) # ((\t0|s_count\(23)) # (\t0|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(26),
	datab => \t0|s_count\(24),
	datac => \t0|s_count\(23),
	datad => \t0|s_count\(27),
	combout => \t0|p1~2_combout\);

-- Location: LCCOMB_X96_Y61_N6
\t0|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~3_combout\ = (\t0|s_count\(28)) # (\t1|pulseOut~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(28),
	datad => \t1|pulseOut~_Duplicate_1_q\,
	combout => \t0|p1~3_combout\);

-- Location: LCCOMB_X96_Y61_N0
\t0|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~4_combout\ = (\t0|p1~0_combout\) # ((\t0|p1~1_combout\) # ((\t0|p1~2_combout\) # (\t0|p1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~0_combout\,
	datab => \t0|p1~1_combout\,
	datac => \t0|p1~2_combout\,
	datad => \t0|p1~3_combout\,
	combout => \t0|p1~4_combout\);

-- Location: LCCOMB_X97_Y61_N20
\t0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~52_combout\ = (\t0|s_count\(25) & (!\t0|Add0~51\)) # (!\t0|s_count\(25) & ((\t0|Add0~51\) # (GND)))
-- \t0|Add0~53\ = CARRY((!\t0|Add0~51\) # (!\t0|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datad => VCC,
	cin => \t0|Add0~51\,
	combout => \t0|Add0~52_combout\,
	cout => \t0|Add0~53\);

-- Location: LCCOMB_X98_Y62_N22
\t0|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~75_combout\ = (\t0|Add0~52_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|p1~4_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~52_combout\,
	combout => \t0|Add0~75_combout\);

-- Location: FF_X98_Y62_N23
\t0|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(25));

-- Location: LCCOMB_X97_Y61_N22
\t0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~54_combout\ = (\t0|s_count\(26) & (\t0|Add0~53\ $ (GND))) # (!\t0|s_count\(26) & (!\t0|Add0~53\ & VCC))
-- \t0|Add0~55\ = CARRY((\t0|s_count\(26) & !\t0|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(26),
	datad => VCC,
	cin => \t0|Add0~53\,
	combout => \t0|Add0~54_combout\,
	cout => \t0|Add0~55\);

-- Location: LCCOMB_X96_Y61_N30
\t0|s_count[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[26]~10_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~54_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~54_combout\,
	datac => \t0|p1~5_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[26]~10_combout\);

-- Location: FF_X96_Y61_N31
\t0|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[26]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(26));

-- Location: LCCOMB_X97_Y61_N24
\t0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~56_combout\ = (\t0|s_count\(27) & (!\t0|Add0~55\)) # (!\t0|s_count\(27) & ((\t0|Add0~55\) # (GND)))
-- \t0|Add0~57\ = CARRY((!\t0|Add0~55\) # (!\t0|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(27),
	datad => VCC,
	cin => \t0|Add0~55\,
	combout => \t0|Add0~56_combout\,
	cout => \t0|Add0~57\);

-- Location: LCCOMB_X96_Y61_N16
\t0|s_count[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[27]~11_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~56_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~56_combout\,
	datac => \t0|p1~5_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[27]~11_combout\);

-- Location: FF_X96_Y61_N17
\t0|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(27));

-- Location: LCCOMB_X97_Y61_N26
\t0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~58_combout\ = (\t0|s_count\(28) & (\t0|Add0~57\ $ (GND))) # (!\t0|s_count\(28) & (!\t0|Add0~57\ & VCC))
-- \t0|Add0~59\ = CARRY((\t0|s_count\(28) & !\t0|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(28),
	datad => VCC,
	cin => \t0|Add0~57\,
	combout => \t0|Add0~58_combout\,
	cout => \t0|Add0~59\);

-- Location: LCCOMB_X96_Y61_N28
\t0|s_count[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[28]~12_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~58_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~5_combout\,
	datac => \t0|Add0~58_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[28]~12_combout\);

-- Location: FF_X96_Y61_N29
\t0|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[28]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(28));

-- Location: LCCOMB_X97_Y61_N28
\t0|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~76_combout\ = (\t0|s_count\(29) & (!\t0|Add0~59\)) # (!\t0|s_count\(29) & ((\t0|Add0~59\) # (GND)))
-- \t0|Add0~77\ = CARRY((!\t0|Add0~59\) # (!\t0|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(29),
	datad => VCC,
	cin => \t0|Add0~59\,
	combout => \t0|Add0~76_combout\,
	cout => \t0|Add0~77\);

-- Location: LCCOMB_X96_Y62_N10
\t0|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~78_combout\ = (\t0|Add0~76_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~76_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~78_combout\);

-- Location: FF_X96_Y62_N11
\t0|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(29));

-- Location: LCCOMB_X97_Y61_N30
\t0|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~79_combout\ = \t0|Add0~77\ $ (!\t0|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|s_count\(30),
	cin => \t0|Add0~77\,
	combout => \t0|Add0~79_combout\);

-- Location: LCCOMB_X96_Y62_N8
\t0|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~81_combout\ = (\t0|Add0~79_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Add0~79_combout\,
	combout => \t0|Add0~81_combout\);

-- Location: FF_X96_Y62_N9
\t0|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(30));

-- Location: LCCOMB_X98_Y62_N18
\t0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~6_combout\ = (!\t0|s_count\(15) & (!\t0|s_count\(11) & (!\t0|s_count\(9) & !\t0|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(15),
	datab => \t0|s_count\(11),
	datac => \t0|s_count\(9),
	datad => \t0|s_count\(12),
	combout => \t0|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y62_N2
\t0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~2_combout\ = \t0|s_count\(0) $ (VCC)
-- \t0|Add0~3\ = CARRY(\t0|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(0),
	datad => VCC,
	combout => \t0|Add0~2_combout\,
	cout => \t0|Add0~3\);

-- Location: LCCOMB_X97_Y62_N0
\t0|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~63_combout\ = (\t0|Add0~2_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~2_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~63_combout\);

-- Location: FF_X97_Y62_N1
\t0|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(0));

-- Location: LCCOMB_X97_Y62_N4
\t0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~4_combout\ = (\t0|s_count\(1) & (!\t0|Add0~3\)) # (!\t0|s_count\(1) & ((\t0|Add0~3\) # (GND)))
-- \t0|Add0~5\ = CARRY((!\t0|Add0~3\) # (!\t0|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(1),
	datad => VCC,
	cin => \t0|Add0~3\,
	combout => \t0|Add0~4_combout\,
	cout => \t0|Add0~5\);

-- Location: LCCOMB_X96_Y62_N26
\t0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~62_combout\ = (\t0|Add0~4_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~4_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~62_combout\);

-- Location: FF_X97_Y62_N3
\t0|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|Add0~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(1));

-- Location: LCCOMB_X97_Y62_N6
\t0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~6_combout\ = (\t0|s_count\(2) & (\t0|Add0~5\ $ (GND))) # (!\t0|s_count\(2) & (!\t0|Add0~5\ & VCC))
-- \t0|Add0~7\ = CARRY((\t0|s_count\(2) & !\t0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(2),
	datad => VCC,
	cin => \t0|Add0~5\,
	combout => \t0|Add0~6_combout\,
	cout => \t0|Add0~7\);

-- Location: LCCOMB_X96_Y62_N20
\t0|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~61_combout\ = (\t0|Add0~6_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~6_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~61_combout\);

-- Location: FF_X96_Y62_N21
\t0|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(2));

-- Location: LCCOMB_X97_Y62_N8
\t0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~8_combout\ = (\t0|s_count\(3) & (!\t0|Add0~7\)) # (!\t0|s_count\(3) & ((\t0|Add0~7\) # (GND)))
-- \t0|Add0~9\ = CARRY((!\t0|Add0~7\) # (!\t0|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(3),
	datad => VCC,
	cin => \t0|Add0~7\,
	combout => \t0|Add0~8_combout\,
	cout => \t0|Add0~9\);

-- Location: LCCOMB_X96_Y62_N6
\t0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~60_combout\ = (\t0|Add0~8_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~8_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~60_combout\);

-- Location: FF_X96_Y62_N7
\t0|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(3));

-- Location: LCCOMB_X96_Y62_N18
\t0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~4_combout\ = (!\t0|s_count\(0) & (!\t0|s_count\(2) & (!\t0|s_count\(1) & !\t0|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(0),
	datab => \t0|s_count\(2),
	datac => \t0|s_count\(1),
	datad => \t0|s_count\(3),
	combout => \t0|Equal0~4_combout\);

-- Location: LCCOMB_X98_Y62_N0
\t0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~7_combout\ = (!\t0|s_count\(25) & (!\t0|s_count\(21) & (!\t0|s_count\(20) & !\t0|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datab => \t0|s_count\(21),
	datac => \t0|s_count\(20),
	datad => \t0|s_count\(17),
	combout => \t0|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y62_N10
\t0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~10_combout\ = (\t0|s_count\(4) & (\t0|Add0~9\ $ (GND))) # (!\t0|s_count\(4) & (!\t0|Add0~9\ & VCC))
-- \t0|Add0~11\ = CARRY((\t0|s_count\(4) & !\t0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(4),
	datad => VCC,
	cin => \t0|Add0~9\,
	combout => \t0|Add0~10_combout\,
	cout => \t0|Add0~11\);

-- Location: LCCOMB_X98_Y62_N12
\t0|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~64_combout\ = (\t0|Add0~10_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Add0~10_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~64_combout\);

-- Location: FF_X98_Y62_N13
\t0|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(4));

-- Location: LCCOMB_X97_Y62_N12
\t0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~12_combout\ = (\t0|s_count\(5) & (!\t0|Add0~11\)) # (!\t0|s_count\(5) & ((\t0|Add0~11\) # (GND)))
-- \t0|Add0~13\ = CARRY((!\t0|Add0~11\) # (!\t0|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(5),
	datad => VCC,
	cin => \t0|Add0~11\,
	combout => \t0|Add0~12_combout\,
	cout => \t0|Add0~13\);

-- Location: LCCOMB_X98_Y62_N26
\t0|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~65_combout\ = (\t0|Add0~12_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|p1~4_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~12_combout\,
	combout => \t0|Add0~65_combout\);

-- Location: FF_X98_Y62_N27
\t0|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(5));

-- Location: LCCOMB_X97_Y62_N14
\t0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~14_combout\ = (\t0|s_count\(6) & (\t0|Add0~13\ $ (GND))) # (!\t0|s_count\(6) & (!\t0|Add0~13\ & VCC))
-- \t0|Add0~15\ = CARRY((\t0|s_count\(6) & !\t0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(6),
	datad => VCC,
	cin => \t0|Add0~13\,
	combout => \t0|Add0~14_combout\,
	cout => \t0|Add0~15\);

-- Location: LCCOMB_X98_Y62_N8
\t0|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~66_combout\ = (\t0|Add0~14_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~14_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~66_combout\);

-- Location: FF_X98_Y62_N9
\t0|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(6));

-- Location: LCCOMB_X98_Y62_N16
\t0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~5_combout\ = (!\t0|s_count\(4) & (!\t0|s_count\(6) & (!\t0|s_count\(5) & !\t0|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(4),
	datab => \t0|s_count\(6),
	datac => \t0|s_count\(5),
	datad => \t0|s_count\(7),
	combout => \t0|Equal0~5_combout\);

-- Location: LCCOMB_X96_Y62_N24
\t0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~8_combout\ = (\t0|Equal0~6_combout\ & (\t0|Equal0~4_combout\ & (\t0|Equal0~7_combout\ & \t0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~6_combout\,
	datab => \t0|Equal0~4_combout\,
	datac => \t0|Equal0~7_combout\,
	datad => \t0|Equal0~5_combout\,
	combout => \t0|Equal0~8_combout\);

-- Location: LCCOMB_X96_Y62_N2
\t0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~9_combout\ = (!\t0|s_count\(29) & (!\t0|s_count\(30) & \t0|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(29),
	datac => \t0|s_count\(30),
	datad => \t0|Equal0~8_combout\,
	combout => \t0|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y62_N16
\t0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~16_combout\ = (\t0|s_count\(7) & (!\t0|Add0~15\)) # (!\t0|s_count\(7) & ((\t0|Add0~15\) # (GND)))
-- \t0|Add0~17\ = CARRY((!\t0|Add0~15\) # (!\t0|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(7),
	datad => VCC,
	cin => \t0|Add0~15\,
	combout => \t0|Add0~16_combout\,
	cout => \t0|Add0~17\);

-- Location: LCCOMB_X98_Y62_N10
\t0|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~67_combout\ = (\t0|Add0~16_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|Add0~16_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~67_combout\);

-- Location: FF_X98_Y62_N11
\t0|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(7));

-- Location: LCCOMB_X97_Y62_N18
\t0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~18_combout\ = (\t0|s_count\(8) & (\t0|Add0~17\ $ (GND))) # (!\t0|s_count\(8) & (!\t0|Add0~17\ & VCC))
-- \t0|Add0~19\ = CARRY((\t0|s_count\(8) & !\t0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(8),
	datad => VCC,
	cin => \t0|Add0~17\,
	combout => \t0|Add0~18_combout\,
	cout => \t0|Add0~19\);

-- Location: LCCOMB_X96_Y61_N4
\t0|s_count[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[8]~0_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~18_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~18_combout\,
	datac => \t0|p1~5_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[8]~0_combout\);

-- Location: FF_X96_Y61_N5
\t0|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(8));

-- Location: LCCOMB_X97_Y62_N20
\t0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~20_combout\ = (\t0|s_count\(9) & (!\t0|Add0~19\)) # (!\t0|s_count\(9) & ((\t0|Add0~19\) # (GND)))
-- \t0|Add0~21\ = CARRY((!\t0|Add0~19\) # (!\t0|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(9),
	datad => VCC,
	cin => \t0|Add0~19\,
	combout => \t0|Add0~20_combout\,
	cout => \t0|Add0~21\);

-- Location: LCCOMB_X98_Y62_N14
\t0|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~68_combout\ = (\t0|Add0~20_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Add0~20_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~68_combout\);

-- Location: FF_X98_Y62_N15
\t0|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(9));

-- Location: LCCOMB_X96_Y61_N10
\t0|s_count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[10]~1_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~22_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~22_combout\,
	datac => \t0|p1~5_combout\,
	datad => \t0|pulseOut~0_combout\,
	combout => \t0|s_count[10]~1_combout\);

-- Location: FF_X96_Y61_N11
\t0|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(10));

-- Location: LCCOMB_X96_Y61_N26
\t0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~0_combout\ = (\t0|s_count\(10) & (\t0|s_count\(14) & (\t0|s_count\(8) & \t0|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datab => \t0|s_count\(14),
	datac => \t0|s_count\(8),
	datad => \t0|s_count\(13),
	combout => \t0|Equal0~0_combout\);

-- Location: LCCOMB_X96_Y61_N8
\t0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~2_combout\ = (\t0|s_count\(26) & (\t0|s_count\(27) & (\t0|s_count\(23) & \t0|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(26),
	datab => \t0|s_count\(27),
	datac => \t0|s_count\(23),
	datad => \t0|s_count\(24),
	combout => \t0|Equal0~2_combout\);

-- Location: LCCOMB_X96_Y62_N0
\t0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~1_combout\ = (\t0|s_count\(16) & (\t0|s_count\(22) & (\t0|s_count\(19) & \t0|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(16),
	datab => \t0|s_count\(22),
	datac => \t0|s_count\(19),
	datad => \t0|s_count\(18),
	combout => \t0|Equal0~1_combout\);

-- Location: LCCOMB_X96_Y61_N2
\t0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~3_combout\ = (\t0|Equal0~0_combout\ & (\t0|s_count\(28) & (\t0|Equal0~2_combout\ & \t0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datab => \t0|s_count\(28),
	datac => \t0|Equal0~2_combout\,
	datad => \t0|Equal0~1_combout\,
	combout => \t0|Equal0~3_combout\);

-- Location: LCCOMB_X96_Y62_N4
\t0|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut~0_combout\ = ((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|pulseOut~0_combout\);

-- Location: FF_X96_Y62_N5
\t0|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|pulseOut~q\);

-- Location: LCCOMB_X96_Y70_N2
\t2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~0_combout\ = \t2|s_count\(0) $ (VCC)
-- \t2|Add0~1\ = CARRY(\t2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(0),
	datad => VCC,
	combout => \t2|Add0~0_combout\,
	cout => \t2|Add0~1\);

-- Location: LCCOMB_X95_Y70_N18
\t2|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~57_combout\ = (\t2|Add0~0_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|Add0~0_combout\,
	datac => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~57_combout\);

-- Location: FF_X95_Y70_N19
\t2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(0));

-- Location: LCCOMB_X96_Y70_N4
\t2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~2_combout\ = (\t2|s_count\(1) & (!\t2|Add0~1\)) # (!\t2|s_count\(1) & ((\t2|Add0~1\) # (GND)))
-- \t2|Add0~3\ = CARRY((!\t2|Add0~1\) # (!\t2|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(1),
	datad => VCC,
	cin => \t2|Add0~1\,
	combout => \t2|Add0~2_combout\,
	cout => \t2|Add0~3\);

-- Location: LCCOMB_X95_Y70_N16
\t2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~56_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~2_combout\,
	combout => \t2|Add0~56_combout\);

-- Location: FF_X95_Y70_N17
\t2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(1));

-- Location: LCCOMB_X96_Y70_N6
\t2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~4_combout\ = (\t2|s_count\(2) & (\t2|Add0~3\ $ (GND))) # (!\t2|s_count\(2) & (!\t2|Add0~3\ & VCC))
-- \t2|Add0~5\ = CARRY((\t2|s_count\(2) & !\t2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(2),
	datad => VCC,
	cin => \t2|Add0~3\,
	combout => \t2|Add0~4_combout\,
	cout => \t2|Add0~5\);

-- Location: LCCOMB_X95_Y70_N14
\t2|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~55_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~4_combout\,
	combout => \t2|Add0~55_combout\);

-- Location: FF_X95_Y70_N15
\t2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(2));

-- Location: LCCOMB_X96_Y70_N8
\t2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~6_combout\ = (\t2|s_count\(3) & (!\t2|Add0~5\)) # (!\t2|s_count\(3) & ((\t2|Add0~5\) # (GND)))
-- \t2|Add0~7\ = CARRY((!\t2|Add0~5\) # (!\t2|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(3),
	datad => VCC,
	cin => \t2|Add0~5\,
	combout => \t2|Add0~6_combout\,
	cout => \t2|Add0~7\);

-- Location: LCCOMB_X96_Y70_N0
\t2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~54_combout\ = (\t2|Add0~6_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~6_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~54_combout\);

-- Location: FF_X96_Y70_N1
\t2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(3));

-- Location: LCCOMB_X96_Y70_N10
\t2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~8_combout\ = (\t2|s_count\(4) & (\t2|Add0~7\ $ (GND))) # (!\t2|s_count\(4) & (!\t2|Add0~7\ & VCC))
-- \t2|Add0~9\ = CARRY((\t2|s_count\(4) & !\t2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(4),
	datad => VCC,
	cin => \t2|Add0~7\,
	combout => \t2|Add0~8_combout\,
	cout => \t2|Add0~9\);

-- Location: LCCOMB_X95_Y69_N20
\t2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~58_combout\ = (\t2|Add0~8_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~8_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~58_combout\);

-- Location: FF_X95_Y69_N21
\t2|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(4));

-- Location: LCCOMB_X96_Y70_N12
\t2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~10_combout\ = (\t2|s_count\(5) & (!\t2|Add0~9\)) # (!\t2|s_count\(5) & ((\t2|Add0~9\) # (GND)))
-- \t2|Add0~11\ = CARRY((!\t2|Add0~9\) # (!\t2|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(5),
	datad => VCC,
	cin => \t2|Add0~9\,
	combout => \t2|Add0~10_combout\,
	cout => \t2|Add0~11\);

-- Location: LCCOMB_X95_Y69_N26
\t2|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~59_combout\ = (\t2|Add0~10_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~10_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~59_combout\);

-- Location: FF_X95_Y69_N27
\t2|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(5));

-- Location: LCCOMB_X96_Y70_N14
\t2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~12_combout\ = (\t2|s_count\(6) & (\t2|Add0~11\ $ (GND))) # (!\t2|s_count\(6) & (!\t2|Add0~11\ & VCC))
-- \t2|Add0~13\ = CARRY((\t2|s_count\(6) & !\t2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(6),
	datad => VCC,
	cin => \t2|Add0~11\,
	combout => \t2|Add0~12_combout\,
	cout => \t2|Add0~13\);

-- Location: LCCOMB_X95_Y69_N16
\t2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~60_combout\ = (\t2|Add0~12_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~12_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~60_combout\);

-- Location: FF_X95_Y69_N17
\t2|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(6));

-- Location: LCCOMB_X96_Y70_N16
\t2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~14_combout\ = (\t2|s_count\(7) & (!\t2|Add0~13\)) # (!\t2|s_count\(7) & ((\t2|Add0~13\) # (GND)))
-- \t2|Add0~15\ = CARRY((!\t2|Add0~13\) # (!\t2|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(7),
	datad => VCC,
	cin => \t2|Add0~13\,
	combout => \t2|Add0~14_combout\,
	cout => \t2|Add0~15\);

-- Location: LCCOMB_X95_Y69_N2
\t2|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~61_combout\ = (\t2|Add0~14_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~14_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~61_combout\);

-- Location: FF_X95_Y69_N3
\t2|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(7));

-- Location: LCCOMB_X96_Y70_N18
\t2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~16_combout\ = (\t2|s_count\(8) & (\t2|Add0~15\ $ (GND))) # (!\t2|s_count\(8) & (!\t2|Add0~15\ & VCC))
-- \t2|Add0~17\ = CARRY((\t2|s_count\(8) & !\t2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(8),
	datad => VCC,
	cin => \t2|Add0~15\,
	combout => \t2|Add0~16_combout\,
	cout => \t2|Add0~17\);

-- Location: LCCOMB_X94_Y69_N26
\t2|s_count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[8]~1_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count[30]~0_combout\,
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~16_combout\,
	combout => \t2|s_count[8]~1_combout\);

-- Location: FF_X94_Y69_N27
\t2|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(8));

-- Location: LCCOMB_X96_Y70_N20
\t2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~18_combout\ = (\t2|s_count\(9) & (!\t2|Add0~17\)) # (!\t2|s_count\(9) & ((\t2|Add0~17\) # (GND)))
-- \t2|Add0~19\ = CARRY((!\t2|Add0~17\) # (!\t2|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(9),
	datad => VCC,
	cin => \t2|Add0~17\,
	combout => \t2|Add0~18_combout\,
	cout => \t2|Add0~19\);

-- Location: LCCOMB_X95_Y70_N6
\t2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~62_combout\ = (\t2|Add0~18_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~18_combout\,
	datac => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~62_combout\);

-- Location: FF_X95_Y70_N7
\t2|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(9));

-- Location: LCCOMB_X96_Y70_N22
\t2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~20_combout\ = (\t2|s_count\(10) & (\t2|Add0~19\ $ (GND))) # (!\t2|s_count\(10) & (!\t2|Add0~19\ & VCC))
-- \t2|Add0~21\ = CARRY((\t2|s_count\(10) & !\t2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(10),
	datad => VCC,
	cin => \t2|Add0~19\,
	combout => \t2|Add0~20_combout\,
	cout => \t2|Add0~21\);

-- Location: LCCOMB_X95_Y70_N12
\t2|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~63_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~20_combout\,
	combout => \t2|Add0~63_combout\);

-- Location: FF_X95_Y70_N13
\t2|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(10));

-- Location: LCCOMB_X96_Y70_N24
\t2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~22_combout\ = (\t2|s_count\(11) & (!\t2|Add0~21\)) # (!\t2|s_count\(11) & ((\t2|Add0~21\) # (GND)))
-- \t2|Add0~23\ = CARRY((!\t2|Add0~21\) # (!\t2|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(11),
	datad => VCC,
	cin => \t2|Add0~21\,
	combout => \t2|Add0~22_combout\,
	cout => \t2|Add0~23\);

-- Location: LCCOMB_X95_Y70_N26
\t2|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~64_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~22_combout\,
	combout => \t2|Add0~64_combout\);

-- Location: FF_X95_Y70_N27
\t2|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(11));

-- Location: LCCOMB_X96_Y70_N26
\t2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~24_combout\ = (\t2|s_count\(12) & (\t2|Add0~23\ $ (GND))) # (!\t2|s_count\(12) & (!\t2|Add0~23\ & VCC))
-- \t2|Add0~25\ = CARRY((\t2|s_count\(12) & !\t2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(12),
	datad => VCC,
	cin => \t2|Add0~23\,
	combout => \t2|Add0~24_combout\,
	cout => \t2|Add0~25\);

-- Location: LCCOMB_X95_Y70_N20
\t2|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~65_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~24_combout\,
	combout => \t2|Add0~65_combout\);

-- Location: FF_X95_Y70_N21
\t2|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(12));

-- Location: LCCOMB_X96_Y70_N28
\t2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~26_combout\ = (\t2|s_count\(13) & (!\t2|Add0~25\)) # (!\t2|s_count\(13) & ((\t2|Add0~25\) # (GND)))
-- \t2|Add0~27\ = CARRY((!\t2|Add0~25\) # (!\t2|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(13),
	datad => VCC,
	cin => \t2|Add0~25\,
	combout => \t2|Add0~26_combout\,
	cout => \t2|Add0~27\);

-- Location: LCCOMB_X94_Y69_N0
\t2|s_count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[13]~2_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~26_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[13]~2_combout\);

-- Location: FF_X94_Y69_N1
\t2|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(13));

-- Location: LCCOMB_X96_Y70_N30
\t2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~28_combout\ = (\t2|s_count\(14) & (\t2|Add0~27\ $ (GND))) # (!\t2|s_count\(14) & (!\t2|Add0~27\ & VCC))
-- \t2|Add0~29\ = CARRY((\t2|s_count\(14) & !\t2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(14),
	datad => VCC,
	cin => \t2|Add0~27\,
	combout => \t2|Add0~28_combout\,
	cout => \t2|Add0~29\);

-- Location: LCCOMB_X94_Y69_N14
\t2|s_count[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[14]~3_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~28_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[14]~3_combout\);

-- Location: FF_X94_Y69_N15
\t2|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(14));

-- Location: LCCOMB_X96_Y69_N0
\t2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~30_combout\ = (\t2|s_count\(15) & (!\t2|Add0~29\)) # (!\t2|s_count\(15) & ((\t2|Add0~29\) # (GND)))
-- \t2|Add0~31\ = CARRY((!\t2|Add0~29\) # (!\t2|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(15),
	datad => VCC,
	cin => \t2|Add0~29\,
	combout => \t2|Add0~30_combout\,
	cout => \t2|Add0~31\);

-- Location: LCCOMB_X94_Y69_N28
\t2|s_count[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[15]~4_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~30_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[15]~4_combout\);

-- Location: FF_X94_Y69_N29
\t2|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(15));

-- Location: LCCOMB_X96_Y69_N2
\t2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~32_combout\ = (\t2|s_count\(16) & (\t2|Add0~31\ $ (GND))) # (!\t2|s_count\(16) & (!\t2|Add0~31\ & VCC))
-- \t2|Add0~33\ = CARRY((\t2|s_count\(16) & !\t2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(16),
	datad => VCC,
	cin => \t2|Add0~31\,
	combout => \t2|Add0~32_combout\,
	cout => \t2|Add0~33\);

-- Location: LCCOMB_X95_Y70_N28
\t2|s_count[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[16]~5_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|Add0~32_combout\ & \t2|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|Add0~32_combout\,
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[16]~5_combout\);

-- Location: FF_X95_Y70_N29
\t2|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(16));

-- Location: LCCOMB_X96_Y69_N4
\t2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~34_combout\ = (\t2|s_count\(17) & (!\t2|Add0~33\)) # (!\t2|s_count\(17) & ((\t2|Add0~33\) # (GND)))
-- \t2|Add0~35\ = CARRY((!\t2|Add0~33\) # (!\t2|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(17),
	datad => VCC,
	cin => \t2|Add0~33\,
	combout => \t2|Add0~34_combout\,
	cout => \t2|Add0~35\);

-- Location: LCCOMB_X95_Y69_N18
\t2|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~66_combout\ = (\t2|Add0~34_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~34_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~66_combout\);

-- Location: FF_X95_Y69_N19
\t2|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(17));

-- Location: LCCOMB_X96_Y69_N6
\t2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~36_combout\ = (\t2|s_count\(18) & (\t2|Add0~35\ $ (GND))) # (!\t2|s_count\(18) & (!\t2|Add0~35\ & VCC))
-- \t2|Add0~37\ = CARRY((\t2|s_count\(18) & !\t2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(18),
	datad => VCC,
	cin => \t2|Add0~35\,
	combout => \t2|Add0~36_combout\,
	cout => \t2|Add0~37\);

-- Location: LCCOMB_X95_Y70_N10
\t2|s_count[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[18]~6_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~36_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[18]~6_combout\);

-- Location: FF_X95_Y70_N11
\t2|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(18));

-- Location: LCCOMB_X96_Y69_N8
\t2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~38_combout\ = (\t2|s_count\(19) & (!\t2|Add0~37\)) # (!\t2|s_count\(19) & ((\t2|Add0~37\) # (GND)))
-- \t2|Add0~39\ = CARRY((!\t2|Add0~37\) # (!\t2|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(19),
	datad => VCC,
	cin => \t2|Add0~37\,
	combout => \t2|Add0~38_combout\,
	cout => \t2|Add0~39\);

-- Location: LCCOMB_X95_Y69_N8
\t2|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~67_combout\ = (\t2|Add0~38_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~38_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~67_combout\);

-- Location: FF_X95_Y69_N9
\t2|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(19));

-- Location: LCCOMB_X96_Y69_N10
\t2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~40_combout\ = (\t2|s_count\(20) & (\t2|Add0~39\ $ (GND))) # (!\t2|s_count\(20) & (!\t2|Add0~39\ & VCC))
-- \t2|Add0~41\ = CARRY((\t2|s_count\(20) & !\t2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(20),
	datad => VCC,
	cin => \t2|Add0~39\,
	combout => \t2|Add0~40_combout\,
	cout => \t2|Add0~41\);

-- Location: LCCOMB_X95_Y70_N24
\t2|s_count[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[20]~7_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~40_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[20]~7_combout\);

-- Location: FF_X95_Y70_N25
\t2|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[20]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(20));

-- Location: LCCOMB_X96_Y69_N12
\t2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~42_combout\ = (\t2|s_count\(21) & (!\t2|Add0~41\)) # (!\t2|s_count\(21) & ((\t2|Add0~41\) # (GND)))
-- \t2|Add0~43\ = CARRY((!\t2|Add0~41\) # (!\t2|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(21),
	datad => VCC,
	cin => \t2|Add0~41\,
	combout => \t2|Add0~42_combout\,
	cout => \t2|Add0~43\);

-- Location: LCCOMB_X95_Y70_N22
\t2|s_count[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[21]~8_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|Add0~42_combout\ & \t2|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~42_combout\,
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[21]~8_combout\);

-- Location: FF_X95_Y70_N23
\t2|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[21]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(21));

-- Location: LCCOMB_X96_Y69_N14
\t2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~44_combout\ = (\t2|s_count\(22) & (\t2|Add0~43\ $ (GND))) # (!\t2|s_count\(22) & (!\t2|Add0~43\ & VCC))
-- \t2|Add0~45\ = CARRY((\t2|s_count\(22) & !\t2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(22),
	datad => VCC,
	cin => \t2|Add0~43\,
	combout => \t2|Add0~44_combout\,
	cout => \t2|Add0~45\);

-- Location: LCCOMB_X94_Y69_N12
\t2|s_count[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[22]~9_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~44_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[22]~9_combout\);

-- Location: FF_X94_Y69_N13
\t2|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[22]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(22));

-- Location: LCCOMB_X96_Y69_N16
\t2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~46_combout\ = (\t2|s_count\(23) & (!\t2|Add0~45\)) # (!\t2|s_count\(23) & ((\t2|Add0~45\) # (GND)))
-- \t2|Add0~47\ = CARRY((!\t2|Add0~45\) # (!\t2|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(23),
	datad => VCC,
	cin => \t2|Add0~45\,
	combout => \t2|Add0~46_combout\,
	cout => \t2|Add0~47\);

-- Location: LCCOMB_X94_Y69_N30
\t2|s_count[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[23]~10_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~46_combout\,
	datad => \t2|s_count[30]~0_combout\,
	combout => \t2|s_count[23]~10_combout\);

-- Location: FF_X94_Y69_N31
\t2|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[23]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(23));

-- Location: LCCOMB_X96_Y69_N18
\t2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~48_combout\ = (\t2|s_count\(24) & (\t2|Add0~47\ $ (GND))) # (!\t2|s_count\(24) & (!\t2|Add0~47\ & VCC))
-- \t2|Add0~49\ = CARRY((\t2|s_count\(24) & !\t2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(24),
	datad => VCC,
	cin => \t2|Add0~47\,
	combout => \t2|Add0~48_combout\,
	cout => \t2|Add0~49\);

-- Location: LCCOMB_X94_Y69_N16
\t2|s_count[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[24]~11_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count[30]~0_combout\,
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~48_combout\,
	combout => \t2|s_count[24]~11_combout\);

-- Location: FF_X94_Y69_N17
\t2|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(24));

-- Location: LCCOMB_X94_Y69_N22
\t2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~8_combout\ = (\t2|s_count\(26) & (\t2|s_count\(24) & (\t2|s_count\(23) & \t2|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(26),
	datab => \t2|s_count\(24),
	datac => \t2|s_count\(23),
	datad => \t2|s_count\(22),
	combout => \t2|Equal0~8_combout\);

-- Location: LCCOMB_X94_Y69_N20
\t2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~6_combout\ = (\t2|s_count\(8) & (\t2|s_count\(15) & (\t2|s_count\(14) & \t2|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(8),
	datab => \t2|s_count\(15),
	datac => \t2|s_count\(14),
	datad => \t2|s_count\(13),
	combout => \t2|Equal0~6_combout\);

-- Location: LCCOMB_X95_Y70_N4
\t2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~7_combout\ = (\t2|s_count\(18) & (\t2|s_count\(20) & (\t2|s_count\(21) & \t2|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(18),
	datab => \t2|s_count\(20),
	datac => \t2|s_count\(21),
	datad => \t2|s_count\(16),
	combout => \t2|Equal0~7_combout\);

-- Location: LCCOMB_X94_Y69_N24
\t2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~9_combout\ = (\t2|Equal0~8_combout\ & (\t2|Equal0~6_combout\ & (\t2|Equal0~7_combout\ & \t2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Equal0~8_combout\,
	datab => \t2|Equal0~6_combout\,
	datac => \t2|Equal0~7_combout\,
	datad => \t2|Equal0~5_combout\,
	combout => \t2|Equal0~9_combout\);

-- Location: LCCOMB_X94_Y69_N2
\t2|s_count[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[30]~0_combout\ = (!\t3|pulseOut~q\ & (\t0|pulseOut~q\ & \t2|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t3|pulseOut~q\,
	datac => \t0|pulseOut~q\,
	datad => \t2|Equal0~9_combout\,
	combout => \t2|s_count[30]~0_combout\);

-- Location: LCCOMB_X96_Y69_N20
\t2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~50_combout\ = (\t2|s_count\(25) & (!\t2|Add0~49\)) # (!\t2|s_count\(25) & ((\t2|Add0~49\) # (GND)))
-- \t2|Add0~51\ = CARRY((!\t2|Add0~49\) # (!\t2|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(25),
	datad => VCC,
	cin => \t2|Add0~49\,
	combout => \t2|Add0~50_combout\,
	cout => \t2|Add0~51\);

-- Location: LCCOMB_X95_Y69_N10
\t2|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~68_combout\ = (\t2|Add0~50_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~50_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~68_combout\);

-- Location: FF_X95_Y69_N11
\t2|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(25));

-- Location: LCCOMB_X96_Y69_N22
\t2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~52_combout\ = (\t2|s_count\(26) & (\t2|Add0~51\ $ (GND))) # (!\t2|s_count\(26) & (!\t2|Add0~51\ & VCC))
-- \t2|Add0~53\ = CARRY((\t2|s_count\(26) & !\t2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(26),
	datad => VCC,
	cin => \t2|Add0~51\,
	combout => \t2|Add0~52_combout\,
	cout => \t2|Add0~53\);

-- Location: LCCOMB_X94_Y69_N6
\t2|s_count[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[26]~12_combout\ = (\t2|s_count[30]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count[30]~0_combout\,
	datac => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~52_combout\,
	combout => \t2|s_count[26]~12_combout\);

-- Location: FF_X94_Y69_N7
\t2|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|s_count[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(26));

-- Location: LCCOMB_X96_Y69_N24
\t2|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~69_combout\ = (\t2|s_count\(27) & (!\t2|Add0~53\)) # (!\t2|s_count\(27) & ((\t2|Add0~53\) # (GND)))
-- \t2|Add0~70\ = CARRY((!\t2|Add0~53\) # (!\t2|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(27),
	datad => VCC,
	cin => \t2|Add0~53\,
	combout => \t2|Add0~69_combout\,
	cout => \t2|Add0~70\);

-- Location: LCCOMB_X95_Y69_N12
\t2|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~71_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~69_combout\,
	combout => \t2|Add0~71_combout\);

-- Location: FF_X95_Y69_N13
\t2|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(27));

-- Location: LCCOMB_X96_Y69_N26
\t2|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~72_combout\ = (\t2|s_count\(28) & (\t2|Add0~70\ $ (GND))) # (!\t2|s_count\(28) & (!\t2|Add0~70\ & VCC))
-- \t2|Add0~73\ = CARRY((\t2|s_count\(28) & !\t2|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(28),
	datad => VCC,
	cin => \t2|Add0~70\,
	combout => \t2|Add0~72_combout\,
	cout => \t2|Add0~73\);

-- Location: LCCOMB_X95_Y69_N22
\t2|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~74_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~72_combout\,
	combout => \t2|Add0~74_combout\);

-- Location: FF_X95_Y69_N23
\t2|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(28));

-- Location: LCCOMB_X96_Y69_N28
\t2|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~75_combout\ = (\t2|s_count\(29) & (!\t2|Add0~73\)) # (!\t2|s_count\(29) & ((\t2|Add0~73\) # (GND)))
-- \t2|Add0~76\ = CARRY((!\t2|Add0~73\) # (!\t2|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(29),
	datad => VCC,
	cin => \t2|Add0~73\,
	combout => \t2|Add0~75_combout\,
	cout => \t2|Add0~76\);

-- Location: LCCOMB_X95_Y69_N24
\t2|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~77_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~75_combout\,
	combout => \t2|Add0~77_combout\);

-- Location: FF_X95_Y69_N25
\t2|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(29));

-- Location: LCCOMB_X96_Y69_N30
\t2|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~78_combout\ = \t2|Add0~76\ $ (!\t2|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t2|s_count\(30),
	cin => \t2|Add0~76\,
	combout => \t2|Add0~78_combout\);

-- Location: LCCOMB_X95_Y69_N14
\t2|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~80_combout\ = (\t2|Add0~78_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~78_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~80_combout\);

-- Location: FF_X95_Y69_N15
\t2|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(30));

-- Location: LCCOMB_X95_Y69_N30
\t2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~3_combout\ = (!\t2|s_count\(25) & (!\t2|s_count\(17) & (!\t2|s_count\(19) & !\t2|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(25),
	datab => \t2|s_count\(17),
	datac => \t2|s_count\(19),
	datad => \t2|s_count\(27),
	combout => \t2|Equal0~3_combout\);

-- Location: LCCOMB_X95_Y69_N28
\t2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~1_combout\ = (!\t2|s_count\(5) & (!\t2|s_count\(7) & (!\t2|s_count\(6) & !\t2|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(5),
	datab => \t2|s_count\(7),
	datac => \t2|s_count\(6),
	datad => \t2|s_count\(4),
	combout => \t2|Equal0~1_combout\);

-- Location: LCCOMB_X95_Y70_N30
\t2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~2_combout\ = (!\t2|s_count\(9) & (!\t2|s_count\(12) & (!\t2|s_count\(11) & !\t2|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(9),
	datab => \t2|s_count\(12),
	datac => \t2|s_count\(11),
	datad => \t2|s_count\(10),
	combout => \t2|Equal0~2_combout\);

-- Location: LCCOMB_X95_Y70_N0
\t2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~0_combout\ = (!\t2|s_count\(1) & (!\t2|s_count\(2) & (!\t2|s_count\(3) & !\t2|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(1),
	datab => \t2|s_count\(2),
	datac => \t2|s_count\(3),
	datad => \t2|s_count\(0),
	combout => \t2|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y69_N0
\t2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~4_combout\ = (\t2|Equal0~3_combout\ & (\t2|Equal0~1_combout\ & (\t2|Equal0~2_combout\ & \t2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Equal0~3_combout\,
	datab => \t2|Equal0~1_combout\,
	datac => \t2|Equal0~2_combout\,
	datad => \t2|Equal0~0_combout\,
	combout => \t2|Equal0~4_combout\);

-- Location: LCCOMB_X95_Y69_N4
\t2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~5_combout\ = (!\t2|s_count\(28) & (!\t2|s_count\(29) & (!\t2|s_count\(30) & \t2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(28),
	datab => \t2|s_count\(29),
	datac => \t2|s_count\(30),
	datad => \t2|Equal0~4_combout\,
	combout => \t2|Equal0~5_combout\);

-- Location: LCCOMB_X94_Y69_N10
\t2|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~0_combout\ = (\t2|s_count\(8)) # ((\t2|s_count\(15)) # ((\t2|s_count\(14)) # (\t2|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(8),
	datab => \t2|s_count\(15),
	datac => \t2|s_count\(14),
	datad => \t2|s_count\(13),
	combout => \t2|p1~0_combout\);

-- Location: LCCOMB_X94_Y69_N4
\t2|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~2_combout\ = (\t2|s_count\(26)) # ((\t2|s_count\(24)) # ((\t2|s_count\(23)) # (\t2|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(26),
	datab => \t2|s_count\(24),
	datac => \t2|s_count\(23),
	datad => \t2|s_count\(22),
	combout => \t2|p1~2_combout\);

-- Location: LCCOMB_X95_Y70_N8
\t2|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~1_combout\ = (\t2|s_count\(18)) # ((\t2|s_count\(20)) # ((\t2|s_count\(21)) # (\t2|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(18),
	datab => \t2|s_count\(20),
	datac => \t2|s_count\(21),
	datad => \t2|s_count\(16),
	combout => \t2|p1~1_combout\);

-- Location: LCCOMB_X94_Y69_N18
\t2|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~3_combout\ = (\t2|p1~0_combout\) # (((\t2|p1~2_combout\) # (\t2|p1~1_combout\)) # (!\t3|pulseOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|p1~0_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t2|p1~2_combout\,
	datad => \t2|p1~1_combout\,
	combout => \t2|p1~3_combout\);

-- Location: LCCOMB_X94_Y69_N8
\t2|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|pulseOut~0_combout\ = (\t0|pulseOut~q\ & (!\t2|Equal0~9_combout\ & ((\t2|p1~3_combout\) # (!\t2|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Equal0~5_combout\,
	datab => \t2|p1~3_combout\,
	datac => \t0|pulseOut~q\,
	datad => \t2|Equal0~9_combout\,
	combout => \t2|pulseOut~0_combout\);

-- Location: DDIOOUTCELL_X94_Y73_N4
\t2|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|pulseOut~q\);

-- Location: FF_X94_Y69_N9
\t2|pulseOut~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t2|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|pulseOut~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y68_N2
\f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~0_combout\ = \f1|s_count\(0) $ (VCC)
-- \f1|Add0~1\ = CARRY(\f1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(0),
	datad => VCC,
	combout => \f1|Add0~0_combout\,
	cout => \f1|Add0~1\);

-- Location: FF_X73_Y68_N3
\f1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(0));

-- Location: LCCOMB_X73_Y68_N4
\f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~2_combout\ = (\f1|s_count\(1) & (!\f1|Add0~1\)) # (!\f1|s_count\(1) & ((\f1|Add0~1\) # (GND)))
-- \f1|Add0~3\ = CARRY((!\f1|Add0~1\) # (!\f1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(1),
	datad => VCC,
	cin => \f1|Add0~1\,
	combout => \f1|Add0~2_combout\,
	cout => \f1|Add0~3\);

-- Location: FF_X73_Y68_N5
\f1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(1));

-- Location: LCCOMB_X73_Y68_N6
\f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~4_combout\ = (\f1|s_count\(2) & (\f1|Add0~3\ $ (GND))) # (!\f1|s_count\(2) & (!\f1|Add0~3\ & VCC))
-- \f1|Add0~5\ = CARRY((\f1|s_count\(2) & !\f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(2),
	datad => VCC,
	cin => \f1|Add0~3\,
	combout => \f1|Add0~4_combout\,
	cout => \f1|Add0~5\);

-- Location: FF_X73_Y68_N7
\f1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(2));

-- Location: LCCOMB_X73_Y68_N8
\f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~6_combout\ = (\f1|s_count\(3) & (!\f1|Add0~5\)) # (!\f1|s_count\(3) & ((\f1|Add0~5\) # (GND)))
-- \f1|Add0~7\ = CARRY((!\f1|Add0~5\) # (!\f1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(3),
	datad => VCC,
	cin => \f1|Add0~5\,
	combout => \f1|Add0~6_combout\,
	cout => \f1|Add0~7\);

-- Location: FF_X73_Y68_N9
\f1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(3));

-- Location: LCCOMB_X73_Y68_N10
\f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~8_combout\ = (\f1|s_count\(4) & (\f1|Add0~7\ $ (GND))) # (!\f1|s_count\(4) & (!\f1|Add0~7\ & VCC))
-- \f1|Add0~9\ = CARRY((\f1|s_count\(4) & !\f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(4),
	datad => VCC,
	cin => \f1|Add0~7\,
	combout => \f1|Add0~8_combout\,
	cout => \f1|Add0~9\);

-- Location: FF_X73_Y68_N11
\f1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(4));

-- Location: LCCOMB_X73_Y68_N12
\f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~10_combout\ = (\f1|s_count\(5) & (!\f1|Add0~9\)) # (!\f1|s_count\(5) & ((\f1|Add0~9\) # (GND)))
-- \f1|Add0~11\ = CARRY((!\f1|Add0~9\) # (!\f1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datad => VCC,
	cin => \f1|Add0~9\,
	combout => \f1|Add0~10_combout\,
	cout => \f1|Add0~11\);

-- Location: FF_X73_Y68_N13
\f1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(5));

-- Location: LCCOMB_X73_Y68_N14
\f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~12_combout\ = (\f1|s_count\(6) & (\f1|Add0~11\ $ (GND))) # (!\f1|s_count\(6) & (!\f1|Add0~11\ & VCC))
-- \f1|Add0~13\ = CARRY((\f1|s_count\(6) & !\f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(6),
	datad => VCC,
	cin => \f1|Add0~11\,
	combout => \f1|Add0~12_combout\,
	cout => \f1|Add0~13\);

-- Location: LCCOMB_X72_Y67_N0
\f1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~7_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~12_combout\,
	combout => \f1|s_count~7_combout\);

-- Location: FF_X72_Y67_N1
\f1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(6));

-- Location: LCCOMB_X73_Y68_N16
\f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~14_combout\ = (\f1|s_count\(7) & (!\f1|Add0~13\)) # (!\f1|s_count\(7) & ((\f1|Add0~13\) # (GND)))
-- \f1|Add0~15\ = CARRY((!\f1|Add0~13\) # (!\f1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(7),
	datad => VCC,
	cin => \f1|Add0~13\,
	combout => \f1|Add0~14_combout\,
	cout => \f1|Add0~15\);

-- Location: FF_X73_Y68_N17
\f1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(7));

-- Location: LCCOMB_X73_Y68_N18
\f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~16_combout\ = (\f1|s_count\(8) & (\f1|Add0~15\ $ (GND))) # (!\f1|s_count\(8) & (!\f1|Add0~15\ & VCC))
-- \f1|Add0~17\ = CARRY((\f1|s_count\(8) & !\f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(8),
	datad => VCC,
	cin => \f1|Add0~15\,
	combout => \f1|Add0~16_combout\,
	cout => \f1|Add0~17\);

-- Location: FF_X73_Y68_N19
\f1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(8));

-- Location: LCCOMB_X73_Y68_N20
\f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~18_combout\ = (\f1|s_count\(9) & (!\f1|Add0~17\)) # (!\f1|s_count\(9) & ((\f1|Add0~17\) # (GND)))
-- \f1|Add0~19\ = CARRY((!\f1|Add0~17\) # (!\f1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(9),
	datad => VCC,
	cin => \f1|Add0~17\,
	combout => \f1|Add0~18_combout\,
	cout => \f1|Add0~19\);

-- Location: FF_X73_Y68_N21
\f1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(9));

-- Location: LCCOMB_X73_Y68_N22
\f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~20_combout\ = (\f1|s_count\(10) & (\f1|Add0~19\ $ (GND))) # (!\f1|s_count\(10) & (!\f1|Add0~19\ & VCC))
-- \f1|Add0~21\ = CARRY((\f1|s_count\(10) & !\f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datad => VCC,
	cin => \f1|Add0~19\,
	combout => \f1|Add0~20_combout\,
	cout => \f1|Add0~21\);

-- Location: FF_X73_Y68_N23
\f1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(10));

-- Location: LCCOMB_X73_Y68_N24
\f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~22_combout\ = (\f1|s_count\(11) & (!\f1|Add0~21\)) # (!\f1|s_count\(11) & ((\f1|Add0~21\) # (GND)))
-- \f1|Add0~23\ = CARRY((!\f1|Add0~21\) # (!\f1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(11),
	datad => VCC,
	cin => \f1|Add0~21\,
	combout => \f1|Add0~22_combout\,
	cout => \f1|Add0~23\);

-- Location: LCCOMB_X74_Y67_N18
\f1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~6_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~22_combout\,
	combout => \f1|s_count~6_combout\);

-- Location: FF_X74_Y67_N19
\f1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(11));

-- Location: LCCOMB_X73_Y68_N26
\f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~24_combout\ = (\f1|s_count\(12) & (\f1|Add0~23\ $ (GND))) # (!\f1|s_count\(12) & (!\f1|Add0~23\ & VCC))
-- \f1|Add0~25\ = CARRY((\f1|s_count\(12) & !\f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(12),
	datad => VCC,
	cin => \f1|Add0~23\,
	combout => \f1|Add0~24_combout\,
	cout => \f1|Add0~25\);

-- Location: LCCOMB_X74_Y67_N22
\f1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~5_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~24_combout\,
	combout => \f1|s_count~5_combout\);

-- Location: FF_X74_Y67_N23
\f1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(12));

-- Location: LCCOMB_X73_Y68_N28
\f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~26_combout\ = (\f1|s_count\(13) & (!\f1|Add0~25\)) # (!\f1|s_count\(13) & ((\f1|Add0~25\) # (GND)))
-- \f1|Add0~27\ = CARRY((!\f1|Add0~25\) # (!\f1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(13),
	datad => VCC,
	cin => \f1|Add0~25\,
	combout => \f1|Add0~26_combout\,
	cout => \f1|Add0~27\);

-- Location: LCCOMB_X73_Y68_N0
\f1|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~4_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~26_combout\,
	combout => \f1|s_count~4_combout\);

-- Location: FF_X73_Y68_N1
\f1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(13));

-- Location: LCCOMB_X73_Y68_N30
\f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~28_combout\ = (\f1|s_count\(14) & (\f1|Add0~27\ $ (GND))) # (!\f1|s_count\(14) & (!\f1|Add0~27\ & VCC))
-- \f1|Add0~29\ = CARRY((\f1|s_count\(14) & !\f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(14),
	datad => VCC,
	cin => \f1|Add0~27\,
	combout => \f1|Add0~28_combout\,
	cout => \f1|Add0~29\);

-- Location: LCCOMB_X74_Y67_N10
\f1|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~11_combout\ = (\f1|Add0~28_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~28_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~11_combout\);

-- Location: FF_X74_Y67_N11
\f1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(14));

-- Location: LCCOMB_X73_Y67_N0
\f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~30_combout\ = (\f1|s_count\(15) & (!\f1|Add0~29\)) # (!\f1|s_count\(15) & ((\f1|Add0~29\) # (GND)))
-- \f1|Add0~31\ = CARRY((!\f1|Add0~29\) # (!\f1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(15),
	datad => VCC,
	cin => \f1|Add0~29\,
	combout => \f1|Add0~30_combout\,
	cout => \f1|Add0~31\);

-- Location: FF_X73_Y67_N1
\f1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(15));

-- Location: LCCOMB_X73_Y67_N2
\f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~32_combout\ = (\f1|s_count\(16) & (\f1|Add0~31\ $ (GND))) # (!\f1|s_count\(16) & (!\f1|Add0~31\ & VCC))
-- \f1|Add0~33\ = CARRY((\f1|s_count\(16) & !\f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(16),
	datad => VCC,
	cin => \f1|Add0~31\,
	combout => \f1|Add0~32_combout\,
	cout => \f1|Add0~33\);

-- Location: LCCOMB_X72_Y67_N6
\f1|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~10_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~32_combout\,
	combout => \f1|s_count~10_combout\);

-- Location: FF_X72_Y67_N7
\f1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(16));

-- Location: LCCOMB_X73_Y67_N4
\f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~34_combout\ = (\f1|s_count\(17) & (!\f1|Add0~33\)) # (!\f1|s_count\(17) & ((\f1|Add0~33\) # (GND)))
-- \f1|Add0~35\ = CARRY((!\f1|Add0~33\) # (!\f1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(17),
	datad => VCC,
	cin => \f1|Add0~33\,
	combout => \f1|Add0~34_combout\,
	cout => \f1|Add0~35\);

-- Location: FF_X73_Y67_N5
\f1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(17));

-- Location: LCCOMB_X73_Y67_N6
\f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~36_combout\ = (\f1|s_count\(18) & (\f1|Add0~35\ $ (GND))) # (!\f1|s_count\(18) & (!\f1|Add0~35\ & VCC))
-- \f1|Add0~37\ = CARRY((\f1|s_count\(18) & !\f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(18),
	datad => VCC,
	cin => \f1|Add0~35\,
	combout => \f1|Add0~36_combout\,
	cout => \f1|Add0~37\);

-- Location: LCCOMB_X74_Y67_N20
\f1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~3_combout\ = (\f1|Add0~36_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~36_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~3_combout\);

-- Location: FF_X74_Y67_N21
\f1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(18));

-- Location: LCCOMB_X73_Y67_N8
\f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~38_combout\ = (\f1|s_count\(19) & (!\f1|Add0~37\)) # (!\f1|s_count\(19) & ((\f1|Add0~37\) # (GND)))
-- \f1|Add0~39\ = CARRY((!\f1|Add0~37\) # (!\f1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(19),
	datad => VCC,
	cin => \f1|Add0~37\,
	combout => \f1|Add0~38_combout\,
	cout => \f1|Add0~39\);

-- Location: LCCOMB_X74_Y67_N2
\f1|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~2_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~38_combout\,
	combout => \f1|s_count~2_combout\);

-- Location: FF_X74_Y67_N3
\f1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(19));

-- Location: LCCOMB_X73_Y67_N10
\f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~40_combout\ = (\f1|s_count\(20) & (\f1|Add0~39\ $ (GND))) # (!\f1|s_count\(20) & (!\f1|Add0~39\ & VCC))
-- \f1|Add0~41\ = CARRY((\f1|s_count\(20) & !\f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(20),
	datad => VCC,
	cin => \f1|Add0~39\,
	combout => \f1|Add0~40_combout\,
	cout => \f1|Add0~41\);

-- Location: LCCOMB_X74_Y67_N30
\f1|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~1_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~40_combout\,
	combout => \f1|s_count~1_combout\);

-- Location: FF_X74_Y67_N31
\f1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(20));

-- Location: LCCOMB_X73_Y67_N12
\f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~42_combout\ = (\f1|s_count\(21) & (!\f1|Add0~41\)) # (!\f1|s_count\(21) & ((\f1|Add0~41\) # (GND)))
-- \f1|Add0~43\ = CARRY((!\f1|Add0~41\) # (!\f1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(21),
	datad => VCC,
	cin => \f1|Add0~41\,
	combout => \f1|Add0~42_combout\,
	cout => \f1|Add0~43\);

-- Location: LCCOMB_X74_Y67_N4
\f1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~0_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~42_combout\,
	combout => \f1|s_count~0_combout\);

-- Location: FF_X74_Y67_N5
\f1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(21));

-- Location: LCCOMB_X73_Y67_N14
\f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~44_combout\ = (\f1|s_count\(22) & (\f1|Add0~43\ $ (GND))) # (!\f1|s_count\(22) & (!\f1|Add0~43\ & VCC))
-- \f1|Add0~45\ = CARRY((\f1|s_count\(22) & !\f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(22),
	datad => VCC,
	cin => \f1|Add0~43\,
	combout => \f1|Add0~44_combout\,
	cout => \f1|Add0~45\);

-- Location: LCCOMB_X72_Y67_N22
\f1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~9_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datac => \f1|Add0~44_combout\,
	combout => \f1|s_count~9_combout\);

-- Location: FF_X72_Y67_N23
\f1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(22));

-- Location: LCCOMB_X73_Y67_N16
\f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~46_combout\ = (\f1|s_count\(23) & (!\f1|Add0~45\)) # (!\f1|s_count\(23) & ((\f1|Add0~45\) # (GND)))
-- \f1|Add0~47\ = CARRY((!\f1|Add0~45\) # (!\f1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(23),
	datad => VCC,
	cin => \f1|Add0~45\,
	combout => \f1|Add0~46_combout\,
	cout => \f1|Add0~47\);

-- Location: FF_X73_Y67_N17
\f1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(23));

-- Location: LCCOMB_X73_Y67_N18
\f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~48_combout\ = (\f1|s_count\(24) & (\f1|Add0~47\ $ (GND))) # (!\f1|s_count\(24) & (!\f1|Add0~47\ & VCC))
-- \f1|Add0~49\ = CARRY((\f1|s_count\(24) & !\f1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(24),
	datad => VCC,
	cin => \f1|Add0~47\,
	combout => \f1|Add0~48_combout\,
	cout => \f1|Add0~49\);

-- Location: LCCOMB_X72_Y67_N16
\f1|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~8_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~48_combout\,
	combout => \f1|s_count~8_combout\);

-- Location: FF_X72_Y67_N17
\f1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(24));

-- Location: LCCOMB_X72_Y67_N12
\f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~7_combout\ = (!\f1|s_count\(17) & (\f1|s_count\(24) & (\f1|s_count\(22) & !\f1|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(17),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(22),
	datad => \f1|s_count\(23),
	combout => \f1|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y67_N4
\f1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~8_combout\ = (\f1|s_count\(16) & (!\f1|s_count\(15) & (!\f1|s_count\(10) & \f1|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(16),
	datab => \f1|s_count\(15),
	datac => \f1|s_count\(10),
	datad => \f1|s_count\(14),
	combout => \f1|Equal0~8_combout\);

-- Location: LCCOMB_X73_Y67_N20
\f1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~50_combout\ = (\f1|s_count\(25) & (!\f1|Add0~49\)) # (!\f1|s_count\(25) & ((\f1|Add0~49\) # (GND)))
-- \f1|Add0~51\ = CARRY((!\f1|Add0~49\) # (!\f1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(25),
	datad => VCC,
	cin => \f1|Add0~49\,
	combout => \f1|Add0~50_combout\,
	cout => \f1|Add0~51\);

-- Location: FF_X73_Y67_N21
\f1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(25));

-- Location: LCCOMB_X73_Y67_N22
\f1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~52_combout\ = (\f1|s_count\(26) & (\f1|Add0~51\ $ (GND))) # (!\f1|s_count\(26) & (!\f1|Add0~51\ & VCC))
-- \f1|Add0~53\ = CARRY((\f1|s_count\(26) & !\f1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(26),
	datad => VCC,
	cin => \f1|Add0~51\,
	combout => \f1|Add0~52_combout\,
	cout => \f1|Add0~53\);

-- Location: FF_X73_Y67_N23
\f1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(26));

-- Location: LCCOMB_X74_Y67_N12
\f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = (\f1|s_count\(20) & (!\f1|s_count\(26) & (\f1|s_count\(21) & !\f1|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(20),
	datab => \f1|s_count\(26),
	datac => \f1|s_count\(21),
	datad => \f1|s_count\(25),
	combout => \f1|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y67_N16
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (\f1|s_count\(12) & (\f1|s_count\(19) & (\f1|s_count\(13) & \f1|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(12),
	datab => \f1|s_count\(19),
	datac => \f1|s_count\(13),
	datad => \f1|s_count\(18),
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y67_N24
\f1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~54_combout\ = (\f1|s_count\(27) & (!\f1|Add0~53\)) # (!\f1|s_count\(27) & ((\f1|Add0~53\) # (GND)))
-- \f1|Add0~55\ = CARRY((!\f1|Add0~53\) # (!\f1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(27),
	datad => VCC,
	cin => \f1|Add0~53\,
	combout => \f1|Add0~54_combout\,
	cout => \f1|Add0~55\);

-- Location: FF_X73_Y67_N25
\f1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(27));

-- Location: LCCOMB_X73_Y67_N26
\f1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~56_combout\ = (\f1|s_count\(28) & (\f1|Add0~55\ $ (GND))) # (!\f1|s_count\(28) & (!\f1|Add0~55\ & VCC))
-- \f1|Add0~57\ = CARRY((\f1|s_count\(28) & !\f1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(28),
	datad => VCC,
	cin => \f1|Add0~55\,
	combout => \f1|Add0~56_combout\,
	cout => \f1|Add0~57\);

-- Location: FF_X73_Y67_N27
\f1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(28));

-- Location: LCCOMB_X73_Y67_N28
\f1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~58_combout\ = (\f1|s_count\(29) & (!\f1|Add0~57\)) # (!\f1|s_count\(29) & ((\f1|Add0~57\) # (GND)))
-- \f1|Add0~59\ = CARRY((!\f1|Add0~57\) # (!\f1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(29),
	datad => VCC,
	cin => \f1|Add0~57\,
	combout => \f1|Add0~58_combout\,
	cout => \f1|Add0~59\);

-- Location: FF_X73_Y67_N29
\f1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(29));

-- Location: LCCOMB_X73_Y67_N30
\f1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~60_combout\ = \f1|s_count\(30) $ (!\f1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(30),
	cin => \f1|Add0~59\,
	combout => \f1|Add0~60_combout\);

-- Location: FF_X73_Y67_N31
\f1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(30));

-- Location: LCCOMB_X74_Y67_N14
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|s_count\(29) & (!\f1|s_count\(27) & (!\f1|s_count\(28) & !\f1|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(29),
	datab => \f1|s_count\(27),
	datac => \f1|s_count\(28),
	datad => \f1|s_count\(30),
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y67_N28
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (!\f1|s_count\(8) & (\f1|s_count\(11) & (!\f1|s_count\(7) & !\f1|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(8),
	datab => \f1|s_count\(11),
	datac => \f1|s_count\(7),
	datad => \f1|s_count\(9),
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y67_N26
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~1_combout\ & (\f1|Equal0~2_combout\ & (\f1|Equal0~0_combout\ & \f1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~1_combout\,
	datab => \f1|Equal0~2_combout\,
	datac => \f1|Equal0~0_combout\,
	datad => \f1|Equal0~3_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y67_N14
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (\f1|s_count\(4) & (!\f1|s_count\(6) & (\f1|s_count\(3) & \f1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(4),
	datab => \f1|s_count\(6),
	datac => \f1|s_count\(3),
	datad => \f1|s_count\(2),
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X74_Y67_N24
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (\f1|s_count\(1) & (\f1|s_count\(0) & (\f1|Equal0~4_combout\ & \f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(1),
	datab => \f1|s_count\(0),
	datac => \f1|Equal0~4_combout\,
	datad => \f1|Equal0~5_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X74_Y67_N0
\f1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~9_combout\ = (\f1|s_count\(5) & (\f1|Equal0~7_combout\ & (\f1|Equal0~8_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datab => \f1|Equal0~7_combout\,
	datac => \f1|Equal0~8_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal0~9_combout\);

-- Location: LCCOMB_X72_Y67_N10
\f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~0_combout\ = (\f1|s_count\(17) & (!\f1|s_count\(24) & (!\f1|s_count\(22) & \f1|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(17),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(22),
	datad => \f1|s_count\(23),
	combout => \f1|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y67_N24
\f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~1_combout\ = (\f1|s_count\(10) & (!\f1|s_count\(14) & (\f1|s_count\(15) & !\f1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datab => \f1|s_count\(14),
	datac => \f1|s_count\(15),
	datad => \f1|s_count\(16),
	combout => \f1|Equal1~1_combout\);

-- Location: LCCOMB_X74_Y67_N6
\f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~2_combout\ = (!\f1|s_count\(5) & (\f1|Equal1~0_combout\ & (\f1|Equal1~1_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datab => \f1|Equal1~0_combout\,
	datac => \f1|Equal1~1_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal1~2_combout\);

-- Location: LCCOMB_X74_Y67_N8
\f1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|clkOut~0_combout\ = (\f1|Equal0~9_combout\) # ((\f1|clkOut~q\ & !\f1|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datac => \f1|clkOut~q\,
	datad => \f1|Equal1~2_combout\,
	combout => \f1|clkOut~0_combout\);

-- Location: FF_X74_Y67_N9
\f1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|clkOut~q\);

-- Location: LCCOMB_X86_Y67_N16
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\f1|clkOut~q\ & ((\t2|pulseOut~_Duplicate_1_q\) # ((\t1|pulseOut~_Duplicate_1_q\) # (\t3|pulseOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|pulseOut~_Duplicate_1_q\,
	datab => \t1|pulseOut~_Duplicate_1_q\,
	datac => \t3|pulseOut~q\,
	datad => \f1|clkOut~q\,
	combout => \LEDG~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


