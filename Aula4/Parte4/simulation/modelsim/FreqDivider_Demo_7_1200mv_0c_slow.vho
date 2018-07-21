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

-- DATE "03/17/2017 13:27:42"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqdiv|Add0~0_combout\ : std_logic;
SIGNAL \freqdiv|Add0~1\ : std_logic;
SIGNAL \freqdiv|Add0~2_combout\ : std_logic;
SIGNAL \freqdiv|Add0~3\ : std_logic;
SIGNAL \freqdiv|Add0~4_combout\ : std_logic;
SIGNAL \freqdiv|Add0~5\ : std_logic;
SIGNAL \freqdiv|Add0~6_combout\ : std_logic;
SIGNAL \freqdiv|Add0~7\ : std_logic;
SIGNAL \freqdiv|Add0~8_combout\ : std_logic;
SIGNAL \freqdiv|Add0~9\ : std_logic;
SIGNAL \freqdiv|Add0~10_combout\ : std_logic;
SIGNAL \freqdiv|Add0~11\ : std_logic;
SIGNAL \freqdiv|Add0~12_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~7_combout\ : std_logic;
SIGNAL \freqdiv|Add0~13\ : std_logic;
SIGNAL \freqdiv|Add0~14_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqdiv|Add0~15\ : std_logic;
SIGNAL \freqdiv|Add0~16_combout\ : std_logic;
SIGNAL \freqdiv|Add0~17\ : std_logic;
SIGNAL \freqdiv|Add0~18_combout\ : std_logic;
SIGNAL \freqdiv|Add0~19\ : std_logic;
SIGNAL \freqdiv|Add0~20_combout\ : std_logic;
SIGNAL \freqdiv|Add0~21\ : std_logic;
SIGNAL \freqdiv|Add0~22_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~6_combout\ : std_logic;
SIGNAL \freqdiv|Add0~23\ : std_logic;
SIGNAL \freqdiv|Add0~24_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~5_combout\ : std_logic;
SIGNAL \freqdiv|Add0~25\ : std_logic;
SIGNAL \freqdiv|Add0~26_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~4_combout\ : std_logic;
SIGNAL \freqdiv|Add0~27\ : std_logic;
SIGNAL \freqdiv|Add0~28_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~11_combout\ : std_logic;
SIGNAL \freqdiv|Add0~29\ : std_logic;
SIGNAL \freqdiv|Add0~30_combout\ : std_logic;
SIGNAL \freqdiv|Add0~31\ : std_logic;
SIGNAL \freqdiv|Add0~32_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~10_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqdiv|Add0~33\ : std_logic;
SIGNAL \freqdiv|Add0~34_combout\ : std_logic;
SIGNAL \freqdiv|Add0~35\ : std_logic;
SIGNAL \freqdiv|Add0~36_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~3_combout\ : std_logic;
SIGNAL \freqdiv|Add0~37\ : std_logic;
SIGNAL \freqdiv|Add0~38_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~2_combout\ : std_logic;
SIGNAL \freqdiv|Add0~39\ : std_logic;
SIGNAL \freqdiv|Add0~40_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~1_combout\ : std_logic;
SIGNAL \freqdiv|Add0~41\ : std_logic;
SIGNAL \freqdiv|Add0~42_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~0_combout\ : std_logic;
SIGNAL \freqdiv|Add0~43\ : std_logic;
SIGNAL \freqdiv|Add0~44_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~9_combout\ : std_logic;
SIGNAL \freqdiv|Add0~45\ : std_logic;
SIGNAL \freqdiv|Add0~46_combout\ : std_logic;
SIGNAL \freqdiv|Add0~47\ : std_logic;
SIGNAL \freqdiv|Add0~48_combout\ : std_logic;
SIGNAL \freqdiv|s_counter~8_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~10_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqdiv|Add0~49\ : std_logic;
SIGNAL \freqdiv|Add0~50_combout\ : std_logic;
SIGNAL \freqdiv|Add0~51\ : std_logic;
SIGNAL \freqdiv|Add0~52_combout\ : std_logic;
SIGNAL \freqdiv|Add0~53\ : std_logic;
SIGNAL \freqdiv|Add0~54_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqdiv|Add0~55\ : std_logic;
SIGNAL \freqdiv|Add0~56_combout\ : std_logic;
SIGNAL \freqdiv|Add0~57\ : std_logic;
SIGNAL \freqdiv|Add0~58_combout\ : std_logic;
SIGNAL \freqdiv|Add0~59\ : std_logic;
SIGNAL \freqdiv|Add0~60_combout\ : std_logic;
SIGNAL \freqdiv|Add0~61\ : std_logic;
SIGNAL \freqdiv|Add0~62_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~11_combout\ : std_logic;
SIGNAL \freqdiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqdiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqdiv|clkOut~1_combout\ : std_logic;
SIGNAL \freqdiv|clkOut~2_combout\ : std_logic;
SIGNAL \freqdiv|clkOut~3_combout\ : std_logic;
SIGNAL \freqdiv|clkOut~q\ : std_logic;
SIGNAL \freqdiv|s_counter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
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
	i => \freqdiv|clkOut~q\,
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

