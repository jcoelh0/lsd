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

-- DATE "03/24/2017 14:43:56"

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

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(13 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst3|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst3|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst3|clkOut~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~0_combout\ : std_logic;
SIGNAL \inst3|clkOut~1_combout\ : std_logic;
SIGNAL \inst3|clkOut~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|clkOut~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~4_combout\ : std_logic;
SIGNAL \inst3|clkOut~6_combout\ : std_logic;
SIGNAL \inst3|clkOut~7_combout\ : std_logic;
SIGNAL \inst3|clkOut~8_combout\ : std_logic;
SIGNAL \inst3|clkOut~9_combout\ : std_logic;
SIGNAL \inst3|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~10_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~14_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~12_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~13_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[6]~11_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[2]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[3]~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[6]~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~9_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~8_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
\inst3|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \inst3|clkOut~clkctrl_outclk\;

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(0),
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

-- Location: LCCOMB_X111_Y34_N6
\inst3|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[0]~26_combout\ = \inst3|s_divCounter\(0) $ (VCC)
-- \inst3|s_divCounter[0]~27\ = CARRY(\inst3|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(0),
	datad => VCC,
	combout => \inst3|s_divCounter[0]~26_combout\,
	cout => \inst3|s_divCounter[0]~27\);

-- Location: FF_X111_Y34_N7
\inst3|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[0]~26_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(0));

-- Location: LCCOMB_X111_Y34_N8
\inst3|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[1]~28_combout\ = (\inst3|s_divCounter\(1) & (!\inst3|s_divCounter[0]~27\)) # (!\inst3|s_divCounter\(1) & ((\inst3|s_divCounter[0]~27\) # (GND)))
-- \inst3|s_divCounter[1]~29\ = CARRY((!\inst3|s_divCounter[0]~27\) # (!\inst3|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(1),
	datad => VCC,
	cin => \inst3|s_divCounter[0]~27\,
	combout => \inst3|s_divCounter[1]~28_combout\,
	cout => \inst3|s_divCounter[1]~29\);

-- Location: FF_X111_Y34_N9
\inst3|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[1]~28_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(1));

-- Location: LCCOMB_X111_Y34_N10
\inst3|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[2]~30_combout\ = (\inst3|s_divCounter\(2) & (\inst3|s_divCounter[1]~29\ $ (GND))) # (!\inst3|s_divCounter\(2) & (!\inst3|s_divCounter[1]~29\ & VCC))
-- \inst3|s_divCounter[2]~31\ = CARRY((\inst3|s_divCounter\(2) & !\inst3|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datad => VCC,
	cin => \inst3|s_divCounter[1]~29\,
	combout => \inst3|s_divCounter[2]~30_combout\,
	cout => \inst3|s_divCounter[2]~31\);

-- Location: FF_X111_Y34_N11
\inst3|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[2]~30_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(2));

-- Location: LCCOMB_X111_Y34_N12
\inst3|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[3]~32_combout\ = (\inst3|s_divCounter\(3) & (!\inst3|s_divCounter[2]~31\)) # (!\inst3|s_divCounter\(3) & ((\inst3|s_divCounter[2]~31\) # (GND)))
-- \inst3|s_divCounter[3]~33\ = CARRY((!\inst3|s_divCounter[2]~31\) # (!\inst3|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(3),
	datad => VCC,
	cin => \inst3|s_divCounter[2]~31\,
	combout => \inst3|s_divCounter[3]~32_combout\,
	cout => \inst3|s_divCounter[3]~33\);

-- Location: FF_X111_Y34_N13
\inst3|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[3]~32_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(3));

-- Location: LCCOMB_X111_Y34_N14
\inst3|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[4]~34_combout\ = (\inst3|s_divCounter\(4) & (\inst3|s_divCounter[3]~33\ $ (GND))) # (!\inst3|s_divCounter\(4) & (!\inst3|s_divCounter[3]~33\ & VCC))
-- \inst3|s_divCounter[4]~35\ = CARRY((\inst3|s_divCounter\(4) & !\inst3|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(4),
	datad => VCC,
	cin => \inst3|s_divCounter[3]~33\,
	combout => \inst3|s_divCounter[4]~34_combout\,
	cout => \inst3|s_divCounter[4]~35\);

-- Location: FF_X111_Y34_N15
\inst3|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[4]~34_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(4));

