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

-- DATE "03/31/2017 13:27:30"

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

ENTITY 	parking_Phase3 IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	CLOCK_50 : IN std_logic
	);
END parking_Phase3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking_Phase3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|s_count[23]~35_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|Add0~65_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|s_count[25]~31_combout\ : std_logic;
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
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~53_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~55_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~57_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|s_count[7]~24_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Equal0~9_combout\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|s_count[22]~34_combout\ : std_logic;
SIGNAL \t1|p1~2_combout\ : std_logic;
SIGNAL \t1|p1~0_combout\ : std_logic;
SIGNAL \t1|p1~1_combout\ : std_logic;
SIGNAL \t1|p1~3_combout\ : std_logic;
SIGNAL \t1|pulseOut~0_combout\ : std_logic;
SIGNAL \t1|pulseOut~feeder_combout\ : std_logic;
SIGNAL \t1|pulseOut~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \t3|s_count[0]~31_combout\ : std_logic;
SIGNAL \t3|s_count[25]~82\ : std_logic;
SIGNAL \t3|s_count[26]~83_combout\ : std_logic;
SIGNAL \t3|Equal0~2_combout\ : std_logic;
SIGNAL \t3|s_count[26]~84\ : std_logic;
SIGNAL \t3|s_count[27]~86_combout\ : std_logic;
SIGNAL \t3|Equal0~1_combout\ : std_logic;
SIGNAL \t3|Equal0~0_combout\ : std_logic;
SIGNAL \t3|Equal0~3_combout\ : std_logic;
SIGNAL \t3|s_count[27]~87\ : std_logic;
SIGNAL \t3|s_count[28]~88_combout\ : std_logic;
SIGNAL \t3|s_count[28]~89\ : std_logic;
SIGNAL \t3|s_count[29]~90_combout\ : std_logic;
SIGNAL \t3|s_count[29]~91\ : std_logic;
SIGNAL \t3|s_count[30]~92_combout\ : std_logic;
SIGNAL \t3|Equal0~7_combout\ : std_logic;
SIGNAL \t3|Equal0~6_combout\ : std_logic;
SIGNAL \t3|Equal0~5_combout\ : std_logic;
SIGNAL \t3|Equal0~4_combout\ : std_logic;
SIGNAL \t3|Equal0~8_combout\ : std_logic;
SIGNAL \t3|Equal0~9_combout\ : std_logic;
SIGNAL \t3|s_count[1]~85_combout\ : std_logic;
SIGNAL \t3|s_count[0]~32\ : std_logic;
SIGNAL \t3|s_count[1]~33_combout\ : std_logic;
SIGNAL \t3|s_count[1]~34\ : std_logic;
SIGNAL \t3|s_count[2]~35_combout\ : std_logic;
SIGNAL \t3|s_count[2]~36\ : std_logic;
SIGNAL \t3|s_count[3]~37_combout\ : std_logic;
SIGNAL \t3|s_count[3]~38\ : std_logic;
SIGNAL \t3|s_count[4]~39_combout\ : std_logic;
SIGNAL \t3|s_count[4]~40\ : std_logic;
SIGNAL \t3|s_count[5]~41_combout\ : std_logic;
SIGNAL \t3|s_count[5]~42\ : std_logic;
SIGNAL \t3|s_count[6]~43_combout\ : std_logic;
SIGNAL \t3|s_count[6]~44\ : std_logic;
SIGNAL \t3|s_count[7]~45_combout\ : std_logic;
SIGNAL \t3|s_count[7]~46\ : std_logic;
SIGNAL \t3|s_count[8]~47_combout\ : std_logic;
SIGNAL \t3|s_count[8]~48\ : std_logic;
SIGNAL \t3|s_count[9]~49_combout\ : std_logic;
SIGNAL \t3|s_count[9]~50\ : std_logic;
SIGNAL \t3|s_count[10]~51_combout\ : std_logic;
SIGNAL \t3|s_count[10]~52\ : std_logic;
SIGNAL \t3|s_count[11]~53_combout\ : std_logic;
SIGNAL \t3|s_count[11]~54\ : std_logic;
SIGNAL \t3|s_count[12]~55_combout\ : std_logic;
SIGNAL \t3|s_count[12]~56\ : std_logic;
SIGNAL \t3|s_count[13]~57_combout\ : std_logic;
SIGNAL \t3|s_count[13]~58\ : std_logic;
SIGNAL \t3|s_count[14]~59_combout\ : std_logic;
SIGNAL \t3|s_count[14]~60\ : std_logic;
SIGNAL \t3|s_count[15]~61_combout\ : std_logic;
SIGNAL \t3|s_count[15]~62\ : std_logic;
SIGNAL \t3|s_count[16]~63_combout\ : std_logic;
SIGNAL \t3|s_count[16]~64\ : std_logic;
SIGNAL \t3|s_count[17]~65_combout\ : std_logic;
SIGNAL \t3|s_count[17]~66\ : std_logic;
SIGNAL \t3|s_count[18]~67_combout\ : std_logic;
SIGNAL \t3|s_count[18]~68\ : std_logic;
SIGNAL \t3|s_count[19]~69_combout\ : std_logic;
SIGNAL \t3|s_count[19]~70\ : std_logic;
SIGNAL \t3|s_count[20]~71_combout\ : std_logic;
SIGNAL \t3|s_count[20]~72\ : std_logic;
SIGNAL \t3|s_count[21]~73_combout\ : std_logic;
SIGNAL \t3|s_count[21]~74\ : std_logic;
SIGNAL \t3|s_count[22]~75_combout\ : std_logic;
SIGNAL \t3|s_count[22]~76\ : std_logic;
SIGNAL \t3|s_count[23]~77_combout\ : std_logic;
SIGNAL \t3|s_count[23]~78\ : std_logic;
SIGNAL \t3|s_count[24]~79_combout\ : std_logic;
SIGNAL \t3|s_count[24]~80\ : std_logic;
SIGNAL \t3|s_count[25]~81_combout\ : std_logic;
SIGNAL \t3|p1~2_combout\ : std_logic;
SIGNAL \t3|p1~1_combout\ : std_logic;
SIGNAL \t3|p1~0_combout\ : std_logic;
SIGNAL \t3|pulseOut~0_combout\ : std_logic;
SIGNAL \t3|pulseOut~1_combout\ : std_logic;
SIGNAL \t3|pulseOut~2_combout\ : std_logic;
SIGNAL \t3|pulseOut~q\ : std_logic;
SIGNAL \t4|Add0~41\ : std_logic;
SIGNAL \t4|Add0~42_combout\ : std_logic;
SIGNAL \t4|s_count[21]~31_combout\ : std_logic;
SIGNAL \t4|Add0~0_combout\ : std_logic;
SIGNAL \t4|Add0~54_combout\ : std_logic;
SIGNAL \t4|Add0~1\ : std_logic;
SIGNAL \t4|Add0~2_combout\ : std_logic;
SIGNAL \t4|Add0~55_combout\ : std_logic;
SIGNAL \t4|Add0~3\ : std_logic;
SIGNAL \t4|Add0~4_combout\ : std_logic;
SIGNAL \t4|Add0~56_combout\ : std_logic;
SIGNAL \t4|Add0~5\ : std_logic;
SIGNAL \t4|Add0~6_combout\ : std_logic;
SIGNAL \t4|Add0~57_combout\ : std_logic;
SIGNAL \t4|Add0~7\ : std_logic;
SIGNAL \t4|Add0~8_combout\ : std_logic;
SIGNAL \t4|Add0~58_combout\ : std_logic;
SIGNAL \t4|Add0~9\ : std_logic;
SIGNAL \t4|Add0~10_combout\ : std_logic;
SIGNAL \t4|Add0~59_combout\ : std_logic;
SIGNAL \t4|Add0~11\ : std_logic;
SIGNAL \t4|Add0~12_combout\ : std_logic;
SIGNAL \t4|Add0~60_combout\ : std_logic;
SIGNAL \t4|Add0~13\ : std_logic;
SIGNAL \t4|Add0~14_combout\ : std_logic;
SIGNAL \t4|Add0~61_combout\ : std_logic;
SIGNAL \t4|Add0~15\ : std_logic;
SIGNAL \t4|Add0~16_combout\ : std_logic;
SIGNAL \t4|s_count[8]~24_combout\ : std_logic;
SIGNAL \t4|Add0~17\ : std_logic;
SIGNAL \t4|Add0~18_combout\ : std_logic;
SIGNAL \t4|Add0~62_combout\ : std_logic;
SIGNAL \t4|Add0~19\ : std_logic;
SIGNAL \t4|Add0~20_combout\ : std_logic;
SIGNAL \t4|Add0~63_combout\ : std_logic;
SIGNAL \t4|Add0~21\ : std_logic;
SIGNAL \t4|Add0~22_combout\ : std_logic;
SIGNAL \t4|Add0~64_combout\ : std_logic;
SIGNAL \t4|Add0~23\ : std_logic;
SIGNAL \t4|Add0~24_combout\ : std_logic;
SIGNAL \t4|Add0~65_combout\ : std_logic;
SIGNAL \t4|Add0~25\ : std_logic;
SIGNAL \t4|Add0~26_combout\ : std_logic;
SIGNAL \t4|s_count[13]~25_combout\ : std_logic;
SIGNAL \t4|Add0~27\ : std_logic;
SIGNAL \t4|Add0~28_combout\ : std_logic;
SIGNAL \t4|s_count[14]~26_combout\ : std_logic;
SIGNAL \t4|Add0~29\ : std_logic;
SIGNAL \t4|Add0~30_combout\ : std_logic;
SIGNAL \t4|s_count[15]~27_combout\ : std_logic;
SIGNAL \t4|Add0~31\ : std_logic;
SIGNAL \t4|Add0~32_combout\ : std_logic;
SIGNAL \t4|s_count[16]~28_combout\ : std_logic;
SIGNAL \t4|Add0~33\ : std_logic;
SIGNAL \t4|Add0~34_combout\ : std_logic;
SIGNAL \t4|Add0~66_combout\ : std_logic;
SIGNAL \t4|Add0~35\ : std_logic;
SIGNAL \t4|Add0~36_combout\ : std_logic;
SIGNAL \t4|s_count[18]~29_combout\ : std_logic;
SIGNAL \t4|p1~1_combout\ : std_logic;
SIGNAL \t4|p1~0_combout\ : std_logic;
SIGNAL \t4|Add0~43\ : std_logic;
SIGNAL \t4|Add0~44_combout\ : std_logic;
SIGNAL \t4|s_count[22]~32_combout\ : std_logic;
SIGNAL \t4|Add0~45\ : std_logic;
SIGNAL \t4|Add0~46_combout\ : std_logic;
SIGNAL \t4|s_count[23]~33_combout\ : std_logic;
SIGNAL \t4|Add0~47\ : std_logic;
SIGNAL \t4|Add0~48_combout\ : std_logic;
SIGNAL \t4|s_count[24]~34_combout\ : std_logic;
SIGNAL \t4|Add0~49\ : std_logic;
SIGNAL \t4|Add0~50_combout\ : std_logic;
SIGNAL \t4|Add0~68_combout\ : std_logic;
SIGNAL \t4|Add0~51\ : std_logic;
SIGNAL \t4|Add0~52_combout\ : std_logic;
SIGNAL \t4|s_count[26]~35_combout\ : std_logic;
SIGNAL \t4|p1~2_combout\ : std_logic;
SIGNAL \t4|p1~3_combout\ : std_logic;
SIGNAL \t4|Add0~37\ : std_logic;
SIGNAL \t4|Add0~38_combout\ : std_logic;
SIGNAL \t4|Add0~67_combout\ : std_logic;
SIGNAL \t4|Add0~39\ : std_logic;
SIGNAL \t4|Add0~40_combout\ : std_logic;
SIGNAL \t4|s_count[20]~30_combout\ : std_logic;
SIGNAL \t4|Equal0~7_combout\ : std_logic;
SIGNAL \t4|Equal0~8_combout\ : std_logic;
SIGNAL \t4|Equal0~6_combout\ : std_logic;
SIGNAL \t4|Equal0~9_combout\ : std_logic;
SIGNAL \t4|Add0~53\ : std_logic;
SIGNAL \t4|Add0~69_combout\ : std_logic;
SIGNAL \t4|Add0~71_combout\ : std_logic;
SIGNAL \t4|Add0~70\ : std_logic;
SIGNAL \t4|Add0~72_combout\ : std_logic;
SIGNAL \t4|Add0~74_combout\ : std_logic;
SIGNAL \t4|Add0~73\ : std_logic;
SIGNAL \t4|Add0~75_combout\ : std_logic;
SIGNAL \t4|Add0~77_combout\ : std_logic;
SIGNAL \t4|Add0~76\ : std_logic;
SIGNAL \t4|Add0~78_combout\ : std_logic;
SIGNAL \t4|Add0~80_combout\ : std_logic;
SIGNAL \t4|Equal0~2_combout\ : std_logic;
SIGNAL \t4|Equal0~3_combout\ : std_logic;
SIGNAL \t4|Equal0~1_combout\ : std_logic;
SIGNAL \t4|Equal0~0_combout\ : std_logic;
SIGNAL \t4|Equal0~4_combout\ : std_logic;
SIGNAL \t4|Equal0~5_combout\ : std_logic;
SIGNAL \t4|pulseOut~0_combout\ : std_logic;
SIGNAL \t4|pulseOut~q\ : std_logic;
SIGNAL \t0|Add0~2_combout\ : std_logic;
SIGNAL \t0|Add0~19\ : std_logic;
SIGNAL \t0|Add0~20_combout\ : std_logic;
SIGNAL \t0|Add0~68_combout\ : std_logic;
SIGNAL \t0|Add0~21\ : std_logic;
SIGNAL \t0|Add0~22_combout\ : std_logic;
SIGNAL \t0|p1~5_combout\ : std_logic;
SIGNAL \t0|s_count[10]~1_combout\ : std_logic;
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
SIGNAL \t0|Add0~47\ : std_logic;
SIGNAL \t0|Add0~48_combout\ : std_logic;
SIGNAL \t0|s_count[23]~8_combout\ : std_logic;
SIGNAL \t0|Add0~49\ : std_logic;
SIGNAL \t0|Add0~50_combout\ : std_logic;
SIGNAL \t0|s_count[24]~9_combout\ : std_logic;
SIGNAL \t0|Add0~51\ : std_logic;
SIGNAL \t0|Add0~52_combout\ : std_logic;
SIGNAL \t0|Add0~75_combout\ : std_logic;
SIGNAL \t0|Add0~53\ : std_logic;
SIGNAL \t0|Add0~54_combout\ : std_logic;
SIGNAL \t0|s_count[26]~10_combout\ : std_logic;
SIGNAL \t0|Add0~55\ : std_logic;
SIGNAL \t0|Add0~56_combout\ : std_logic;
SIGNAL \t0|s_count[27]~11_combout\ : std_logic;
SIGNAL \t0|p1~2_combout\ : std_logic;
SIGNAL \t0|p1~1_combout\ : std_logic;
SIGNAL \t0|Add0~57\ : std_logic;
SIGNAL \t0|Add0~58_combout\ : std_logic;
SIGNAL \t0|s_count[28]~12_combout\ : std_logic;
SIGNAL \t0|p1~3_combout\ : std_logic;
SIGNAL \t0|p1~4_combout\ : std_logic;
SIGNAL \t0|Add0~59\ : std_logic;
SIGNAL \t0|Add0~76_combout\ : std_logic;
SIGNAL \t0|Add0~78_combout\ : std_logic;
SIGNAL \t0|Add0~77\ : std_logic;
SIGNAL \t0|Add0~79_combout\ : std_logic;
SIGNAL \t0|Add0~81_combout\ : std_logic;
SIGNAL \t0|Equal0~7_combout\ : std_logic;
SIGNAL \t0|Equal0~5_combout\ : std_logic;
SIGNAL \t0|Equal0~6_combout\ : std_logic;
SIGNAL \t0|Equal0~4_combout\ : std_logic;
SIGNAL \t0|Equal0~8_combout\ : std_logic;
SIGNAL \t0|Equal0~9_combout\ : std_logic;
SIGNAL \t0|Add0~61_combout\ : std_logic;
SIGNAL \t0|Add0~3\ : std_logic;
SIGNAL \t0|Add0~4_combout\ : std_logic;
SIGNAL \t0|Add0~60_combout\ : std_logic;
SIGNAL \t0|Add0~5\ : std_logic;
SIGNAL \t0|Add0~6_combout\ : std_logic;
SIGNAL \t0|Add0~62_combout\ : std_logic;
SIGNAL \t0|Add0~7\ : std_logic;
SIGNAL \t0|Add0~8_combout\ : std_logic;
SIGNAL \t0|Add0~63_combout\ : std_logic;
SIGNAL \t0|Add0~9\ : std_logic;
SIGNAL \t0|Add0~10_combout\ : std_logic;
SIGNAL \t0|Add0~64_combout\ : std_logic;
SIGNAL \t0|Add0~11\ : std_logic;
SIGNAL \t0|Add0~12_combout\ : std_logic;
SIGNAL \t0|Add0~65_combout\ : std_logic;
SIGNAL \t0|Add0~13\ : std_logic;
SIGNAL \t0|Add0~14_combout\ : std_logic;
SIGNAL \t0|Add0~66_combout\ : std_logic;
SIGNAL \t0|Add0~15\ : std_logic;
SIGNAL \t0|Add0~16_combout\ : std_logic;
SIGNAL \t0|Add0~67_combout\ : std_logic;
SIGNAL \t0|Add0~17\ : std_logic;
SIGNAL \t0|Add0~18_combout\ : std_logic;
SIGNAL \t0|s_count[8]~0_combout\ : std_logic;
SIGNAL \t0|Equal0~0_combout\ : std_logic;
SIGNAL \t0|Equal0~2_combout\ : std_logic;
SIGNAL \t0|Equal0~1_combout\ : std_logic;
SIGNAL \t0|Equal0~3_combout\ : std_logic;
SIGNAL \t0|pulseOut~0_combout\ : std_logic;
SIGNAL \t0|pulseOut~q\ : std_logic;
SIGNAL \t2|Add0~0_combout\ : std_logic;
SIGNAL \t2|Add0~54_combout\ : std_logic;
SIGNAL \t2|Add0~1\ : std_logic;
SIGNAL \t2|Add0~2_combout\ : std_logic;
SIGNAL \t2|Add0~55_combout\ : std_logic;
SIGNAL \t2|Add0~3\ : std_logic;
SIGNAL \t2|Add0~4_combout\ : std_logic;
SIGNAL \t2|Add0~56_combout\ : std_logic;
SIGNAL \t2|Add0~5\ : std_logic;
SIGNAL \t2|Add0~6_combout\ : std_logic;
SIGNAL \t2|Add0~57_combout\ : std_logic;
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
SIGNAL \t2|Equal0~7_combout\ : std_logic;
SIGNAL \t2|Equal0~6_combout\ : std_logic;
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
SIGNAL \t2|Equal0~9_combout\ : std_logic;
SIGNAL \t2|s_count[0]~0_combout\ : std_logic;
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
SIGNAL \t2|Equal0~2_combout\ : std_logic;
SIGNAL \t2|Equal0~1_combout\ : std_logic;
SIGNAL \t2|Equal0~0_combout\ : std_logic;
SIGNAL \t2|Equal0~4_combout\ : std_logic;
SIGNAL \t2|Equal0~5_combout\ : std_logic;
SIGNAL \t2|p1~0_combout\ : std_logic;
SIGNAL \t2|p1~1_combout\ : std_logic;
SIGNAL \t2|p1~2_combout\ : std_logic;
SIGNAL \t2|p1~3_combout\ : std_logic;
SIGNAL \t2|pulseOut~0_combout\ : std_logic;
SIGNAL \t2|pulseOut~q\ : std_logic;
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
SIGNAL \f1|Equal0~8_combout\ : std_logic;
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
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Add0~49\ : std_logic;
SIGNAL \f1|Add0~50_combout\ : std_logic;
SIGNAL \f1|Add0~51\ : std_logic;
SIGNAL \f1|Add0~52_combout\ : std_logic;
SIGNAL \f1|Add0~53\ : std_logic;
SIGNAL \f1|Add0~54_combout\ : std_logic;
SIGNAL \f1|Add0~55\ : std_logic;
SIGNAL \f1|Add0~56_combout\ : std_logic;
SIGNAL \f1|Add0~57\ : std_logic;
SIGNAL \f1|Add0~58_combout\ : std_logic;
SIGNAL \f1|Add0~59\ : std_logic;
SIGNAL \f1|Add0~60_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal0~9_combout\ : std_logic;
SIGNAL \f1|Equal1~0_combout\ : std_logic;
SIGNAL \f1|Equal1~1_combout\ : std_logic;
SIGNAL \f1|Equal1~2_combout\ : std_logic;
SIGNAL \f1|clkOut~0_combout\ : std_logic;
SIGNAL \f1|clkOut~q\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \t3|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t4|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t0|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \t2|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \f1|s_count\ : std_logic_vector(30 DOWNTO 0);

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