-- Location: LCCOMB_X77_Y66_N0
\freqdiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~0_combout\ = \freqdiv|s_counter\(0) $ (VCC)
-- \freqdiv|Add0~1\ = CARRY(\freqdiv|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(0),
	datad => VCC,
	combout => \freqdiv|Add0~0_combout\,
	cout => \freqdiv|Add0~1\);

-- Location: FF_X77_Y66_N1
\freqdiv|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(0));

-- Location: LCCOMB_X77_Y66_N2
\freqdiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~2_combout\ = (\freqdiv|s_counter\(1) & (!\freqdiv|Add0~1\)) # (!\freqdiv|s_counter\(1) & ((\freqdiv|Add0~1\) # (GND)))
-- \freqdiv|Add0~3\ = CARRY((!\freqdiv|Add0~1\) # (!\freqdiv|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(1),
	datad => VCC,
	cin => \freqdiv|Add0~1\,
	combout => \freqdiv|Add0~2_combout\,
	cout => \freqdiv|Add0~3\);

-- Location: FF_X77_Y66_N3
\freqdiv|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(1));

-- Location: LCCOMB_X77_Y66_N4
\freqdiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~4_combout\ = (\freqdiv|s_counter\(2) & (\freqdiv|Add0~3\ $ (GND))) # (!\freqdiv|s_counter\(2) & (!\freqdiv|Add0~3\ & VCC))
-- \freqdiv|Add0~5\ = CARRY((\freqdiv|s_counter\(2) & !\freqdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(2),
	datad => VCC,
	cin => \freqdiv|Add0~3\,
	combout => \freqdiv|Add0~4_combout\,
	cout => \freqdiv|Add0~5\);

-- Location: FF_X77_Y66_N5
\freqdiv|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(2));

-- Location: LCCOMB_X77_Y66_N6
\freqdiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~6_combout\ = (\freqdiv|s_counter\(3) & (!\freqdiv|Add0~5\)) # (!\freqdiv|s_counter\(3) & ((\freqdiv|Add0~5\) # (GND)))
-- \freqdiv|Add0~7\ = CARRY((!\freqdiv|Add0~5\) # (!\freqdiv|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(3),
	datad => VCC,
	cin => \freqdiv|Add0~5\,
	combout => \freqdiv|Add0~6_combout\,
	cout => \freqdiv|Add0~7\);

-- Location: FF_X77_Y66_N7
\freqdiv|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(3));

-- Location: LCCOMB_X77_Y66_N8
\freqdiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~8_combout\ = (\freqdiv|s_counter\(4) & (\freqdiv|Add0~7\ $ (GND))) # (!\freqdiv|s_counter\(4) & (!\freqdiv|Add0~7\ & VCC))
-- \freqdiv|Add0~9\ = CARRY((\freqdiv|s_counter\(4) & !\freqdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(4),
	datad => VCC,
	cin => \freqdiv|Add0~7\,
	combout => \freqdiv|Add0~8_combout\,
	cout => \freqdiv|Add0~9\);

-- Location: FF_X77_Y66_N9
\freqdiv|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(4));

-- Location: LCCOMB_X77_Y66_N10
\freqdiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~10_combout\ = (\freqdiv|s_counter\(5) & (!\freqdiv|Add0~9\)) # (!\freqdiv|s_counter\(5) & ((\freqdiv|Add0~9\) # (GND)))
-- \freqdiv|Add0~11\ = CARRY((!\freqdiv|Add0~9\) # (!\freqdiv|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(5),
	datad => VCC,
	cin => \freqdiv|Add0~9\,
	combout => \freqdiv|Add0~10_combout\,
	cout => \freqdiv|Add0~11\);

