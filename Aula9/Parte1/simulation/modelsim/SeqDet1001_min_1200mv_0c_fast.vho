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

-- DATE "04/21/2017 14:22:27"

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

ENTITY 	SeqDet1001 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END SeqDet1001;

-- Design Ports Information
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDet1001 IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDivN|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkDivN|s_divCounter[0]~28_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[26]~81\ : std_logic;
SIGNAL \clkDivN|s_divCounter[27]~82_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~0_combout\ : std_logic;
SIGNAL \clkDivN|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~2_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~1_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~3_combout\ : std_logic;
SIGNAL \clkDivN|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDivN|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivN|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivN|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[0]~29\ : std_logic;
SIGNAL \clkDivN|s_divCounter[1]~30_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[1]~31\ : std_logic;
SIGNAL \clkDivN|s_divCounter[2]~32_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[2]~33\ : std_logic;
SIGNAL \clkDivN|s_divCounter[3]~34_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[3]~35\ : std_logic;
SIGNAL \clkDivN|s_divCounter[4]~36_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[4]~37\ : std_logic;
SIGNAL \clkDivN|s_divCounter[5]~38_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[5]~39\ : std_logic;
SIGNAL \clkDivN|s_divCounter[6]~40_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[6]~41\ : std_logic;
SIGNAL \clkDivN|s_divCounter[7]~42_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[7]~43\ : std_logic;
SIGNAL \clkDivN|s_divCounter[8]~44_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[8]~45\ : std_logic;
SIGNAL \clkDivN|s_divCounter[9]~46_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[9]~47\ : std_logic;
SIGNAL \clkDivN|s_divCounter[10]~48_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[10]~49\ : std_logic;
SIGNAL \clkDivN|s_divCounter[11]~50_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[11]~51\ : std_logic;
SIGNAL \clkDivN|s_divCounter[12]~52_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[12]~53\ : std_logic;
SIGNAL \clkDivN|s_divCounter[13]~54_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[13]~55\ : std_logic;
SIGNAL \clkDivN|s_divCounter[14]~56_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[14]~57\ : std_logic;
SIGNAL \clkDivN|s_divCounter[15]~58_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[15]~59\ : std_logic;
SIGNAL \clkDivN|s_divCounter[16]~60_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[16]~61\ : std_logic;
SIGNAL \clkDivN|s_divCounter[17]~62_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[17]~63\ : std_logic;
SIGNAL \clkDivN|s_divCounter[18]~64_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[18]~65\ : std_logic;
SIGNAL \clkDivN|s_divCounter[19]~66_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[19]~67\ : std_logic;
SIGNAL \clkDivN|s_divCounter[20]~68_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[20]~69\ : std_logic;
SIGNAL \clkDivN|s_divCounter[21]~70_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[21]~71\ : std_logic;
SIGNAL \clkDivN|s_divCounter[22]~72_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[22]~73\ : std_logic;
SIGNAL \clkDivN|s_divCounter[23]~74_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[23]~75\ : std_logic;
SIGNAL \clkDivN|s_divCounter[24]~76_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[24]~77\ : std_logic;
SIGNAL \clkDivN|s_divCounter[25]~78_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter[25]~79\ : std_logic;
SIGNAL \clkDivN|s_divCounter[26]~80_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~4_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~5_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~6_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~7_combout\ : std_logic;
SIGNAL \clkDivN|LessThan1~8_combout\ : std_logic;
SIGNAL \clkDivN|clkOut~q\ : std_logic;
SIGNAL \clkDivN|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SeqDetFSM|Selector0~0_combout\ : std_logic;
SIGNAL \SeqDetFSM|s_currentState.State1~q\ : std_logic;
SIGNAL \SeqDetFSM|s_nextState.State10~0_combout\ : std_logic;
SIGNAL \SeqDetFSM|s_currentState.State10~q\ : std_logic;
SIGNAL \SeqDetFSM|s_nextState.State100~0_combout\ : std_logic;
SIGNAL \SeqDetFSM|s_currentState.State100~q\ : std_logic;
SIGNAL \SeqDetFSM|s_nextState.State1001~0_combout\ : std_logic;
SIGNAL \SeqDetFSM|s_currentState.State1001~q\ : std_logic;
SIGNAL \SeqDetFSM|Yout~0_combout\ : std_logic;
SIGNAL \clkDivN|s_divCounter\ : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkDivN|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDivN|clkOut~q\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkDivN|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDetFSM|Yout~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X55_Y71_N4
\clkDivN|s_divCounter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[0]~28_combout\ = \clkDivN|s_divCounter\(0) $ (VCC)
-- \clkDivN|s_divCounter[0]~29\ = CARRY(\clkDivN|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(0),
	datad => VCC,
	combout => \clkDivN|s_divCounter[0]~28_combout\,
	cout => \clkDivN|s_divCounter[0]~29\);