-- Location: LCCOMB_X111_Y34_N16
\inst3|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[5]~36_combout\ = (\inst3|s_divCounter\(5) & (!\inst3|s_divCounter[4]~35\)) # (!\inst3|s_divCounter\(5) & ((\inst3|s_divCounter[4]~35\) # (GND)))
-- \inst3|s_divCounter[5]~37\ = CARRY((!\inst3|s_divCounter[4]~35\) # (!\inst3|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datad => VCC,
	cin => \inst3|s_divCounter[4]~35\,
	combout => \inst3|s_divCounter[5]~36_combout\,
	cout => \inst3|s_divCounter[5]~37\);

-- Location: FF_X111_Y34_N17
\inst3|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[5]~36_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(5));

-- Location: LCCOMB_X111_Y34_N18
\inst3|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[6]~38_combout\ = (\inst3|s_divCounter\(6) & (\inst3|s_divCounter[5]~37\ $ (GND))) # (!\inst3|s_divCounter\(6) & (!\inst3|s_divCounter[5]~37\ & VCC))
-- \inst3|s_divCounter[6]~39\ = CARRY((\inst3|s_divCounter\(6) & !\inst3|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datad => VCC,
	cin => \inst3|s_divCounter[5]~37\,
	combout => \inst3|s_divCounter[6]~38_combout\,
	cout => \inst3|s_divCounter[6]~39\);

-- Location: FF_X111_Y34_N19
\inst3|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[6]~38_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(6));

-- Location: LCCOMB_X111_Y34_N20
\inst3|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[7]~40_combout\ = (\inst3|s_divCounter\(7) & (!\inst3|s_divCounter[6]~39\)) # (!\inst3|s_divCounter\(7) & ((\inst3|s_divCounter[6]~39\) # (GND)))
-- \inst3|s_divCounter[7]~41\ = CARRY((!\inst3|s_divCounter[6]~39\) # (!\inst3|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(7),
	datad => VCC,
	cin => \inst3|s_divCounter[6]~39\,
	combout => \inst3|s_divCounter[7]~40_combout\,
	cout => \inst3|s_divCounter[7]~41\);

-- Location: FF_X111_Y34_N21
\inst3|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[7]~40_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(7));

-- Location: LCCOMB_X111_Y34_N22
\inst3|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[8]~42_combout\ = (\inst3|s_divCounter\(8) & (\inst3|s_divCounter[7]~41\ $ (GND))) # (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter[7]~41\ & VCC))
-- \inst3|s_divCounter[8]~43\ = CARRY((\inst3|s_divCounter\(8) & !\inst3|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(8),
	datad => VCC,
	cin => \inst3|s_divCounter[7]~41\,
	combout => \inst3|s_divCounter[8]~42_combout\,
	cout => \inst3|s_divCounter[8]~43\);

-- Location: FF_X111_Y34_N23
\inst3|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[8]~42_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(8));

-- Location: LCCOMB_X111_Y34_N24
\inst3|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[9]~44_combout\ = (\inst3|s_divCounter\(9) & (!\inst3|s_divCounter[8]~43\)) # (!\inst3|s_divCounter\(9) & ((\inst3|s_divCounter[8]~43\) # (GND)))
-- \inst3|s_divCounter[9]~45\ = CARRY((!\inst3|s_divCounter[8]~43\) # (!\inst3|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(9),
	datad => VCC,
	cin => \inst3|s_divCounter[8]~43\,
	combout => \inst3|s_divCounter[9]~44_combout\,
	cout => \inst3|s_divCounter[9]~45\);

-- Location: FF_X111_Y34_N25
\inst3|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[9]~44_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(9));

-- Location: LCCOMB_X111_Y34_N26
\inst3|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[10]~46_combout\ = (\inst3|s_divCounter\(10) & (\inst3|s_divCounter[9]~45\ $ (GND))) # (!\inst3|s_divCounter\(10) & (!\inst3|s_divCounter[9]~45\ & VCC))
-- \inst3|s_divCounter[10]~47\ = CARRY((\inst3|s_divCounter\(10) & !\inst3|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(10),
	datad => VCC,
	cin => \inst3|s_divCounter[9]~45\,
	combout => \inst3|s_divCounter[10]~46_combout\,
	cout => \inst3|s_divCounter[10]~47\);

-- Location: FF_X111_Y34_N27
\inst3|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[10]~46_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(10));