-- Location: FF_X77_Y66_N11
\freqdiv|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(5));

-- Location: LCCOMB_X77_Y66_N12
\freqdiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~12_combout\ = (\freqdiv|s_counter\(6) & (\freqdiv|Add0~11\ $ (GND))) # (!\freqdiv|s_counter\(6) & (!\freqdiv|Add0~11\ & VCC))
-- \freqdiv|Add0~13\ = CARRY((\freqdiv|s_counter\(6) & !\freqdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(6),
	datad => VCC,
	cin => \freqdiv|Add0~11\,
	combout => \freqdiv|Add0~12_combout\,
	cout => \freqdiv|Add0~13\);

-- Location: LCCOMB_X76_Y66_N14
\freqdiv|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~7_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~12_combout\,
	combout => \freqdiv|s_counter~7_combout\);

-- Location: FF_X76_Y66_N15
\freqdiv|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(6));

-- Location: LCCOMB_X77_Y66_N14
\freqdiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~14_combout\ = (\freqdiv|s_counter\(7) & (!\freqdiv|Add0~13\)) # (!\freqdiv|s_counter\(7) & ((\freqdiv|Add0~13\) # (GND)))
-- \freqdiv|Add0~15\ = CARRY((!\freqdiv|Add0~13\) # (!\freqdiv|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(7),
	datad => VCC,
	cin => \freqdiv|Add0~13\,
	combout => \freqdiv|Add0~14_combout\,
	cout => \freqdiv|Add0~15\);

-- Location: FF_X77_Y66_N15
\freqdiv|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(7));

-- Location: LCCOMB_X76_Y66_N12
\freqdiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~5_combout\ = (!\freqdiv|s_counter\(6) & (\freqdiv|s_counter\(4) & (!\freqdiv|s_counter\(7) & \freqdiv|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(6),
	datab => \freqdiv|s_counter\(4),
	datac => \freqdiv|s_counter\(7),
	datad => \freqdiv|s_counter\(3),
	combout => \freqdiv|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y66_N16
\freqdiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~16_combout\ = (\freqdiv|s_counter\(8) & (\freqdiv|Add0~15\ $ (GND))) # (!\freqdiv|s_counter\(8) & (!\freqdiv|Add0~15\ & VCC))
-- \freqdiv|Add0~17\ = CARRY((\freqdiv|s_counter\(8) & !\freqdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(8),
	datad => VCC,
	cin => \freqdiv|Add0~15\,
	combout => \freqdiv|Add0~16_combout\,
	cout => \freqdiv|Add0~17\);

-- Location: FF_X77_Y66_N17
\freqdiv|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(8));

-- Location: LCCOMB_X77_Y66_N18
\freqdiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~18_combout\ = (\freqdiv|s_counter\(9) & (!\freqdiv|Add0~17\)) # (!\freqdiv|s_counter\(9) & ((\freqdiv|Add0~17\) # (GND)))
-- \freqdiv|Add0~19\ = CARRY((!\freqdiv|Add0~17\) # (!\freqdiv|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(9),
	datad => VCC,
	cin => \freqdiv|Add0~17\,
	combout => \freqdiv|Add0~18_combout\,
	cout => \freqdiv|Add0~19\);

-- Location: FF_X77_Y66_N19
\freqdiv|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(9));

-- Location: LCCOMB_X77_Y66_N20
\freqdiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~20_combout\ = (\freqdiv|s_counter\(10) & (\freqdiv|Add0~19\ $ (GND))) # (!\freqdiv|s_counter\(10) & (!\freqdiv|Add0~19\ & VCC))
-- \freqdiv|Add0~21\ = CARRY((\freqdiv|s_counter\(10) & !\freqdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(10),
	datad => VCC,
	cin => \freqdiv|Add0~19\,
	combout => \freqdiv|Add0~20_combout\,
	cout => \freqdiv|Add0~21\);

-- Location: FF_X77_Y66_N21
\freqdiv|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(10));

-- Location: LCCOMB_X77_Y66_N22
\freqdiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~22_combout\ = (\freqdiv|s_counter\(11) & (!\freqdiv|Add0~21\)) # (!\freqdiv|s_counter\(11) & ((\freqdiv|Add0~21\) # (GND)))
-- \freqdiv|Add0~23\ = CARRY((!\freqdiv|Add0~21\) # (!\freqdiv|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(11),
	datad => VCC,
	cin => \freqdiv|Add0~21\,
	combout => \freqdiv|Add0~22_combout\,
	cout => \freqdiv|Add0~23\);

-- Location: LCCOMB_X76_Y65_N22
\freqdiv|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~6_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~22_combout\,
	combout => \freqdiv|s_counter~6_combout\);

-- Location: FF_X76_Y65_N23
\freqdiv|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(11));