-- Location: LCCOMB_X68_Y47_N16
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

-- Location: LCCOMB_X68_Y47_N18
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|s_count\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|s_count\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|s_count\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X69_Y47_N0
\t1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~59_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~16_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~16_combout\,
	combout => \t1|Add0~59_combout\);

-- Location: FF_X69_Y47_N1
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

-- Location: LCCOMB_X68_Y47_N20
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|s_count\(9) & (!\t1|Add0~17\)) # (!\t1|s_count\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X69_Y47_N12
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~18_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|Add0~60_combout\);

-- Location: FF_X69_Y47_N13
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

-- Location: LCCOMB_X68_Y47_N22
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|s_count\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|s_count\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|s_count\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: LCCOMB_X69_Y47_N2
\t1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~61_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~20_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~20_combout\,
	combout => \t1|Add0~61_combout\);

-- Location: FF_X69_Y47_N3
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

-- Location: LCCOMB_X68_Y47_N24
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|s_count\(11) & (!\t1|Add0~21\)) # (!\t1|s_count\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X69_Y47_N4
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~22_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~22_combout\,
	combout => \t1|Add0~62_combout\);

-- Location: FF_X69_Y47_N5
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

-- Location: LCCOMB_X68_Y47_N26
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|s_count\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|s_count\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|s_count\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X66_Y47_N16
\t1|s_count[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[12]~25_combout\ = (\t1|Equal0~9_combout\ & (((\t1|pulseOut~0_combout\ & \t1|Add0~24_combout\)) # (!\KEY[0]~input_o\))) # (!\t1|Equal0~9_combout\ & (((\t1|pulseOut~0_combout\ & \t1|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|pulseOut~0_combout\,
	datad => \t1|Add0~24_combout\,
	combout => \t1|s_count[12]~25_combout\);

-- Location: FF_X66_Y47_N17
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

-- Location: LCCOMB_X68_Y47_N28
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

-- Location: LCCOMB_X66_Y47_N30
\t1|s_count[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[13]~26_combout\ = (\t1|Add0~26_combout\ & ((\t1|pulseOut~0_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|Add0~26_combout\ & (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~26_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|pulseOut~0_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|s_count[13]~26_combout\);

-- Location: FF_X66_Y47_N31
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

-- Location: LCCOMB_X68_Y47_N30
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|s_count\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|s_count\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|s_count\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X66_Y47_N18
\t1|s_count[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[14]~27_combout\ = (\t1|Equal0~9_combout\ & (((\t1|pulseOut~0_combout\ & \t1|Add0~28_combout\)) # (!\KEY[0]~input_o\))) # (!\t1|Equal0~9_combout\ & (((\t1|pulseOut~0_combout\ & \t1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~9_combout\,
	datab => \KEY[0]~input_o\,
	datac => \t1|pulseOut~0_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|s_count[14]~27_combout\);

-- Location: FF_X66_Y47_N19
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

-- Location: LCCOMB_X68_Y46_N0
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|s_count\(15) & (!\t1|Add0~29\)) # (!\t1|s_count\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X67_Y47_N24
\t1|s_count[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[15]~28_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~30_combout\) # ((\t1|Equal0~9_combout\ & !\KEY[0]~input_o\)))) # (!\t1|pulseOut~0_combout\ & (\t1|Equal0~9_combout\ & (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \KEY[0]~input_o\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|s_count[15]~28_combout\);

-- Location: FF_X67_Y47_N25
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

-- Location: LCCOMB_X68_Y46_N2
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|s_count\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|s_count\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|s_count\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X69_Y47_N30
\t1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~63_combout\ = (\t1|Add0~32_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Add0~32_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~63_combout\);

-- Location: FF_X69_Y47_N31
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

-- Location: LCCOMB_X68_Y46_N4
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

-- Location: LCCOMB_X67_Y47_N30
\t1|s_count[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[17]~29_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~34_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~34_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~34_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[17]~29_combout\);

-- Location: FF_X67_Y47_N31
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

-- Location: LCCOMB_X68_Y46_N6
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|s_count\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|s_count\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|s_count\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X67_Y47_N8
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

-- Location: FF_X67_Y47_N9
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

-- Location: LCCOMB_X68_Y46_N8
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|s_count\(19) & (!\t1|Add0~37\)) # (!\t1|s_count\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X67_Y47_N16
\t1|s_count[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[19]~30_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~38_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~38_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~38_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[19]~30_combout\);

-- Location: FF_X67_Y47_N17
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

-- Location: LCCOMB_X68_Y46_N10
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|s_count\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|s_count\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|s_count\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X67_Y47_N28
\t1|s_count[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[20]~32_combout\ = (\t1|pulseOut~0_combout\ & ((\t1|Add0~40_combout\) # ((\t1|Equal0~9_combout\ & !\KEY[0]~input_o\)))) # (!\t1|pulseOut~0_combout\ & (\t1|Equal0~9_combout\ & (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~0_combout\,
	datab => \t1|Equal0~9_combout\,
	datac => \KEY[0]~input_o\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|s_count[20]~32_combout\);

-- Location: FF_X67_Y47_N29
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

-- Location: LCCOMB_X68_Y46_N12
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|s_count\(21) & (!\t1|Add0~41\)) # (!\t1|s_count\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X67_Y47_N18
\t1|s_count[21]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[21]~33_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~42_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~42_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~42_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[21]~33_combout\);

-- Location: FF_X67_Y47_N19
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

-- Location: LCCOMB_X68_Y46_N14
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|s_count\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|s_count\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|s_count\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X68_Y46_N16
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

-- Location: LCCOMB_X67_Y47_N2
\t1|s_count[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[23]~35_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~46_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~46_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~46_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[23]~35_combout\);

-- Location: FF_X67_Y47_N3
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

-- Location: LCCOMB_X68_Y46_N18
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

-- Location: LCCOMB_X67_Y47_N22
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

-- Location: FF_X67_Y47_N23
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

-- Location: LCCOMB_X68_Y46_N20
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

-- Location: LCCOMB_X67_Y47_N6
\t1|s_count[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[25]~31_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~50_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~50_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~50_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[25]~31_combout\);

-- Location: FF_X67_Y47_N7
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

-- Location: LCCOMB_X68_Y46_N22
\t1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~66_combout\ = (\t1|s_count\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|s_count\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~67\ = CARRY((\t1|s_count\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~66_combout\,
	cout => \t1|Add0~67\);

-- Location: LCCOMB_X67_Y47_N12
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

-- Location: FF_X67_Y47_N13
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

-- Location: LCCOMB_X68_Y46_N24
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

-- Location: LCCOMB_X67_Y47_N14
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

-- Location: FF_X67_Y47_N15
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

-- Location: LCCOMB_X68_Y46_N26
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

-- Location: LCCOMB_X69_Y47_N28
\t1|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~74_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~72_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~72_combout\,
	combout => \t1|Add0~74_combout\);

-- Location: FF_X69_Y47_N29
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

-- Location: LCCOMB_X68_Y46_N28
\t1|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~75_combout\ = (\t1|s_count\(29) & (!\t1|Add0~73\)) # (!\t1|s_count\(29) & ((\t1|Add0~73\) # (GND)))
-- \t1|Add0~76\ = CARRY((!\t1|Add0~73\) # (!\t1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(29),
	datad => VCC,
	cin => \t1|Add0~73\,
	combout => \t1|Add0~75_combout\,
	cout => \t1|Add0~76\);

-- Location: LCCOMB_X69_Y47_N6
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

-- Location: FF_X69_Y47_N7
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

-- Location: LCCOMB_X68_Y46_N30
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

-- Location: LCCOMB_X69_Y47_N8
\t1|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~80_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~78_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~78_combout\,
	combout => \t1|Add0~80_combout\);

-- Location: FF_X69_Y47_N9
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

-- Location: LCCOMB_X68_Y47_N2
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|s_count\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X68_Y47_N0
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|Add0~0_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~0_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~52_combout\);

-- Location: FF_X68_Y47_N1
\t1|s_count[0]\ : dffeas
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
	q => \t1|s_count\(0));

-- Location: LCCOMB_X68_Y47_N4
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

-- Location: LCCOMB_X67_Y47_N26
\t1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~53_combout\ = (\t1|Add0~2_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~2_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~53_combout\);

-- Location: FF_X68_Y47_N3
\t1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t1|Add0~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(1));

-- Location: LCCOMB_X68_Y47_N6
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

-- Location: LCCOMB_X67_Y47_N20
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|Add0~4_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~4_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|p1~3_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~54_combout\);

-- Location: FF_X67_Y47_N21
\t1|s_count[2]\ : dffeas
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
	q => \t1|s_count\(2));

-- Location: LCCOMB_X68_Y47_N8
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|s_count\(3) & (!\t1|Add0~5\)) # (!\t1|s_count\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X67_Y47_N10
\t1|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~55_combout\ = (\t1|Add0~6_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|p1~3_combout\,
	datac => \t1|Add0~6_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~55_combout\);

-- Location: FF_X67_Y47_N11
\t1|s_count[3]\ : dffeas
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
	q => \t1|s_count\(3));

-- Location: LCCOMB_X68_Y47_N10
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|s_count\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|s_count\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|s_count\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: LCCOMB_X69_Y47_N10
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~8_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~8_combout\,
	combout => \t1|Add0~56_combout\);

-- Location: FF_X69_Y47_N11
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

