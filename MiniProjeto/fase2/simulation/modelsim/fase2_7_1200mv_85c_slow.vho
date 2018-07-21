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

-- DATE "03/31/2017 14:36:10"

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
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 8);
	CLOCK_50 : IN std_logic
	);
END parking_Phase2;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \t0|s_count[0]~33_combout\ : std_logic;
SIGNAL \t0|LessThan2~0_combout\ : std_logic;
SIGNAL \t0|LessThan2~1_combout\ : std_logic;
SIGNAL \t0|Equal1~0_combout\ : std_logic;
SIGNAL \t0|LessThan2~2_combout\ : std_logic;
SIGNAL \t0|LessThan2~5_combout\ : std_logic;
SIGNAL \t0|LessThan2~3_combout\ : std_logic;
SIGNAL \t0|LessThan2~4_combout\ : std_logic;
SIGNAL \t0|LessThan2~6_combout\ : std_logic;
SIGNAL \t0|LessThan2~7_combout\ : std_logic;
SIGNAL \t0|LessThan2~8_combout\ : std_logic;
SIGNAL \t0|LessThan2~9_combout\ : std_logic;
SIGNAL \t0|LessThan3~0_combout\ : std_logic;
SIGNAL \t0|Equal0~4_combout\ : std_logic;
SIGNAL \t0|Equal0~5_combout\ : std_logic;
SIGNAL \t0|LessThan3~3_combout\ : std_logic;
SIGNAL \t0|LessThan3~4_combout\ : std_logic;
SIGNAL \t0|LessThan3~1_combout\ : std_logic;
SIGNAL \t0|LessThan3~2_combout\ : std_logic;
SIGNAL \t0|LessThan3~5_combout\ : std_logic;
SIGNAL \t0|LessThan3~6_combout\ : std_logic;
SIGNAL \t0|p1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \t0|Equal0~6_combout\ : std_logic;
SIGNAL \t0|Equal0~7_combout\ : std_logic;
SIGNAL \t0|Equal0~1_combout\ : std_logic;
SIGNAL \t0|Equal0~2_combout\ : std_logic;
SIGNAL \t0|Equal0~0_combout\ : std_logic;
SIGNAL \t0|Equal0~3_combout\ : std_logic;
SIGNAL \t0|Equal0~8_combout\ : std_logic;
SIGNAL \t0|Equal1~3_combout\ : std_logic;
SIGNAL \t0|Equal1~1_combout\ : std_logic;
SIGNAL \t0|Equal1~2_combout\ : std_logic;
SIGNAL \t0|Equal1~4_combout\ : std_logic;
SIGNAL \t0|s_count[10]~96_combout\ : std_logic;
SIGNAL \t0|s_count[10]~85_combout\ : std_logic;
SIGNAL \t0|s_count[0]~34\ : std_logic;
SIGNAL \t0|s_count[1]~35_combout\ : std_logic;
SIGNAL \t0|s_count[1]~36\ : std_logic;
SIGNAL \t0|s_count[2]~37_combout\ : std_logic;
SIGNAL \t0|s_count[2]~38\ : std_logic;
SIGNAL \t0|s_count[3]~39_combout\ : std_logic;
SIGNAL \t0|s_count[3]~40\ : std_logic;
SIGNAL \t0|s_count[4]~41_combout\ : std_logic;
SIGNAL \t0|s_count[4]~42\ : std_logic;
SIGNAL \t0|s_count[5]~43_combout\ : std_logic;
SIGNAL \t0|s_count[5]~44\ : std_logic;
SIGNAL \t0|s_count[6]~45_combout\ : std_logic;
SIGNAL \t0|s_count[6]~46\ : std_logic;
SIGNAL \t0|s_count[7]~47_combout\ : std_logic;
SIGNAL \t0|s_count[7]~48\ : std_logic;
SIGNAL \t0|s_count[8]~49_combout\ : std_logic;
SIGNAL \t0|s_count[8]~50\ : std_logic;
SIGNAL \t0|s_count[9]~51_combout\ : std_logic;
SIGNAL \t0|s_count[9]~52\ : std_logic;
SIGNAL \t0|s_count[10]~53_combout\ : std_logic;
SIGNAL \t0|s_count[10]~54\ : std_logic;
SIGNAL \t0|s_count[11]~55_combout\ : std_logic;
SIGNAL \t0|s_count[11]~56\ : std_logic;
SIGNAL \t0|s_count[12]~57_combout\ : std_logic;
SIGNAL \t0|s_count[12]~58\ : std_logic;
SIGNAL \t0|s_count[13]~59_combout\ : std_logic;
SIGNAL \t0|s_count[13]~60\ : std_logic;
SIGNAL \t0|s_count[14]~61_combout\ : std_logic;
SIGNAL \t0|s_count[14]~62\ : std_logic;
SIGNAL \t0|s_count[15]~63_combout\ : std_logic;
SIGNAL \t0|s_count[15]~64\ : std_logic;
SIGNAL \t0|s_count[16]~65_combout\ : std_logic;
SIGNAL \t0|s_count[16]~66\ : std_logic;
SIGNAL \t0|s_count[17]~67_combout\ : std_logic;
SIGNAL \t0|s_count[17]~68\ : std_logic;
SIGNAL \t0|s_count[18]~69_combout\ : std_logic;
SIGNAL \t0|s_count[18]~70\ : std_logic;
SIGNAL \t0|s_count[19]~71_combout\ : std_logic;
SIGNAL \t0|s_count[19]~72\ : std_logic;
SIGNAL \t0|s_count[20]~73_combout\ : std_logic;
SIGNAL \t0|s_count[20]~74\ : std_logic;
SIGNAL \t0|s_count[21]~75_combout\ : std_logic;
SIGNAL \t0|s_count[21]~76\ : std_logic;
SIGNAL \t0|s_count[22]~77_combout\ : std_logic;
SIGNAL \t0|s_count[22]~78\ : std_logic;
SIGNAL \t0|s_count[23]~79_combout\ : std_logic;
SIGNAL \t0|s_count[23]~80\ : std_logic;
SIGNAL \t0|s_count[24]~81_combout\ : std_logic;
SIGNAL \t0|s_count[24]~82\ : std_logic;
SIGNAL \t0|s_count[25]~83_combout\ : std_logic;
SIGNAL \t0|s_count[25]~84\ : std_logic;
SIGNAL \t0|s_count[26]~86_combout\ : std_logic;
SIGNAL \t0|s_count[26]~87\ : std_logic;
SIGNAL \t0|s_count[27]~88_combout\ : std_logic;
SIGNAL \t0|s_count[27]~89\ : std_logic;
SIGNAL \t0|s_count[28]~90_combout\ : std_logic;
SIGNAL \t0|s_count[28]~91\ : std_logic;
SIGNAL \t0|s_count[29]~92_combout\ : std_logic;
SIGNAL \t0|s_count[29]~93\ : std_logic;
SIGNAL \t0|s_count[30]~94_combout\ : std_logic;
SIGNAL \t0|pulseOut1~0_combout\ : std_logic;
SIGNAL \t0|pulseOut3~0_combout\ : std_logic;
SIGNAL \t0|pulseOut2~0_combout\ : std_logic;
SIGNAL \t0|pulseOut1~q\ : std_logic;
SIGNAL \t0|pulseOut3~2_combout\ : std_logic;
SIGNAL \t0|pulseOut3~1_combout\ : std_logic;
SIGNAL \t0|pulseOut3~3_combout\ : std_logic;
SIGNAL \t0|pulseOut3~q\ : std_logic;
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
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Add0~49\ : std_logic;
SIGNAL \f1|Add0~50_combout\ : std_logic;
SIGNAL \f1|Add0~51\ : std_logic;
SIGNAL \f1|Add0~52_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Add0~53\ : std_logic;
SIGNAL \f1|Add0~54_combout\ : std_logic;
SIGNAL \f1|Add0~55\ : std_logic;
SIGNAL \f1|Add0~56_combout\ : std_logic;
SIGNAL \f1|Add0~57\ : std_logic;
SIGNAL \f1|Add0~58_combout\ : std_logic;
SIGNAL \f1|Add0~59\ : std_logic;
SIGNAL \f1|Add0~60_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal0~9_combout\ : std_logic;
SIGNAL \f1|Equal1~0_combout\ : std_logic;
SIGNAL \f1|Equal1~1_combout\ : std_logic;
SIGNAL \f1|Equal1~2_combout\ : std_logic;
SIGNAL \f1|clkOut~0_combout\ : std_logic;
SIGNAL \f1|clkOut~q\ : std_logic;
SIGNAL \t0|pulseOut2~1_combout\ : std_logic;
SIGNAL \t0|pulseOut2~q\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \t0|s_count\ : std_logic_vector(30 DOWNTO 0);
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
	i => \t0|pulseOut1~q\,
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
	i => \t0|pulseOut3~q\,
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