-- Location: LCCOMB_X77_Y66_N24
\freqdiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~24_combout\ = (\freqdiv|s_counter\(12) & (\freqdiv|Add0~23\ $ (GND))) # (!\freqdiv|s_counter\(12) & (!\freqdiv|Add0~23\ & VCC))
-- \freqdiv|Add0~25\ = CARRY((\freqdiv|s_counter\(12) & !\freqdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(12),
	datad => VCC,
	cin => \freqdiv|Add0~23\,
	combout => \freqdiv|Add0~24_combout\,
	cout => \freqdiv|Add0~25\);

-- Location: LCCOMB_X76_Y65_N24
\freqdiv|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~5_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~11_combout\,
	datac => \freqdiv|Add0~24_combout\,
	combout => \freqdiv|s_counter~5_combout\);

-- Location: FF_X76_Y65_N25
\freqdiv|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(12));

-- Location: LCCOMB_X77_Y66_N26
\freqdiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~26_combout\ = (\freqdiv|s_counter\(13) & (!\freqdiv|Add0~25\)) # (!\freqdiv|s_counter\(13) & ((\freqdiv|Add0~25\) # (GND)))
-- \freqdiv|Add0~27\ = CARRY((!\freqdiv|Add0~25\) # (!\freqdiv|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(13),
	datad => VCC,
	cin => \freqdiv|Add0~25\,
	combout => \freqdiv|Add0~26_combout\,
	cout => \freqdiv|Add0~27\);

-- Location: LCCOMB_X76_Y65_N28
\freqdiv|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~4_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~26_combout\,
	combout => \freqdiv|s_counter~4_combout\);

-- Location: FF_X76_Y65_N29
\freqdiv|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(13));

-- Location: LCCOMB_X77_Y66_N28
\freqdiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~28_combout\ = (\freqdiv|s_counter\(14) & (\freqdiv|Add0~27\ $ (GND))) # (!\freqdiv|s_counter\(14) & (!\freqdiv|Add0~27\ & VCC))
-- \freqdiv|Add0~29\ = CARRY((\freqdiv|s_counter\(14) & !\freqdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(14),
	datad => VCC,
	cin => \freqdiv|Add0~27\,
	combout => \freqdiv|Add0~28_combout\,
	cout => \freqdiv|Add0~29\);

-- Location: LCCOMB_X76_Y66_N18
\freqdiv|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~11_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~28_combout\,
	combout => \freqdiv|s_counter~11_combout\);

-- Location: FF_X76_Y66_N19
\freqdiv|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(14));

-- Location: LCCOMB_X77_Y66_N30
\freqdiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~30_combout\ = (\freqdiv|s_counter\(15) & (!\freqdiv|Add0~29\)) # (!\freqdiv|s_counter\(15) & ((\freqdiv|Add0~29\) # (GND)))
-- \freqdiv|Add0~31\ = CARRY((!\freqdiv|Add0~29\) # (!\freqdiv|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(15),
	datad => VCC,
	cin => \freqdiv|Add0~29\,
	combout => \freqdiv|Add0~30_combout\,
	cout => \freqdiv|Add0~31\);

-- Location: FF_X77_Y66_N31
\freqdiv|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(15));

-- Location: LCCOMB_X77_Y65_N0
\freqdiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~32_combout\ = (\freqdiv|s_counter\(16) & (\freqdiv|Add0~31\ $ (GND))) # (!\freqdiv|s_counter\(16) & (!\freqdiv|Add0~31\ & VCC))
-- \freqdiv|Add0~33\ = CARRY((\freqdiv|s_counter\(16) & !\freqdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(16),
	datad => VCC,
	cin => \freqdiv|Add0~31\,
	combout => \freqdiv|Add0~32_combout\,
	cout => \freqdiv|Add0~33\);

-- Location: LCCOMB_X76_Y66_N4
\freqdiv|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~10_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~32_combout\,
	combout => \freqdiv|s_counter~10_combout\);