-- Location: LCCOMB_X68_Y47_N12
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|s_count\(5) & (!\t1|Add0~9\)) # (!\t1|s_count\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X69_Y47_N20
\t1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~57_combout\ = (\t1|Add0~10_combout\ & (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Add0~10_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Add0~57_combout\);

-- Location: FF_X69_Y47_N21
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

-- Location: LCCOMB_X69_Y47_N26
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|s_count\(4) & (!\t1|s_count\(5) & (!\t1|s_count\(6) & !\t1|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(4),
	datab => \t1|s_count\(5),
	datac => \t1|s_count\(6),
	datad => \t1|s_count\(8),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y47_N24
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (!\t1|s_count\(9) & (!\t1|s_count\(11) & (!\t1|s_count\(16) & !\t1|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datab => \t1|s_count\(11),
	datac => \t1|s_count\(16),
	datad => \t1|s_count\(10),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y47_N0
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (!\t1|s_count\(24) & (!\t1|s_count\(18) & (!\t1|s_count\(27) & !\t1|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(24),
	datab => \t1|s_count\(18),
	datac => \t1|s_count\(27),
	datad => \t1|s_count\(26),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X69_Y47_N16
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

-- Location: LCCOMB_X69_Y47_N18
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~1_combout\ & (\t1|Equal0~2_combout\ & (\t1|Equal0~3_combout\ & \t1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datab => \t1|Equal0~2_combout\,
	datac => \t1|Equal0~3_combout\,
	datad => \t1|Equal0~0_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X69_Y47_N14
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (!\t1|s_count\(29) & (!\t1|s_count\(28) & (!\t1|s_count\(30) & \t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(29),
	datab => \t1|s_count\(28),
	datac => \t1|s_count\(30),
	datad => \t1|Equal0~4_combout\,
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X68_Y47_N14
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

-- Location: LCCOMB_X69_Y47_N22
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (!\t1|Equal0~9_combout\ & (\t1|Add0~12_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~3_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal0~9_combout\,
	datad => \t1|Add0~12_combout\,
	combout => \t1|Add0~58_combout\);

-- Location: FF_X69_Y47_N23
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

-- Location: LCCOMB_X66_Y47_N10
\t1|s_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[7]~24_combout\ = (\t1|Add0~14_combout\ & ((\t1|pulseOut~0_combout\) # ((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\)))) # (!\t1|Add0~14_combout\ & (((!\KEY[0]~input_o\ & \t1|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~14_combout\,
	datab => \t1|pulseOut~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|s_count[7]~24_combout\);

-- Location: FF_X66_Y47_N11
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

-- Location: LCCOMB_X66_Y47_N26
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (\t1|s_count\(7) & (\t1|s_count\(12) & (\t1|s_count\(13) & \t1|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(7),
	datab => \t1|s_count\(12),
	datac => \t1|s_count\(13),
	datad => \t1|s_count\(14),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y47_N2
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (\t1|s_count\(22) & (\t1|s_count\(25) & (\t1|s_count\(23) & \t1|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datab => \t1|s_count\(25),
	datac => \t1|s_count\(23),
	datad => \t1|s_count\(21),
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X66_Y47_N12
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (\t1|s_count\(17) & (\t1|s_count\(19) & (\t1|s_count\(15) & \t1|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(17),
	datab => \t1|s_count\(19),
	datac => \t1|s_count\(15),
	datad => \t1|s_count\(20),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X66_Y47_N20
\t1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~9_combout\ = (\t1|Equal0~6_combout\ & (\t1|Equal0~8_combout\ & (\t1|Equal0~5_combout\ & \t1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~6_combout\,
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|Equal0~9_combout\);

-- Location: LCCOMB_X67_Y47_N4
\t1|s_count[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[22]~34_combout\ = (\KEY[0]~input_o\ & (((\t1|Add0~44_combout\ & \t1|pulseOut~0_combout\)))) # (!\KEY[0]~input_o\ & ((\t1|Equal0~9_combout\) # ((\t1|Add0~44_combout\ & \t1|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Add0~44_combout\,
	datad => \t1|pulseOut~0_combout\,
	combout => \t1|s_count[22]~34_combout\);

-- Location: FF_X67_Y47_N5
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

-- Location: LCCOMB_X66_Y47_N22
\t1|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~2_combout\ = (\t1|s_count\(22)) # ((\t1|s_count\(21)) # ((\t1|s_count\(23)) # (\t1|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datab => \t1|s_count\(21),
	datac => \t1|s_count\(23),
	datad => \t1|s_count\(20),
	combout => \t1|p1~2_combout\);

-- Location: LCCOMB_X66_Y47_N28
\t1|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~0_combout\ = (\t1|s_count\(13)) # ((\t1|s_count\(12)) # ((\t1|s_count\(7)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(13),
	datab => \t1|s_count\(12),
	datac => \KEY[0]~input_o\,
	datad => \t1|s_count\(7),
	combout => \t1|p1~0_combout\);

-- Location: LCCOMB_X66_Y47_N0
\t1|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~1_combout\ = (\t1|s_count\(17)) # ((\t1|s_count\(19)) # ((\t1|s_count\(14)) # (\t1|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(17),
	datab => \t1|s_count\(19),
	datac => \t1|s_count\(14),
	datad => \t1|s_count\(15),
	combout => \t1|p1~1_combout\);

-- Location: LCCOMB_X66_Y47_N4
\t1|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~3_combout\ = (\t1|p1~2_combout\) # ((\t1|p1~0_combout\) # ((\t1|s_count\(25)) # (\t1|p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|p1~2_combout\,
	datab => \t1|p1~0_combout\,
	datac => \t1|s_count\(25),
	datad => \t1|p1~1_combout\,
	combout => \t1|p1~3_combout\);

-- Location: LCCOMB_X66_Y47_N14
\t1|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut~0_combout\ = (!\t1|Equal0~9_combout\ & ((\t1|p1~3_combout\) # (!\t1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|p1~3_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|pulseOut~0_combout\);

-- Location: LCCOMB_X66_Y47_N24
\t1|pulseOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut~feeder_combout\ = \t1|pulseOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|pulseOut~0_combout\,
	combout => \t1|pulseOut~feeder_combout\);

-- Location: FF_X66_Y47_N25
\t1|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X106_Y53_N2
\t3|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[0]~31_combout\ = \t3|s_count\(0) $ (VCC)
-- \t3|s_count[0]~32\ = CARRY(\t3|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(0),
	datad => VCC,
	combout => \t3|s_count[0]~31_combout\,
	cout => \t3|s_count[0]~32\);

-- Location: LCCOMB_X106_Y52_N20
\t3|s_count[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[25]~81_combout\ = (\t3|s_count\(25) & (!\t3|s_count[24]~80\)) # (!\t3|s_count\(25) & ((\t3|s_count[24]~80\) # (GND)))
-- \t3|s_count[25]~82\ = CARRY((!\t3|s_count[24]~80\) # (!\t3|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(25),
	datad => VCC,
	cin => \t3|s_count[24]~80\,
	combout => \t3|s_count[25]~81_combout\,
	cout => \t3|s_count[25]~82\);

-- Location: LCCOMB_X106_Y52_N22
\t3|s_count[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[26]~83_combout\ = (\t3|s_count\(26) & (\t3|s_count[25]~82\ $ (GND))) # (!\t3|s_count\(26) & (!\t3|s_count[25]~82\ & VCC))
-- \t3|s_count[26]~84\ = CARRY((\t3|s_count\(26) & !\t3|s_count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(26),
	datad => VCC,
	cin => \t3|s_count[25]~82\,
	combout => \t3|s_count[26]~83_combout\,
	cout => \t3|s_count[26]~84\);

-- Location: FF_X106_Y52_N23
\t3|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[26]~83_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(26));

-- Location: LCCOMB_X105_Y52_N30
\t3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~2_combout\ = (\t3|s_count\(25) & (\t3|s_count\(23) & (\t3|s_count\(22) & \t3|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(25),
	datab => \t3|s_count\(23),
	datac => \t3|s_count\(22),
	datad => \t3|s_count\(26),
	combout => \t3|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y52_N24
\t3|s_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[27]~86_combout\ = (\t3|s_count\(27) & (!\t3|s_count[26]~84\)) # (!\t3|s_count\(27) & ((\t3|s_count[26]~84\) # (GND)))
-- \t3|s_count[27]~87\ = CARRY((!\t3|s_count[26]~84\) # (!\t3|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(27),
	datad => VCC,
	cin => \t3|s_count[26]~84\,
	combout => \t3|s_count[27]~86_combout\,
	cout => \t3|s_count[27]~87\);

-- Location: FF_X106_Y52_N25
\t3|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[27]~86_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(27));

-- Location: LCCOMB_X105_Y52_N8
\t3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~1_combout\ = (\t3|s_count\(15) & (\t3|s_count\(17) & (\t3|s_count\(21) & \t3|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(15),
	datab => \t3|s_count\(17),
	datac => \t3|s_count\(21),
	datad => \t3|s_count\(18),
	combout => \t3|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y52_N18
\t3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~0_combout\ = (\t3|s_count\(9) & (\t3|s_count\(12) & (\t3|s_count\(13) & \t3|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(9),
	datab => \t3|s_count\(12),
	datac => \t3|s_count\(13),
	datad => \t3|s_count\(7),
	combout => \t3|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y52_N4
\t3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~3_combout\ = (\t3|Equal0~2_combout\ & (\t3|s_count\(27) & (\t3|Equal0~1_combout\ & \t3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~2_combout\,
	datab => \t3|s_count\(27),
	datac => \t3|Equal0~1_combout\,
	datad => \t3|Equal0~0_combout\,
	combout => \t3|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y52_N26
\t3|s_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[28]~88_combout\ = (\t3|s_count\(28) & (\t3|s_count[27]~87\ $ (GND))) # (!\t3|s_count\(28) & (!\t3|s_count[27]~87\ & VCC))
-- \t3|s_count[28]~89\ = CARRY((\t3|s_count\(28) & !\t3|s_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(28),
	datad => VCC,
	cin => \t3|s_count[27]~87\,
	combout => \t3|s_count[28]~88_combout\,
	cout => \t3|s_count[28]~89\);

-- Location: FF_X106_Y52_N27
\t3|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[28]~88_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(28));

-- Location: LCCOMB_X106_Y52_N28
\t3|s_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[29]~90_combout\ = (\t3|s_count\(29) & (!\t3|s_count[28]~89\)) # (!\t3|s_count\(29) & ((\t3|s_count[28]~89\) # (GND)))
-- \t3|s_count[29]~91\ = CARRY((!\t3|s_count[28]~89\) # (!\t3|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(29),
	datad => VCC,
	cin => \t3|s_count[28]~89\,
	combout => \t3|s_count[29]~90_combout\,
	cout => \t3|s_count[29]~91\);

-- Location: FF_X106_Y52_N29
\t3|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[29]~90_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(29));

-- Location: LCCOMB_X106_Y52_N30
\t3|s_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[30]~92_combout\ = \t3|s_count\(30) $ (!\t3|s_count[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(30),
	cin => \t3|s_count[29]~91\,
	combout => \t3|s_count[30]~92_combout\);

-- Location: FF_X106_Y52_N31
\t3|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[30]~92_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(30));

-- Location: LCCOMB_X105_Y52_N6
\t3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~7_combout\ = (!\t3|s_count\(24) & (!\t3|s_count\(20) & (!\t3|s_count\(19) & !\t3|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(24),
	datab => \t3|s_count\(20),
	datac => \t3|s_count\(19),
	datad => \t3|s_count\(28),
	combout => \t3|Equal0~7_combout\);

-- Location: LCCOMB_X105_Y52_N24
\t3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~6_combout\ = (!\t3|s_count\(16) & (!\t3|s_count\(14) & (!\t3|s_count\(11) & !\t3|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(16),
	datab => \t3|s_count\(14),
	datac => \t3|s_count\(11),
	datad => \t3|s_count\(10),
	combout => \t3|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y52_N22
\t3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~5_combout\ = (!\t3|s_count\(6) & (!\t3|s_count\(4) & (!\t3|s_count\(8) & !\t3|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(6),
	datab => \t3|s_count\(4),
	datac => \t3|s_count\(8),
	datad => \t3|s_count\(5),
	combout => \t3|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y53_N0
\t3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~4_combout\ = (!\t3|s_count\(2) & (!\t3|s_count\(3) & (!\t3|s_count\(1) & !\t3|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(2),
	datab => \t3|s_count\(3),
	datac => \t3|s_count\(1),
	datad => \t3|s_count\(0),
	combout => \t3|Equal0~4_combout\);

-- Location: LCCOMB_X105_Y52_N28
\t3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~8_combout\ = (\t3|Equal0~7_combout\ & (\t3|Equal0~6_combout\ & (\t3|Equal0~5_combout\ & \t3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|Equal0~7_combout\,
	datab => \t3|Equal0~6_combout\,
	datac => \t3|Equal0~5_combout\,
	datad => \t3|Equal0~4_combout\,
	combout => \t3|Equal0~8_combout\);

-- Location: LCCOMB_X105_Y52_N10
\t3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|Equal0~9_combout\ = (!\t3|s_count\(30) & (!\t3|s_count\(29) & \t3|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(30),
	datac => \t3|s_count\(29),
	datad => \t3|Equal0~8_combout\,
	combout => \t3|Equal0~9_combout\);

-- Location: LCCOMB_X105_Y52_N2
\t3|s_count[1]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[1]~85_combout\ = (!\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # ((!\t3|Equal0~9_combout\) # (!\t3|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \t3|Equal0~3_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|s_count[1]~85_combout\);

-- Location: FF_X106_Y53_N3
\t3|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[0]~31_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(0));

-- Location: LCCOMB_X106_Y53_N4
\t3|s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[1]~33_combout\ = (\t3|s_count\(1) & (!\t3|s_count[0]~32\)) # (!\t3|s_count\(1) & ((\t3|s_count[0]~32\) # (GND)))
-- \t3|s_count[1]~34\ = CARRY((!\t3|s_count[0]~32\) # (!\t3|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(1),
	datad => VCC,
	cin => \t3|s_count[0]~32\,
	combout => \t3|s_count[1]~33_combout\,
	cout => \t3|s_count[1]~34\);

-- Location: FF_X106_Y53_N5
\t3|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[1]~33_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(1));

-- Location: LCCOMB_X106_Y53_N6
\t3|s_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[2]~35_combout\ = (\t3|s_count\(2) & (\t3|s_count[1]~34\ $ (GND))) # (!\t3|s_count\(2) & (!\t3|s_count[1]~34\ & VCC))
-- \t3|s_count[2]~36\ = CARRY((\t3|s_count\(2) & !\t3|s_count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(2),
	datad => VCC,
	cin => \t3|s_count[1]~34\,
	combout => \t3|s_count[2]~35_combout\,
	cout => \t3|s_count[2]~36\);

-- Location: FF_X106_Y53_N7
\t3|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[2]~35_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(2));

-- Location: LCCOMB_X106_Y53_N8
\t3|s_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[3]~37_combout\ = (\t3|s_count\(3) & (!\t3|s_count[2]~36\)) # (!\t3|s_count\(3) & ((\t3|s_count[2]~36\) # (GND)))
-- \t3|s_count[3]~38\ = CARRY((!\t3|s_count[2]~36\) # (!\t3|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(3),
	datad => VCC,
	cin => \t3|s_count[2]~36\,
	combout => \t3|s_count[3]~37_combout\,
	cout => \t3|s_count[3]~38\);

-- Location: FF_X106_Y53_N9
\t3|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[3]~37_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(3));

-- Location: LCCOMB_X106_Y53_N10
\t3|s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[4]~39_combout\ = (\t3|s_count\(4) & (\t3|s_count[3]~38\ $ (GND))) # (!\t3|s_count\(4) & (!\t3|s_count[3]~38\ & VCC))
-- \t3|s_count[4]~40\ = CARRY((\t3|s_count\(4) & !\t3|s_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(4),
	datad => VCC,
	cin => \t3|s_count[3]~38\,
	combout => \t3|s_count[4]~39_combout\,
	cout => \t3|s_count[4]~40\);

-- Location: FF_X106_Y53_N11
\t3|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[4]~39_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(4));

-- Location: LCCOMB_X106_Y53_N12
\t3|s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[5]~41_combout\ = (\t3|s_count\(5) & (!\t3|s_count[4]~40\)) # (!\t3|s_count\(5) & ((\t3|s_count[4]~40\) # (GND)))
-- \t3|s_count[5]~42\ = CARRY((!\t3|s_count[4]~40\) # (!\t3|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(5),
	datad => VCC,
	cin => \t3|s_count[4]~40\,
	combout => \t3|s_count[5]~41_combout\,
	cout => \t3|s_count[5]~42\);

-- Location: FF_X106_Y53_N13
\t3|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[5]~41_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(5));

-- Location: LCCOMB_X106_Y53_N14
\t3|s_count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[6]~43_combout\ = (\t3|s_count\(6) & (\t3|s_count[5]~42\ $ (GND))) # (!\t3|s_count\(6) & (!\t3|s_count[5]~42\ & VCC))
-- \t3|s_count[6]~44\ = CARRY((\t3|s_count\(6) & !\t3|s_count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(6),
	datad => VCC,
	cin => \t3|s_count[5]~42\,
	combout => \t3|s_count[6]~43_combout\,
	cout => \t3|s_count[6]~44\);

-- Location: FF_X106_Y53_N15
\t3|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[6]~43_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(6));

-- Location: LCCOMB_X106_Y53_N16
\t3|s_count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[7]~45_combout\ = (\t3|s_count\(7) & (!\t3|s_count[6]~44\)) # (!\t3|s_count\(7) & ((\t3|s_count[6]~44\) # (GND)))
-- \t3|s_count[7]~46\ = CARRY((!\t3|s_count[6]~44\) # (!\t3|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(7),
	datad => VCC,
	cin => \t3|s_count[6]~44\,
	combout => \t3|s_count[7]~45_combout\,
	cout => \t3|s_count[7]~46\);

-- Location: FF_X106_Y53_N17
\t3|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[7]~45_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(7));

-- Location: LCCOMB_X106_Y53_N18
\t3|s_count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[8]~47_combout\ = (\t3|s_count\(8) & (\t3|s_count[7]~46\ $ (GND))) # (!\t3|s_count\(8) & (!\t3|s_count[7]~46\ & VCC))
-- \t3|s_count[8]~48\ = CARRY((\t3|s_count\(8) & !\t3|s_count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(8),
	datad => VCC,
	cin => \t3|s_count[7]~46\,
	combout => \t3|s_count[8]~47_combout\,
	cout => \t3|s_count[8]~48\);

-- Location: FF_X106_Y53_N19
\t3|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[8]~47_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(8));

-- Location: LCCOMB_X106_Y53_N20
\t3|s_count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[9]~49_combout\ = (\t3|s_count\(9) & (!\t3|s_count[8]~48\)) # (!\t3|s_count\(9) & ((\t3|s_count[8]~48\) # (GND)))
-- \t3|s_count[9]~50\ = CARRY((!\t3|s_count[8]~48\) # (!\t3|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(9),
	datad => VCC,
	cin => \t3|s_count[8]~48\,
	combout => \t3|s_count[9]~49_combout\,
	cout => \t3|s_count[9]~50\);

-- Location: FF_X106_Y53_N21
\t3|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[9]~49_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(9));

-- Location: LCCOMB_X106_Y53_N22
\t3|s_count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[10]~51_combout\ = (\t3|s_count\(10) & (\t3|s_count[9]~50\ $ (GND))) # (!\t3|s_count\(10) & (!\t3|s_count[9]~50\ & VCC))
-- \t3|s_count[10]~52\ = CARRY((\t3|s_count\(10) & !\t3|s_count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(10),
	datad => VCC,
	cin => \t3|s_count[9]~50\,
	combout => \t3|s_count[10]~51_combout\,
	cout => \t3|s_count[10]~52\);

-- Location: FF_X106_Y53_N23
\t3|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[10]~51_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(10));

-- Location: LCCOMB_X106_Y53_N24
\t3|s_count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[11]~53_combout\ = (\t3|s_count\(11) & (!\t3|s_count[10]~52\)) # (!\t3|s_count\(11) & ((\t3|s_count[10]~52\) # (GND)))
-- \t3|s_count[11]~54\ = CARRY((!\t3|s_count[10]~52\) # (!\t3|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(11),
	datad => VCC,
	cin => \t3|s_count[10]~52\,
	combout => \t3|s_count[11]~53_combout\,
	cout => \t3|s_count[11]~54\);

-- Location: FF_X106_Y53_N25
\t3|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[11]~53_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(11));

-- Location: LCCOMB_X106_Y53_N26
\t3|s_count[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[12]~55_combout\ = (\t3|s_count\(12) & (\t3|s_count[11]~54\ $ (GND))) # (!\t3|s_count\(12) & (!\t3|s_count[11]~54\ & VCC))
-- \t3|s_count[12]~56\ = CARRY((\t3|s_count\(12) & !\t3|s_count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(12),
	datad => VCC,
	cin => \t3|s_count[11]~54\,
	combout => \t3|s_count[12]~55_combout\,
	cout => \t3|s_count[12]~56\);

-- Location: FF_X106_Y53_N27
\t3|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[12]~55_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(12));

-- Location: LCCOMB_X106_Y53_N28
\t3|s_count[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[13]~57_combout\ = (\t3|s_count\(13) & (!\t3|s_count[12]~56\)) # (!\t3|s_count\(13) & ((\t3|s_count[12]~56\) # (GND)))
-- \t3|s_count[13]~58\ = CARRY((!\t3|s_count[12]~56\) # (!\t3|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(13),
	datad => VCC,
	cin => \t3|s_count[12]~56\,
	combout => \t3|s_count[13]~57_combout\,
	cout => \t3|s_count[13]~58\);

-- Location: FF_X106_Y53_N29
\t3|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[13]~57_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(13));

-- Location: LCCOMB_X106_Y53_N30
\t3|s_count[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[14]~59_combout\ = (\t3|s_count\(14) & (\t3|s_count[13]~58\ $ (GND))) # (!\t3|s_count\(14) & (!\t3|s_count[13]~58\ & VCC))
-- \t3|s_count[14]~60\ = CARRY((\t3|s_count\(14) & !\t3|s_count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(14),
	datad => VCC,
	cin => \t3|s_count[13]~58\,
	combout => \t3|s_count[14]~59_combout\,
	cout => \t3|s_count[14]~60\);

-- Location: FF_X106_Y53_N31
\t3|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[14]~59_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(14));

-- Location: LCCOMB_X106_Y52_N0
\t3|s_count[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[15]~61_combout\ = (\t3|s_count\(15) & (!\t3|s_count[14]~60\)) # (!\t3|s_count\(15) & ((\t3|s_count[14]~60\) # (GND)))
-- \t3|s_count[15]~62\ = CARRY((!\t3|s_count[14]~60\) # (!\t3|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(15),
	datad => VCC,
	cin => \t3|s_count[14]~60\,
	combout => \t3|s_count[15]~61_combout\,
	cout => \t3|s_count[15]~62\);

-- Location: FF_X106_Y52_N1
\t3|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[15]~61_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(15));

-- Location: LCCOMB_X106_Y52_N2
\t3|s_count[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[16]~63_combout\ = (\t3|s_count\(16) & (\t3|s_count[15]~62\ $ (GND))) # (!\t3|s_count\(16) & (!\t3|s_count[15]~62\ & VCC))
-- \t3|s_count[16]~64\ = CARRY((\t3|s_count\(16) & !\t3|s_count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(16),
	datad => VCC,
	cin => \t3|s_count[15]~62\,
	combout => \t3|s_count[16]~63_combout\,
	cout => \t3|s_count[16]~64\);

-- Location: FF_X106_Y52_N3
\t3|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[16]~63_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(16));

-- Location: LCCOMB_X106_Y52_N4
\t3|s_count[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[17]~65_combout\ = (\t3|s_count\(17) & (!\t3|s_count[16]~64\)) # (!\t3|s_count\(17) & ((\t3|s_count[16]~64\) # (GND)))
-- \t3|s_count[17]~66\ = CARRY((!\t3|s_count[16]~64\) # (!\t3|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(17),
	datad => VCC,
	cin => \t3|s_count[16]~64\,
	combout => \t3|s_count[17]~65_combout\,
	cout => \t3|s_count[17]~66\);

-- Location: FF_X106_Y52_N5
\t3|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[17]~65_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(17));

-- Location: LCCOMB_X106_Y52_N6
\t3|s_count[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[18]~67_combout\ = (\t3|s_count\(18) & (\t3|s_count[17]~66\ $ (GND))) # (!\t3|s_count\(18) & (!\t3|s_count[17]~66\ & VCC))
-- \t3|s_count[18]~68\ = CARRY((\t3|s_count\(18) & !\t3|s_count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(18),
	datad => VCC,
	cin => \t3|s_count[17]~66\,
	combout => \t3|s_count[18]~67_combout\,
	cout => \t3|s_count[18]~68\);

-- Location: FF_X106_Y52_N7
\t3|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[18]~67_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(18));

-- Location: LCCOMB_X106_Y52_N8
\t3|s_count[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[19]~69_combout\ = (\t3|s_count\(19) & (!\t3|s_count[18]~68\)) # (!\t3|s_count\(19) & ((\t3|s_count[18]~68\) # (GND)))
-- \t3|s_count[19]~70\ = CARRY((!\t3|s_count[18]~68\) # (!\t3|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(19),
	datad => VCC,
	cin => \t3|s_count[18]~68\,
	combout => \t3|s_count[19]~69_combout\,
	cout => \t3|s_count[19]~70\);

-- Location: FF_X106_Y52_N9
\t3|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[19]~69_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(19));

-- Location: LCCOMB_X106_Y52_N10
\t3|s_count[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[20]~71_combout\ = (\t3|s_count\(20) & (\t3|s_count[19]~70\ $ (GND))) # (!\t3|s_count\(20) & (!\t3|s_count[19]~70\ & VCC))
-- \t3|s_count[20]~72\ = CARRY((\t3|s_count\(20) & !\t3|s_count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(20),
	datad => VCC,
	cin => \t3|s_count[19]~70\,
	combout => \t3|s_count[20]~71_combout\,
	cout => \t3|s_count[20]~72\);

-- Location: FF_X106_Y52_N11
\t3|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[20]~71_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(20));

-- Location: LCCOMB_X106_Y52_N12
\t3|s_count[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[21]~73_combout\ = (\t3|s_count\(21) & (!\t3|s_count[20]~72\)) # (!\t3|s_count\(21) & ((\t3|s_count[20]~72\) # (GND)))
-- \t3|s_count[21]~74\ = CARRY((!\t3|s_count[20]~72\) # (!\t3|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(21),
	datad => VCC,
	cin => \t3|s_count[20]~72\,
	combout => \t3|s_count[21]~73_combout\,
	cout => \t3|s_count[21]~74\);

-- Location: FF_X106_Y52_N13
\t3|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[21]~73_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(21));

-- Location: LCCOMB_X106_Y52_N14
\t3|s_count[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[22]~75_combout\ = (\t3|s_count\(22) & (\t3|s_count[21]~74\ $ (GND))) # (!\t3|s_count\(22) & (!\t3|s_count[21]~74\ & VCC))
-- \t3|s_count[22]~76\ = CARRY((\t3|s_count\(22) & !\t3|s_count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(22),
	datad => VCC,
	cin => \t3|s_count[21]~74\,
	combout => \t3|s_count[22]~75_combout\,
	cout => \t3|s_count[22]~76\);

-- Location: FF_X106_Y52_N15
\t3|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[22]~75_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(22));

-- Location: LCCOMB_X106_Y52_N16
\t3|s_count[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[23]~77_combout\ = (\t3|s_count\(23) & (!\t3|s_count[22]~76\)) # (!\t3|s_count\(23) & ((\t3|s_count[22]~76\) # (GND)))
-- \t3|s_count[23]~78\ = CARRY((!\t3|s_count[22]~76\) # (!\t3|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(23),
	datad => VCC,
	cin => \t3|s_count[22]~76\,
	combout => \t3|s_count[23]~77_combout\,
	cout => \t3|s_count[23]~78\);

-- Location: FF_X106_Y52_N17
\t3|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[23]~77_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(23));

-- Location: LCCOMB_X106_Y52_N18
\t3|s_count[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|s_count[24]~79_combout\ = (\t3|s_count\(24) & (\t3|s_count[23]~78\ $ (GND))) # (!\t3|s_count\(24) & (!\t3|s_count[23]~78\ & VCC))
-- \t3|s_count[24]~80\ = CARRY((\t3|s_count\(24) & !\t3|s_count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t3|s_count\(24),
	datad => VCC,
	cin => \t3|s_count[23]~78\,
	combout => \t3|s_count[24]~79_combout\,
	cout => \t3|s_count[24]~80\);

-- Location: FF_X106_Y52_N19
\t3|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[24]~79_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(24));

-- Location: FF_X106_Y52_N21
\t3|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|s_count[25]~81_combout\,
	sclr => \t3|pulseOut~1_combout\,
	ena => \t3|s_count[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|s_count\(25));

-- Location: LCCOMB_X105_Y52_N12
\t3|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~2_combout\ = (\t3|s_count\(25)) # ((\t3|s_count\(22)) # ((\t3|s_count\(21)) # (\t3|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(25),
	datab => \t3|s_count\(22),
	datac => \t3|s_count\(21),
	datad => \t3|s_count\(23),
	combout => \t3|p1~2_combout\);

-- Location: LCCOMB_X105_Y52_N14
\t3|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~1_combout\ = (\t3|s_count\(15)) # ((\t3|s_count\(17)) # ((\t3|s_count\(13)) # (\t3|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(15),
	datab => \t3|s_count\(17),
	datac => \t3|s_count\(13),
	datad => \t3|s_count\(18),
	combout => \t3|p1~1_combout\);

-- Location: LCCOMB_X105_Y52_N16
\t3|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|p1~0_combout\ = (\t3|s_count\(9)) # (((\t3|s_count\(12)) # (\t3|s_count\(7))) # (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|s_count\(9),
	datab => \KEY[0]~input_o\,
	datac => \t3|s_count\(12),
	datad => \t3|s_count\(7),
	combout => \t3|p1~0_combout\);

-- Location: LCCOMB_X105_Y52_N26
\t3|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|pulseOut~0_combout\ = (\t3|p1~2_combout\) # ((\t3|s_count\(27)) # ((\t3|p1~1_combout\) # (\t3|p1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|p1~2_combout\,
	datab => \t3|s_count\(27),
	datac => \t3|p1~1_combout\,
	datad => \t3|p1~0_combout\,
	combout => \t3|pulseOut~0_combout\);

-- Location: LCCOMB_X105_Y52_N0
\t3|pulseOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|pulseOut~1_combout\ = (\t3|Equal0~9_combout\ & ((\t3|Equal0~3_combout\) # ((!\t3|pulseOut~0_combout\ & !\t3|s_count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t3|pulseOut~0_combout\,
	datab => \t3|s_count\(26),
	datac => \t3|Equal0~3_combout\,
	datad => \t3|Equal0~9_combout\,
	combout => \t3|pulseOut~1_combout\);

-- Location: LCCOMB_X105_Y52_N20
\t3|pulseOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t3|pulseOut~2_combout\ = (\KEY[1]~input_o\ & (\t3|pulseOut~q\)) # (!\KEY[1]~input_o\ & ((!\t3|pulseOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \t3|pulseOut~q\,
	datad => \t3|pulseOut~1_combout\,
	combout => \t3|pulseOut~2_combout\);

-- Location: FF_X105_Y52_N21
\t3|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t3|pulseOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3|pulseOut~q\);

-- Location: LCCOMB_X73_Y51_N10
\t4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~40_combout\ = (\t4|s_count\(20) & (\t4|Add0~39\ $ (GND))) # (!\t4|s_count\(20) & (!\t4|Add0~39\ & VCC))
-- \t4|Add0~41\ = CARRY((\t4|s_count\(20) & !\t4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(20),
	datad => VCC,
	cin => \t4|Add0~39\,
	combout => \t4|Add0~40_combout\,
	cout => \t4|Add0~41\);

-- Location: LCCOMB_X73_Y51_N12
\t4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~42_combout\ = (\t4|s_count\(21) & (!\t4|Add0~41\)) # (!\t4|s_count\(21) & ((\t4|Add0~41\) # (GND)))
-- \t4|Add0~43\ = CARRY((!\t4|Add0~41\) # (!\t4|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(21),
	datad => VCC,
	cin => \t4|Add0~41\,
	combout => \t4|Add0~42_combout\,
	cout => \t4|Add0~43\);

-- Location: LCCOMB_X74_Y52_N28
\t4|s_count[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[21]~31_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~42_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~42_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~42_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[21]~31_combout\);

-- Location: FF_X74_Y52_N29
\t4|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[21]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(21));

-- Location: LCCOMB_X73_Y52_N2
\t4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~0_combout\ = \t4|s_count\(0) $ (VCC)
-- \t4|Add0~1\ = CARRY(\t4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(0),
	datad => VCC,
	combout => \t4|Add0~0_combout\,
	cout => \t4|Add0~1\);

-- Location: LCCOMB_X72_Y52_N22
\t4|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~54_combout\ = (\t4|Add0~0_combout\ & (!\t4|Equal0~9_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~5_combout\,
	datab => \t4|Add0~0_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Equal0~9_combout\,
	combout => \t4|Add0~54_combout\);

-- Location: FF_X72_Y52_N23
\t4|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(0));

-- Location: LCCOMB_X73_Y52_N4
\t4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~2_combout\ = (\t4|s_count\(1) & (!\t4|Add0~1\)) # (!\t4|s_count\(1) & ((\t4|Add0~1\) # (GND)))
-- \t4|Add0~3\ = CARRY((!\t4|Add0~1\) # (!\t4|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(1),
	datad => VCC,
	cin => \t4|Add0~1\,
	combout => \t4|Add0~2_combout\,
	cout => \t4|Add0~3\);

-- Location: LCCOMB_X72_Y52_N24
\t4|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~55_combout\ = (\t4|Add0~2_combout\ & (!\t4|Equal0~9_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Add0~2_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~55_combout\);

-- Location: FF_X72_Y52_N25
\t4|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(1));

-- Location: LCCOMB_X73_Y52_N6
\t4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~4_combout\ = (\t4|s_count\(2) & (\t4|Add0~3\ $ (GND))) # (!\t4|s_count\(2) & (!\t4|Add0~3\ & VCC))
-- \t4|Add0~5\ = CARRY((\t4|s_count\(2) & !\t4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(2),
	datad => VCC,
	cin => \t4|Add0~3\,
	combout => \t4|Add0~4_combout\,
	cout => \t4|Add0~5\);

-- Location: LCCOMB_X73_Y52_N0
\t4|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~56_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~4_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~5_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~4_combout\,
	combout => \t4|Add0~56_combout\);

-- Location: FF_X73_Y52_N1
\t4|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(2));

-- Location: LCCOMB_X73_Y52_N8
\t4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~6_combout\ = (\t4|s_count\(3) & (!\t4|Add0~5\)) # (!\t4|s_count\(3) & ((\t4|Add0~5\) # (GND)))
-- \t4|Add0~7\ = CARRY((!\t4|Add0~5\) # (!\t4|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(3),
	datad => VCC,
	cin => \t4|Add0~5\,
	combout => \t4|Add0~6_combout\,
	cout => \t4|Add0~7\);

-- Location: LCCOMB_X72_Y52_N6
\t4|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~57_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~6_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~3_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|Add0~6_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~57_combout\);

-- Location: FF_X72_Y52_N7
\t4|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(3));

-- Location: LCCOMB_X73_Y52_N10
\t4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~8_combout\ = (\t4|s_count\(4) & (\t4|Add0~7\ $ (GND))) # (!\t4|s_count\(4) & (!\t4|Add0~7\ & VCC))
-- \t4|Add0~9\ = CARRY((\t4|s_count\(4) & !\t4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(4),
	datad => VCC,
	cin => \t4|Add0~7\,
	combout => \t4|Add0~8_combout\,
	cout => \t4|Add0~9\);

-- Location: LCCOMB_X72_Y52_N26
\t4|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~58_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~8_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~3_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|Add0~8_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~58_combout\);

-- Location: FF_X72_Y52_N27
\t4|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(4));

-- Location: LCCOMB_X73_Y52_N12
\t4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~10_combout\ = (\t4|s_count\(5) & (!\t4|Add0~9\)) # (!\t4|s_count\(5) & ((\t4|Add0~9\) # (GND)))
-- \t4|Add0~11\ = CARRY((!\t4|Add0~9\) # (!\t4|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(5),
	datad => VCC,
	cin => \t4|Add0~9\,
	combout => \t4|Add0~10_combout\,
	cout => \t4|Add0~11\);

-- Location: LCCOMB_X72_Y52_N4
\t4|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~59_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~10_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~3_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|Add0~10_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~59_combout\);

-- Location: FF_X72_Y52_N5
\t4|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(5));

-- Location: LCCOMB_X73_Y52_N14
\t4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~12_combout\ = (\t4|s_count\(6) & (\t4|Add0~11\ $ (GND))) # (!\t4|s_count\(6) & (!\t4|Add0~11\ & VCC))
-- \t4|Add0~13\ = CARRY((\t4|s_count\(6) & !\t4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(6),
	datad => VCC,
	cin => \t4|Add0~11\,
	combout => \t4|Add0~12_combout\,
	cout => \t4|Add0~13\);

-- Location: LCCOMB_X72_Y52_N18
\t4|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~60_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~12_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~3_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|Add0~12_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~60_combout\);

-- Location: FF_X72_Y52_N19
\t4|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(6));

-- Location: LCCOMB_X73_Y52_N16
\t4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~14_combout\ = (\t4|s_count\(7) & (!\t4|Add0~13\)) # (!\t4|s_count\(7) & ((\t4|Add0~13\) # (GND)))
-- \t4|Add0~15\ = CARRY((!\t4|Add0~13\) # (!\t4|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(7),
	datad => VCC,
	cin => \t4|Add0~13\,
	combout => \t4|Add0~14_combout\,
	cout => \t4|Add0~15\);

-- Location: LCCOMB_X72_Y52_N16
\t4|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~61_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~14_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~3_combout\,
	datab => \t4|Equal0~9_combout\,
	datac => \t4|Add0~14_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~61_combout\);

-- Location: FF_X72_Y52_N17
\t4|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(7));

-- Location: LCCOMB_X73_Y52_N18
\t4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~16_combout\ = (\t4|s_count\(8) & (\t4|Add0~15\ $ (GND))) # (!\t4|s_count\(8) & (!\t4|Add0~15\ & VCC))
-- \t4|Add0~17\ = CARRY((\t4|s_count\(8) & !\t4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(8),
	datad => VCC,
	cin => \t4|Add0~15\,
	combout => \t4|Add0~16_combout\,
	cout => \t4|Add0~17\);

-- Location: LCCOMB_X74_Y52_N12
\t4|s_count[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[8]~24_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~16_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (\t4|Add0~16_combout\ & ((\t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Add0~16_combout\,
	datac => \t3|pulseOut~q\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[8]~24_combout\);

-- Location: FF_X74_Y52_N13
\t4|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(8));

-- Location: LCCOMB_X73_Y52_N20
\t4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~18_combout\ = (\t4|s_count\(9) & (!\t4|Add0~17\)) # (!\t4|s_count\(9) & ((\t4|Add0~17\) # (GND)))
-- \t4|Add0~19\ = CARRY((!\t4|Add0~17\) # (!\t4|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(9),
	datad => VCC,
	cin => \t4|Add0~17\,
	combout => \t4|Add0~18_combout\,
	cout => \t4|Add0~19\);

-- Location: LCCOMB_X72_Y51_N22
\t4|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~62_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~18_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|p1~3_combout\,
	datac => \t4|Add0~18_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~62_combout\);

-- Location: FF_X72_Y51_N23
\t4|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(9));

-- Location: LCCOMB_X73_Y52_N22
\t4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~20_combout\ = (\t4|s_count\(10) & (\t4|Add0~19\ $ (GND))) # (!\t4|s_count\(10) & (!\t4|Add0~19\ & VCC))
-- \t4|Add0~21\ = CARRY((\t4|s_count\(10) & !\t4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(10),
	datad => VCC,
	cin => \t4|Add0~19\,
	combout => \t4|Add0~20_combout\,
	cout => \t4|Add0~21\);

-- Location: LCCOMB_X72_Y51_N28
\t4|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~63_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~20_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|p1~3_combout\,
	datac => \t4|Add0~20_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~63_combout\);

-- Location: FF_X72_Y51_N29
\t4|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(10));

-- Location: LCCOMB_X73_Y52_N24
\t4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~22_combout\ = (\t4|s_count\(11) & (!\t4|Add0~21\)) # (!\t4|s_count\(11) & ((\t4|Add0~21\) # (GND)))
-- \t4|Add0~23\ = CARRY((!\t4|Add0~21\) # (!\t4|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(11),
	datad => VCC,
	cin => \t4|Add0~21\,
	combout => \t4|Add0~22_combout\,
	cout => \t4|Add0~23\);

-- Location: LCCOMB_X72_Y51_N14
\t4|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~64_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~22_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~22_combout\,
	combout => \t4|Add0~64_combout\);

-- Location: FF_X72_Y51_N15
\t4|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(11));

-- Location: LCCOMB_X73_Y52_N26
\t4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~24_combout\ = (\t4|s_count\(12) & (\t4|Add0~23\ $ (GND))) # (!\t4|s_count\(12) & (!\t4|Add0~23\ & VCC))
-- \t4|Add0~25\ = CARRY((\t4|s_count\(12) & !\t4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(12),
	datad => VCC,
	cin => \t4|Add0~23\,
	combout => \t4|Add0~24_combout\,
	cout => \t4|Add0~25\);

-- Location: LCCOMB_X72_Y51_N4
\t4|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~65_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~24_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~24_combout\,
	combout => \t4|Add0~65_combout\);

-- Location: FF_X72_Y51_N5
\t4|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(12));

-- Location: LCCOMB_X73_Y52_N28
\t4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~26_combout\ = (\t4|s_count\(13) & (!\t4|Add0~25\)) # (!\t4|s_count\(13) & ((\t4|Add0~25\) # (GND)))
-- \t4|Add0~27\ = CARRY((!\t4|Add0~25\) # (!\t4|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(13),
	datad => VCC,
	cin => \t4|Add0~25\,
	combout => \t4|Add0~26_combout\,
	cout => \t4|Add0~27\);

-- Location: LCCOMB_X74_Y52_N2
\t4|s_count[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[13]~25_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~26_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (\t4|Add0~26_combout\ & ((\t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Add0~26_combout\,
	datac => \t3|pulseOut~q\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[13]~25_combout\);

-- Location: FF_X74_Y52_N3
\t4|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[13]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(13));

-- Location: LCCOMB_X73_Y52_N30
\t4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~28_combout\ = (\t4|s_count\(14) & (\t4|Add0~27\ $ (GND))) # (!\t4|s_count\(14) & (!\t4|Add0~27\ & VCC))
-- \t4|Add0~29\ = CARRY((\t4|s_count\(14) & !\t4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(14),
	datad => VCC,
	cin => \t4|Add0~27\,
	combout => \t4|Add0~28_combout\,
	cout => \t4|Add0~29\);

-- Location: LCCOMB_X74_Y52_N4
\t4|s_count[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[14]~26_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~28_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (\t4|Add0~28_combout\ & ((\t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Add0~28_combout\,
	datac => \t3|pulseOut~q\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[14]~26_combout\);

-- Location: FF_X74_Y52_N5
\t4|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(14));

-- Location: LCCOMB_X73_Y51_N0
\t4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~30_combout\ = (\t4|s_count\(15) & (!\t4|Add0~29\)) # (!\t4|s_count\(15) & ((\t4|Add0~29\) # (GND)))
-- \t4|Add0~31\ = CARRY((!\t4|Add0~29\) # (!\t4|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(15),
	datad => VCC,
	cin => \t4|Add0~29\,
	combout => \t4|Add0~30_combout\,
	cout => \t4|Add0~31\);

-- Location: LCCOMB_X74_Y52_N30
\t4|s_count[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[15]~27_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~30_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~30_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~30_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[15]~27_combout\);

-- Location: FF_X74_Y52_N31
\t4|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(15));

-- Location: LCCOMB_X73_Y51_N2
\t4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~32_combout\ = (\t4|s_count\(16) & (\t4|Add0~31\ $ (GND))) # (!\t4|s_count\(16) & (!\t4|Add0~31\ & VCC))
-- \t4|Add0~33\ = CARRY((\t4|s_count\(16) & !\t4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(16),
	datad => VCC,
	cin => \t4|Add0~31\,
	combout => \t4|Add0~32_combout\,
	cout => \t4|Add0~33\);

-- Location: LCCOMB_X74_Y52_N22
\t4|s_count[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[16]~28_combout\ = (\t4|Add0~32_combout\ & ((\t4|pulseOut~0_combout\) # ((!\t3|pulseOut~q\ & \t4|Equal0~9_combout\)))) # (!\t4|Add0~32_combout\ & (!\t3|pulseOut~q\ & ((\t4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Add0~32_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|pulseOut~0_combout\,
	datad => \t4|Equal0~9_combout\,
	combout => \t4|s_count[16]~28_combout\);

-- Location: FF_X74_Y52_N23
\t4|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(16));

-- Location: LCCOMB_X73_Y51_N4
\t4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~34_combout\ = (\t4|s_count\(17) & (!\t4|Add0~33\)) # (!\t4|s_count\(17) & ((\t4|Add0~33\) # (GND)))
-- \t4|Add0~35\ = CARRY((!\t4|Add0~33\) # (!\t4|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(17),
	datad => VCC,
	cin => \t4|Add0~33\,
	combout => \t4|Add0~34_combout\,
	cout => \t4|Add0~35\);

-- Location: LCCOMB_X72_Y51_N12
\t4|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~66_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~34_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~34_combout\,
	combout => \t4|Add0~66_combout\);

-- Location: FF_X72_Y51_N13
\t4|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(17));

-- Location: LCCOMB_X73_Y51_N6
\t4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~36_combout\ = (\t4|s_count\(18) & (\t4|Add0~35\ $ (GND))) # (!\t4|s_count\(18) & (!\t4|Add0~35\ & VCC))
-- \t4|Add0~37\ = CARRY((\t4|s_count\(18) & !\t4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(18),
	datad => VCC,
	cin => \t4|Add0~35\,
	combout => \t4|Add0~36_combout\,
	cout => \t4|Add0~37\);

-- Location: LCCOMB_X74_Y52_N20
\t4|s_count[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[18]~29_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~36_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~36_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~36_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[18]~29_combout\);

-- Location: FF_X74_Y52_N21
\t4|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(18));

-- Location: LCCOMB_X74_Y52_N6
\t4|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|p1~1_combout\ = (\t4|s_count\(20)) # ((\t4|s_count\(21)) # ((\t4|s_count\(16)) # (\t4|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(20),
	datab => \t4|s_count\(21),
	datac => \t4|s_count\(16),
	datad => \t4|s_count\(18),
	combout => \t4|p1~1_combout\);

-- Location: LCCOMB_X74_Y52_N0
\t4|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|p1~0_combout\ = (\t4|s_count\(15)) # ((\t4|s_count\(13)) # ((\t4|s_count\(14)) # (\t4|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(15),
	datab => \t4|s_count\(13),
	datac => \t4|s_count\(14),
	datad => \t4|s_count\(8),
	combout => \t4|p1~0_combout\);

-- Location: LCCOMB_X73_Y51_N14
\t4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~44_combout\ = (\t4|s_count\(22) & (\t4|Add0~43\ $ (GND))) # (!\t4|s_count\(22) & (!\t4|Add0~43\ & VCC))
-- \t4|Add0~45\ = CARRY((\t4|s_count\(22) & !\t4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(22),
	datad => VCC,
	cin => \t4|Add0~43\,
	combout => \t4|Add0~44_combout\,
	cout => \t4|Add0~45\);

-- Location: LCCOMB_X72_Y51_N0
\t4|s_count[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[22]~32_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~44_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~44_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~44_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[22]~32_combout\);

-- Location: FF_X72_Y51_N1
\t4|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[22]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(22));

-- Location: LCCOMB_X73_Y51_N16
\t4|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~46_combout\ = (\t4|s_count\(23) & (!\t4|Add0~45\)) # (!\t4|s_count\(23) & ((\t4|Add0~45\) # (GND)))
-- \t4|Add0~47\ = CARRY((!\t4|Add0~45\) # (!\t4|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(23),
	datad => VCC,
	cin => \t4|Add0~45\,
	combout => \t4|Add0~46_combout\,
	cout => \t4|Add0~47\);

-- Location: LCCOMB_X72_Y52_N10
\t4|s_count[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[23]~33_combout\ = (\t4|Equal0~9_combout\ & (((\t4|pulseOut~0_combout\ & \t4|Add0~46_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (\t4|pulseOut~0_combout\ & ((\t4|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|pulseOut~0_combout\,
	datac => \t3|pulseOut~q\,
	datad => \t4|Add0~46_combout\,
	combout => \t4|s_count[23]~33_combout\);

-- Location: FF_X72_Y52_N11
\t4|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[23]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(23));

-- Location: LCCOMB_X73_Y51_N18
\t4|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~48_combout\ = (\t4|s_count\(24) & (\t4|Add0~47\ $ (GND))) # (!\t4|s_count\(24) & (!\t4|Add0~47\ & VCC))
-- \t4|Add0~49\ = CARRY((\t4|s_count\(24) & !\t4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(24),
	datad => VCC,
	cin => \t4|Add0~47\,
	combout => \t4|Add0~48_combout\,
	cout => \t4|Add0~49\);

-- Location: LCCOMB_X72_Y52_N0
\t4|s_count[24]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[24]~34_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~48_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~48_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~48_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[24]~34_combout\);

-- Location: FF_X72_Y52_N1
\t4|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[24]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(24));

-- Location: LCCOMB_X73_Y51_N20
\t4|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~50_combout\ = (\t4|s_count\(25) & (!\t4|Add0~49\)) # (!\t4|s_count\(25) & ((\t4|Add0~49\) # (GND)))
-- \t4|Add0~51\ = CARRY((!\t4|Add0~49\) # (!\t4|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(25),
	datad => VCC,
	cin => \t4|Add0~49\,
	combout => \t4|Add0~50_combout\,
	cout => \t4|Add0~51\);

-- Location: LCCOMB_X72_Y51_N24
\t4|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~68_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~50_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|p1~3_combout\,
	datac => \t4|Add0~50_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~68_combout\);

-- Location: FF_X72_Y51_N25
\t4|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(25));

-- Location: LCCOMB_X73_Y51_N22
\t4|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~52_combout\ = (\t4|s_count\(26) & (\t4|Add0~51\ $ (GND))) # (!\t4|s_count\(26) & (!\t4|Add0~51\ & VCC))
-- \t4|Add0~53\ = CARRY((\t4|s_count\(26) & !\t4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(26),
	datad => VCC,
	cin => \t4|Add0~51\,
	combout => \t4|Add0~52_combout\,
	cout => \t4|Add0~53\);

-- Location: LCCOMB_X72_Y52_N14
\t4|s_count[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[26]~35_combout\ = (\t4|Equal0~9_combout\ & (((\t4|Add0~52_combout\ & \t4|pulseOut~0_combout\)) # (!\t3|pulseOut~q\))) # (!\t4|Equal0~9_combout\ & (((\t4|Add0~52_combout\ & \t4|pulseOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Add0~52_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[26]~35_combout\);

-- Location: FF_X72_Y52_N15
\t4|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(26));

-- Location: LCCOMB_X72_Y52_N28
\t4|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|p1~2_combout\ = (\t4|s_count\(23)) # ((\t4|s_count\(24)) # ((\t4|s_count\(26)) # (\t4|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(23),
	datab => \t4|s_count\(24),
	datac => \t4|s_count\(26),
	datad => \t4|s_count\(22),
	combout => \t4|p1~2_combout\);

-- Location: LCCOMB_X74_Y52_N16
\t4|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|p1~3_combout\ = (\t4|p1~1_combout\) # ((\t4|p1~0_combout\) # ((\t4|p1~2_combout\) # (!\t3|pulseOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|p1~1_combout\,
	datab => \t4|p1~0_combout\,
	datac => \t3|pulseOut~q\,
	datad => \t4|p1~2_combout\,
	combout => \t4|p1~3_combout\);

-- Location: LCCOMB_X73_Y51_N8
\t4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~38_combout\ = (\t4|s_count\(19) & (!\t4|Add0~37\)) # (!\t4|s_count\(19) & ((\t4|Add0~37\) # (GND)))
-- \t4|Add0~39\ = CARRY((!\t4|Add0~37\) # (!\t4|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(19),
	datad => VCC,
	cin => \t4|Add0~37\,
	combout => \t4|Add0~38_combout\,
	cout => \t4|Add0~39\);

-- Location: LCCOMB_X72_Y51_N30
\t4|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~67_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~38_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|p1~3_combout\,
	datac => \t4|Add0~38_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~67_combout\);

-- Location: FF_X72_Y51_N31
\t4|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(19));

-- Location: LCCOMB_X74_Y52_N10
\t4|s_count[20]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|s_count[20]~30_combout\ = (\t4|Add0~40_combout\ & ((\t4|pulseOut~0_combout\) # ((!\t3|pulseOut~q\ & \t4|Equal0~9_combout\)))) # (!\t4|Add0~40_combout\ & (!\t3|pulseOut~q\ & (\t4|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Add0~40_combout\,
	datab => \t3|pulseOut~q\,
	datac => \t4|Equal0~9_combout\,
	datad => \t4|pulseOut~0_combout\,
	combout => \t4|s_count[20]~30_combout\);

-- Location: FF_X74_Y52_N11
\t4|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|s_count[20]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(20));

-- Location: LCCOMB_X74_Y52_N24
\t4|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~7_combout\ = (\t4|s_count\(20) & (\t4|s_count\(18) & (\t4|s_count\(16) & \t4|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(20),
	datab => \t4|s_count\(18),
	datac => \t4|s_count\(16),
	datad => \t4|s_count\(21),
	combout => \t4|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y52_N8
\t4|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~8_combout\ = (\t4|s_count\(23) & (\t4|s_count\(24) & (\t4|s_count\(26) & \t4|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(23),
	datab => \t4|s_count\(24),
	datac => \t4|s_count\(26),
	datad => \t4|s_count\(22),
	combout => \t4|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y52_N26
\t4|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~6_combout\ = (\t4|s_count\(15) & (\t4|s_count\(13) & (\t4|s_count\(14) & \t4|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(15),
	datab => \t4|s_count\(13),
	datac => \t4|s_count\(14),
	datad => \t4|s_count\(8),
	combout => \t4|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y52_N2
\t4|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~9_combout\ = (\t4|Equal0~7_combout\ & (\t4|Equal0~8_combout\ & (\t4|Equal0~6_combout\ & \t4|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~7_combout\,
	datab => \t4|Equal0~8_combout\,
	datac => \t4|Equal0~6_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y51_N24
\t4|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~69_combout\ = (\t4|s_count\(27) & (!\t4|Add0~53\)) # (!\t4|s_count\(27) & ((\t4|Add0~53\) # (GND)))
-- \t4|Add0~70\ = CARRY((!\t4|Add0~53\) # (!\t4|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t4|s_count\(27),
	datad => VCC,
	cin => \t4|Add0~53\,
	combout => \t4|Add0~69_combout\,
	cout => \t4|Add0~70\);

-- Location: LCCOMB_X72_Y51_N26
\t4|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~71_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~69_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~69_combout\,
	combout => \t4|Add0~71_combout\);

-- Location: FF_X72_Y51_N27
\t4|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(27));

-- Location: LCCOMB_X73_Y51_N26
\t4|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~72_combout\ = (\t4|s_count\(28) & (\t4|Add0~70\ $ (GND))) # (!\t4|s_count\(28) & (!\t4|Add0~70\ & VCC))
-- \t4|Add0~73\ = CARRY((\t4|s_count\(28) & !\t4|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(28),
	datad => VCC,
	cin => \t4|Add0~70\,
	combout => \t4|Add0~72_combout\,
	cout => \t4|Add0~73\);

-- Location: LCCOMB_X72_Y51_N16
\t4|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~74_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~72_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~72_combout\,
	combout => \t4|Add0~74_combout\);

-- Location: FF_X72_Y51_N17
\t4|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(28));

-- Location: LCCOMB_X73_Y51_N28
\t4|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~75_combout\ = (\t4|s_count\(29) & (!\t4|Add0~73\)) # (!\t4|s_count\(29) & ((\t4|Add0~73\) # (GND)))
-- \t4|Add0~76\ = CARRY((!\t4|Add0~73\) # (!\t4|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(29),
	datad => VCC,
	cin => \t4|Add0~73\,
	combout => \t4|Add0~75_combout\,
	cout => \t4|Add0~76\);

-- Location: LCCOMB_X72_Y51_N10
\t4|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~77_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~75_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Add0~75_combout\,
	combout => \t4|Add0~77_combout\);

-- Location: FF_X72_Y51_N11
\t4|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(29));

-- Location: LCCOMB_X73_Y51_N30
\t4|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~78_combout\ = \t4|Add0~76\ $ (!\t4|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t4|s_count\(30),
	cin => \t4|Add0~76\,
	combout => \t4|Add0~78_combout\);

-- Location: LCCOMB_X72_Y51_N8
\t4|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Add0~80_combout\ = (!\t4|Equal0~9_combout\ & (\t4|Add0~78_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~9_combout\,
	datab => \t4|p1~3_combout\,
	datac => \t4|Add0~78_combout\,
	datad => \t4|Equal0~5_combout\,
	combout => \t4|Add0~80_combout\);

-- Location: FF_X72_Y51_N9
\t4|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|s_count\(30));

-- Location: LCCOMB_X72_Y51_N6
\t4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~2_combout\ = (!\t4|s_count\(9) & (!\t4|s_count\(11) & (!\t4|s_count\(12) & !\t4|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(9),
	datab => \t4|s_count\(11),
	datac => \t4|s_count\(12),
	datad => \t4|s_count\(10),
	combout => \t4|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y51_N20
\t4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~3_combout\ = (!\t4|s_count\(27) & (!\t4|s_count\(25) & (!\t4|s_count\(19) & !\t4|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(27),
	datab => \t4|s_count\(25),
	datac => \t4|s_count\(19),
	datad => \t4|s_count\(17),
	combout => \t4|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y52_N30
\t4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~1_combout\ = (!\t4|s_count\(4) & (!\t4|s_count\(7) & (!\t4|s_count\(5) & !\t4|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(4),
	datab => \t4|s_count\(7),
	datac => \t4|s_count\(5),
	datad => \t4|s_count\(6),
	combout => \t4|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y52_N12
\t4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~0_combout\ = (!\t4|s_count\(0) & (!\t4|s_count\(1) & (!\t4|s_count\(2) & !\t4|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(0),
	datab => \t4|s_count\(1),
	datac => \t4|s_count\(2),
	datad => \t4|s_count\(3),
	combout => \t4|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y51_N18
\t4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~4_combout\ = (\t4|Equal0~2_combout\ & (\t4|Equal0~3_combout\ & (\t4|Equal0~1_combout\ & \t4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~2_combout\,
	datab => \t4|Equal0~3_combout\,
	datac => \t4|Equal0~1_combout\,
	datad => \t4|Equal0~0_combout\,
	combout => \t4|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y51_N2
\t4|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|Equal0~5_combout\ = (!\t4|s_count\(29) & (!\t4|s_count\(28) & (!\t4|s_count\(30) & \t4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|s_count\(29),
	datab => \t4|s_count\(28),
	datac => \t4|s_count\(30),
	datad => \t4|Equal0~4_combout\,
	combout => \t4|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y52_N20
\t4|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t4|pulseOut~0_combout\ = (!\t4|Equal0~9_combout\ & ((\t4|p1~3_combout\) # (!\t4|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|Equal0~5_combout\,
	datac => \t4|p1~3_combout\,
	datad => \t4|Equal0~9_combout\,
	combout => \t4|pulseOut~0_combout\);

-- Location: FF_X72_Y52_N21
\t4|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t4|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4|pulseOut~q\);

-- Location: LCCOMB_X60_Y45_N2
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

-- Location: LCCOMB_X60_Y45_N18
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

-- Location: LCCOMB_X60_Y45_N20
\t0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~20_combout\ = (\t0|s_count\(9) & (!\t0|Add0~19\)) # (!\t0|s_count\(9) & ((\t0|Add0~19\) # (GND)))
-- \t0|Add0~21\ = CARRY((!\t0|Add0~19\) # (!\t0|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(9),
	datad => VCC,
	cin => \t0|Add0~19\,
	combout => \t0|Add0~20_combout\,
	cout => \t0|Add0~21\);

-- Location: LCCOMB_X59_Y45_N14
\t0|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~68_combout\ = (\t0|Add0~20_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~20_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~68_combout\);

-- Location: FF_X59_Y45_N15
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

-- Location: LCCOMB_X60_Y45_N22
\t0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~22_combout\ = (\t0|s_count\(10) & (\t0|Add0~21\ $ (GND))) # (!\t0|s_count\(10) & (!\t0|Add0~21\ & VCC))
-- \t0|Add0~23\ = CARRY((\t0|s_count\(10) & !\t0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(10),
	datad => VCC,
	cin => \t0|Add0~21\,
	combout => \t0|Add0~22_combout\,
	cout => \t0|Add0~23\);

-- Location: LCCOMB_X61_Y45_N28
\t0|p1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~5_combout\ = (\t1|pulseOut~q\ & (\t0|Equal0~9_combout\ & \t0|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~q\,
	datab => \t0|Equal0~9_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|p1~5_combout\);

-- Location: LCCOMB_X61_Y44_N14
\t0|s_count[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[10]~1_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~22_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~22_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[10]~1_combout\);

-- Location: FF_X61_Y44_N15
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

-- Location: LCCOMB_X60_Y45_N24
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

-- Location: LCCOMB_X59_Y45_N12
\t0|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~69_combout\ = (\t0|Add0~24_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~4_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~24_combout\,
	combout => \t0|Add0~69_combout\);

-- Location: FF_X59_Y45_N13
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

-- Location: LCCOMB_X60_Y45_N26
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

-- Location: LCCOMB_X59_Y45_N10
\t0|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~70_combout\ = (\t0|Add0~26_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~26_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~70_combout\);

-- Location: FF_X59_Y45_N11
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

-- Location: LCCOMB_X60_Y45_N28
\t0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~28_combout\ = (\t0|s_count\(13) & (!\t0|Add0~27\)) # (!\t0|s_count\(13) & ((\t0|Add0~27\) # (GND)))
-- \t0|Add0~29\ = CARRY((!\t0|Add0~27\) # (!\t0|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(13),
	datad => VCC,
	cin => \t0|Add0~27\,
	combout => \t0|Add0~28_combout\,
	cout => \t0|Add0~29\);

-- Location: LCCOMB_X61_Y44_N0
\t0|s_count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[13]~2_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~28_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~28_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[13]~2_combout\);

-- Location: FF_X61_Y44_N1
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

-- Location: LCCOMB_X60_Y45_N30
\t0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~30_combout\ = (\t0|s_count\(14) & (\t0|Add0~29\ $ (GND))) # (!\t0|s_count\(14) & (!\t0|Add0~29\ & VCC))
-- \t0|Add0~31\ = CARRY((\t0|s_count\(14) & !\t0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(14),
	datad => VCC,
	cin => \t0|Add0~29\,
	combout => \t0|Add0~30_combout\,
	cout => \t0|Add0~31\);

-- Location: LCCOMB_X61_Y44_N18
\t0|s_count[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[14]~3_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~30_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~30_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[14]~3_combout\);

-- Location: FF_X61_Y44_N19
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

-- Location: LCCOMB_X61_Y44_N16
\t0|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~0_combout\ = (\t0|s_count\(8)) # ((\t0|s_count\(13)) # ((\t0|s_count\(10)) # (\t0|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(8),
	datab => \t0|s_count\(13),
	datac => \t0|s_count\(10),
	datad => \t0|s_count\(14),
	combout => \t0|p1~0_combout\);

-- Location: LCCOMB_X60_Y44_N0
\t0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~32_combout\ = (\t0|s_count\(15) & (!\t0|Add0~31\)) # (!\t0|s_count\(15) & ((\t0|Add0~31\) # (GND)))
-- \t0|Add0~33\ = CARRY((!\t0|Add0~31\) # (!\t0|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(15),
	datad => VCC,
	cin => \t0|Add0~31\,
	combout => \t0|Add0~32_combout\,
	cout => \t0|Add0~33\);

-- Location: LCCOMB_X59_Y45_N20
\t0|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~71_combout\ = (\t0|Add0~32_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~4_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~32_combout\,
	combout => \t0|Add0~71_combout\);

-- Location: FF_X59_Y45_N21
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

-- Location: LCCOMB_X60_Y44_N2
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

-- Location: LCCOMB_X61_Y45_N6
\t0|s_count[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[16]~4_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~34_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~34_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[16]~4_combout\);

-- Location: FF_X61_Y45_N7
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

-- Location: LCCOMB_X60_Y44_N4
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

-- Location: LCCOMB_X59_Y45_N28
\t0|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~72_combout\ = (\t0|Add0~36_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~9_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Add0~36_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~72_combout\);

-- Location: FF_X59_Y45_N29
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

-- Location: LCCOMB_X60_Y44_N6
\t0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~38_combout\ = (\t0|s_count\(18) & (\t0|Add0~37\ $ (GND))) # (!\t0|s_count\(18) & (!\t0|Add0~37\ & VCC))
-- \t0|Add0~39\ = CARRY((\t0|s_count\(18) & !\t0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(18),
	datad => VCC,
	cin => \t0|Add0~37\,
	combout => \t0|Add0~38_combout\,
	cout => \t0|Add0~39\);

-- Location: LCCOMB_X61_Y45_N12
\t0|s_count[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[18]~5_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|p1~5_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|Add0~38_combout\,
	combout => \t0|s_count[18]~5_combout\);

-- Location: FF_X61_Y45_N13
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

-- Location: LCCOMB_X60_Y44_N8
\t0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~40_combout\ = (\t0|s_count\(19) & (!\t0|Add0~39\)) # (!\t0|s_count\(19) & ((\t0|Add0~39\) # (GND)))
-- \t0|Add0~41\ = CARRY((!\t0|Add0~39\) # (!\t0|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(19),
	datad => VCC,
	cin => \t0|Add0~39\,
	combout => \t0|Add0~40_combout\,
	cout => \t0|Add0~41\);

-- Location: LCCOMB_X61_Y45_N2
\t0|s_count[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[19]~6_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|p1~5_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|Add0~40_combout\,
	combout => \t0|s_count[19]~6_combout\);

-- Location: FF_X61_Y45_N3
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

-- Location: LCCOMB_X60_Y44_N10
\t0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~42_combout\ = (\t0|s_count\(20) & (\t0|Add0~41\ $ (GND))) # (!\t0|s_count\(20) & (!\t0|Add0~41\ & VCC))
-- \t0|Add0~43\ = CARRY((\t0|s_count\(20) & !\t0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(20),
	datad => VCC,
	cin => \t0|Add0~41\,
	combout => \t0|Add0~42_combout\,
	cout => \t0|Add0~43\);

-- Location: LCCOMB_X59_Y45_N18
\t0|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~73_combout\ = (\t0|Add0~42_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~4_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~42_combout\,
	combout => \t0|Add0~73_combout\);

-- Location: FF_X59_Y45_N19
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

-- Location: LCCOMB_X60_Y44_N12
\t0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~44_combout\ = (\t0|s_count\(21) & (!\t0|Add0~43\)) # (!\t0|s_count\(21) & ((\t0|Add0~43\) # (GND)))
-- \t0|Add0~45\ = CARRY((!\t0|Add0~43\) # (!\t0|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(21),
	datad => VCC,
	cin => \t0|Add0~43\,
	combout => \t0|Add0~44_combout\,
	cout => \t0|Add0~45\);

-- Location: LCCOMB_X59_Y45_N4
\t0|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~74_combout\ = (\t0|Add0~44_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~4_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|Add0~44_combout\,
	combout => \t0|Add0~74_combout\);

-- Location: FF_X59_Y45_N5
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

-- Location: LCCOMB_X60_Y44_N14
\t0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~46_combout\ = (\t0|s_count\(22) & (\t0|Add0~45\ $ (GND))) # (!\t0|s_count\(22) & (!\t0|Add0~45\ & VCC))
-- \t0|Add0~47\ = CARRY((\t0|s_count\(22) & !\t0|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(22),
	datad => VCC,
	cin => \t0|Add0~45\,
	combout => \t0|Add0~46_combout\,
	cout => \t0|Add0~47\);

-- Location: LCCOMB_X61_Y45_N16
\t0|s_count[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[22]~7_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|p1~5_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|Add0~46_combout\,
	combout => \t0|s_count[22]~7_combout\);

-- Location: FF_X61_Y45_N17
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

-- Location: LCCOMB_X60_Y44_N16
\t0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~48_combout\ = (\t0|s_count\(23) & (!\t0|Add0~47\)) # (!\t0|s_count\(23) & ((\t0|Add0~47\) # (GND)))
-- \t0|Add0~49\ = CARRY((!\t0|Add0~47\) # (!\t0|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(23),
	datad => VCC,
	cin => \t0|Add0~47\,
	combout => \t0|Add0~48_combout\,
	cout => \t0|Add0~49\);

-- Location: LCCOMB_X61_Y44_N10
\t0|s_count[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[23]~8_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|pulseOut~0_combout\,
	datac => \t0|Add0~48_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[23]~8_combout\);

-- Location: FF_X61_Y44_N11
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

-- Location: LCCOMB_X60_Y44_N18
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

-- Location: LCCOMB_X61_Y44_N28
\t0|s_count[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[24]~9_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~50_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~50_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[24]~9_combout\);

-- Location: FF_X61_Y44_N29
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

-- Location: LCCOMB_X60_Y44_N20
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

-- Location: LCCOMB_X59_Y45_N30
\t0|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~75_combout\ = (\t0|Add0~52_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~52_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~75_combout\);

-- Location: FF_X59_Y45_N31
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

-- Location: LCCOMB_X60_Y44_N22
\t0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~54_combout\ = (\t0|s_count\(26) & (\t0|Add0~53\ $ (GND))) # (!\t0|s_count\(26) & (!\t0|Add0~53\ & VCC))
-- \t0|Add0~55\ = CARRY((\t0|s_count\(26) & !\t0|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(26),
	datad => VCC,
	cin => \t0|Add0~53\,
	combout => \t0|Add0~54_combout\,
	cout => \t0|Add0~55\);

-- Location: LCCOMB_X61_Y44_N30
\t0|s_count[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[26]~10_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~54_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~54_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[26]~10_combout\);

-- Location: FF_X61_Y44_N31
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

-- Location: LCCOMB_X60_Y44_N24
\t0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~56_combout\ = (\t0|s_count\(27) & (!\t0|Add0~55\)) # (!\t0|s_count\(27) & ((\t0|Add0~55\) # (GND)))
-- \t0|Add0~57\ = CARRY((!\t0|Add0~55\) # (!\t0|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(27),
	datad => VCC,
	cin => \t0|Add0~55\,
	combout => \t0|Add0~56_combout\,
	cout => \t0|Add0~57\);

-- Location: LCCOMB_X61_Y44_N8
\t0|s_count[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[27]~11_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~56_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~56_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[27]~11_combout\);

-- Location: FF_X61_Y44_N9
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

-- Location: LCCOMB_X61_Y44_N22
\t0|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~2_combout\ = (\t0|s_count\(23)) # ((\t0|s_count\(27)) # ((\t0|s_count\(26)) # (\t0|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(23),
	datab => \t0|s_count\(27),
	datac => \t0|s_count\(26),
	datad => \t0|s_count\(24),
	combout => \t0|p1~2_combout\);

-- Location: LCCOMB_X61_Y45_N14
\t0|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~1_combout\ = (\t0|s_count\(18)) # ((\t0|s_count\(19)) # ((\t0|s_count\(16)) # (\t0|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datab => \t0|s_count\(19),
	datac => \t0|s_count\(16),
	datad => \t0|s_count\(22),
	combout => \t0|p1~1_combout\);

-- Location: LCCOMB_X60_Y44_N26
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

-- Location: LCCOMB_X61_Y44_N24
\t0|s_count[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[28]~12_combout\ = (\t0|p1~5_combout\) # ((\t0|pulseOut~0_combout\ & \t0|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|pulseOut~0_combout\,
	datac => \t0|Add0~58_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[28]~12_combout\);

-- Location: FF_X61_Y44_N25
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

-- Location: LCCOMB_X62_Y44_N28
\t0|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~3_combout\ = (\t0|s_count\(28)) # (\t1|pulseOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(28),
	datad => \t1|pulseOut~q\,
	combout => \t0|p1~3_combout\);

-- Location: LCCOMB_X62_Y44_N26
\t0|p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~4_combout\ = (\t0|p1~0_combout\) # ((\t0|p1~2_combout\) # ((\t0|p1~1_combout\) # (\t0|p1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|p1~0_combout\,
	datab => \t0|p1~2_combout\,
	datac => \t0|p1~1_combout\,
	datad => \t0|p1~3_combout\,
	combout => \t0|p1~4_combout\);

-- Location: LCCOMB_X60_Y44_N28
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

-- Location: LCCOMB_X61_Y45_N8
\t0|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~78_combout\ = (\t0|Add0~76_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~9_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Add0~76_combout\,
	combout => \t0|Add0~78_combout\);

-- Location: FF_X61_Y45_N9
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

-- Location: LCCOMB_X60_Y44_N30
\t0|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~79_combout\ = \t0|s_count\(30) $ (!\t0|Add0~77\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(30),
	cin => \t0|Add0~77\,
	combout => \t0|Add0~79_combout\);

-- Location: LCCOMB_X61_Y45_N26
\t0|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~81_combout\ = (\t0|Add0~79_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~9_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Add0~79_combout\,
	combout => \t0|Add0~81_combout\);

-- Location: FF_X61_Y45_N27
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

-- Location: LCCOMB_X59_Y45_N24
\t0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~7_combout\ = (!\t0|s_count\(25) & (!\t0|s_count\(17) & (!\t0|s_count\(21) & !\t0|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datab => \t0|s_count\(17),
	datac => \t0|s_count\(21),
	datad => \t0|s_count\(20),
	combout => \t0|Equal0~7_combout\);

-- Location: LCCOMB_X61_Y45_N22
\t0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~5_combout\ = (!\t0|s_count\(6) & (!\t0|s_count\(5) & (!\t0|s_count\(7) & !\t0|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(6),
	datab => \t0|s_count\(5),
	datac => \t0|s_count\(7),
	datad => \t0|s_count\(4),
	combout => \t0|Equal0~5_combout\);

-- Location: LCCOMB_X59_Y45_N22
\t0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~6_combout\ = (!\t0|s_count\(11) & (!\t0|s_count\(15) & (!\t0|s_count\(9) & !\t0|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(11),
	datab => \t0|s_count\(15),
	datac => \t0|s_count\(9),
	datad => \t0|s_count\(12),
	combout => \t0|Equal0~6_combout\);

-- Location: LCCOMB_X59_Y45_N16
\t0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~4_combout\ = (!\t0|s_count\(2) & (!\t0|s_count\(3) & (!\t0|s_count\(0) & !\t0|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(2),
	datab => \t0|s_count\(3),
	datac => \t0|s_count\(0),
	datad => \t0|s_count\(1),
	combout => \t0|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y45_N28
\t0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~8_combout\ = (\t0|Equal0~7_combout\ & (\t0|Equal0~5_combout\ & (\t0|Equal0~6_combout\ & \t0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~7_combout\,
	datab => \t0|Equal0~5_combout\,
	datac => \t0|Equal0~6_combout\,
	datad => \t0|Equal0~4_combout\,
	combout => \t0|Equal0~8_combout\);

-- Location: LCCOMB_X61_Y45_N0
\t0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~9_combout\ = (!\t0|s_count\(29) & (!\t0|s_count\(30) & \t0|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(29),
	datac => \t0|s_count\(30),
	datad => \t0|Equal0~8_combout\,
	combout => \t0|Equal0~9_combout\);

-- Location: LCCOMB_X60_Y45_N0
\t0|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~61_combout\ = (\t0|Add0~2_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Add0~2_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~61_combout\);

-- Location: FF_X60_Y45_N1
\t0|s_count[0]\ : dffeas
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
	q => \t0|s_count\(0));

-- Location: LCCOMB_X60_Y45_N4
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

-- Location: LCCOMB_X59_Y45_N6
\t0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~60_combout\ = (\t0|Add0~4_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~4_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~60_combout\);

-- Location: FF_X60_Y45_N5
\t0|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|Add0~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(1));

-- Location: LCCOMB_X60_Y45_N6
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

-- Location: LCCOMB_X59_Y45_N0
\t0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~62_combout\ = (\t0|Add0~6_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~6_combout\,
	datab => \t0|Equal0~3_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~62_combout\);

-- Location: FF_X60_Y45_N21
\t0|s_count[2]\ : dffeas
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
	q => \t0|s_count\(2));

-- Location: LCCOMB_X60_Y45_N8
\t0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~8_combout\ = (\t0|s_count\(3) & (!\t0|Add0~7\)) # (!\t0|s_count\(3) & ((\t0|Add0~7\) # (GND)))
-- \t0|Add0~9\ = CARRY((!\t0|Add0~7\) # (!\t0|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(3),
	datad => VCC,
	cin => \t0|Add0~7\,
	combout => \t0|Add0~8_combout\,
	cout => \t0|Add0~9\);

-- Location: LCCOMB_X59_Y45_N26
\t0|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~63_combout\ = (\t0|Add0~8_combout\ & (((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~3_combout\,
	datab => \t0|Add0~8_combout\,
	datac => \t0|Equal0~9_combout\,
	datad => \t0|p1~4_combout\,
	combout => \t0|Add0~63_combout\);

-- Location: FF_X60_Y45_N13
\t0|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|Add0~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(3));

-- Location: LCCOMB_X60_Y45_N10
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

-- Location: LCCOMB_X61_Y45_N18
\t0|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~64_combout\ = (\t0|Add0~10_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~10_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Add0~64_combout\);

-- Location: FF_X61_Y45_N19
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

-- Location: LCCOMB_X60_Y45_N12
\t0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~12_combout\ = (\t0|s_count\(5) & (!\t0|Add0~11\)) # (!\t0|s_count\(5) & ((\t0|Add0~11\) # (GND)))
-- \t0|Add0~13\ = CARRY((!\t0|Add0~11\) # (!\t0|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(5),
	datad => VCC,
	cin => \t0|Add0~11\,
	combout => \t0|Add0~12_combout\,
	cout => \t0|Add0~13\);

-- Location: LCCOMB_X61_Y45_N4
\t0|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~65_combout\ = (\t0|Add0~12_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~12_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Add0~65_combout\);

-- Location: FF_X61_Y45_N5
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

-- Location: LCCOMB_X60_Y45_N14
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

-- Location: LCCOMB_X61_Y45_N10
\t0|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~66_combout\ = (\t0|Add0~14_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~14_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Add0~66_combout\);

-- Location: FF_X61_Y45_N11
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

-- Location: LCCOMB_X60_Y45_N16
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

-- Location: LCCOMB_X61_Y45_N24
\t0|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~67_combout\ = (\t0|Add0~16_combout\ & (((\t0|p1~4_combout\ & !\t0|Equal0~3_combout\)) # (!\t0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add0~16_combout\,
	datab => \t0|Equal0~9_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Add0~67_combout\);

-- Location: FF_X61_Y45_N25
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

-- Location: LCCOMB_X61_Y44_N12
\t0|s_count[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[8]~0_combout\ = (\t0|p1~5_combout\) # ((\t0|Add0~18_combout\ & \t0|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Add0~18_combout\,
	datac => \t0|pulseOut~0_combout\,
	datad => \t0|p1~5_combout\,
	combout => \t0|s_count[8]~0_combout\);

-- Location: FF_X61_Y44_N13
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

-- Location: LCCOMB_X61_Y44_N26
\t0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~0_combout\ = (\t0|s_count\(8) & (\t0|s_count\(13) & (\t0|s_count\(10) & \t0|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(8),
	datab => \t0|s_count\(13),
	datac => \t0|s_count\(10),
	datad => \t0|s_count\(14),
	combout => \t0|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y44_N4
\t0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~2_combout\ = (\t0|s_count\(23) & (\t0|s_count\(24) & (\t0|s_count\(26) & \t0|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(23),
	datab => \t0|s_count\(24),
	datac => \t0|s_count\(26),
	datad => \t0|s_count\(27),
	combout => \t0|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y45_N20
\t0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~1_combout\ = (\t0|s_count\(18) & (\t0|s_count\(22) & (\t0|s_count\(16) & \t0|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datab => \t0|s_count\(22),
	datac => \t0|s_count\(16),
	datad => \t0|s_count\(19),
	combout => \t0|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y44_N6
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

-- Location: LCCOMB_X61_Y45_N30
\t0|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut~0_combout\ = ((!\t0|Equal0~3_combout\ & \t0|p1~4_combout\)) # (!\t0|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Equal0~3_combout\,
	datac => \t0|p1~4_combout\,
	datad => \t0|Equal0~9_combout\,
	combout => \t0|pulseOut~0_combout\);

-- Location: FF_X61_Y45_N29
\t0|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|pulseOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|pulseOut~q\);

-- Location: LCCOMB_X83_Y56_N2
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

-- Location: LCCOMB_X83_Y56_N0
\t2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~54_combout\ = (\t2|Add0~0_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|Add0~0_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~54_combout\);

-- Location: FF_X83_Y56_N1
\t2|s_count[0]\ : dffeas
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
	q => \t2|s_count\(0));

-- Location: LCCOMB_X83_Y56_N4
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

-- Location: LCCOMB_X84_Y56_N30
\t2|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~55_combout\ = (\t2|Add0~2_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~2_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~55_combout\);

-- Location: FF_X84_Y56_N31
\t2|s_count[1]\ : dffeas
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
	q => \t2|s_count\(1));

-- Location: LCCOMB_X83_Y56_N6
\t2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~4_combout\ = (\t2|s_count\(2) & (\t2|Add0~3\ $ (GND))) # (!\t2|s_count\(2) & (!\t2|Add0~3\ & VCC))
-- \t2|Add0~5\ = CARRY((\t2|s_count\(2) & !\t2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(2),
	datad => VCC,
	cin => \t2|Add0~3\,
	combout => \t2|Add0~4_combout\,
	cout => \t2|Add0~5\);

-- Location: LCCOMB_X82_Y56_N6
\t2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~56_combout\ = (\t2|Add0~4_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~4_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~56_combout\);

-- Location: FF_X83_Y56_N5
\t2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t2|Add0~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|s_count\(2));

-- Location: LCCOMB_X83_Y56_N8
\t2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~6_combout\ = (\t2|s_count\(3) & (!\t2|Add0~5\)) # (!\t2|s_count\(3) & ((\t2|Add0~5\) # (GND)))
-- \t2|Add0~7\ = CARRY((!\t2|Add0~5\) # (!\t2|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(3),
	datad => VCC,
	cin => \t2|Add0~5\,
	combout => \t2|Add0~6_combout\,
	cout => \t2|Add0~7\);

-- Location: LCCOMB_X84_Y56_N20
\t2|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~57_combout\ = (\t2|Add0~6_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~6_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~57_combout\);

-- Location: FF_X84_Y56_N21
\t2|s_count[3]\ : dffeas
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
	q => \t2|s_count\(3));

-- Location: LCCOMB_X83_Y56_N10
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

-- Location: LCCOMB_X84_Y56_N24
\t2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~58_combout\ = (\t2|Add0~8_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~8_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~58_combout\);

-- Location: FF_X84_Y56_N25
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

-- Location: LCCOMB_X83_Y56_N12
\t2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~10_combout\ = (\t2|s_count\(5) & (!\t2|Add0~9\)) # (!\t2|s_count\(5) & ((\t2|Add0~9\) # (GND)))
-- \t2|Add0~11\ = CARRY((!\t2|Add0~9\) # (!\t2|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(5),
	datad => VCC,
	cin => \t2|Add0~9\,
	combout => \t2|Add0~10_combout\,
	cout => \t2|Add0~11\);

-- Location: LCCOMB_X84_Y56_N22
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

-- Location: FF_X84_Y56_N23
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

-- Location: LCCOMB_X83_Y56_N14
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

-- Location: LCCOMB_X84_Y56_N28
\t2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~60_combout\ = (\t2|Add0~12_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Add0~12_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~60_combout\);

-- Location: FF_X84_Y56_N29
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

-- Location: LCCOMB_X83_Y56_N16
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

-- Location: LCCOMB_X84_Y56_N10
\t2|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~61_combout\ = (\t2|Add0~14_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~14_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~61_combout\);

-- Location: FF_X84_Y56_N11
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

-- Location: LCCOMB_X83_Y56_N18
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

-- Location: LCCOMB_X81_Y56_N2
\t2|s_count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[8]~1_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~16_combout\,
	datad => \t2|s_count[0]~0_combout\,
	combout => \t2|s_count[8]~1_combout\);

-- Location: FF_X81_Y56_N3
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

-- Location: LCCOMB_X83_Y56_N20
\t2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~18_combout\ = (\t2|s_count\(9) & (!\t2|Add0~17\)) # (!\t2|s_count\(9) & ((\t2|Add0~17\) # (GND)))
-- \t2|Add0~19\ = CARRY((!\t2|Add0~17\) # (!\t2|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(9),
	datad => VCC,
	cin => \t2|Add0~17\,
	combout => \t2|Add0~18_combout\,
	cout => \t2|Add0~19\);

-- Location: LCCOMB_X82_Y56_N0
\t2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~62_combout\ = (\t2|Add0~18_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~18_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~62_combout\);

-- Location: FF_X82_Y56_N1
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

-- Location: LCCOMB_X83_Y56_N22
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

-- Location: LCCOMB_X82_Y56_N14
\t2|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~63_combout\ = (\t2|Add0~20_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~20_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~63_combout\);

-- Location: FF_X82_Y56_N15
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

-- Location: LCCOMB_X83_Y56_N24
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

-- Location: LCCOMB_X82_Y56_N16
\t2|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~64_combout\ = (\t2|Add0~22_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~22_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~64_combout\);

-- Location: FF_X82_Y56_N17
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

-- Location: LCCOMB_X83_Y56_N26
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

-- Location: LCCOMB_X82_Y56_N22
\t2|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~65_combout\ = (\t2|Add0~24_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|Add0~24_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~65_combout\);

-- Location: FF_X82_Y56_N23
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

-- Location: LCCOMB_X83_Y56_N28
\t2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~26_combout\ = (\t2|s_count\(13) & (!\t2|Add0~25\)) # (!\t2|s_count\(13) & ((\t2|Add0~25\) # (GND)))
-- \t2|Add0~27\ = CARRY((!\t2|Add0~25\) # (!\t2|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(13),
	datad => VCC,
	cin => \t2|Add0~25\,
	combout => \t2|Add0~26_combout\,
	cout => \t2|Add0~27\);

-- Location: LCCOMB_X81_Y56_N12
\t2|s_count[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[13]~2_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~26_combout\,
	datad => \t2|s_count[0]~0_combout\,
	combout => \t2|s_count[13]~2_combout\);

-- Location: FF_X81_Y56_N13
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

-- Location: LCCOMB_X83_Y56_N30
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

-- Location: LCCOMB_X81_Y56_N26
\t2|s_count[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[14]~3_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count[0]~0_combout\,
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~28_combout\,
	combout => \t2|s_count[14]~3_combout\);

-- Location: FF_X81_Y56_N27
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

-- Location: LCCOMB_X83_Y55_N0
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

-- Location: LCCOMB_X81_Y56_N4
\t2|s_count[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[15]~4_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~30_combout\,
	datad => \t2|s_count[0]~0_combout\,
	combout => \t2|s_count[15]~4_combout\);

-- Location: FF_X81_Y56_N5
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

-- Location: LCCOMB_X83_Y55_N2
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

-- Location: LCCOMB_X81_Y56_N16
\t2|s_count[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[16]~5_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~32_combout\,
	datad => \t2|s_count[0]~0_combout\,
	combout => \t2|s_count[16]~5_combout\);

-- Location: FF_X81_Y56_N17
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

-- Location: LCCOMB_X83_Y55_N4
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

-- Location: LCCOMB_X82_Y56_N30
\t2|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~66_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~34_combout\,
	combout => \t2|Add0~66_combout\);

-- Location: FF_X82_Y56_N31
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

-- Location: LCCOMB_X83_Y55_N6
\t2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~36_combout\ = (\t2|s_count\(18) & (\t2|Add0~35\ $ (GND))) # (!\t2|s_count\(18) & (!\t2|Add0~35\ & VCC))
-- \t2|Add0~37\ = CARRY((\t2|s_count\(18) & !\t2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(18),
	datad => VCC,
	cin => \t2|Add0~35\,
	combout => \t2|Add0~36_combout\,
	cout => \t2|Add0~37\);

-- Location: LCCOMB_X81_Y56_N30
\t2|s_count[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[18]~6_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|Add0~36_combout\,
	datad => \t2|s_count[0]~0_combout\,
	combout => \t2|s_count[18]~6_combout\);

-- Location: FF_X81_Y56_N31
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

-- Location: LCCOMB_X83_Y55_N8
\t2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~38_combout\ = (\t2|s_count\(19) & (!\t2|Add0~37\)) # (!\t2|s_count\(19) & ((\t2|Add0~37\) # (GND)))
-- \t2|Add0~39\ = CARRY((!\t2|Add0~37\) # (!\t2|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(19),
	datad => VCC,
	cin => \t2|Add0~37\,
	combout => \t2|Add0~38_combout\,
	cout => \t2|Add0~39\);

-- Location: LCCOMB_X82_Y56_N8
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

-- Location: FF_X82_Y56_N9
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

-- Location: LCCOMB_X83_Y55_N10
\t2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~40_combout\ = (\t2|s_count\(20) & (\t2|Add0~39\ $ (GND))) # (!\t2|s_count\(20) & (!\t2|Add0~39\ & VCC))
-- \t2|Add0~41\ = CARRY((\t2|s_count\(20) & !\t2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(20),
	datad => VCC,
	cin => \t2|Add0~39\,
	combout => \t2|Add0~40_combout\,
	cout => \t2|Add0~41\);

-- Location: LCCOMB_X81_Y56_N0
\t2|s_count[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[20]~7_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count[0]~0_combout\,
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~40_combout\,
	combout => \t2|s_count[20]~7_combout\);

-- Location: FF_X81_Y56_N1
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

-- Location: LCCOMB_X83_Y55_N12
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

-- Location: LCCOMB_X81_Y56_N14
\t2|s_count[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[21]~8_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count[0]~0_combout\,
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~42_combout\,
	combout => \t2|s_count[21]~8_combout\);

-- Location: FF_X81_Y56_N15
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

-- Location: LCCOMB_X81_Y56_N22
\t2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~7_combout\ = (\t2|s_count\(18) & (\t2|s_count\(16) & (\t2|s_count\(21) & \t2|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(18),
	datab => \t2|s_count\(16),
	datac => \t2|s_count\(21),
	datad => \t2|s_count\(20),
	combout => \t2|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y56_N28
\t2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~6_combout\ = (\t2|s_count\(13) & (\t2|s_count\(15) & (\t2|s_count\(14) & \t2|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(13),
	datab => \t2|s_count\(15),
	datac => \t2|s_count\(14),
	datad => \t2|s_count\(8),
	combout => \t2|Equal0~6_combout\);

-- Location: LCCOMB_X83_Y55_N14
\t2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~44_combout\ = (\t2|s_count\(22) & (\t2|Add0~43\ $ (GND))) # (!\t2|s_count\(22) & (!\t2|Add0~43\ & VCC))
-- \t2|Add0~45\ = CARRY((\t2|s_count\(22) & !\t2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(22),
	datad => VCC,
	cin => \t2|Add0~43\,
	combout => \t2|Add0~44_combout\,
	cout => \t2|Add0~45\);

-- Location: LCCOMB_X84_Y56_N16
\t2|s_count[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[22]~9_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|s_count[0]~0_combout\,
	datad => \t2|Add0~44_combout\,
	combout => \t2|s_count[22]~9_combout\);

-- Location: FF_X84_Y56_N17
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

-- Location: LCCOMB_X83_Y55_N16
\t2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~46_combout\ = (\t2|s_count\(23) & (!\t2|Add0~45\)) # (!\t2|s_count\(23) & ((\t2|Add0~45\) # (GND)))
-- \t2|Add0~47\ = CARRY((!\t2|Add0~45\) # (!\t2|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(23),
	datad => VCC,
	cin => \t2|Add0~45\,
	combout => \t2|Add0~46_combout\,
	cout => \t2|Add0~47\);

-- Location: LCCOMB_X84_Y56_N14
\t2|s_count[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[23]~10_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|s_count[0]~0_combout\,
	datad => \t2|Add0~46_combout\,
	combout => \t2|s_count[23]~10_combout\);

-- Location: FF_X84_Y56_N15
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

-- Location: LCCOMB_X83_Y55_N18
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

-- Location: LCCOMB_X84_Y56_N12
\t2|s_count[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[24]~11_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|pulseOut~0_combout\ & \t2|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datac => \t2|s_count[0]~0_combout\,
	datad => \t2|Add0~48_combout\,
	combout => \t2|s_count[24]~11_combout\);

-- Location: FF_X84_Y56_N13
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

-- Location: LCCOMB_X84_Y56_N6
\t2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~8_combout\ = (\t2|s_count\(24) & (\t2|s_count\(26) & (\t2|s_count\(23) & \t2|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(24),
	datab => \t2|s_count\(26),
	datac => \t2|s_count\(23),
	datad => \t2|s_count\(22),
	combout => \t2|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y56_N24
\t2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~9_combout\ = (\t2|Equal0~7_combout\ & (\t2|Equal0~6_combout\ & (\t2|Equal0~8_combout\ & \t2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Equal0~7_combout\,
	datab => \t2|Equal0~6_combout\,
	datac => \t2|Equal0~8_combout\,
	datad => \t2|Equal0~5_combout\,
	combout => \t2|Equal0~9_combout\);

-- Location: LCCOMB_X81_Y56_N6
\t2|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[0]~0_combout\ = (!\t4|pulseOut~q\ & (\t0|pulseOut~q\ & \t2|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t4|pulseOut~q\,
	datac => \t0|pulseOut~q\,
	datad => \t2|Equal0~9_combout\,
	combout => \t2|s_count[0]~0_combout\);

-- Location: LCCOMB_X83_Y55_N20
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

-- Location: LCCOMB_X82_Y56_N2
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

-- Location: FF_X82_Y56_N3
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

-- Location: LCCOMB_X83_Y55_N22
\t2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~52_combout\ = (\t2|s_count\(26) & (\t2|Add0~51\ $ (GND))) # (!\t2|s_count\(26) & (!\t2|Add0~51\ & VCC))
-- \t2|Add0~53\ = CARRY((\t2|s_count\(26) & !\t2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(26),
	datad => VCC,
	cin => \t2|Add0~51\,
	combout => \t2|Add0~52_combout\,
	cout => \t2|Add0~53\);

-- Location: LCCOMB_X84_Y56_N2
\t2|s_count[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|s_count[26]~12_combout\ = (\t2|s_count[0]~0_combout\) # ((\t2|Add0~52_combout\ & \t2|pulseOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count[0]~0_combout\,
	datac => \t2|Add0~52_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|s_count[26]~12_combout\);

-- Location: FF_X84_Y56_N3
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

-- Location: LCCOMB_X83_Y55_N24
\t2|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~69_combout\ = (\t2|s_count\(27) & (!\t2|Add0~53\)) # (!\t2|s_count\(27) & ((\t2|Add0~53\) # (GND)))
-- \t2|Add0~70\ = CARRY((!\t2|Add0~53\) # (!\t2|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t2|s_count\(27),
	datad => VCC,
	cin => \t2|Add0~53\,
	combout => \t2|Add0~69_combout\,
	cout => \t2|Add0~70\);

-- Location: LCCOMB_X82_Y56_N28
\t2|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~71_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~69_combout\,
	combout => \t2|Add0~71_combout\);

-- Location: FF_X82_Y56_N29
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

-- Location: LCCOMB_X83_Y55_N26
\t2|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~72_combout\ = (\t2|s_count\(28) & (\t2|Add0~70\ $ (GND))) # (!\t2|s_count\(28) & (!\t2|Add0~70\ & VCC))
-- \t2|Add0~73\ = CARRY((\t2|s_count\(28) & !\t2|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(28),
	datad => VCC,
	cin => \t2|Add0~70\,
	combout => \t2|Add0~72_combout\,
	cout => \t2|Add0~73\);

-- Location: LCCOMB_X82_Y56_N10
\t2|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~74_combout\ = (\t2|Add0~72_combout\ & \t2|pulseOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2|Add0~72_combout\,
	datad => \t2|pulseOut~0_combout\,
	combout => \t2|Add0~74_combout\);

-- Location: FF_X82_Y56_N11
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

-- Location: LCCOMB_X83_Y55_N28
\t2|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~75_combout\ = (\t2|s_count\(29) & (!\t2|Add0~73\)) # (!\t2|s_count\(29) & ((\t2|Add0~73\) # (GND)))
-- \t2|Add0~76\ = CARRY((!\t2|Add0~73\) # (!\t2|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(29),
	datad => VCC,
	cin => \t2|Add0~73\,
	combout => \t2|Add0~75_combout\,
	cout => \t2|Add0~76\);

-- Location: LCCOMB_X82_Y56_N12
\t2|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Add0~77_combout\ = (\t2|pulseOut~0_combout\ & \t2|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t2|pulseOut~0_combout\,
	datad => \t2|Add0~75_combout\,
	combout => \t2|Add0~77_combout\);

-- Location: FF_X82_Y56_N13
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

-- Location: LCCOMB_X83_Y55_N30
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

-- Location: LCCOMB_X82_Y56_N18
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

-- Location: FF_X82_Y56_N19
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

-- Location: LCCOMB_X82_Y56_N26
\t2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~3_combout\ = (!\t2|s_count\(17) & (!\t2|s_count\(27) & (!\t2|s_count\(19) & !\t2|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(17),
	datab => \t2|s_count\(27),
	datac => \t2|s_count\(19),
	datad => \t2|s_count\(25),
	combout => \t2|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y56_N20
\t2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~2_combout\ = (!\t2|s_count\(12) & (!\t2|s_count\(9) & (!\t2|s_count\(10) & !\t2|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(12),
	datab => \t2|s_count\(9),
	datac => \t2|s_count\(10),
	datad => \t2|s_count\(11),
	combout => \t2|Equal0~2_combout\);

-- Location: LCCOMB_X84_Y56_N4
\t2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~1_combout\ = (!\t2|s_count\(7) & (!\t2|s_count\(4) & (!\t2|s_count\(5) & !\t2|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(7),
	datab => \t2|s_count\(4),
	datac => \t2|s_count\(5),
	datad => \t2|s_count\(6),
	combout => \t2|Equal0~1_combout\);

-- Location: LCCOMB_X84_Y56_N18
\t2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~0_combout\ = (!\t2|s_count\(1) & (!\t2|s_count\(3) & (!\t2|s_count\(2) & !\t2|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(1),
	datab => \t2|s_count\(3),
	datac => \t2|s_count\(2),
	datad => \t2|s_count\(0),
	combout => \t2|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y56_N24
\t2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~4_combout\ = (\t2|Equal0~3_combout\ & (\t2|Equal0~2_combout\ & (\t2|Equal0~1_combout\ & \t2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|Equal0~3_combout\,
	datab => \t2|Equal0~2_combout\,
	datac => \t2|Equal0~1_combout\,
	datad => \t2|Equal0~0_combout\,
	combout => \t2|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y56_N4
\t2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|Equal0~5_combout\ = (!\t2|s_count\(29) & (!\t2|s_count\(30) & (!\t2|s_count\(28) & \t2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(29),
	datab => \t2|s_count\(30),
	datac => \t2|s_count\(28),
	datad => \t2|Equal0~4_combout\,
	combout => \t2|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y56_N10
\t2|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~0_combout\ = (\t2|s_count\(13)) # ((\t2|s_count\(15)) # ((\t2|s_count\(14)) # (\t2|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(13),
	datab => \t2|s_count\(15),
	datac => \t2|s_count\(14),
	datad => \t2|s_count\(8),
	combout => \t2|p1~0_combout\);

-- Location: LCCOMB_X81_Y56_N8
\t2|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~1_combout\ = (\t2|s_count\(18)) # ((\t2|s_count\(16)) # ((\t2|s_count\(21)) # (\t2|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(18),
	datab => \t2|s_count\(16),
	datac => \t2|s_count\(21),
	datad => \t2|s_count\(20),
	combout => \t2|p1~1_combout\);

-- Location: LCCOMB_X84_Y56_N8
\t2|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~2_combout\ = (\t2|s_count\(24)) # ((\t2|s_count\(26)) # ((\t2|s_count\(23)) # (\t2|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|s_count\(24),
	datab => \t2|s_count\(26),
	datac => \t2|s_count\(23),
	datad => \t2|s_count\(22),
	combout => \t2|p1~2_combout\);

-- Location: LCCOMB_X81_Y56_N18
\t2|p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|p1~3_combout\ = (\t2|p1~0_combout\) # ((\t2|p1~1_combout\) # ((\t2|p1~2_combout\) # (!\t4|pulseOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|p1~0_combout\,
	datab => \t2|p1~1_combout\,
	datac => \t2|p1~2_combout\,
	datad => \t4|pulseOut~q\,
	combout => \t2|p1~3_combout\);

-- Location: LCCOMB_X81_Y56_N20
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

-- Location: FF_X81_Y56_N21
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

-- Location: LCCOMB_X68_Y49_N2
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

-- Location: FF_X68_Y49_N3
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

-- Location: LCCOMB_X68_Y49_N4
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

-- Location: FF_X68_Y49_N5
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

-- Location: LCCOMB_X68_Y49_N6
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

-- Location: FF_X68_Y49_N7
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

-- Location: LCCOMB_X68_Y49_N8
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

-- Location: FF_X68_Y49_N9
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

-- Location: LCCOMB_X68_Y49_N10
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

-- Location: FF_X68_Y49_N11
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

-- Location: LCCOMB_X68_Y49_N12
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

-- Location: FF_X68_Y49_N13
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

-- Location: LCCOMB_X68_Y49_N14
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

-- Location: LCCOMB_X67_Y49_N16
\f1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~7_combout\ = (\f1|Add0~12_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~12_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~7_combout\);

-- Location: FF_X67_Y49_N17
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

-- Location: LCCOMB_X68_Y49_N16
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

-- Location: FF_X68_Y49_N17
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

-- Location: LCCOMB_X68_Y49_N18
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

-- Location: FF_X68_Y49_N19
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

-- Location: LCCOMB_X68_Y49_N20
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

-- Location: FF_X68_Y49_N21
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

-- Location: LCCOMB_X68_Y49_N22
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

-- Location: FF_X68_Y49_N23
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

-- Location: LCCOMB_X68_Y49_N24
\f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~22_combout\ = (\f1|s_count\(11) & (!\f1|Add0~21\)) # (!\f1|s_count\(11) & ((\f1|Add0~21\) # (GND)))
-- \f1|Add0~23\ = CARRY((!\f1|Add0~21\) # (!\f1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(11),
	datad => VCC,
	cin => \f1|Add0~21\,
	combout => \f1|Add0~22_combout\,
	cout => \f1|Add0~23\);

-- Location: LCCOMB_X67_Y48_N14
\f1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~6_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|Add0~22_combout\,
	combout => \f1|s_count~6_combout\);

-- Location: FF_X67_Y48_N15
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

-- Location: LCCOMB_X68_Y49_N26
\f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~24_combout\ = (\f1|s_count\(12) & (\f1|Add0~23\ $ (GND))) # (!\f1|s_count\(12) & (!\f1|Add0~23\ & VCC))
-- \f1|Add0~25\ = CARRY((\f1|s_count\(12) & !\f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(12),
	datad => VCC,
	cin => \f1|Add0~23\,
	combout => \f1|Add0~24_combout\,
	cout => \f1|Add0~25\);

-- Location: LCCOMB_X67_Y48_N10
\f1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~5_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~24_combout\,
	combout => \f1|s_count~5_combout\);

-- Location: FF_X67_Y48_N11
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

-- Location: LCCOMB_X68_Y49_N28
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

-- Location: LCCOMB_X68_Y49_N0
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

-- Location: FF_X68_Y49_N1
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

-- Location: LCCOMB_X68_Y49_N30
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

-- Location: LCCOMB_X69_Y48_N0
\f1|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~11_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|Add0~28_combout\,
	combout => \f1|s_count~11_combout\);

-- Location: FF_X69_Y48_N1
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

-- Location: LCCOMB_X68_Y48_N0
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

-- Location: FF_X68_Y48_N1
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

-- Location: LCCOMB_X68_Y48_N2
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

-- Location: LCCOMB_X69_Y48_N22
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

-- Location: FF_X69_Y48_N23
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

-- Location: LCCOMB_X69_Y48_N10
\f1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~8_combout\ = (\f1|s_count\(16) & (\f1|s_count\(14) & (!\f1|s_count\(15) & !\f1|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(16),
	datab => \f1|s_count\(14),
	datac => \f1|s_count\(15),
	datad => \f1|s_count\(10),
	combout => \f1|Equal0~8_combout\);

-- Location: LCCOMB_X68_Y48_N4
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

-- Location: FF_X68_Y48_N5
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

-- Location: LCCOMB_X68_Y48_N6
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

-- Location: LCCOMB_X67_Y48_N16
\f1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~3_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~36_combout\,
	combout => \f1|s_count~3_combout\);

-- Location: FF_X67_Y48_N17
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

-- Location: LCCOMB_X68_Y48_N8
\f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~38_combout\ = (\f1|s_count\(19) & (!\f1|Add0~37\)) # (!\f1|s_count\(19) & ((\f1|Add0~37\) # (GND)))
-- \f1|Add0~39\ = CARRY((!\f1|Add0~37\) # (!\f1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(19),
	datad => VCC,
	cin => \f1|Add0~37\,
	combout => \f1|Add0~38_combout\,
	cout => \f1|Add0~39\);

-- Location: LCCOMB_X67_Y48_N6
\f1|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~2_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|Add0~38_combout\,
	combout => \f1|s_count~2_combout\);

-- Location: FF_X67_Y48_N7
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

-- Location: LCCOMB_X68_Y48_N10
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

-- Location: LCCOMB_X67_Y48_N26
\f1|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~1_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|Add0~40_combout\,
	combout => \f1|s_count~1_combout\);

-- Location: FF_X67_Y48_N27
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

-- Location: LCCOMB_X68_Y48_N12
\f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~42_combout\ = (\f1|s_count\(21) & (!\f1|Add0~41\)) # (!\f1|s_count\(21) & ((\f1|Add0~41\) # (GND)))
-- \f1|Add0~43\ = CARRY((!\f1|Add0~41\) # (!\f1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(21),
	datad => VCC,
	cin => \f1|Add0~41\,
	combout => \f1|Add0~42_combout\,
	cout => \f1|Add0~43\);

-- Location: LCCOMB_X67_Y48_N4
\f1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~0_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|Add0~42_combout\,
	combout => \f1|s_count~0_combout\);

-- Location: FF_X67_Y48_N5
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

-- Location: LCCOMB_X68_Y48_N14
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

-- Location: LCCOMB_X69_Y48_N18
\f1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~9_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~44_combout\,
	combout => \f1|s_count~9_combout\);

-- Location: FF_X69_Y48_N19
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

-- Location: LCCOMB_X68_Y48_N16
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

-- Location: FF_X68_Y48_N17
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

-- Location: LCCOMB_X68_Y48_N18
\f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~48_combout\ = (\f1|s_count\(24) & (\f1|Add0~47\ $ (GND))) # (!\f1|s_count\(24) & (!\f1|Add0~47\ & VCC))
-- \f1|Add0~49\ = CARRY((\f1|s_count\(24) & !\f1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(24),
	datad => VCC,
	cin => \f1|Add0~47\,
	combout => \f1|Add0~48_combout\,
	cout => \f1|Add0~49\);

-- Location: LCCOMB_X69_Y48_N12
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

-- Location: FF_X69_Y48_N13
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

-- Location: LCCOMB_X69_Y48_N20
\f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~7_combout\ = (!\f1|s_count\(23) & (\f1|s_count\(22) & (!\f1|s_count\(17) & \f1|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(22),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(24),
	combout => \f1|Equal0~7_combout\);

-- Location: LCCOMB_X67_Y49_N30
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (\f1|s_count\(2) & (\f1|s_count\(3) & (\f1|s_count\(4) & !\f1|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(2),
	datab => \f1|s_count\(3),
	datac => \f1|s_count\(4),
	datad => \f1|s_count\(6),
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X68_Y48_N20
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

-- Location: FF_X68_Y48_N21
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

-- Location: LCCOMB_X68_Y48_N22
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

-- Location: FF_X68_Y48_N23
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

-- Location: LCCOMB_X68_Y48_N24
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

-- Location: FF_X68_Y48_N25
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

-- Location: LCCOMB_X68_Y48_N26
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

-- Location: FF_X68_Y48_N27
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

-- Location: LCCOMB_X68_Y48_N28
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

-- Location: FF_X68_Y48_N29
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

-- Location: LCCOMB_X68_Y48_N30
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

-- Location: FF_X68_Y48_N31
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

-- Location: LCCOMB_X67_Y48_N22
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|s_count\(27) & (!\f1|s_count\(29) & (!\f1|s_count\(30) & !\f1|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(27),
	datab => \f1|s_count\(29),
	datac => \f1|s_count\(30),
	datad => \f1|s_count\(28),
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y48_N24
\f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = (\f1|s_count\(20) & (\f1|s_count\(21) & (!\f1|s_count\(25) & !\f1|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(20),
	datab => \f1|s_count\(21),
	datac => \f1|s_count\(25),
	datad => \f1|s_count\(26),
	combout => \f1|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y48_N8
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (\f1|s_count\(12) & (\f1|s_count\(18) & (\f1|s_count\(19) & \f1|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(12),
	datab => \f1|s_count\(18),
	datac => \f1|s_count\(19),
	datad => \f1|s_count\(13),
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y48_N28
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (!\f1|s_count\(9) & (\f1|s_count\(11) & (!\f1|s_count\(7) & !\f1|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(9),
	datab => \f1|s_count\(11),
	datac => \f1|s_count\(7),
	datad => \f1|s_count\(8),
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y48_N18
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~0_combout\ & (\f1|Equal0~1_combout\ & (\f1|Equal0~2_combout\ & \f1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~0_combout\,
	datab => \f1|Equal0~1_combout\,
	datac => \f1|Equal0~2_combout\,
	datad => \f1|Equal0~3_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y48_N0
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (\f1|s_count\(1) & (\f1|s_count\(0) & (\f1|Equal0~5_combout\ & \f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(1),
	datab => \f1|s_count\(0),
	datac => \f1|Equal0~5_combout\,
	datad => \f1|Equal0~4_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X67_Y48_N30
\f1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~9_combout\ = (\f1|Equal0~8_combout\ & (\f1|s_count\(5) & (\f1|Equal0~7_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~8_combout\,
	datab => \f1|s_count\(5),
	datac => \f1|Equal0~7_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal0~9_combout\);

-- Location: LCCOMB_X69_Y48_N4
\f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~0_combout\ = (\f1|s_count\(23) & (!\f1|s_count\(22) & (\f1|s_count\(17) & !\f1|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(22),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(24),
	combout => \f1|Equal1~0_combout\);

-- Location: LCCOMB_X69_Y48_N2
\f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~1_combout\ = (!\f1|s_count\(16) & (!\f1|s_count\(14) & (\f1|s_count\(15) & \f1|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(16),
	datab => \f1|s_count\(14),
	datac => \f1|s_count\(15),
	datad => \f1|s_count\(10),
	combout => \f1|Equal1~1_combout\);

-- Location: LCCOMB_X67_Y48_N20
\f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~2_combout\ = (\f1|Equal1~0_combout\ & (!\f1|s_count\(5) & (\f1|Equal1~1_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal1~0_combout\,
	datab => \f1|s_count\(5),
	datac => \f1|Equal1~1_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal1~2_combout\);

-- Location: LCCOMB_X67_Y48_N12
\f1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|clkOut~0_combout\ = (\f1|Equal0~9_combout\) # ((\f1|clkOut~q\ & !\f1|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datac => \f1|clkOut~q\,
	datad => \f1|Equal1~2_combout\,
	combout => \f1|clkOut~0_combout\);

-- Location: FF_X67_Y48_N13
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

-- Location: LCCOMB_X67_Y55_N16
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\f1|clkOut~q\ & ((\t1|pulseOut~q\) # ((\t3|pulseOut~q\) # (\t2|pulseOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut~q\,
	datab => \t3|pulseOut~q\,
	datac => \t2|pulseOut~q\,
	datad => \f1|clkOut~q\,
	combout => \LEDG~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