-- Location: LCCOMB_X82_Y70_N2
\t0|s_count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[0]~33_combout\ = \t0|s_count\(0) $ (VCC)
-- \t0|s_count[0]~34\ = CARRY(\t0|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(0),
	datad => VCC,
	combout => \t0|s_count[0]~33_combout\,
	cout => \t0|s_count[0]~34\);

-- Location: LCCOMB_X81_Y69_N20
\t0|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~0_combout\ = (\t0|s_count\(23) & (\t0|s_count\(22) & (\t0|s_count\(20) & \t0|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(23),
	datab => \t0|s_count\(22),
	datac => \t0|s_count\(20),
	datad => \t0|s_count\(19),
	combout => \t0|LessThan2~0_combout\);

-- Location: LCCOMB_X81_Y69_N8
\t0|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~1_combout\ = (\t0|s_count\(21) & ((\t0|s_count\(18)) # ((\t0|s_count\(17) & \t0|s_count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(21),
	datab => \t0|s_count\(17),
	datac => \t0|s_count\(18),
	datad => \t0|s_count\(16),
	combout => \t0|LessThan2~1_combout\);

-- Location: LCCOMB_X81_Y69_N12
\t0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal1~0_combout\ = (!\t0|s_count\(27) & (!\t0|s_count\(28) & !\t0|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(27),
	datac => \t0|s_count\(28),
	datad => \t0|s_count\(26),
	combout => \t0|Equal1~0_combout\);

-- Location: LCCOMB_X80_Y70_N4
\t0|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~2_combout\ = ((\t0|s_count\(25) & (\t0|LessThan2~0_combout\ & \t0|LessThan2~1_combout\))) # (!\t0|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datab => \t0|LessThan2~0_combout\,
	datac => \t0|LessThan2~1_combout\,
	datad => \t0|Equal1~0_combout\,
	combout => \t0|LessThan2~2_combout\);

-- Location: LCCOMB_X80_Y70_N8
\t0|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~5_combout\ = (\t0|s_count\(10)) # ((\t0|s_count\(9)) # ((\t0|s_count\(8)) # (\t0|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datab => \t0|s_count\(9),
	datac => \t0|s_count\(8),
	datad => \t0|s_count\(11),
	combout => \t0|LessThan2~5_combout\);

-- Location: LCCOMB_X82_Y70_N0
\t0|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~3_combout\ = (!\t0|s_count\(2) & (!\t0|s_count\(1) & (!\t0|s_count\(3) & !\t0|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(2),
	datab => \t0|s_count\(1),
	datac => \t0|s_count\(3),
	datad => \t0|s_count\(0),
	combout => \t0|LessThan2~3_combout\);

-- Location: LCCOMB_X80_Y70_N14
\t0|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~4_combout\ = (!\t0|s_count\(5) & (!\t0|s_count\(4) & (\t0|LessThan2~3_combout\ & !\t0|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(5),
	datab => \t0|s_count\(4),
	datac => \t0|LessThan2~3_combout\,
	datad => \t0|s_count\(6),
	combout => \t0|LessThan2~4_combout\);

-- Location: LCCOMB_X81_Y70_N18
\t0|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~6_combout\ = (\t0|s_count\(14) & (\t0|s_count\(13) & (\t0|s_count\(12) & \t0|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(14),
	datab => \t0|s_count\(13),
	datac => \t0|s_count\(12),
	datad => \t0|s_count\(15),
	combout => \t0|LessThan2~6_combout\);

-- Location: LCCOMB_X80_Y70_N2
\t0|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~7_combout\ = (\t0|s_count\(17) & (\t0|LessThan2~0_combout\ & (\t0|s_count\(21) & \t0|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(17),
	datab => \t0|LessThan2~0_combout\,
	datac => \t0|s_count\(21),
	datad => \t0|LessThan2~6_combout\,
	combout => \t0|LessThan2~7_combout\);

-- Location: LCCOMB_X80_Y70_N20
\t0|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~8_combout\ = (\t0|LessThan2~7_combout\ & ((\t0|LessThan2~5_combout\) # ((\t0|s_count\(7) & !\t0|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(7),
	datab => \t0|LessThan2~5_combout\,
	datac => \t0|LessThan2~4_combout\,
	datad => \t0|LessThan2~7_combout\,
	combout => \t0|LessThan2~8_combout\);

-- Location: LCCOMB_X80_Y70_N22
\t0|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan2~9_combout\ = (\t0|LessThan2~2_combout\) # ((\t0|s_count\(25) & ((\t0|s_count\(24)) # (\t0|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datab => \t0|s_count\(24),
	datac => \t0|LessThan2~2_combout\,
	datad => \t0|LessThan2~8_combout\,
	combout => \t0|LessThan2~9_combout\);

-- Location: LCCOMB_X81_Y69_N24
\t0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~0_combout\ = (\t0|s_count\(21)) # ((\t0|s_count\(19)) # ((\t0|s_count\(16) & \t0|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(21),
	datab => \t0|s_count\(19),
	datac => \t0|s_count\(16),
	datad => \t0|s_count\(15),
	combout => \t0|LessThan3~0_combout\);

-- Location: LCCOMB_X81_Y70_N6
\t0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~4_combout\ = (\t0|s_count\(22) & (\t0|s_count\(26) & (\t0|s_count\(24) & \t0|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(22),
	datab => \t0|s_count\(26),
	datac => \t0|s_count\(24),
	datad => \t0|s_count\(23),
	combout => \t0|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y70_N28
\t0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~5_combout\ = (\t0|s_count\(28) & \t0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(28),
	datad => \t0|Equal0~4_combout\,
	combout => \t0|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y70_N12
\t0|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~3_combout\ = (!\t0|s_count\(19) & (!\t0|s_count\(11) & (!\t0|s_count\(12) & !\t0|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(19),
	datab => \t0|s_count\(11),
	datac => \t0|s_count\(12),
	datad => \t0|s_count\(21),
	combout => \t0|LessThan3~3_combout\);

-- Location: LCCOMB_X81_Y70_N22
\t0|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~4_combout\ = (!\t0|s_count\(14) & (!\t0|s_count\(13) & (!\t0|s_count\(10) & \t0|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(14),
	datab => \t0|s_count\(13),
	datac => \t0|s_count\(10),
	datad => \t0|LessThan3~3_combout\,
	combout => \t0|LessThan3~4_combout\);

-- Location: LCCOMB_X81_Y69_N6
\t0|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~1_combout\ = (\t0|s_count\(21)) # ((\t0|s_count\(19)) # ((\t0|s_count\(18) & \t0|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(21),
	datab => \t0|s_count\(19),
	datac => \t0|s_count\(18),
	datad => \t0|s_count\(17),
	combout => \t0|LessThan3~1_combout\);

-- Location: LCCOMB_X81_Y70_N0
\t0|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~2_combout\ = (\t0|s_count\(25) & (\t0|LessThan3~1_combout\ & ((\t0|s_count\(21)) # (\t0|s_count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(21),
	datab => \t0|s_count\(25),
	datac => \t0|s_count\(20),
	datad => \t0|LessThan3~1_combout\,
	combout => \t0|LessThan3~2_combout\);

-- Location: LCCOMB_X81_Y70_N16
\t0|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~5_combout\ = (\t0|LessThan3~0_combout\ & (\t0|Equal0~5_combout\ & (!\t0|LessThan3~4_combout\ & \t0|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|LessThan3~0_combout\,
	datab => \t0|Equal0~5_combout\,
	datac => \t0|LessThan3~4_combout\,
	datad => \t0|LessThan3~2_combout\,
	combout => \t0|LessThan3~5_combout\);

-- Location: LCCOMB_X81_Y70_N10
\t0|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|LessThan3~6_combout\ = (\t0|LessThan3~5_combout\) # ((\t0|s_count\(28) & \t0|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(28),
	datac => \t0|s_count\(27),
	datad => \t0|LessThan3~5_combout\,
	combout => \t0|LessThan3~6_combout\);

-- Location: LCCOMB_X81_Y70_N20
\t0|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|p1~0_combout\ = (!\t0|s_count\(29) & (!\t0|s_count\(30) & !\t0|LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(29),
	datac => \t0|s_count\(30),
	datad => \t0|LessThan3~6_combout\,
	combout => \t0|p1~0_combout\);

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

-- Location: LCCOMB_X81_Y70_N8
\t0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~6_combout\ = (\t0|s_count\(8) & (\t0|s_count\(10) & (\t0|s_count\(14) & \t0|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(8),
	datab => \t0|s_count\(10),
	datac => \t0|s_count\(14),
	datad => \t0|s_count\(13),
	combout => \t0|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y69_N14
\t0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~7_combout\ = (\t0|s_count\(18) & (\t0|s_count\(19) & (\t0|s_count\(27) & \t0|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datab => \t0|s_count\(19),
	datac => \t0|s_count\(27),
	datad => \t0|s_count\(16),
	combout => \t0|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y69_N2
\t0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~1_combout\ = (!\t0|s_count\(20) & (!\t0|s_count\(29) & (!\t0|s_count\(30) & !\t0|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(20),
	datab => \t0|s_count\(29),
	datac => \t0|s_count\(30),
	datad => \t0|s_count\(21),
	combout => \t0|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y70_N0
\t0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~2_combout\ = (!\t0|s_count\(7) & (!\t0|s_count\(9) & (!\t0|s_count\(12) & !\t0|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(7),
	datab => \t0|s_count\(9),
	datac => \t0|s_count\(12),
	datad => \t0|s_count\(11),
	combout => \t0|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y69_N4
\t0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~0_combout\ = (!\t0|s_count\(15) & (!\t0|s_count\(17) & !\t0|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(15),
	datab => \t0|s_count\(17),
	datad => \t0|s_count\(25),
	combout => \t0|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y70_N18
\t0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~3_combout\ = (\t0|Equal0~1_combout\ & (\t0|Equal0~2_combout\ & (\t0|LessThan2~4_combout\ & \t0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~1_combout\,
	datab => \t0|Equal0~2_combout\,
	datac => \t0|LessThan2~4_combout\,
	datad => \t0|Equal0~0_combout\,
	combout => \t0|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y70_N14
\t0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~8_combout\ = (\t0|Equal0~6_combout\ & (\t0|Equal0~5_combout\ & (\t0|Equal0~7_combout\ & \t0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~6_combout\,
	datab => \t0|Equal0~5_combout\,
	datac => \t0|Equal0~7_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y69_N26
\t0|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal1~3_combout\ = (!\t0|s_count\(18) & (!\t0|s_count\(22) & (!\t0|s_count\(23) & !\t0|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datab => \t0|s_count\(22),
	datac => \t0|s_count\(23),
	datad => \t0|s_count\(19),
	combout => \t0|Equal1~3_combout\);

-- Location: LCCOMB_X80_Y70_N24
\t0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal1~1_combout\ = (!\t0|s_count\(10) & (!\t0|s_count\(14) & (!\t0|s_count\(8) & !\t0|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datab => \t0|s_count\(14),
	datac => \t0|s_count\(8),
	datad => \t0|s_count\(13),
	combout => \t0|Equal1~1_combout\);

-- Location: LCCOMB_X80_Y70_N26
\t0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal1~2_combout\ = (\t0|Equal1~1_combout\ & (!\t0|s_count\(16) & \t0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|Equal1~1_combout\,
	datac => \t0|s_count\(16),
	datad => \t0|Equal1~0_combout\,
	combout => \t0|Equal1~2_combout\);

-- Location: LCCOMB_X80_Y70_N16
\t0|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal1~4_combout\ = (!\t0|s_count\(24) & (\t0|Equal1~3_combout\ & (\t0|Equal1~2_combout\ & \t0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(24),
	datab => \t0|Equal1~3_combout\,
	datac => \t0|Equal1~2_combout\,
	datad => \t0|Equal0~3_combout\,
	combout => \t0|Equal1~4_combout\);

-- Location: LCCOMB_X81_Y70_N26
\t0|s_count[10]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[10]~96_combout\ = (!\t0|Equal0~8_combout\ & (((!\t0|p1~0_combout\) # (!\t0|Equal1~4_combout\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t0|Equal0~8_combout\,
	datac => \t0|Equal1~4_combout\,
	datad => \t0|p1~0_combout\,
	combout => \t0|s_count[10]~96_combout\);

-- Location: LCCOMB_X81_Y70_N4
\t0|s_count[10]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[10]~85_combout\ = (!\t0|s_count[10]~96_combout\ & (!\t0|pulseOut1~0_combout\ & ((!\t0|p1~0_combout\) # (!\t0|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|LessThan2~9_combout\,
	datab => \t0|p1~0_combout\,
	datac => \t0|s_count[10]~96_combout\,
	datad => \t0|pulseOut1~0_combout\,
	combout => \t0|s_count[10]~85_combout\);

-- Location: FF_X82_Y70_N3
\t0|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[0]~33_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(0));

-- Location: LCCOMB_X82_Y70_N4
\t0|s_count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[1]~35_combout\ = (\t0|s_count\(1) & (!\t0|s_count[0]~34\)) # (!\t0|s_count\(1) & ((\t0|s_count[0]~34\) # (GND)))
-- \t0|s_count[1]~36\ = CARRY((!\t0|s_count[0]~34\) # (!\t0|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(1),
	datad => VCC,
	cin => \t0|s_count[0]~34\,
	combout => \t0|s_count[1]~35_combout\,
	cout => \t0|s_count[1]~36\);

-- Location: FF_X82_Y70_N5
\t0|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[1]~35_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(1));

-- Location: LCCOMB_X82_Y70_N6
\t0|s_count[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[2]~37_combout\ = (\t0|s_count\(2) & (\t0|s_count[1]~36\ $ (GND))) # (!\t0|s_count\(2) & (!\t0|s_count[1]~36\ & VCC))
-- \t0|s_count[2]~38\ = CARRY((\t0|s_count\(2) & !\t0|s_count[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(2),
	datad => VCC,
	cin => \t0|s_count[1]~36\,
	combout => \t0|s_count[2]~37_combout\,
	cout => \t0|s_count[2]~38\);

-- Location: FF_X82_Y70_N7
\t0|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[2]~37_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(2));

-- Location: LCCOMB_X82_Y70_N8
\t0|s_count[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[3]~39_combout\ = (\t0|s_count\(3) & (!\t0|s_count[2]~38\)) # (!\t0|s_count\(3) & ((\t0|s_count[2]~38\) # (GND)))
-- \t0|s_count[3]~40\ = CARRY((!\t0|s_count[2]~38\) # (!\t0|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(3),
	datad => VCC,
	cin => \t0|s_count[2]~38\,
	combout => \t0|s_count[3]~39_combout\,
	cout => \t0|s_count[3]~40\);

-- Location: FF_X82_Y70_N9
\t0|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[3]~39_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(3));

-- Location: LCCOMB_X82_Y70_N10
\t0|s_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[4]~41_combout\ = (\t0|s_count\(4) & (\t0|s_count[3]~40\ $ (GND))) # (!\t0|s_count\(4) & (!\t0|s_count[3]~40\ & VCC))
-- \t0|s_count[4]~42\ = CARRY((\t0|s_count\(4) & !\t0|s_count[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(4),
	datad => VCC,
	cin => \t0|s_count[3]~40\,
	combout => \t0|s_count[4]~41_combout\,
	cout => \t0|s_count[4]~42\);

-- Location: FF_X82_Y70_N11
\t0|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[4]~41_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(4));

-- Location: LCCOMB_X82_Y70_N12
\t0|s_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[5]~43_combout\ = (\t0|s_count\(5) & (!\t0|s_count[4]~42\)) # (!\t0|s_count\(5) & ((\t0|s_count[4]~42\) # (GND)))
-- \t0|s_count[5]~44\ = CARRY((!\t0|s_count[4]~42\) # (!\t0|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(5),
	datad => VCC,
	cin => \t0|s_count[4]~42\,
	combout => \t0|s_count[5]~43_combout\,
	cout => \t0|s_count[5]~44\);

-- Location: FF_X82_Y70_N13
\t0|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[5]~43_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(5));

-- Location: LCCOMB_X82_Y70_N14
\t0|s_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[6]~45_combout\ = (\t0|s_count\(6) & (\t0|s_count[5]~44\ $ (GND))) # (!\t0|s_count\(6) & (!\t0|s_count[5]~44\ & VCC))
-- \t0|s_count[6]~46\ = CARRY((\t0|s_count\(6) & !\t0|s_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(6),
	datad => VCC,
	cin => \t0|s_count[5]~44\,
	combout => \t0|s_count[6]~45_combout\,
	cout => \t0|s_count[6]~46\);

-- Location: FF_X82_Y70_N15
\t0|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[6]~45_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(6));

-- Location: LCCOMB_X82_Y70_N16
\t0|s_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[7]~47_combout\ = (\t0|s_count\(7) & (!\t0|s_count[6]~46\)) # (!\t0|s_count\(7) & ((\t0|s_count[6]~46\) # (GND)))
-- \t0|s_count[7]~48\ = CARRY((!\t0|s_count[6]~46\) # (!\t0|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(7),
	datad => VCC,
	cin => \t0|s_count[6]~46\,
	combout => \t0|s_count[7]~47_combout\,
	cout => \t0|s_count[7]~48\);

-- Location: FF_X82_Y70_N17
\t0|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[7]~47_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(7));

-- Location: LCCOMB_X82_Y70_N18
\t0|s_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[8]~49_combout\ = (\t0|s_count\(8) & (\t0|s_count[7]~48\ $ (GND))) # (!\t0|s_count\(8) & (!\t0|s_count[7]~48\ & VCC))
-- \t0|s_count[8]~50\ = CARRY((\t0|s_count\(8) & !\t0|s_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(8),
	datad => VCC,
	cin => \t0|s_count[7]~48\,
	combout => \t0|s_count[8]~49_combout\,
	cout => \t0|s_count[8]~50\);

-- Location: FF_X82_Y70_N19
\t0|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[8]~49_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(8));

-- Location: LCCOMB_X82_Y70_N20
\t0|s_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[9]~51_combout\ = (\t0|s_count\(9) & (!\t0|s_count[8]~50\)) # (!\t0|s_count\(9) & ((\t0|s_count[8]~50\) # (GND)))
-- \t0|s_count[9]~52\ = CARRY((!\t0|s_count[8]~50\) # (!\t0|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(9),
	datad => VCC,
	cin => \t0|s_count[8]~50\,
	combout => \t0|s_count[9]~51_combout\,
	cout => \t0|s_count[9]~52\);

-- Location: FF_X82_Y70_N21
\t0|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[9]~51_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(9));

-- Location: LCCOMB_X82_Y70_N22
\t0|s_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[10]~53_combout\ = (\t0|s_count\(10) & (\t0|s_count[9]~52\ $ (GND))) # (!\t0|s_count\(10) & (!\t0|s_count[9]~52\ & VCC))
-- \t0|s_count[10]~54\ = CARRY((\t0|s_count\(10) & !\t0|s_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(10),
	datad => VCC,
	cin => \t0|s_count[9]~52\,
	combout => \t0|s_count[10]~53_combout\,
	cout => \t0|s_count[10]~54\);

-- Location: FF_X82_Y70_N23
\t0|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[10]~53_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(10));

-- Location: LCCOMB_X82_Y70_N24
\t0|s_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[11]~55_combout\ = (\t0|s_count\(11) & (!\t0|s_count[10]~54\)) # (!\t0|s_count\(11) & ((\t0|s_count[10]~54\) # (GND)))
-- \t0|s_count[11]~56\ = CARRY((!\t0|s_count[10]~54\) # (!\t0|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(11),
	datad => VCC,
	cin => \t0|s_count[10]~54\,
	combout => \t0|s_count[11]~55_combout\,
	cout => \t0|s_count[11]~56\);

-- Location: FF_X82_Y70_N25
\t0|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[11]~55_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(11));

-- Location: LCCOMB_X82_Y70_N26
\t0|s_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[12]~57_combout\ = (\t0|s_count\(12) & (\t0|s_count[11]~56\ $ (GND))) # (!\t0|s_count\(12) & (!\t0|s_count[11]~56\ & VCC))
-- \t0|s_count[12]~58\ = CARRY((\t0|s_count\(12) & !\t0|s_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(12),
	datad => VCC,
	cin => \t0|s_count[11]~56\,
	combout => \t0|s_count[12]~57_combout\,
	cout => \t0|s_count[12]~58\);

-- Location: FF_X81_Y70_N13
\t0|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[12]~57_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(12));

-- Location: LCCOMB_X82_Y70_N28
\t0|s_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[13]~59_combout\ = (\t0|s_count\(13) & (!\t0|s_count[12]~58\)) # (!\t0|s_count\(13) & ((\t0|s_count[12]~58\) # (GND)))
-- \t0|s_count[13]~60\ = CARRY((!\t0|s_count[12]~58\) # (!\t0|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(13),
	datad => VCC,
	cin => \t0|s_count[12]~58\,
	combout => \t0|s_count[13]~59_combout\,
	cout => \t0|s_count[13]~60\);

-- Location: FF_X82_Y70_N29
\t0|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[13]~59_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(13));

-- Location: LCCOMB_X82_Y70_N30
\t0|s_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[14]~61_combout\ = (\t0|s_count\(14) & (\t0|s_count[13]~60\ $ (GND))) # (!\t0|s_count\(14) & (!\t0|s_count[13]~60\ & VCC))
-- \t0|s_count[14]~62\ = CARRY((\t0|s_count\(14) & !\t0|s_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(14),
	datad => VCC,
	cin => \t0|s_count[13]~60\,
	combout => \t0|s_count[14]~61_combout\,
	cout => \t0|s_count[14]~62\);

-- Location: FF_X82_Y70_N31
\t0|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_count[14]~61_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(14));

-- Location: LCCOMB_X82_Y69_N0
\t0|s_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[15]~63_combout\ = (\t0|s_count\(15) & (!\t0|s_count[14]~62\)) # (!\t0|s_count\(15) & ((\t0|s_count[14]~62\) # (GND)))
-- \t0|s_count[15]~64\ = CARRY((!\t0|s_count[14]~62\) # (!\t0|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(15),
	datad => VCC,
	cin => \t0|s_count[14]~62\,
	combout => \t0|s_count[15]~63_combout\,
	cout => \t0|s_count[15]~64\);

-- Location: FF_X81_Y69_N11
\t0|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[15]~63_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(15));

-- Location: LCCOMB_X82_Y69_N2
\t0|s_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[16]~65_combout\ = (\t0|s_count\(16) & (\t0|s_count[15]~64\ $ (GND))) # (!\t0|s_count\(16) & (!\t0|s_count[15]~64\ & VCC))
-- \t0|s_count[16]~66\ = CARRY((\t0|s_count\(16) & !\t0|s_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(16),
	datad => VCC,
	cin => \t0|s_count[15]~64\,
	combout => \t0|s_count[16]~65_combout\,
	cout => \t0|s_count[16]~66\);

-- Location: FF_X81_Y69_N25
\t0|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[16]~65_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(16));

-- Location: LCCOMB_X82_Y69_N4
\t0|s_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[17]~67_combout\ = (\t0|s_count\(17) & (!\t0|s_count[16]~66\)) # (!\t0|s_count\(17) & ((\t0|s_count[16]~66\) # (GND)))
-- \t0|s_count[17]~68\ = CARRY((!\t0|s_count[16]~66\) # (!\t0|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(17),
	datad => VCC,
	cin => \t0|s_count[16]~66\,
	combout => \t0|s_count[17]~67_combout\,
	cout => \t0|s_count[17]~68\);

-- Location: FF_X81_Y69_N19
\t0|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[17]~67_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(17));

-- Location: LCCOMB_X82_Y69_N6
\t0|s_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[18]~69_combout\ = (\t0|s_count\(18) & (\t0|s_count[17]~68\ $ (GND))) # (!\t0|s_count\(18) & (!\t0|s_count[17]~68\ & VCC))
-- \t0|s_count[18]~70\ = CARRY((\t0|s_count\(18) & !\t0|s_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(18),
	datad => VCC,
	cin => \t0|s_count[17]~68\,
	combout => \t0|s_count[18]~69_combout\,
	cout => \t0|s_count[18]~70\);

-- Location: FF_X81_Y69_N9
\t0|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[18]~69_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(18));

-- Location: LCCOMB_X82_Y69_N8
\t0|s_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[19]~71_combout\ = (\t0|s_count\(19) & (!\t0|s_count[18]~70\)) # (!\t0|s_count\(19) & ((\t0|s_count[18]~70\) # (GND)))
-- \t0|s_count[19]~72\ = CARRY((!\t0|s_count[18]~70\) # (!\t0|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(19),
	datad => VCC,
	cin => \t0|s_count[18]~70\,
	combout => \t0|s_count[19]~71_combout\,
	cout => \t0|s_count[19]~72\);

-- Location: FF_X81_Y69_N17
\t0|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[19]~71_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(19));

-- Location: LCCOMB_X82_Y69_N10
\t0|s_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[20]~73_combout\ = (\t0|s_count\(20) & (\t0|s_count[19]~72\ $ (GND))) # (!\t0|s_count\(20) & (!\t0|s_count[19]~72\ & VCC))
-- \t0|s_count[20]~74\ = CARRY((\t0|s_count\(20) & !\t0|s_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(20),
	datad => VCC,
	cin => \t0|s_count[19]~72\,
	combout => \t0|s_count[20]~73_combout\,
	cout => \t0|s_count[20]~74\);

-- Location: FF_X81_Y69_N31
\t0|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[20]~73_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(20));

-- Location: LCCOMB_X82_Y69_N12
\t0|s_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[21]~75_combout\ = (\t0|s_count\(21) & (!\t0|s_count[20]~74\)) # (!\t0|s_count\(21) & ((\t0|s_count[20]~74\) # (GND)))
-- \t0|s_count[21]~76\ = CARRY((!\t0|s_count[20]~74\) # (!\t0|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(21),
	datad => VCC,
	cin => \t0|s_count[20]~74\,
	combout => \t0|s_count[21]~75_combout\,
	cout => \t0|s_count[21]~76\);

-- Location: FF_X81_Y69_N23
\t0|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[21]~75_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(21));

-- Location: LCCOMB_X82_Y69_N14
\t0|s_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[22]~77_combout\ = (\t0|s_count\(22) & (\t0|s_count[21]~76\ $ (GND))) # (!\t0|s_count\(22) & (!\t0|s_count[21]~76\ & VCC))
-- \t0|s_count[22]~78\ = CARRY((\t0|s_count\(22) & !\t0|s_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(22),
	datad => VCC,
	cin => \t0|s_count[21]~76\,
	combout => \t0|s_count[22]~77_combout\,
	cout => \t0|s_count[22]~78\);

-- Location: FF_X81_Y69_N29
\t0|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[22]~77_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(22));

-- Location: LCCOMB_X82_Y69_N16
\t0|s_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[23]~79_combout\ = (\t0|s_count\(23) & (!\t0|s_count[22]~78\)) # (!\t0|s_count\(23) & ((\t0|s_count[22]~78\) # (GND)))
-- \t0|s_count[23]~80\ = CARRY((!\t0|s_count[22]~78\) # (!\t0|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(23),
	datad => VCC,
	cin => \t0|s_count[22]~78\,
	combout => \t0|s_count[23]~79_combout\,
	cout => \t0|s_count[23]~80\);

-- Location: FF_X81_Y69_N27
\t0|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[23]~79_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(23));

-- Location: LCCOMB_X82_Y69_N18
\t0|s_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[24]~81_combout\ = (\t0|s_count\(24) & (\t0|s_count[23]~80\ $ (GND))) # (!\t0|s_count\(24) & (!\t0|s_count[23]~80\ & VCC))
-- \t0|s_count[24]~82\ = CARRY((\t0|s_count\(24) & !\t0|s_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(24),
	datad => VCC,
	cin => \t0|s_count[23]~80\,
	combout => \t0|s_count[24]~81_combout\,
	cout => \t0|s_count[24]~82\);

-- Location: FF_X81_Y70_N7
\t0|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[24]~81_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(24));

-- Location: LCCOMB_X82_Y69_N20
\t0|s_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[25]~83_combout\ = (\t0|s_count\(25) & (!\t0|s_count[24]~82\)) # (!\t0|s_count\(25) & ((\t0|s_count[24]~82\) # (GND)))
-- \t0|s_count[25]~84\ = CARRY((!\t0|s_count[24]~82\) # (!\t0|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(25),
	datad => VCC,
	cin => \t0|s_count[24]~82\,
	combout => \t0|s_count[25]~83_combout\,
	cout => \t0|s_count[25]~84\);

-- Location: FF_X81_Y70_N29
\t0|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[25]~83_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(25));

-- Location: LCCOMB_X82_Y69_N22
\t0|s_count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[26]~86_combout\ = (\t0|s_count\(26) & (\t0|s_count[25]~84\ $ (GND))) # (!\t0|s_count\(26) & (!\t0|s_count[25]~84\ & VCC))
-- \t0|s_count[26]~87\ = CARRY((\t0|s_count\(26) & !\t0|s_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(26),
	datad => VCC,
	cin => \t0|s_count[25]~84\,
	combout => \t0|s_count[26]~86_combout\,
	cout => \t0|s_count[26]~87\);

-- Location: FF_X81_Y69_N1
\t0|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[26]~86_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(26));

-- Location: LCCOMB_X82_Y69_N24
\t0|s_count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[27]~88_combout\ = (\t0|s_count\(27) & (!\t0|s_count[26]~87\)) # (!\t0|s_count\(27) & ((\t0|s_count[26]~87\) # (GND)))
-- \t0|s_count[27]~89\ = CARRY((!\t0|s_count[26]~87\) # (!\t0|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(27),
	datad => VCC,
	cin => \t0|s_count[26]~87\,
	combout => \t0|s_count[27]~88_combout\,
	cout => \t0|s_count[27]~89\);

-- Location: FF_X81_Y69_N15
\t0|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[27]~88_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(27));

-- Location: LCCOMB_X82_Y69_N26
\t0|s_count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[28]~90_combout\ = (\t0|s_count\(28) & (\t0|s_count[27]~89\ $ (GND))) # (!\t0|s_count\(28) & (!\t0|s_count[27]~89\ & VCC))
-- \t0|s_count[28]~91\ = CARRY((\t0|s_count\(28) & !\t0|s_count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(28),
	datad => VCC,
	cin => \t0|s_count[27]~89\,
	combout => \t0|s_count[28]~90_combout\,
	cout => \t0|s_count[28]~91\);

-- Location: FF_X81_Y69_N13
\t0|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[28]~90_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(28));

-- Location: LCCOMB_X82_Y69_N28
\t0|s_count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[29]~92_combout\ = (\t0|s_count\(29) & (!\t0|s_count[28]~91\)) # (!\t0|s_count\(29) & ((\t0|s_count[28]~91\) # (GND)))
-- \t0|s_count[29]~93\ = CARRY((!\t0|s_count[28]~91\) # (!\t0|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_count\(29),
	datad => VCC,
	cin => \t0|s_count[28]~91\,
	combout => \t0|s_count[29]~92_combout\,
	cout => \t0|s_count[29]~93\);

-- Location: FF_X81_Y69_N5
\t0|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[29]~92_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(29));

-- Location: LCCOMB_X82_Y69_N30
\t0|s_count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_count[30]~94_combout\ = \t0|s_count[29]~93\ $ (!\t0|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|s_count\(30),
	cin => \t0|s_count[29]~93\,
	combout => \t0|s_count[30]~94_combout\);

-- Location: FF_X81_Y69_N3
\t0|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|s_count[30]~94_combout\,
	sclr => \t0|s_count[10]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_count\(30));

-- Location: LCCOMB_X81_Y70_N2
\t0|pulseOut1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut1~0_combout\ = (!\t0|s_count\(30) & (!\t0|s_count\(29) & (!\t0|Equal1~4_combout\ & !\t0|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_count\(30),
	datab => \t0|s_count\(29),
	datac => \t0|Equal1~4_combout\,
	datad => \t0|LessThan2~9_combout\,
	combout => \t0|pulseOut1~0_combout\);

-- Location: LCCOMB_X80_Y70_N6
\t0|pulseOut3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut3~0_combout\ = (\KEY[0]~input_o\ & \t0|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \t0|Equal1~4_combout\,
	combout => \t0|pulseOut3~0_combout\);

-- Location: LCCOMB_X81_Y70_N30
\t0|pulseOut2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut2~0_combout\ = ((\t0|pulseOut1~0_combout\) # ((\t0|LessThan2~9_combout\ & \t0|p1~0_combout\))) # (!\t0|pulseOut3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|LessThan2~9_combout\,
	datab => \t0|p1~0_combout\,
	datac => \t0|pulseOut3~0_combout\,
	datad => \t0|pulseOut1~0_combout\,
	combout => \t0|pulseOut2~0_combout\);

-- Location: FF_X81_Y70_N3
\t0|pulseOut1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|pulseOut1~0_combout\,
	ena => \t0|pulseOut2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|pulseOut1~q\);

-- Location: LCCOMB_X80_Y70_N30
\t0|pulseOut3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut3~2_combout\ = (\t0|LessThan2~9_combout\ & (\t0|LessThan3~6_combout\)) # (!\t0|LessThan2~9_combout\ & ((\t0|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|LessThan3~6_combout\,
	datac => \t0|LessThan2~9_combout\,
	datad => \t0|Equal1~4_combout\,
	combout => \t0|pulseOut3~2_combout\);

-- Location: LCCOMB_X80_Y70_N28
\t0|pulseOut3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut3~1_combout\ = (!\t0|Equal0~8_combout\ & (((\t0|pulseOut3~0_combout\ & \t0|pulseOut3~q\)) # (!\t0|p1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|pulseOut3~0_combout\,
	datab => \t0|pulseOut3~q\,
	datac => \t0|Equal0~8_combout\,
	datad => \t0|p1~0_combout\,
	combout => \t0|pulseOut3~1_combout\);

-- Location: LCCOMB_X80_Y70_N12
\t0|pulseOut3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut3~3_combout\ = (\t0|pulseOut3~1_combout\ & ((\t0|pulseOut3~2_combout\) # ((\t0|s_count\(30)) # (\t0|s_count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|pulseOut3~2_combout\,
	datab => \t0|s_count\(30),
	datac => \t0|s_count\(29),
	datad => \t0|pulseOut3~1_combout\,
	combout => \t0|pulseOut3~3_combout\);

-- Location: FF_X80_Y70_N13
\t0|pulseOut3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|pulseOut3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|pulseOut3~q\);

-- Location: LCCOMB_X79_Y67_N2
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

-- Location: FF_X79_Y67_N3
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

-- Location: LCCOMB_X79_Y67_N4
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

-- Location: FF_X79_Y67_N5
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

-- Location: LCCOMB_X79_Y67_N6
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

-- Location: FF_X79_Y67_N7
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

-- Location: LCCOMB_X79_Y67_N8
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

-- Location: FF_X79_Y67_N9
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

-- Location: LCCOMB_X79_Y67_N10
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

-- Location: FF_X79_Y67_N11
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

-- Location: LCCOMB_X79_Y67_N12
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

-- Location: FF_X79_Y67_N13
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

-- Location: LCCOMB_X79_Y67_N14
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

-- Location: LCCOMB_X80_Y67_N6
\f1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~7_combout\ = (\f1|Add0~12_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~12_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~7_combout\);

-- Location: FF_X80_Y67_N7
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

-- Location: LCCOMB_X79_Y67_N16
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

-- Location: FF_X79_Y67_N17
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

-- Location: LCCOMB_X79_Y67_N18
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

-- Location: FF_X79_Y67_N19
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

-- Location: LCCOMB_X79_Y67_N20
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

-- Location: FF_X79_Y67_N21
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

-- Location: LCCOMB_X79_Y67_N22
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

-- Location: FF_X79_Y67_N23
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

-- Location: LCCOMB_X79_Y67_N24
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

-- Location: LCCOMB_X80_Y67_N26
\f1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~6_combout\ = (\f1|Add0~22_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~22_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~6_combout\);

-- Location: FF_X80_Y67_N27
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

-- Location: LCCOMB_X79_Y67_N26
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

-- Location: LCCOMB_X80_Y67_N2
\f1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~5_combout\ = (\f1|Add0~24_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~24_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~5_combout\);

-- Location: FF_X80_Y67_N3
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

-- Location: LCCOMB_X79_Y67_N28
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

-- Location: LCCOMB_X79_Y67_N0
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

-- Location: FF_X79_Y67_N1
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

-- Location: LCCOMB_X79_Y67_N30
\f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~28_combout\ = (\f1|s_count\(14) & (\f1|Add0~27\ $ (GND))) # (!\f1|s_count\(14) & (!\f1|Add0~27\ & VCC))
-- \f1|Add0~29\ = CARRY((\f1|s_count\(14) & !\f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(14),
	datad => VCC,
	cin => \f1|Add0~27\,
	combout => \f1|Add0~28_combout\,
	cout => \f1|Add0~29\);

-- Location: LCCOMB_X80_Y67_N4
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

-- Location: FF_X80_Y67_N5
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

-- Location: LCCOMB_X79_Y66_N0
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

-- Location: FF_X79_Y66_N1
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

-- Location: LCCOMB_X79_Y66_N2
\f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~32_combout\ = (\f1|s_count\(16) & (\f1|Add0~31\ $ (GND))) # (!\f1|s_count\(16) & (!\f1|Add0~31\ & VCC))
-- \f1|Add0~33\ = CARRY((\f1|s_count\(16) & !\f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(16),
	datad => VCC,
	cin => \f1|Add0~31\,
	combout => \f1|Add0~32_combout\,
	cout => \f1|Add0~33\);

-- Location: LCCOMB_X80_Y67_N22
\f1|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~10_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~32_combout\,
	combout => \f1|s_count~10_combout\);

-- Location: FF_X80_Y67_N23
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

-- Location: LCCOMB_X79_Y66_N4
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

-- Location: FF_X79_Y66_N5
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

-- Location: LCCOMB_X79_Y66_N6
\f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~36_combout\ = (\f1|s_count\(18) & (\f1|Add0~35\ $ (GND))) # (!\f1|s_count\(18) & (!\f1|Add0~35\ & VCC))
-- \f1|Add0~37\ = CARRY((\f1|s_count\(18) & !\f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(18),
	datad => VCC,
	cin => \f1|Add0~35\,
	combout => \f1|Add0~36_combout\,
	cout => \f1|Add0~37\);

-- Location: LCCOMB_X80_Y67_N8
\f1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~3_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~36_combout\,
	combout => \f1|s_count~3_combout\);

-- Location: FF_X80_Y67_N9
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

-- Location: LCCOMB_X79_Y66_N8
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

-- Location: LCCOMB_X80_Y67_N10
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

-- Location: FF_X80_Y67_N11
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

-- Location: LCCOMB_X79_Y66_N10
\f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~40_combout\ = (\f1|s_count\(20) & (\f1|Add0~39\ $ (GND))) # (!\f1|s_count\(20) & (!\f1|Add0~39\ & VCC))
-- \f1|Add0~41\ = CARRY((\f1|s_count\(20) & !\f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(20),
	datad => VCC,
	cin => \f1|Add0~39\,
	combout => \f1|Add0~40_combout\,
	cout => \f1|Add0~41\);

-- Location: LCCOMB_X80_Y67_N30
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

-- Location: FF_X80_Y67_N31
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

-- Location: LCCOMB_X79_Y66_N12
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

-- Location: LCCOMB_X80_Y67_N0
\f1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~0_combout\ = (\f1|Add0~42_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~42_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~0_combout\);

-- Location: FF_X80_Y67_N1
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

-- Location: LCCOMB_X79_Y66_N14
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

-- Location: LCCOMB_X80_Y67_N20
\f1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~9_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~44_combout\,
	combout => \f1|s_count~9_combout\);

-- Location: FF_X80_Y67_N21
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

-- Location: LCCOMB_X79_Y66_N16
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

-- Location: FF_X79_Y66_N17
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

-- Location: LCCOMB_X79_Y66_N18
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

-- Location: LCCOMB_X80_Y67_N14
\f1|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~8_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~48_combout\,
	combout => \f1|s_count~8_combout\);

-- Location: FF_X80_Y67_N15
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

-- Location: LCCOMB_X81_Y67_N2
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

-- Location: LCCOMB_X81_Y67_N8
\f1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~8_combout\ = (!\f1|s_count\(10) & (\f1|s_count\(16) & (\f1|s_count\(14) & !\f1|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datab => \f1|s_count\(16),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(15),
	combout => \f1|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y67_N28
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (!\f1|s_count\(6) & (\f1|s_count\(3) & (\f1|s_count\(2) & \f1|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(6),
	datab => \f1|s_count\(3),
	datac => \f1|s_count\(2),
	datad => \f1|s_count\(4),
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X80_Y67_N12
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (\f1|s_count\(19) & (\f1|s_count\(18) & (\f1|s_count\(13) & \f1|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(19),
	datab => \f1|s_count\(18),
	datac => \f1|s_count\(13),
	datad => \f1|s_count\(12),
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X79_Y66_N20
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

-- Location: FF_X79_Y66_N21
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

-- Location: LCCOMB_X79_Y66_N22
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

-- Location: FF_X79_Y66_N23
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

-- Location: LCCOMB_X80_Y67_N24
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

-- Location: LCCOMB_X80_Y67_N16
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (\f1|s_count\(11) & (!\f1|s_count\(9) & (!\f1|s_count\(7) & !\f1|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(11),
	datab => \f1|s_count\(9),
	datac => \f1|s_count\(7),
	datad => \f1|s_count\(8),
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X79_Y66_N24
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

-- Location: FF_X79_Y66_N25
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

-- Location: LCCOMB_X79_Y66_N26
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

-- Location: FF_X79_Y66_N27
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

-- Location: LCCOMB_X79_Y66_N28
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

-- Location: FF_X79_Y66_N29
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

-- Location: LCCOMB_X79_Y66_N30
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

-- Location: FF_X79_Y66_N31
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

-- Location: LCCOMB_X80_Y66_N24
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|s_count\(30) & (!\f1|s_count\(29) & (!\f1|s_count\(28) & !\f1|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(30),
	datab => \f1|s_count\(29),
	datac => \f1|s_count\(28),
	datad => \f1|s_count\(27),
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y67_N18
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~2_combout\ & (\f1|Equal0~1_combout\ & (\f1|Equal0~3_combout\ & \f1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~2_combout\,
	datab => \f1|Equal0~1_combout\,
	datac => \f1|Equal0~3_combout\,
	datad => \f1|Equal0~0_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y67_N24
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (\f1|s_count\(1) & (\f1|Equal0~5_combout\ & (\f1|s_count\(0) & \f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(1),
	datab => \f1|Equal0~5_combout\,
	datac => \f1|s_count\(0),
	datad => \f1|Equal0~4_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y67_N22
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

-- Location: LCCOMB_X81_Y67_N12
\f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~0_combout\ = (!\f1|s_count\(24) & (\f1|s_count\(17) & (\f1|s_count\(23) & !\f1|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(24),
	datab => \f1|s_count\(17),
	datac => \f1|s_count\(23),
	datad => \f1|s_count\(22),
	combout => \f1|Equal1~0_combout\);

-- Location: LCCOMB_X81_Y67_N14
\f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~1_combout\ = (\f1|s_count\(10) & (!\f1|s_count\(16) & (!\f1|s_count\(14) & \f1|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datab => \f1|s_count\(16),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(15),
	combout => \f1|Equal1~1_combout\);

-- Location: LCCOMB_X81_Y67_N28
\f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~2_combout\ = (\f1|Equal1~0_combout\ & (\f1|Equal1~1_combout\ & (!\f1|s_count\(5) & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal1~0_combout\,
	datab => \f1|Equal1~1_combout\,
	datac => \f1|s_count\(5),
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal1~2_combout\);

-- Location: LCCOMB_X81_Y67_N4
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

-- Location: FF_X81_Y67_N5
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

-- Location: LCCOMB_X81_Y70_N24
\t0|pulseOut2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|pulseOut2~1_combout\ = (\t0|p1~0_combout\ & (!\t0|pulseOut1~0_combout\ & \t0|LessThan2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|p1~0_combout\,
	datac => \t0|pulseOut1~0_combout\,
	datad => \t0|LessThan2~9_combout\,
	combout => \t0|pulseOut2~1_combout\);

-- Location: FF_X81_Y70_N25
\t0|pulseOut2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|pulseOut2~1_combout\,
	ena => \t0|pulseOut2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|pulseOut2~q\);

-- Location: LCCOMB_X80_Y70_N10
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\f1|clkOut~q\ & ((\t0|pulseOut2~q\) # ((\t0|pulseOut1~q\) # (\t0|pulseOut3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|clkOut~q\,
	datab => \t0|pulseOut2~q\,
	datac => \t0|pulseOut1~q\,
	datad => \t0|pulseOut3~q\,
	combout => \LEDG~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