-- Location: FF_X76_Y66_N5
\freqdiv|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(16));

-- Location: LCCOMB_X76_Y66_N2
\freqdiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~9_combout\ = (!\freqdiv|s_counter\(10) & (\freqdiv|s_counter\(16) & (!\freqdiv|s_counter\(15) & \freqdiv|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(10),
	datab => \freqdiv|s_counter\(16),
	datac => \freqdiv|s_counter\(15),
	datad => \freqdiv|s_counter\(14),
	combout => \freqdiv|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y65_N2
\freqdiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~34_combout\ = (\freqdiv|s_counter\(17) & (!\freqdiv|Add0~33\)) # (!\freqdiv|s_counter\(17) & ((\freqdiv|Add0~33\) # (GND)))
-- \freqdiv|Add0~35\ = CARRY((!\freqdiv|Add0~33\) # (!\freqdiv|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(17),
	datad => VCC,
	cin => \freqdiv|Add0~33\,
	combout => \freqdiv|Add0~34_combout\,
	cout => \freqdiv|Add0~35\);

-- Location: FF_X77_Y65_N3
\freqdiv|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(17));

-- Location: LCCOMB_X77_Y65_N4
\freqdiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~36_combout\ = (\freqdiv|s_counter\(18) & (\freqdiv|Add0~35\ $ (GND))) # (!\freqdiv|s_counter\(18) & (!\freqdiv|Add0~35\ & VCC))
-- \freqdiv|Add0~37\ = CARRY((\freqdiv|s_counter\(18) & !\freqdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(18),
	datad => VCC,
	cin => \freqdiv|Add0~35\,
	combout => \freqdiv|Add0~36_combout\,
	cout => \freqdiv|Add0~37\);

-- Location: LCCOMB_X76_Y65_N6
\freqdiv|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~3_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~36_combout\,
	combout => \freqdiv|s_counter~3_combout\);

-- Location: FF_X76_Y65_N7
\freqdiv|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(18));

-- Location: LCCOMB_X77_Y65_N6
\freqdiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~38_combout\ = (\freqdiv|s_counter\(19) & (!\freqdiv|Add0~37\)) # (!\freqdiv|s_counter\(19) & ((\freqdiv|Add0~37\) # (GND)))
-- \freqdiv|Add0~39\ = CARRY((!\freqdiv|Add0~37\) # (!\freqdiv|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(19),
	datad => VCC,
	cin => \freqdiv|Add0~37\,
	combout => \freqdiv|Add0~38_combout\,
	cout => \freqdiv|Add0~39\);

-- Location: LCCOMB_X76_Y65_N16
\freqdiv|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~2_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~38_combout\,
	combout => \freqdiv|s_counter~2_combout\);

-- Location: FF_X76_Y65_N17
\freqdiv|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(19));

-- Location: LCCOMB_X77_Y65_N8
\freqdiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~40_combout\ = (\freqdiv|s_counter\(20) & (\freqdiv|Add0~39\ $ (GND))) # (!\freqdiv|s_counter\(20) & (!\freqdiv|Add0~39\ & VCC))
-- \freqdiv|Add0~41\ = CARRY((\freqdiv|s_counter\(20) & !\freqdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(20),
	datad => VCC,
	cin => \freqdiv|Add0~39\,
	combout => \freqdiv|Add0~40_combout\,
	cout => \freqdiv|Add0~41\);

-- Location: LCCOMB_X76_Y65_N14
\freqdiv|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~1_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~11_combout\,
	datac => \freqdiv|Add0~40_combout\,
	combout => \freqdiv|s_counter~1_combout\);

-- Location: FF_X76_Y65_N15
\freqdiv|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(20));

-- Location: LCCOMB_X77_Y65_N10
\freqdiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~42_combout\ = (\freqdiv|s_counter\(21) & (!\freqdiv|Add0~41\)) # (!\freqdiv|s_counter\(21) & ((\freqdiv|Add0~41\) # (GND)))
-- \freqdiv|Add0~43\ = CARRY((!\freqdiv|Add0~41\) # (!\freqdiv|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(21),
	datad => VCC,
	cin => \freqdiv|Add0~41\,
	combout => \freqdiv|Add0~42_combout\,
	cout => \freqdiv|Add0~43\);