-- Location: LCCOMB_X111_Y34_N28
\inst3|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[11]~48_combout\ = (\inst3|s_divCounter\(11) & (!\inst3|s_divCounter[10]~47\)) # (!\inst3|s_divCounter\(11) & ((\inst3|s_divCounter[10]~47\) # (GND)))
-- \inst3|s_divCounter[11]~49\ = CARRY((!\inst3|s_divCounter[10]~47\) # (!\inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(11),
	datad => VCC,
	cin => \inst3|s_divCounter[10]~47\,
	combout => \inst3|s_divCounter[11]~48_combout\,
	cout => \inst3|s_divCounter[11]~49\);

-- Location: FF_X111_Y34_N29
\inst3|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[11]~48_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(11));

-- Location: LCCOMB_X111_Y34_N30
\inst3|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[12]~50_combout\ = (\inst3|s_divCounter\(12) & (\inst3|s_divCounter[11]~49\ $ (GND))) # (!\inst3|s_divCounter\(12) & (!\inst3|s_divCounter[11]~49\ & VCC))
-- \inst3|s_divCounter[12]~51\ = CARRY((\inst3|s_divCounter\(12) & !\inst3|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(12),
	datad => VCC,
	cin => \inst3|s_divCounter[11]~49\,
	combout => \inst3|s_divCounter[12]~50_combout\,
	cout => \inst3|s_divCounter[12]~51\);

-- Location: FF_X111_Y34_N31
\inst3|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[12]~50_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(12));

-- Location: LCCOMB_X111_Y33_N0
\inst3|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[13]~52_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|s_divCounter[12]~51\)) # (!\inst3|s_divCounter\(13) & ((\inst3|s_divCounter[12]~51\) # (GND)))
-- \inst3|s_divCounter[13]~53\ = CARRY((!\inst3|s_divCounter[12]~51\) # (!\inst3|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datad => VCC,
	cin => \inst3|s_divCounter[12]~51\,
	combout => \inst3|s_divCounter[13]~52_combout\,
	cout => \inst3|s_divCounter[13]~53\);

-- Location: FF_X112_Y34_N23
\inst3|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[13]~52_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(13));

-- Location: LCCOMB_X111_Y33_N2
\inst3|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[14]~54_combout\ = (\inst3|s_divCounter\(14) & (\inst3|s_divCounter[13]~53\ $ (GND))) # (!\inst3|s_divCounter\(14) & (!\inst3|s_divCounter[13]~53\ & VCC))
-- \inst3|s_divCounter[14]~55\ = CARRY((\inst3|s_divCounter\(14) & !\inst3|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(14),
	datad => VCC,
	cin => \inst3|s_divCounter[13]~53\,
	combout => \inst3|s_divCounter[14]~54_combout\,
	cout => \inst3|s_divCounter[14]~55\);

-- Location: FF_X111_Y33_N3
\inst3|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[14]~54_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(14));

-- Location: LCCOMB_X111_Y33_N4
\inst3|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[15]~56_combout\ = (\inst3|s_divCounter\(15) & (!\inst3|s_divCounter[14]~55\)) # (!\inst3|s_divCounter\(15) & ((\inst3|s_divCounter[14]~55\) # (GND)))
-- \inst3|s_divCounter[15]~57\ = CARRY((!\inst3|s_divCounter[14]~55\) # (!\inst3|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(15),
	datad => VCC,
	cin => \inst3|s_divCounter[14]~55\,
	combout => \inst3|s_divCounter[15]~56_combout\,
	cout => \inst3|s_divCounter[15]~57\);

-- Location: FF_X111_Y33_N5
\inst3|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[15]~56_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(15));

-- Location: LCCOMB_X111_Y33_N6
\inst3|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[16]~58_combout\ = (\inst3|s_divCounter\(16) & (\inst3|s_divCounter[15]~57\ $ (GND))) # (!\inst3|s_divCounter\(16) & (!\inst3|s_divCounter[15]~57\ & VCC))
-- \inst3|s_divCounter[16]~59\ = CARRY((\inst3|s_divCounter\(16) & !\inst3|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(16),
	datad => VCC,
	cin => \inst3|s_divCounter[15]~57\,
	combout => \inst3|s_divCounter[16]~58_combout\,
	cout => \inst3|s_divCounter[16]~59\);

-- Location: FF_X111_Y33_N7
\inst3|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[16]~58_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(16));