-- Location: LCCOMB_X55_Y70_N24
\clkDivN|s_divCounter[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[26]~80_combout\ = (\clkDivN|s_divCounter\(26) & (\clkDivN|s_divCounter[25]~79\ $ (GND))) # (!\clkDivN|s_divCounter\(26) & (!\clkDivN|s_divCounter[25]~79\ & VCC))
-- \clkDivN|s_divCounter[26]~81\ = CARRY((\clkDivN|s_divCounter\(26) & !\clkDivN|s_divCounter[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(26),
	datad => VCC,
	cin => \clkDivN|s_divCounter[25]~79\,
	combout => \clkDivN|s_divCounter[26]~80_combout\,
	cout => \clkDivN|s_divCounter[26]~81\);

-- Location: LCCOMB_X55_Y70_N26
\clkDivN|s_divCounter[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[27]~82_combout\ = \clkDivN|s_divCounter\(27) $ (\clkDivN|s_divCounter[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(27),
	cin => \clkDivN|s_divCounter[26]~81\,
	combout => \clkDivN|s_divCounter[27]~82_combout\);

-- Location: FF_X55_Y70_N27
\clkDivN|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[27]~82_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(27));

-- Location: LCCOMB_X55_Y70_N28
\clkDivN|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~0_combout\ = (\clkDivN|s_divCounter\(24) & (\clkDivN|s_divCounter\(22) & (\clkDivN|s_divCounter\(21) & \clkDivN|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(24),
	datab => \clkDivN|s_divCounter\(22),
	datac => \clkDivN|s_divCounter\(21),
	datad => \clkDivN|s_divCounter\(23),
	combout => \clkDivN|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y71_N14
\clkDivN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan0~1_combout\ = (((!\clkDivN|s_divCounter\(16)) # (!\clkDivN|s_divCounter\(15))) # (!\clkDivN|s_divCounter\(14))) # (!\clkDivN|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(17),
	datab => \clkDivN|s_divCounter\(14),
	datac => \clkDivN|s_divCounter\(15),
	datad => \clkDivN|s_divCounter\(16),
	combout => \clkDivN|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y71_N22
\clkDivN|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~2_combout\ = (((!\clkDivN|s_divCounter\(2)) # (!\clkDivN|s_divCounter\(0))) # (!\clkDivN|s_divCounter\(1))) # (!\clkDivN|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(3),
	datab => \clkDivN|s_divCounter\(1),
	datac => \clkDivN|s_divCounter\(0),
	datad => \clkDivN|s_divCounter\(2),
	combout => \clkDivN|LessThan1~2_combout\);

-- Location: LCCOMB_X55_Y71_N0
\clkDivN|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~1_combout\ = (!\clkDivN|s_divCounter\(9) & (!\clkDivN|s_divCounter\(12) & (!\clkDivN|s_divCounter\(11) & !\clkDivN|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(9),
	datab => \clkDivN|s_divCounter\(12),
	datac => \clkDivN|s_divCounter\(11),
	datad => \clkDivN|s_divCounter\(10),
	combout => \clkDivN|LessThan1~1_combout\);

-- Location: LCCOMB_X55_Y71_N2
\clkDivN|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~3_combout\ = (((!\clkDivN|s_divCounter\(6)) # (!\clkDivN|s_divCounter\(5))) # (!\clkDivN|s_divCounter\(7))) # (!\clkDivN|s_divCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(4),
	datab => \clkDivN|s_divCounter\(7),
	datac => \clkDivN|s_divCounter\(5),
	datad => \clkDivN|s_divCounter\(6),
	combout => \clkDivN|LessThan1~3_combout\);

-- Location: LCCOMB_X56_Y71_N12
\clkDivN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan0~0_combout\ = (\clkDivN|LessThan1~1_combout\ & ((\clkDivN|LessThan1~2_combout\) # ((\clkDivN|LessThan1~3_combout\) # (!\clkDivN|s_divCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|LessThan1~2_combout\,
	datab => \clkDivN|s_divCounter\(8),
	datac => \clkDivN|LessThan1~1_combout\,
	datad => \clkDivN|LessThan1~3_combout\,
	combout => \clkDivN|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y71_N16
\clkDivN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan0~2_combout\ = (!\clkDivN|s_divCounter\(18) & ((\clkDivN|LessThan0~1_combout\) # ((!\clkDivN|s_divCounter\(13) & \clkDivN|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(18),
	datab => \clkDivN|s_divCounter\(13),
	datac => \clkDivN|LessThan0~1_combout\,
	datad => \clkDivN|LessThan0~0_combout\,
	combout => \clkDivN|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y71_N24
\clkDivN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan0~3_combout\ = (\clkDivN|LessThan1~0_combout\ & ((\clkDivN|s_divCounter\(20)) # ((\clkDivN|s_divCounter\(19) & !\clkDivN|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|LessThan1~0_combout\,
	datab => \clkDivN|s_divCounter\(20),
	datac => \clkDivN|s_divCounter\(19),
	datad => \clkDivN|LessThan0~2_combout\,
	combout => \clkDivN|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y71_N30
\clkDivN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan0~4_combout\ = (\clkDivN|s_divCounter\(27) & ((\clkDivN|s_divCounter\(26)) # ((\clkDivN|s_divCounter\(25) & \clkDivN|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(26),
	datab => \clkDivN|s_divCounter\(25),
	datac => \clkDivN|s_divCounter\(27),
	datad => \clkDivN|LessThan0~3_combout\,
	combout => \clkDivN|LessThan0~4_combout\);

-- Location: FF_X55_Y71_N5
\clkDivN|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[0]~28_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(0));

-- Location: LCCOMB_X55_Y71_N6
\clkDivN|s_divCounter[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[1]~30_combout\ = (\clkDivN|s_divCounter\(1) & (!\clkDivN|s_divCounter[0]~29\)) # (!\clkDivN|s_divCounter\(1) & ((\clkDivN|s_divCounter[0]~29\) # (GND)))
-- \clkDivN|s_divCounter[1]~31\ = CARRY((!\clkDivN|s_divCounter[0]~29\) # (!\clkDivN|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(1),
	datad => VCC,
	cin => \clkDivN|s_divCounter[0]~29\,
	combout => \clkDivN|s_divCounter[1]~30_combout\,
	cout => \clkDivN|s_divCounter[1]~31\);

-- Location: FF_X55_Y71_N7
\clkDivN|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[1]~30_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(1));

-- Location: LCCOMB_X55_Y71_N8
\clkDivN|s_divCounter[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[2]~32_combout\ = (\clkDivN|s_divCounter\(2) & (\clkDivN|s_divCounter[1]~31\ $ (GND))) # (!\clkDivN|s_divCounter\(2) & (!\clkDivN|s_divCounter[1]~31\ & VCC))
-- \clkDivN|s_divCounter[2]~33\ = CARRY((\clkDivN|s_divCounter\(2) & !\clkDivN|s_divCounter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(2),
	datad => VCC,
	cin => \clkDivN|s_divCounter[1]~31\,
	combout => \clkDivN|s_divCounter[2]~32_combout\,
	cout => \clkDivN|s_divCounter[2]~33\);

-- Location: FF_X55_Y71_N9
\clkDivN|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[2]~32_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(2));

-- Location: LCCOMB_X55_Y71_N10
\clkDivN|s_divCounter[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[3]~34_combout\ = (\clkDivN|s_divCounter\(3) & (!\clkDivN|s_divCounter[2]~33\)) # (!\clkDivN|s_divCounter\(3) & ((\clkDivN|s_divCounter[2]~33\) # (GND)))
-- \clkDivN|s_divCounter[3]~35\ = CARRY((!\clkDivN|s_divCounter[2]~33\) # (!\clkDivN|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(3),
	datad => VCC,
	cin => \clkDivN|s_divCounter[2]~33\,
	combout => \clkDivN|s_divCounter[3]~34_combout\,
	cout => \clkDivN|s_divCounter[3]~35\);

-- Location: FF_X55_Y71_N11
\clkDivN|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[3]~34_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(3));

-- Location: LCCOMB_X55_Y71_N12
\clkDivN|s_divCounter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[4]~36_combout\ = (\clkDivN|s_divCounter\(4) & (\clkDivN|s_divCounter[3]~35\ $ (GND))) # (!\clkDivN|s_divCounter\(4) & (!\clkDivN|s_divCounter[3]~35\ & VCC))
-- \clkDivN|s_divCounter[4]~37\ = CARRY((\clkDivN|s_divCounter\(4) & !\clkDivN|s_divCounter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(4),
	datad => VCC,
	cin => \clkDivN|s_divCounter[3]~35\,
	combout => \clkDivN|s_divCounter[4]~36_combout\,
	cout => \clkDivN|s_divCounter[4]~37\);

-- Location: FF_X55_Y71_N13
\clkDivN|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[4]~36_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(4));

-- Location: LCCOMB_X55_Y71_N14
\clkDivN|s_divCounter[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[5]~38_combout\ = (\clkDivN|s_divCounter\(5) & (!\clkDivN|s_divCounter[4]~37\)) # (!\clkDivN|s_divCounter\(5) & ((\clkDivN|s_divCounter[4]~37\) # (GND)))
-- \clkDivN|s_divCounter[5]~39\ = CARRY((!\clkDivN|s_divCounter[4]~37\) # (!\clkDivN|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(5),
	datad => VCC,
	cin => \clkDivN|s_divCounter[4]~37\,
	combout => \clkDivN|s_divCounter[5]~38_combout\,
	cout => \clkDivN|s_divCounter[5]~39\);

-- Location: FF_X55_Y71_N15
\clkDivN|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[5]~38_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(5));

-- Location: LCCOMB_X55_Y71_N16
\clkDivN|s_divCounter[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[6]~40_combout\ = (\clkDivN|s_divCounter\(6) & (\clkDivN|s_divCounter[5]~39\ $ (GND))) # (!\clkDivN|s_divCounter\(6) & (!\clkDivN|s_divCounter[5]~39\ & VCC))
-- \clkDivN|s_divCounter[6]~41\ = CARRY((\clkDivN|s_divCounter\(6) & !\clkDivN|s_divCounter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(6),
	datad => VCC,
	cin => \clkDivN|s_divCounter[5]~39\,
	combout => \clkDivN|s_divCounter[6]~40_combout\,
	cout => \clkDivN|s_divCounter[6]~41\);

-- Location: FF_X55_Y71_N17
\clkDivN|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[6]~40_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(6));

-- Location: LCCOMB_X55_Y71_N18
\clkDivN|s_divCounter[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[7]~42_combout\ = (\clkDivN|s_divCounter\(7) & (!\clkDivN|s_divCounter[6]~41\)) # (!\clkDivN|s_divCounter\(7) & ((\clkDivN|s_divCounter[6]~41\) # (GND)))
-- \clkDivN|s_divCounter[7]~43\ = CARRY((!\clkDivN|s_divCounter[6]~41\) # (!\clkDivN|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(7),
	datad => VCC,
	cin => \clkDivN|s_divCounter[6]~41\,
	combout => \clkDivN|s_divCounter[7]~42_combout\,
	cout => \clkDivN|s_divCounter[7]~43\);

-- Location: FF_X55_Y71_N19
\clkDivN|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[7]~42_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(7));

-- Location: LCCOMB_X55_Y71_N20
\clkDivN|s_divCounter[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[8]~44_combout\ = (\clkDivN|s_divCounter\(8) & (\clkDivN|s_divCounter[7]~43\ $ (GND))) # (!\clkDivN|s_divCounter\(8) & (!\clkDivN|s_divCounter[7]~43\ & VCC))
-- \clkDivN|s_divCounter[8]~45\ = CARRY((\clkDivN|s_divCounter\(8) & !\clkDivN|s_divCounter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(8),
	datad => VCC,
	cin => \clkDivN|s_divCounter[7]~43\,
	combout => \clkDivN|s_divCounter[8]~44_combout\,
	cout => \clkDivN|s_divCounter[8]~45\);

-- Location: FF_X55_Y71_N21
\clkDivN|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[8]~44_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(8));

-- Location: LCCOMB_X55_Y71_N22
\clkDivN|s_divCounter[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[9]~46_combout\ = (\clkDivN|s_divCounter\(9) & (!\clkDivN|s_divCounter[8]~45\)) # (!\clkDivN|s_divCounter\(9) & ((\clkDivN|s_divCounter[8]~45\) # (GND)))
-- \clkDivN|s_divCounter[9]~47\ = CARRY((!\clkDivN|s_divCounter[8]~45\) # (!\clkDivN|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(9),
	datad => VCC,
	cin => \clkDivN|s_divCounter[8]~45\,
	combout => \clkDivN|s_divCounter[9]~46_combout\,
	cout => \clkDivN|s_divCounter[9]~47\);

-- Location: FF_X55_Y71_N23
\clkDivN|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[9]~46_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(9));

-- Location: LCCOMB_X55_Y71_N24
\clkDivN|s_divCounter[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[10]~48_combout\ = (\clkDivN|s_divCounter\(10) & (\clkDivN|s_divCounter[9]~47\ $ (GND))) # (!\clkDivN|s_divCounter\(10) & (!\clkDivN|s_divCounter[9]~47\ & VCC))
-- \clkDivN|s_divCounter[10]~49\ = CARRY((\clkDivN|s_divCounter\(10) & !\clkDivN|s_divCounter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(10),
	datad => VCC,
	cin => \clkDivN|s_divCounter[9]~47\,
	combout => \clkDivN|s_divCounter[10]~48_combout\,
	cout => \clkDivN|s_divCounter[10]~49\);

-- Location: FF_X55_Y71_N25
\clkDivN|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[10]~48_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(10));

-- Location: LCCOMB_X55_Y71_N26
\clkDivN|s_divCounter[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[11]~50_combout\ = (\clkDivN|s_divCounter\(11) & (!\clkDivN|s_divCounter[10]~49\)) # (!\clkDivN|s_divCounter\(11) & ((\clkDivN|s_divCounter[10]~49\) # (GND)))
-- \clkDivN|s_divCounter[11]~51\ = CARRY((!\clkDivN|s_divCounter[10]~49\) # (!\clkDivN|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(11),
	datad => VCC,
	cin => \clkDivN|s_divCounter[10]~49\,
	combout => \clkDivN|s_divCounter[11]~50_combout\,
	cout => \clkDivN|s_divCounter[11]~51\);

-- Location: FF_X55_Y71_N27
\clkDivN|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[11]~50_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(11));

-- Location: LCCOMB_X55_Y71_N28
\clkDivN|s_divCounter[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[12]~52_combout\ = (\clkDivN|s_divCounter\(12) & (\clkDivN|s_divCounter[11]~51\ $ (GND))) # (!\clkDivN|s_divCounter\(12) & (!\clkDivN|s_divCounter[11]~51\ & VCC))
-- \clkDivN|s_divCounter[12]~53\ = CARRY((\clkDivN|s_divCounter\(12) & !\clkDivN|s_divCounter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(12),
	datad => VCC,
	cin => \clkDivN|s_divCounter[11]~51\,
	combout => \clkDivN|s_divCounter[12]~52_combout\,
	cout => \clkDivN|s_divCounter[12]~53\);

-- Location: FF_X55_Y71_N29
\clkDivN|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[12]~52_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(12));

-- Location: LCCOMB_X55_Y71_N30
\clkDivN|s_divCounter[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[13]~54_combout\ = (\clkDivN|s_divCounter\(13) & (!\clkDivN|s_divCounter[12]~53\)) # (!\clkDivN|s_divCounter\(13) & ((\clkDivN|s_divCounter[12]~53\) # (GND)))
-- \clkDivN|s_divCounter[13]~55\ = CARRY((!\clkDivN|s_divCounter[12]~53\) # (!\clkDivN|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(13),
	datad => VCC,
	cin => \clkDivN|s_divCounter[12]~53\,
	combout => \clkDivN|s_divCounter[13]~54_combout\,
	cout => \clkDivN|s_divCounter[13]~55\);

-- Location: FF_X55_Y71_N31
\clkDivN|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[13]~54_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(13));

-- Location: LCCOMB_X55_Y70_N0
\clkDivN|s_divCounter[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[14]~56_combout\ = (\clkDivN|s_divCounter\(14) & (\clkDivN|s_divCounter[13]~55\ $ (GND))) # (!\clkDivN|s_divCounter\(14) & (!\clkDivN|s_divCounter[13]~55\ & VCC))
-- \clkDivN|s_divCounter[14]~57\ = CARRY((\clkDivN|s_divCounter\(14) & !\clkDivN|s_divCounter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivN|s_divCounter[13]~55\,
	combout => \clkDivN|s_divCounter[14]~56_combout\,
	cout => \clkDivN|s_divCounter[14]~57\);

-- Location: FF_X56_Y71_N29
\clkDivN|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivN|s_divCounter[14]~56_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(14));

-- Location: LCCOMB_X55_Y70_N2
\clkDivN|s_divCounter[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[15]~58_combout\ = (\clkDivN|s_divCounter\(15) & (!\clkDivN|s_divCounter[14]~57\)) # (!\clkDivN|s_divCounter\(15) & ((\clkDivN|s_divCounter[14]~57\) # (GND)))
-- \clkDivN|s_divCounter[15]~59\ = CARRY((!\clkDivN|s_divCounter[14]~57\) # (!\clkDivN|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(15),
	datad => VCC,
	cin => \clkDivN|s_divCounter[14]~57\,
	combout => \clkDivN|s_divCounter[15]~58_combout\,
	cout => \clkDivN|s_divCounter[15]~59\);

-- Location: FF_X56_Y71_N9
\clkDivN|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivN|s_divCounter[15]~58_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(15));

-- Location: LCCOMB_X55_Y70_N4
\clkDivN|s_divCounter[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[16]~60_combout\ = (\clkDivN|s_divCounter\(16) & (\clkDivN|s_divCounter[15]~59\ $ (GND))) # (!\clkDivN|s_divCounter\(16) & (!\clkDivN|s_divCounter[15]~59\ & VCC))
-- \clkDivN|s_divCounter[16]~61\ = CARRY((\clkDivN|s_divCounter\(16) & !\clkDivN|s_divCounter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivN|s_divCounter[15]~59\,
	combout => \clkDivN|s_divCounter[16]~60_combout\,
	cout => \clkDivN|s_divCounter[16]~61\);

-- Location: FF_X56_Y71_N19
\clkDivN|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivN|s_divCounter[16]~60_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(16));

-- Location: LCCOMB_X55_Y70_N6
\clkDivN|s_divCounter[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[17]~62_combout\ = (\clkDivN|s_divCounter\(17) & (!\clkDivN|s_divCounter[16]~61\)) # (!\clkDivN|s_divCounter\(17) & ((\clkDivN|s_divCounter[16]~61\) # (GND)))
-- \clkDivN|s_divCounter[17]~63\ = CARRY((!\clkDivN|s_divCounter[16]~61\) # (!\clkDivN|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(17),
	datad => VCC,
	cin => \clkDivN|s_divCounter[16]~61\,
	combout => \clkDivN|s_divCounter[17]~62_combout\,
	cout => \clkDivN|s_divCounter[17]~63\);

-- Location: FF_X56_Y71_N11
\clkDivN|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivN|s_divCounter[17]~62_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(17));

-- Location: LCCOMB_X55_Y70_N8
\clkDivN|s_divCounter[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[18]~64_combout\ = (\clkDivN|s_divCounter\(18) & (\clkDivN|s_divCounter[17]~63\ $ (GND))) # (!\clkDivN|s_divCounter\(18) & (!\clkDivN|s_divCounter[17]~63\ & VCC))
-- \clkDivN|s_divCounter[18]~65\ = CARRY((\clkDivN|s_divCounter\(18) & !\clkDivN|s_divCounter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(18),
	datad => VCC,
	cin => \clkDivN|s_divCounter[17]~63\,
	combout => \clkDivN|s_divCounter[18]~64_combout\,
	cout => \clkDivN|s_divCounter[18]~65\);

-- Location: FF_X56_Y71_N7
\clkDivN|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivN|s_divCounter[18]~64_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(18));

-- Location: LCCOMB_X55_Y70_N10
\clkDivN|s_divCounter[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[19]~66_combout\ = (\clkDivN|s_divCounter\(19) & (!\clkDivN|s_divCounter[18]~65\)) # (!\clkDivN|s_divCounter\(19) & ((\clkDivN|s_divCounter[18]~65\) # (GND)))
-- \clkDivN|s_divCounter[19]~67\ = CARRY((!\clkDivN|s_divCounter[18]~65\) # (!\clkDivN|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(19),
	datad => VCC,
	cin => \clkDivN|s_divCounter[18]~65\,
	combout => \clkDivN|s_divCounter[19]~66_combout\,
	cout => \clkDivN|s_divCounter[19]~67\);

-- Location: FF_X55_Y70_N11
\clkDivN|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[19]~66_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(19));

-- Location: LCCOMB_X55_Y70_N12
\clkDivN|s_divCounter[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[20]~68_combout\ = (\clkDivN|s_divCounter\(20) & (\clkDivN|s_divCounter[19]~67\ $ (GND))) # (!\clkDivN|s_divCounter\(20) & (!\clkDivN|s_divCounter[19]~67\ & VCC))
-- \clkDivN|s_divCounter[20]~69\ = CARRY((\clkDivN|s_divCounter\(20) & !\clkDivN|s_divCounter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(20),
	datad => VCC,
	cin => \clkDivN|s_divCounter[19]~67\,
	combout => \clkDivN|s_divCounter[20]~68_combout\,
	cout => \clkDivN|s_divCounter[20]~69\);

-- Location: FF_X55_Y70_N13
\clkDivN|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[20]~68_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(20));

-- Location: LCCOMB_X55_Y70_N14
\clkDivN|s_divCounter[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[21]~70_combout\ = (\clkDivN|s_divCounter\(21) & (!\clkDivN|s_divCounter[20]~69\)) # (!\clkDivN|s_divCounter\(21) & ((\clkDivN|s_divCounter[20]~69\) # (GND)))
-- \clkDivN|s_divCounter[21]~71\ = CARRY((!\clkDivN|s_divCounter[20]~69\) # (!\clkDivN|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(21),
	datad => VCC,
	cin => \clkDivN|s_divCounter[20]~69\,
	combout => \clkDivN|s_divCounter[21]~70_combout\,
	cout => \clkDivN|s_divCounter[21]~71\);

-- Location: FF_X55_Y70_N15
\clkDivN|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[21]~70_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(21));

-- Location: LCCOMB_X55_Y70_N16
\clkDivN|s_divCounter[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[22]~72_combout\ = (\clkDivN|s_divCounter\(22) & (\clkDivN|s_divCounter[21]~71\ $ (GND))) # (!\clkDivN|s_divCounter\(22) & (!\clkDivN|s_divCounter[21]~71\ & VCC))
-- \clkDivN|s_divCounter[22]~73\ = CARRY((\clkDivN|s_divCounter\(22) & !\clkDivN|s_divCounter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(22),
	datad => VCC,
	cin => \clkDivN|s_divCounter[21]~71\,
	combout => \clkDivN|s_divCounter[22]~72_combout\,
	cout => \clkDivN|s_divCounter[22]~73\);

-- Location: FF_X55_Y70_N17
\clkDivN|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[22]~72_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(22));

-- Location: LCCOMB_X55_Y70_N18
\clkDivN|s_divCounter[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[23]~74_combout\ = (\clkDivN|s_divCounter\(23) & (!\clkDivN|s_divCounter[22]~73\)) # (!\clkDivN|s_divCounter\(23) & ((\clkDivN|s_divCounter[22]~73\) # (GND)))
-- \clkDivN|s_divCounter[23]~75\ = CARRY((!\clkDivN|s_divCounter[22]~73\) # (!\clkDivN|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(23),
	datad => VCC,
	cin => \clkDivN|s_divCounter[22]~73\,
	combout => \clkDivN|s_divCounter[23]~74_combout\,
	cout => \clkDivN|s_divCounter[23]~75\);

-- Location: FF_X55_Y70_N19
\clkDivN|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[23]~74_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(23));

-- Location: LCCOMB_X55_Y70_N20
\clkDivN|s_divCounter[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[24]~76_combout\ = (\clkDivN|s_divCounter\(24) & (\clkDivN|s_divCounter[23]~75\ $ (GND))) # (!\clkDivN|s_divCounter\(24) & (!\clkDivN|s_divCounter[23]~75\ & VCC))
-- \clkDivN|s_divCounter[24]~77\ = CARRY((\clkDivN|s_divCounter\(24) & !\clkDivN|s_divCounter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivN|s_divCounter\(24),
	datad => VCC,
	cin => \clkDivN|s_divCounter[23]~75\,
	combout => \clkDivN|s_divCounter[24]~76_combout\,
	cout => \clkDivN|s_divCounter[24]~77\);

-- Location: FF_X55_Y70_N21
\clkDivN|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[24]~76_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(24));

-- Location: LCCOMB_X55_Y70_N22
\clkDivN|s_divCounter[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|s_divCounter[25]~78_combout\ = (\clkDivN|s_divCounter\(25) & (!\clkDivN|s_divCounter[24]~77\)) # (!\clkDivN|s_divCounter\(25) & ((\clkDivN|s_divCounter[24]~77\) # (GND)))
-- \clkDivN|s_divCounter[25]~79\ = CARRY((!\clkDivN|s_divCounter[24]~77\) # (!\clkDivN|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(25),
	datad => VCC,
	cin => \clkDivN|s_divCounter[24]~77\,
	combout => \clkDivN|s_divCounter[25]~78_combout\,
	cout => \clkDivN|s_divCounter[25]~79\);

-- Location: FF_X55_Y70_N23
\clkDivN|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[25]~78_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(25));

-- Location: FF_X55_Y70_N25
\clkDivN|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|s_divCounter[26]~80_combout\,
	sclr => \clkDivN|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|s_divCounter\(26));

-- Location: LCCOMB_X56_Y71_N0
\clkDivN|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~4_combout\ = (\clkDivN|LessThan1~1_combout\ & (!\clkDivN|s_divCounter\(8) & ((\clkDivN|LessThan1~2_combout\) # (\clkDivN|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|LessThan1~1_combout\,
	datab => \clkDivN|s_divCounter\(8),
	datac => \clkDivN|LessThan1~2_combout\,
	datad => \clkDivN|LessThan1~3_combout\,
	combout => \clkDivN|LessThan1~4_combout\);

-- Location: LCCOMB_X56_Y71_N4
\clkDivN|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~5_combout\ = (((!\clkDivN|s_divCounter\(13)) # (!\clkDivN|s_divCounter\(15))) # (!\clkDivN|s_divCounter\(14))) # (!\clkDivN|s_divCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(16),
	datab => \clkDivN|s_divCounter\(14),
	datac => \clkDivN|s_divCounter\(15),
	datad => \clkDivN|s_divCounter\(13),
	combout => \clkDivN|LessThan1~5_combout\);

-- Location: LCCOMB_X56_Y71_N26
\clkDivN|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~6_combout\ = (\clkDivN|s_divCounter\(18) & ((\clkDivN|s_divCounter\(17)) # ((!\clkDivN|LessThan1~4_combout\ & !\clkDivN|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(18),
	datab => \clkDivN|LessThan1~4_combout\,
	datac => \clkDivN|LessThan1~5_combout\,
	datad => \clkDivN|s_divCounter\(17),
	combout => \clkDivN|LessThan1~6_combout\);

-- Location: LCCOMB_X56_Y71_N20
\clkDivN|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~7_combout\ = (\clkDivN|s_divCounter\(20) & (\clkDivN|LessThan1~0_combout\ & ((\clkDivN|s_divCounter\(19)) # (\clkDivN|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(19),
	datab => \clkDivN|s_divCounter\(20),
	datac => \clkDivN|LessThan1~6_combout\,
	datad => \clkDivN|LessThan1~0_combout\,
	combout => \clkDivN|LessThan1~7_combout\);

-- Location: LCCOMB_X56_Y71_N2
\clkDivN|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivN|LessThan1~8_combout\ = (\clkDivN|s_divCounter\(27)) # ((\clkDivN|s_divCounter\(26) & ((\clkDivN|s_divCounter\(25)) # (\clkDivN|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivN|s_divCounter\(26),
	datab => \clkDivN|s_divCounter\(25),
	datac => \clkDivN|s_divCounter\(27),
	datad => \clkDivN|LessThan1~7_combout\,
	combout => \clkDivN|LessThan1~8_combout\);

-- Location: FF_X56_Y71_N3
\clkDivN|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivN|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivN|clkOut~q\);

-- Location: CLKCTRL_G11
\clkDivN|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDivN|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDivN|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X97_Y49_N12
\SeqDetFSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetFSM|Selector0~0_combout\ = (\SW[0]~input_o\ & (((!\SeqDetFSM|s_currentState.State1~q\)))) # (!\SW[0]~input_o\ & ((\SeqDetFSM|s_currentState.State10~q\) # ((\SeqDetFSM|s_currentState.State100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SeqDetFSM|s_currentState.State10~q\,
	datac => \SeqDetFSM|s_currentState.State1~q\,
	datad => \SeqDetFSM|s_currentState.State100~q\,
	combout => \SeqDetFSM|Selector0~0_combout\);

-- Location: FF_X97_Y49_N13
\SeqDetFSM|s_currentState.State1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivN|clkOut~clkctrl_outclk\,
	d => \SeqDetFSM|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetFSM|s_currentState.State1~q\);

-- Location: LCCOMB_X97_Y49_N18
\SeqDetFSM|s_nextState.State10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetFSM|s_nextState.State10~0_combout\ = (\SW[0]~input_o\ & !\SeqDetFSM|s_currentState.State1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SeqDetFSM|s_currentState.State1~q\,
	combout => \SeqDetFSM|s_nextState.State10~0_combout\);

-- Location: FF_X97_Y49_N19
\SeqDetFSM|s_currentState.State10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivN|clkOut~clkctrl_outclk\,
	d => \SeqDetFSM|s_nextState.State10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetFSM|s_currentState.State10~q\);

-- Location: LCCOMB_X97_Y49_N16
\SeqDetFSM|s_nextState.State100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetFSM|s_nextState.State100~0_combout\ = (!\SW[0]~input_o\ & \SeqDetFSM|s_currentState.State10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SeqDetFSM|s_currentState.State10~q\,
	combout => \SeqDetFSM|s_nextState.State100~0_combout\);

-- Location: FF_X97_Y49_N17
\SeqDetFSM|s_currentState.State100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivN|clkOut~clkctrl_outclk\,
	d => \SeqDetFSM|s_nextState.State100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetFSM|s_currentState.State100~q\);

-- Location: LCCOMB_X97_Y49_N28
\SeqDetFSM|s_nextState.State1001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetFSM|s_nextState.State1001~0_combout\ = (!\SW[0]~input_o\ & \SeqDetFSM|s_currentState.State100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SeqDetFSM|s_currentState.State100~q\,
	combout => \SeqDetFSM|s_nextState.State1001~0_combout\);

-- Location: FF_X97_Y49_N29
\SeqDetFSM|s_currentState.State1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDivN|clkOut~clkctrl_outclk\,
	d => \SeqDetFSM|s_nextState.State1001~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetFSM|s_currentState.State1001~q\);

-- Location: LCCOMB_X97_Y49_N22
\SeqDetFSM|Yout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetFSM|Yout~0_combout\ = (\SeqDetFSM|s_currentState.State1001~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqDetFSM|s_currentState.State1001~q\,
	datac => \SW[0]~input_o\,
	combout => \SeqDetFSM|Yout~0_combout\);

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