-- Location: LCCOMB_X76_Y65_N26
\freqdiv|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~0_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~11_combout\,
	datac => \freqdiv|Add0~42_combout\,
	combout => \freqdiv|s_counter~0_combout\);

-- Location: FF_X76_Y65_N27
\freqdiv|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(21));

-- Location: LCCOMB_X77_Y65_N12
\freqdiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~44_combout\ = (\freqdiv|s_counter\(22) & (\freqdiv|Add0~43\ $ (GND))) # (!\freqdiv|s_counter\(22) & (!\freqdiv|Add0~43\ & VCC))
-- \freqdiv|Add0~45\ = CARRY((\freqdiv|s_counter\(22) & !\freqdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(22),
	datad => VCC,
	cin => \freqdiv|Add0~43\,
	combout => \freqdiv|Add0~44_combout\,
	cout => \freqdiv|Add0~45\);

-- Location: LCCOMB_X76_Y66_N8
\freqdiv|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~9_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~44_combout\,
	combout => \freqdiv|s_counter~9_combout\);

-- Location: FF_X76_Y66_N9
\freqdiv|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(22));

-- Location: LCCOMB_X77_Y65_N14
\freqdiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~46_combout\ = (\freqdiv|s_counter\(23) & (!\freqdiv|Add0~45\)) # (!\freqdiv|s_counter\(23) & ((\freqdiv|Add0~45\) # (GND)))
-- \freqdiv|Add0~47\ = CARRY((!\freqdiv|Add0~45\) # (!\freqdiv|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(23),
	datad => VCC,
	cin => \freqdiv|Add0~45\,
	combout => \freqdiv|Add0~46_combout\,
	cout => \freqdiv|Add0~47\);

-- Location: FF_X77_Y65_N15
\freqdiv|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(23));

-- Location: LCCOMB_X77_Y65_N16
\freqdiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~48_combout\ = (\freqdiv|s_counter\(24) & (\freqdiv|Add0~47\ $ (GND))) # (!\freqdiv|s_counter\(24) & (!\freqdiv|Add0~47\ & VCC))
-- \freqdiv|Add0~49\ = CARRY((\freqdiv|s_counter\(24) & !\freqdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(24),
	datad => VCC,
	cin => \freqdiv|Add0~47\,
	combout => \freqdiv|Add0~48_combout\,
	cout => \freqdiv|Add0~49\);

-- Location: LCCOMB_X76_Y66_N6
\freqdiv|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|s_counter~8_combout\ = (!\freqdiv|Equal0~11_combout\ & \freqdiv|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqdiv|Equal0~11_combout\,
	datad => \freqdiv|Add0~48_combout\,
	combout => \freqdiv|s_counter~8_combout\);

-- Location: FF_X76_Y66_N7
\freqdiv|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(24));