-- Location: LCCOMB_X111_Y33_N8
\inst3|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[17]~60_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter[16]~59\)) # (!\inst3|s_divCounter\(17) & ((\inst3|s_divCounter[16]~59\) # (GND)))
-- \inst3|s_divCounter[17]~61\ = CARRY((!\inst3|s_divCounter[16]~59\) # (!\inst3|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(17),
	datad => VCC,
	cin => \inst3|s_divCounter[16]~59\,
	combout => \inst3|s_divCounter[17]~60_combout\,
	cout => \inst3|s_divCounter[17]~61\);

-- Location: FF_X111_Y33_N9
\inst3|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[17]~60_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(17));

-- Location: LCCOMB_X111_Y33_N10
\inst3|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[18]~62_combout\ = (\inst3|s_divCounter\(18) & (\inst3|s_divCounter[17]~61\ $ (GND))) # (!\inst3|s_divCounter\(18) & (!\inst3|s_divCounter[17]~61\ & VCC))
-- \inst3|s_divCounter[18]~63\ = CARRY((\inst3|s_divCounter\(18) & !\inst3|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datad => VCC,
	cin => \inst3|s_divCounter[17]~61\,
	combout => \inst3|s_divCounter[18]~62_combout\,
	cout => \inst3|s_divCounter[18]~63\);

-- Location: FF_X111_Y33_N11
\inst3|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[18]~62_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(18));

-- Location: LCCOMB_X111_Y33_N12
\inst3|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[19]~64_combout\ = (\inst3|s_divCounter\(19) & (!\inst3|s_divCounter[18]~63\)) # (!\inst3|s_divCounter\(19) & ((\inst3|s_divCounter[18]~63\) # (GND)))
-- \inst3|s_divCounter[19]~65\ = CARRY((!\inst3|s_divCounter[18]~63\) # (!\inst3|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(19),
	datad => VCC,
	cin => \inst3|s_divCounter[18]~63\,
	combout => \inst3|s_divCounter[19]~64_combout\,
	cout => \inst3|s_divCounter[19]~65\);

-- Location: FF_X111_Y33_N13
\inst3|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[19]~64_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(19));

-- Location: LCCOMB_X111_Y33_N14
\inst3|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[20]~66_combout\ = (\inst3|s_divCounter\(20) & (\inst3|s_divCounter[19]~65\ $ (GND))) # (!\inst3|s_divCounter\(20) & (!\inst3|s_divCounter[19]~65\ & VCC))
-- \inst3|s_divCounter[20]~67\ = CARRY((\inst3|s_divCounter\(20) & !\inst3|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(20),
	datad => VCC,
	cin => \inst3|s_divCounter[19]~65\,
	combout => \inst3|s_divCounter[20]~66_combout\,
	cout => \inst3|s_divCounter[20]~67\);

-- Location: FF_X111_Y33_N15
\inst3|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[20]~66_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(20));

-- Location: LCCOMB_X111_Y33_N16
\inst3|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[21]~68_combout\ = (\inst3|s_divCounter\(21) & (!\inst3|s_divCounter[20]~67\)) # (!\inst3|s_divCounter\(21) & ((\inst3|s_divCounter[20]~67\) # (GND)))
-- \inst3|s_divCounter[21]~69\ = CARRY((!\inst3|s_divCounter[20]~67\) # (!\inst3|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(21),
	datad => VCC,
	cin => \inst3|s_divCounter[20]~67\,
	combout => \inst3|s_divCounter[21]~68_combout\,
	cout => \inst3|s_divCounter[21]~69\);

-- Location: FF_X111_Y33_N17
\inst3|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[21]~68_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(21));