-- Location: LCCOMB_X76_Y66_N24
\freqdiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~8_combout\ = (\freqdiv|s_counter\(24) & (\freqdiv|s_counter\(22) & (!\freqdiv|s_counter\(23) & !\freqdiv|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(24),
	datab => \freqdiv|s_counter\(22),
	datac => \freqdiv|s_counter\(23),
	datad => \freqdiv|s_counter\(17),
	combout => \freqdiv|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y66_N28
\freqdiv|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~10_combout\ = (\freqdiv|Equal0~9_combout\ & (\freqdiv|s_counter\(5) & \freqdiv|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|Equal0~9_combout\,
	datac => \freqdiv|s_counter\(5),
	datad => \freqdiv|Equal0~8_combout\,
	combout => \freqdiv|Equal0~10_combout\);

-- Location: LCCOMB_X76_Y66_N26
\freqdiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~6_combout\ = (\freqdiv|s_counter\(1) & (\freqdiv|s_counter\(0) & \freqdiv|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(1),
	datac => \freqdiv|s_counter\(0),
	datad => \freqdiv|s_counter\(2),
	combout => \freqdiv|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y65_N30
\freqdiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~2_combout\ = (\freqdiv|s_counter\(18) & (\freqdiv|s_counter\(19) & (\freqdiv|s_counter\(20) & \freqdiv|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(18),
	datab => \freqdiv|s_counter\(19),
	datac => \freqdiv|s_counter\(20),
	datad => \freqdiv|s_counter\(13),
	combout => \freqdiv|Equal0~2_combout\);

-- Location: LCCOMB_X77_Y65_N18
\freqdiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~50_combout\ = (\freqdiv|s_counter\(25) & (!\freqdiv|Add0~49\)) # (!\freqdiv|s_counter\(25) & ((\freqdiv|Add0~49\) # (GND)))
-- \freqdiv|Add0~51\ = CARRY((!\freqdiv|Add0~49\) # (!\freqdiv|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(25),
	datad => VCC,
	cin => \freqdiv|Add0~49\,
	combout => \freqdiv|Add0~50_combout\,
	cout => \freqdiv|Add0~51\);

-- Location: FF_X77_Y65_N19
\freqdiv|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(25));

-- Location: LCCOMB_X77_Y65_N20
\freqdiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~52_combout\ = (\freqdiv|s_counter\(26) & (\freqdiv|Add0~51\ $ (GND))) # (!\freqdiv|s_counter\(26) & (!\freqdiv|Add0~51\ & VCC))
-- \freqdiv|Add0~53\ = CARRY((\freqdiv|s_counter\(26) & !\freqdiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(26),
	datad => VCC,
	cin => \freqdiv|Add0~51\,
	combout => \freqdiv|Add0~52_combout\,
	cout => \freqdiv|Add0~53\);

-- Location: FF_X77_Y65_N21
\freqdiv|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(26));

-- Location: LCCOMB_X77_Y65_N22
\freqdiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~54_combout\ = (\freqdiv|s_counter\(27) & (!\freqdiv|Add0~53\)) # (!\freqdiv|s_counter\(27) & ((\freqdiv|Add0~53\) # (GND)))
-- \freqdiv|Add0~55\ = CARRY((!\freqdiv|Add0~53\) # (!\freqdiv|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(27),
	datad => VCC,
	cin => \freqdiv|Add0~53\,
	combout => \freqdiv|Add0~54_combout\,
	cout => \freqdiv|Add0~55\);

-- Location: FF_X77_Y65_N23
\freqdiv|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(27));

-- Location: LCCOMB_X76_Y65_N20
\freqdiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~1_combout\ = (\freqdiv|s_counter\(21) & (!\freqdiv|s_counter\(27) & (!\freqdiv|s_counter\(26) & !\freqdiv|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(21),
	datab => \freqdiv|s_counter\(27),
	datac => \freqdiv|s_counter\(26),
	datad => \freqdiv|s_counter\(25),
	combout => \freqdiv|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y65_N24
\freqdiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~56_combout\ = (\freqdiv|s_counter\(28) & (\freqdiv|Add0~55\ $ (GND))) # (!\freqdiv|s_counter\(28) & (!\freqdiv|Add0~55\ & VCC))
-- \freqdiv|Add0~57\ = CARRY((\freqdiv|s_counter\(28) & !\freqdiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(28),
	datad => VCC,
	cin => \freqdiv|Add0~55\,
	combout => \freqdiv|Add0~56_combout\,
	cout => \freqdiv|Add0~57\);

-- Location: FF_X77_Y65_N25
\freqdiv|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(28));

-- Location: LCCOMB_X77_Y65_N26
\freqdiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~58_combout\ = (\freqdiv|s_counter\(29) & (!\freqdiv|Add0~57\)) # (!\freqdiv|s_counter\(29) & ((\freqdiv|Add0~57\) # (GND)))
-- \freqdiv|Add0~59\ = CARRY((!\freqdiv|Add0~57\) # (!\freqdiv|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(29),
	datad => VCC,
	cin => \freqdiv|Add0~57\,
	combout => \freqdiv|Add0~58_combout\,
	cout => \freqdiv|Add0~59\);

-- Location: FF_X77_Y65_N27
\freqdiv|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(29));

-- Location: LCCOMB_X77_Y65_N28
\freqdiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~60_combout\ = (\freqdiv|s_counter\(30) & (\freqdiv|Add0~59\ $ (GND))) # (!\freqdiv|s_counter\(30) & (!\freqdiv|Add0~59\ & VCC))
-- \freqdiv|Add0~61\ = CARRY((\freqdiv|s_counter\(30) & !\freqdiv|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(30),
	datad => VCC,
	cin => \freqdiv|Add0~59\,
	combout => \freqdiv|Add0~60_combout\,
	cout => \freqdiv|Add0~61\);

-- Location: FF_X77_Y65_N29
\freqdiv|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(30));

-- Location: LCCOMB_X77_Y65_N30
\freqdiv|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Add0~62_combout\ = \freqdiv|s_counter\(31) $ (\freqdiv|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(31),
	cin => \freqdiv|Add0~61\,
	combout => \freqdiv|Add0~62_combout\);

-- Location: FF_X77_Y65_N31
\freqdiv|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|s_counter\(31));

-- Location: LCCOMB_X76_Y65_N8
\freqdiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~0_combout\ = (!\freqdiv|s_counter\(31) & (!\freqdiv|s_counter\(30) & (!\freqdiv|s_counter\(29) & !\freqdiv|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(31),
	datab => \freqdiv|s_counter\(30),
	datac => \freqdiv|s_counter\(29),
	datad => \freqdiv|s_counter\(28),
	combout => \freqdiv|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y65_N12
\freqdiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~3_combout\ = (\freqdiv|s_counter\(11) & (\freqdiv|s_counter\(12) & (!\freqdiv|s_counter\(9) & !\freqdiv|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(11),
	datab => \freqdiv|s_counter\(12),
	datac => \freqdiv|s_counter\(9),
	datad => \freqdiv|s_counter\(8),
	combout => \freqdiv|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y65_N10
\freqdiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~4_combout\ = (\freqdiv|Equal0~2_combout\ & (\freqdiv|Equal0~1_combout\ & (\freqdiv|Equal0~0_combout\ & \freqdiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~2_combout\,
	datab => \freqdiv|Equal0~1_combout\,
	datac => \freqdiv|Equal0~0_combout\,
	datad => \freqdiv|Equal0~3_combout\,
	combout => \freqdiv|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y66_N30
\freqdiv|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~11_combout\ = (\freqdiv|Equal0~5_combout\ & (\freqdiv|Equal0~10_combout\ & (\freqdiv|Equal0~6_combout\ & \freqdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~5_combout\,
	datab => \freqdiv|Equal0~10_combout\,
	datac => \freqdiv|Equal0~6_combout\,
	datad => \freqdiv|Equal0~4_combout\,
	combout => \freqdiv|Equal0~11_combout\);

-- Location: LCCOMB_X76_Y66_N20
\freqdiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|Equal0~7_combout\ = (\freqdiv|Equal0~5_combout\ & (\freqdiv|Equal0~6_combout\ & \freqdiv|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~5_combout\,
	datac => \freqdiv|Equal0~6_combout\,
	datad => \freqdiv|Equal0~4_combout\,
	combout => \freqdiv|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y66_N22
\freqdiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|clkOut~0_combout\ = (!\freqdiv|s_counter\(24) & (!\freqdiv|s_counter\(22) & (\freqdiv|s_counter\(23) & \freqdiv|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(24),
	datab => \freqdiv|s_counter\(22),
	datac => \freqdiv|s_counter\(23),
	datad => \freqdiv|s_counter\(17),
	combout => \freqdiv|clkOut~0_combout\);

-- Location: LCCOMB_X76_Y66_N16
\freqdiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|clkOut~1_combout\ = (\freqdiv|s_counter\(10) & (!\freqdiv|s_counter\(16) & (\freqdiv|s_counter\(15) & !\freqdiv|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|s_counter\(10),
	datab => \freqdiv|s_counter\(16),
	datac => \freqdiv|s_counter\(15),
	datad => \freqdiv|s_counter\(14),
	combout => \freqdiv|clkOut~1_combout\);

-- Location: LCCOMB_X76_Y66_N10
\freqdiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|clkOut~2_combout\ = (!\freqdiv|s_counter\(5) & (\freqdiv|clkOut~0_combout\ & \freqdiv|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqdiv|s_counter\(5),
	datac => \freqdiv|clkOut~0_combout\,
	datad => \freqdiv|clkOut~1_combout\,
	combout => \freqdiv|clkOut~2_combout\);

-- Location: LCCOMB_X76_Y66_N0
\freqdiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqdiv|clkOut~3_combout\ = (!\freqdiv|Equal0~11_combout\ & ((\freqdiv|clkOut~q\) # ((\freqdiv|Equal0~7_combout\ & \freqdiv|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqdiv|Equal0~11_combout\,
	datab => \freqdiv|Equal0~7_combout\,
	datac => \freqdiv|clkOut~q\,
	datad => \freqdiv|clkOut~2_combout\,
	combout => \freqdiv|clkOut~3_combout\);

-- Location: FF_X76_Y66_N1
\freqdiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqdiv|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqdiv|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