-- Location: LCCOMB_X111_Y33_N18
\inst3|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[22]~70_combout\ = (\inst3|s_divCounter\(22) & (\inst3|s_divCounter[21]~69\ $ (GND))) # (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter[21]~69\ & VCC))
-- \inst3|s_divCounter[22]~71\ = CARRY((\inst3|s_divCounter\(22) & !\inst3|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(22),
	datad => VCC,
	cin => \inst3|s_divCounter[21]~69\,
	combout => \inst3|s_divCounter[22]~70_combout\,
	cout => \inst3|s_divCounter[22]~71\);

-- Location: FF_X111_Y33_N19
\inst3|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[22]~70_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(22));

-- Location: LCCOMB_X111_Y33_N20
\inst3|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[23]~72_combout\ = (\inst3|s_divCounter\(23) & (!\inst3|s_divCounter[22]~71\)) # (!\inst3|s_divCounter\(23) & ((\inst3|s_divCounter[22]~71\) # (GND)))
-- \inst3|s_divCounter[23]~73\ = CARRY((!\inst3|s_divCounter[22]~71\) # (!\inst3|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(23),
	datad => VCC,
	cin => \inst3|s_divCounter[22]~71\,
	combout => \inst3|s_divCounter[23]~72_combout\,
	cout => \inst3|s_divCounter[23]~73\);

-- Location: FF_X111_Y33_N21
\inst3|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[23]~72_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(23));

-- Location: LCCOMB_X111_Y33_N22
\inst3|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[24]~74_combout\ = (\inst3|s_divCounter\(24) & (\inst3|s_divCounter[23]~73\ $ (GND))) # (!\inst3|s_divCounter\(24) & (!\inst3|s_divCounter[23]~73\ & VCC))
-- \inst3|s_divCounter[24]~75\ = CARRY((\inst3|s_divCounter\(24) & !\inst3|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datad => VCC,
	cin => \inst3|s_divCounter[23]~73\,
	combout => \inst3|s_divCounter[24]~74_combout\,
	cout => \inst3|s_divCounter[24]~75\);

-- Location: FF_X111_Y33_N23
\inst3|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[24]~74_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(24));

-- Location: LCCOMB_X112_Y34_N26
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (!\inst3|s_divCounter\(24) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(24),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(18),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y34_N4
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (((!\inst3|s_divCounter\(14)) # (!\inst3|s_divCounter\(15))) # (!\inst3|s_divCounter\(12))) # (!\inst3|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(15),
	datad => \inst3|s_divCounter\(14),
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y33_N24
\inst3|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[25]~76_combout\ = \inst3|s_divCounter[24]~75\ $ (\inst3|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_divCounter\(25),
	cin => \inst3|s_divCounter[24]~75\,
	combout => \inst3|s_divCounter[25]~76_combout\);

-- Location: FF_X111_Y33_N25
\inst3|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[25]~76_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(25));

-- Location: LCCOMB_X111_Y33_N28
\inst3|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~3_combout\ = (\inst3|s_divCounter\(19) & (\inst3|s_divCounter\(21) & (\inst3|s_divCounter\(20) & \inst3|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(19),
	datab => \inst3|s_divCounter\(21),
	datac => \inst3|s_divCounter\(20),
	datad => \inst3|s_divCounter\(22),
	combout => \inst3|clkOut~3_combout\);

-- Location: LCCOMB_X111_Y33_N26
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = ((!\inst3|s_divCounter\(18) & !\inst3|s_divCounter\(17))) # (!\inst3|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datac => \inst3|s_divCounter\(17),
	datad => \inst3|s_divCounter\(23),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y34_N8
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = ((!\inst3|s_divCounter\(24) & ((\inst3|LessThan0~2_combout\) # (!\inst3|clkOut~3_combout\)))) # (!\inst3|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(25),
	datab => \inst3|s_divCounter\(24),
	datac => \inst3|clkOut~3_combout\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y34_N0
\inst3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~0_combout\ = (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter\(7) & (!\inst3|s_divCounter\(10) & !\inst3|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(8),
	datab => \inst3|s_divCounter\(7),
	datac => \inst3|s_divCounter\(10),
	datad => \inst3|s_divCounter\(9),
	combout => \inst3|clkOut~0_combout\);

-- Location: LCCOMB_X111_Y34_N2
\inst3|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~1_combout\ = (\inst3|s_divCounter\(3) & (\inst3|s_divCounter\(1) & (\inst3|s_divCounter\(0) & \inst3|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(3),
	datab => \inst3|s_divCounter\(1),
	datac => \inst3|s_divCounter\(0),
	datad => \inst3|s_divCounter\(2),
	combout => \inst3|clkOut~1_combout\);

-- Location: LCCOMB_X111_Y34_N4
\inst3|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~2_combout\ = (\inst3|s_divCounter\(5) & (\inst3|s_divCounter\(4) & \inst3|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datac => \inst3|s_divCounter\(4),
	datad => \inst3|clkOut~1_combout\,
	combout => \inst3|clkOut~2_combout\);

-- Location: LCCOMB_X112_Y34_N18
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_divCounter\(11) & (!\inst3|s_divCounter\(24) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(11),
	datab => \inst3|s_divCounter\(24),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(18),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y34_N12
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|clkOut~0_combout\ & (\inst3|LessThan0~0_combout\ & ((!\inst3|clkOut~2_combout\) # (!\inst3|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~0_combout\,
	datab => \inst3|s_divCounter\(6),
	datac => \inst3|clkOut~2_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y34_N30
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (!\inst3|LessThan0~3_combout\ & (!\inst3|LessThan0~1_combout\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~4_combout\,
	datab => \inst3|LessThan0~5_combout\,
	datac => \inst3|LessThan0~3_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X112_Y34_N6
\inst3|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~5_combout\ = (\inst3|s_divCounter\(16) & (\inst3|s_divCounter\(11) & (!\inst3|s_divCounter\(15) & !\inst3|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(16),
	datab => \inst3|s_divCounter\(11),
	datac => \inst3|s_divCounter\(15),
	datad => \inst3|s_divCounter\(17),
	combout => \inst3|clkOut~5_combout\);

-- Location: LCCOMB_X112_Y34_N14
\inst3|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~4_combout\ = (\inst3|s_divCounter\(13) & (\inst3|s_divCounter\(12) & (!\inst3|s_divCounter\(6) & \inst3|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(6),
	datad => \inst3|s_divCounter\(14),
	combout => \inst3|clkOut~4_combout\);

-- Location: LCCOMB_X111_Y33_N30
\inst3|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~6_combout\ = (\inst3|s_divCounter\(18) & (!\inst3|s_divCounter\(25) & (\inst3|s_divCounter\(24) & !\inst3|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datab => \inst3|s_divCounter\(25),
	datac => \inst3|s_divCounter\(24),
	datad => \inst3|s_divCounter\(23),
	combout => \inst3|clkOut~6_combout\);

-- Location: LCCOMB_X112_Y34_N16
\inst3|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~7_combout\ = (\inst3|clkOut~5_combout\ & (\inst3|clkOut~4_combout\ & \inst3|clkOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~5_combout\,
	datac => \inst3|clkOut~4_combout\,
	datad => \inst3|clkOut~6_combout\,
	combout => \inst3|clkOut~7_combout\);

-- Location: LCCOMB_X112_Y34_N24
\inst3|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~8_combout\ = (\inst3|clkOut~0_combout\ & (\inst3|clkOut~3_combout\ & (\inst3|clkOut~2_combout\ & \inst3|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~0_combout\,
	datab => \inst3|clkOut~3_combout\,
	datac => \inst3|clkOut~2_combout\,
	datad => \inst3|clkOut~7_combout\,
	combout => \inst3|clkOut~8_combout\);

-- Location: LCCOMB_X112_Y34_N28
\inst3|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~9_combout\ = (!\inst3|LessThan0~6_combout\ & ((\inst3|clkOut~q\) # (\inst3|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clkOut~q\,
	datac => \inst3|LessThan0~6_combout\,
	datad => \inst3|clkOut~8_combout\,
	combout => \inst3|clkOut~9_combout\);

-- Location: LCCOMB_X112_Y34_N20
\inst3|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~feeder_combout\ = \inst3|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clkOut~9_combout\,
	combout => \inst3|clkOut~feeder_combout\);

-- Location: FF_X112_Y34_N21
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G6
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y15_N28
\inst|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~10_combout\ = (\SW[12]~input_o\) # ((!\SW[11]~input_o\ & !\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst|s_shiftReg~10_combout\);

-- Location: LCCOMB_X114_Y15_N8
\inst|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~14_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(1),
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg~14_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y15_N16
\inst|s_shiftReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~12_combout\ = (\SW[13]~input_o\ & (!\SW[12]~input_o\)) # (!\SW[13]~input_o\ & (\SW[12]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_shiftReg~12_combout\);

-- Location: LCCOMB_X114_Y15_N2
\inst|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~13_combout\ = (\inst|s_shiftReg~12_combout\ & ((\SW[12]~input_o\) # ((\inst|s_shiftReg\(1))))) # (!\inst|s_shiftReg~12_combout\ & (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~12_combout\,
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(1),
	datad => \inst|s_shiftReg\(0),
	combout => \inst|s_shiftReg~13_combout\);

-- Location: LCCOMB_X114_Y15_N18
\inst|s_shiftReg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[0]~7_combout\ = (\SW[11]~input_o\ & (\inst|s_shiftReg~14_combout\)) # (!\SW[11]~input_o\ & ((\inst|s_shiftReg~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|s_shiftReg~14_combout\,
	datad => \inst|s_shiftReg~13_combout\,
	combout => \inst|s_shiftReg[0]~7_combout\);

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

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X114_Y15_N19
\inst|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[0]~7_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(0));

-- Location: LCCOMB_X114_Y15_N4
\inst|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[1]~6_combout\ = (\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(0))) # (!\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~10_combout\,
	datab => \inst|s_shiftReg\(0),
	datad => \inst|s_shiftReg\(2),
	combout => \inst|s_shiftReg[1]~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\inst|s_shiftReg[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[6]~11_combout\ = (\SW[11]~input_o\) # ((\SW[10]~input_o\) # ((!\SW[12]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_shiftReg[6]~11_combout\);

-- Location: FF_X114_Y15_N5
\inst|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[1]~6_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(1));

-- Location: LCCOMB_X114_Y15_N14
\inst|s_shiftReg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[2]~5_combout\ = (\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(1))) # (!\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~10_combout\,
	datab => \inst|s_shiftReg\(1),
	datad => \inst|s_shiftReg\(3),
	combout => \inst|s_shiftReg[2]~5_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y15_N15
\inst|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[2]~5_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y15_N0
\inst|s_shiftReg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[3]~4_combout\ = (\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(2)))) # (!\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(4),
	datab => \inst|s_shiftReg\(2),
	datad => \inst|s_shiftReg~10_combout\,
	combout => \inst|s_shiftReg[3]~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y15_N1
\inst|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[3]~4_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y15_N30
\inst|s_shiftReg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[4]~3_combout\ = (\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(3))) # (!\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~10_combout\,
	datab => \inst|s_shiftReg\(3),
	datad => \inst|s_shiftReg\(5),
	combout => \inst|s_shiftReg[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y15_N31
\inst|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[4]~3_combout\,
	asdata => \SW[4]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y15_N20
\inst|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[5]~2_combout\ = (\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(4)))) # (!\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(6),
	datab => \inst|s_shiftReg\(4),
	datad => \inst|s_shiftReg~10_combout\,
	combout => \inst|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y15_N21
\inst|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[5]~2_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y15_N22
\inst|s_shiftReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[6]~1_combout\ = (\inst|s_shiftReg~10_combout\ & (\inst|s_shiftReg\(5))) # (!\inst|s_shiftReg~10_combout\ & ((\inst|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~10_combout\,
	datab => \inst|s_shiftReg\(5),
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg[6]~1_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y15_N23
\inst|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[6]~1_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y15_N26
\inst|s_shiftReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~9_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(6))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(6),
	datad => \inst|s_shiftReg\(0),
	combout => \inst|s_shiftReg~9_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y15_N24
\inst|s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~8_combout\ = (\SW[13]~input_o\ & (((\inst|s_shiftReg\(7))))) # (!\SW[13]~input_o\ & ((\SW[12]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[12]~input_o\ & (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg~8_combout\);

-- Location: LCCOMB_X114_Y15_N12
\inst|s_shiftReg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~0_combout\ = (\SW[11]~input_o\ & (\inst|s_shiftReg~9_combout\)) # (!\SW[11]~input_o\ & ((\inst|s_shiftReg~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~9_combout\,
	datab => \SW[11]~input_o\,
	datad => \inst|s_shiftReg~8_combout\,
	combout => \inst|s_shiftReg[7]~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y15_N13
\inst|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[7]~0_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(7));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


